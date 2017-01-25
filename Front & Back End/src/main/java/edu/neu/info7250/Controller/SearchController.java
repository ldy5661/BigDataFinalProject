package edu.neu.info7250.Controller;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Created by kym1992 on 11/30/16.
 */
@Controller
@RequestMapping("/search.do")
public class SearchController {
    @RequestMapping(method = RequestMethod.POST)
    protected ModelAndView handleRequest(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception{
        ModelAndView mv = new ModelAndView("displayResult");

        String fromAirport = (String) httpServletRequest.getParameter("fromAirport");
//        System.out.println(fromAirport);
        String toAirport = (String) httpServletRequest.getParameter("toAirport");
//        System.out.println(toAirport);
        String date = (String) httpServletRequest.getParameter("dateDeparture");
//        System.out.println(date);
        String[] dateArray = date.split("/");
        date = new String(dateArray[2] + "-" + dateArray[0] + "-" + dateArray[1]);
//        System.out.println(date);

        String urlString = "https://www.googleapis.com/qpxExpress/v1/trips/search?key=AIzaSyCtKJ8OZW_PhGDx4qPQiU6LwgYONwyP92Y";
        URL url = new URL(urlString);

        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setDoOutput(true);
        conn.setDoInput(true);
        conn.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
        conn.setRequestProperty("Accept", "application/json");
        conn.setRequestMethod("POST");

        JSONObject global = new JSONObject();
        JSONObject request = new JSONObject();
        JSONObject slice = new JSONObject();
        JSONObject passengers = new JSONObject();

        slice.put("origin", fromAirport);
        slice.put("destination", toAirport);
        slice.put("date", date);


        JSONArray sliceArray = new JSONArray();
        sliceArray.put(slice);

        passengers.put("adultCount", 1);

        request.put("slice", sliceArray);
        request.put("passengers", passengers);
        request.put("solutions", 20);
        request.put("refundable", false);

        global.put("request", request);

        OutputStreamWriter wr= new OutputStreamWriter(conn.getOutputStream());
        wr.write(global.toString());
        wr.flush();
        System.out.print(global.toString());

        StringBuilder sb = new StringBuilder();
        int HttpResult = conn.getResponseCode();
        if (HttpResult == HttpURLConnection.HTTP_OK) {
            BufferedReader br = new BufferedReader(
                    new InputStreamReader(conn.getInputStream(), "utf-8"));
            String line = null;
            while ((line = br.readLine()) != null) {
                sb.append(line + "\n");
            }
            br.close();

            JSONObject jsonResult = new JSONObject(sb.toString());

            System.out.println(sb.toString());
        } else {
            System.out.println(conn.getResponseMessage());
        }

        wr.close();




        return mv;
    }
}
