package edu.neu.info7250.Controller;

import java.io.IOException;
import java.util.*;

import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.qpxExpress.QPXExpressRequestInitializer;
import com.google.api.services.qpxExpress.QPXExpress;
import com.google.api.services.qpxExpress.model.FlightInfo;
import com.google.api.services.qpxExpress.model.LegInfo;
import com.google.api.services.qpxExpress.model.PassengerCounts;
import com.google.api.services.qpxExpress.model.PricingInfo;
import com.google.api.services.qpxExpress.model.SegmentInfo;
import com.google.api.services.qpxExpress.model.SliceInfo;
import com.google.api.services.qpxExpress.model.TripOption;
import com.google.api.services.qpxExpress.model.TripOptionsRequest;
import com.google.api.services.qpxExpress.model.TripsSearchRequest;
import com.google.api.services.qpxExpress.model.SliceInput;
import com.google.api.services.qpxExpress.model.TripsSearchResponse;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.client.Get;
import org.apache.hadoop.hbase.client.HTable;
import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.util.Bytes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.Segment;
import java.security.GeneralSecurityException;

/**
 * Created by kym1992 on 12/3/16.
 */
@Controller
@RequestMapping("/searchWithAPI.do")
public class SearchControllerWIthAPI {
    private static final String APPLICATION_NAME = "MyFlightApplication";

    private static final String API_KEY = "AIzaSyBLR6X4rlT1twxD9ezM53z-ACaKNDmt1Tk";

    /** Global instance of the HTTP transport. */
    private static HttpTransport httpTransport;

    /** Global instance of the JSON factory. */
    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();


    @RequestMapping(method = RequestMethod.POST)
    protected String handleRequest(HttpServletRequest httpServletRequest, ModelMap model) throws Exception {

        Configuration config = HBaseConfiguration.create();
        HTable table = new HTable(config, "FlightAnalysis");
        HTable reviewTable = new HTable(config, "PostReview");

        String fromAirport = (String) httpServletRequest.getParameter("fromAirport");
//        System.out.println(fromAirport);
        String toAirport = (String) httpServletRequest.getParameter("toAirport");
//        System.out.println(toAirport);
        String date = (String) httpServletRequest.getParameter("dateDeparture");
//        System.out.println(date);
        String[] dateArray = date.split("/");
        date = new String(dateArray[2] + "-" + dateArray[0] + "-" + dateArray[1]);
//        System.out.println(date);



        try {
            httpTransport = GoogleNetHttpTransport.newTrustedTransport();


            PassengerCounts passengers= new PassengerCounts();
            passengers.setAdultCount(1);

            List<SliceInput> slices = new ArrayList<SliceInput>();

            SliceInput slice = new SliceInput();
            slice.setOrigin(fromAirport);
            slice.setDestination(toAirport);
            slice.setDate(date);
            slices.add(slice);

            TripOptionsRequest request= new TripOptionsRequest();
            request.setSolutions(20);
            request.setPassengers(passengers);
            request.setSlice(slices);

            TripsSearchRequest parameters = new TripsSearchRequest();
            parameters.setRequest(request);
            QPXExpress qpXExpress= new QPXExpress.Builder(httpTransport, JSON_FACTORY, null).setApplicationName(APPLICATION_NAME)
                    .setGoogleClientRequestInitializer(new QPXExpressRequestInitializer(API_KEY)).build();

            TripsSearchResponse list= qpXExpress.trips().search(parameters).execute();
            List<TripOption> tripResults=list.getTrips().getTripOption();

            HashMap<String, ArrayList<String>> delayMap= new HashMap<String, ArrayList<String>>();
            for(int i = 0; i < tripResults.size(); i++){
                List<SegmentInfo> segmentInfoList = tripResults.get(i).getSlice().get(0).getSegment();
                for(int j = 0; j < segmentInfoList.size(); j++){
                    String queryToSent = segmentInfoList.get(j).getFlight().getCarrier() + "-" + segmentInfoList.get(j).getFlight().getNumber();
                    String queryToPut = segmentInfoList.get(j).getFlight().getCarrier() + " " + segmentInfoList.get(j).getFlight().getNumber();
                    Get get = new Get(Bytes.toBytes(queryToSent));
                    Result result = table.get(get);
                    String delayTime = Bytes.toString(result.getValue(Bytes.toBytes("value"),Bytes.toBytes("delayTime")));
                    String aveAirTime = Bytes.toString(result.getValue(Bytes.toBytes("value"),Bytes.toBytes("aveAirTime")));
                    String delayRate = Bytes.toString(result.getValue(Bytes.toBytes("value"),Bytes.toBytes("delayRate")));

                    ArrayList<String> currentList = new ArrayList<String>();
                    currentList.add(delayTime);
                    currentList.add(aveAirTime);
                    currentList.add(delayRate);


                    String airlineQuery = segmentInfoList.get(j).getFlight().getCarrier();
                    Get get1 = new Get(Bytes.toBytes(airlineQuery));
                    Result result1 = reviewTable.get(get1);
                    String overallRating = Bytes.toString(result1.getValue(Bytes.toBytes("review"), Bytes.toBytes("overall_rating")));
                    String food_rating = Bytes.toString(result1.getValue(Bytes.toBytes("review"), Bytes.toBytes("food_rating")));
                    String comfort_rating = Bytes.toString(result1.getValue(Bytes.toBytes("review"), Bytes.toBytes("comfort_rating")));
                    String entertainment_rating = Bytes.toString(result1.getValue(Bytes.toBytes("review"), Bytes.toBytes("entertainment_rating")));

                    currentList.add(overallRating);
                    currentList.add(food_rating);
                    currentList.add(comfort_rating);
                    currentList.add(entertainment_rating);

                    delayMap.put(queryToPut, currentList);
//                    delayMap.get("AA1").get(1);
                }
            }

            model.addAttribute("tripResultList", tripResults);
            model.addAttribute("delayMap", delayMap);
            tripResults.get(0).getSlice().get(0).getSegment().get(0).getLeg().get(0).getDestination();



//            tripResults.get(0).getSlice().get(0).getSegment().get(0).getFlight().getNumber()

//            String id;
//
//            for(int i=0; i<tripResults.size(); i++){
//                //Trip Option ID
//                id= tripResults.get(i).getId();
//                System.out.println("id "+id);
//
//                //Slice
//                List<SliceInfo> sliceInfo= tripResults.get(i).getSlice();
//                for(int j=0; j<sliceInfo.size(); j++){
//                    int duration= sliceInfo.get(j).getDuration();
//                    System.out.println("duration "+duration);
//                    List<SegmentInfo> segInfo= sliceInfo.get(j).getSegment();
//                    for(int k=0; k<segInfo.size(); k++){
//                        String bookingCode= segInfo.get(k).getBookingCode();
//                        System.out.println("bookingCode "+bookingCode);
//                        FlightInfo flightInfo=segInfo.get(k).getFlight();
//                        String flightNum= flightInfo.getNumber();
//                        System.out.println("flightNum "+flightNum);
//                        String flightCarrier= flightInfo.getCarrier();
//                        System.out.println("flightCarrier "+flightCarrier);
//                        List<LegInfo> leg=segInfo.get(k).getLeg();
//                        for(int l=0; l<leg.size(); l++){
//                            String aircraft= leg.get(l).getAircraft();
//                            System.out.println("aircraft "+aircraft);
//                            String arrivalTime= leg.get(l).getArrivalTime();
//                            System.out.println("arrivalTime "+arrivalTime);
//                            String departTime=leg.get(l).getDepartureTime();
//                            System.out.println("departTime "+departTime);
//                            String dest=leg.get(l).getDestination();
//                            System.out.println("Destination "+dest);
//                            String destTer= leg.get(l).getDestinationTerminal();
//                            System.out.println("DestTer "+destTer);
//                            String origin=leg.get(l).getOrigin();
//                            System.out.println("origun "+origin);
//                            String originTer=leg.get(l).getOriginTerminal();
//                            System.out.println("OriginTer "+originTer);
//                            int durationLeg= leg.get(l).getDuration();
//                            System.out.println("durationleg "+durationLeg);
//                            int mil= leg.get(l).getMileage();
//                            System.out.println("Milleage "+mil);
//
//                        }
//
//                    }
//                }
//
//                //Pricing
//                List<PricingInfo> priceInfo= tripResults.get(i).getPricing();
//                for(int p=0; p<priceInfo.size(); p++){
//                    String price= priceInfo.get(p).getSaleTotal();
//                    System.out.println("Price "+price);
//                }
//
//            }

        } catch (IOException e) {
            System.err.println(e.getMessage());
        } catch (GeneralSecurityException t) {
            t.printStackTrace();
        }


        return "searchWithAPI";
    }
}