package edu.neu.info7250.projo;

import java.util.ArrayList;

/**
 * Created by kym1992 on 12/3/16.
 */
public class Flights {
    private double price;
    private String carriers;
    private String fromAirport;
    private String toAirport;
    private String fromTIme;
    private String toTime;
    private String duration;
    private int stop;
    private double averageAirlineRating;
    private ArrayList<FlightDetail> flightDetails;

    public Flights() {
        this.flightDetails = new ArrayList<FlightDetail>();
    }

    public Flights(double price, String carriers, String fromAirport, String toAirport, String fromTIme, String toTime, String duration, int stop, double averageAirlineRating) {
        this.price = price;
        this.carriers = carriers;
        this.fromAirport = fromAirport;
        this.toAirport = toAirport;
        this.fromTIme = fromTIme;
        this.toTime = toTime;
        this.duration = duration;
        this.stop = stop;
        this.averageAirlineRating = averageAirlineRating;
        this.flightDetails = new ArrayList<FlightDetail>();
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCarriers() {
        return carriers;
    }

    public void setCarriers(String carriers) {
        this.carriers = carriers;
    }

    public String getFromAirport() {
        return fromAirport;
    }

    public void setFromAirport(String fromAirport) {
        this.fromAirport = fromAirport;
    }

    public String getToAirport() {
        return toAirport;
    }

    public void setToAirport(String toAirport) {
        this.toAirport = toAirport;
    }

    public String getFromTIme() {
        return fromTIme;
    }

    public void setFromTIme(String fromTIme) {
        this.fromTIme = fromTIme;
    }

    public String getToTime() {
        return toTime;
    }

    public void setToTime(String toTime) {
        this.toTime = toTime;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public int getStop() {
        return stop;
    }

    public void setStop(int stop) {
        this.stop = stop;
    }

    public double getAverageAirlineRating() {
        return averageAirlineRating;
    }

    public void setAverageAirlineRating(double averageAirlineRating) {
        this.averageAirlineRating = averageAirlineRating;
    }

    public ArrayList<FlightDetail> getFlightDetails() {
        return flightDetails;
    }

    public void setFlightDetails(ArrayList<FlightDetail> flightDetails) {
        this.flightDetails = flightDetails;
    }
}
