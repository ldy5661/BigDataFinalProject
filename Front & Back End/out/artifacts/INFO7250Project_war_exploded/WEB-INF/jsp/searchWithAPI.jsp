<%--
Created by IntelliJ IDEA.
User: kym1992
Date: 12/3/16
Time: 12:06 PM
To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- saved from url=(0038)http://template.themespond.com/suiren/ -->
<html class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" lang="en">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link href="./Suiren - Responsive Travel Template_files/css" rel="stylesheet">
    <%--<link rel="stylesheet" href="./Suiren - Responsive Travel Template_files/bootstrap.min.css">--%>
    <link rel="stylesheet" href="./Suiren - Responsive Travel Template_files/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="./Suiren - Responsive Travel Template_files/font-awesome.min.css">
    <link rel="stylesheet" href="./Suiren - Responsive Travel Template_files/owl.carousel.min.css">
    <link rel="stylesheet" href="./Suiren - Responsive Travel Template_files/owl.theme.green.min.css">
    <link rel="stylesheet" href="./Suiren - Responsive Travel Template_files/animate.min.css">
    <link rel="stylesheet" href="./Suiren - Responsive Travel Template_files/slicknav.min.css">
    <link rel="stylesheet" href="./Suiren - Responsive Travel Template_files/main.css">
    <script src="../../jquery-3.1.1.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
    <title>Search Result</title>
    <script src="./Suiren - Responsive Travel Template_files/analytics.js"></script><script src="./Suiren - Responsive Travel Template_files/jquery.min.js"></script>
    <script src="./Suiren - Responsive Travel Template_files/modernizr.min.js"></script>
    <%--<script src="./Suiren - Responsive Travel Template_files/bootstrap.min.js"></script>--%>
    <script src="./Suiren - Responsive Travel Template_files/bootstrap-datepicker.min.js"></script>
    <script src="./Suiren - Responsive Travel Template_files/owl.carousel.min.js"></script>
    <script src="./Suiren - Responsive Travel Template_files/jquery.slicknav.min.js"></script>
    <script src="./Suiren - Responsive Travel Template_files/common.js"></script>
    <script src="./Suiren - Responsive Travel Template_files/scroll-counter.js"></script>
    <script src="./Suiren - Responsive Travel Template_files/slider.js"></script>
</head>
<body>
<!--[if lt IE 10]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<div class="tsp-main">
    <!--header-->
    <main>
        <section id="tsp_slider">
            <div id="tsp_slider_main" class="carousel slide">
                <!-- Dots slider -->
                <div class="tsp-slider-dots hidden-xs hidden-sm">
                    <div class="container">
                        <div class="row">
                            <ol class="carousel-indicators">
                                <li data-target="#tsp_slider_main" data-slide-to="0" class=""></li>
                                <li data-target="#tsp_slider_main" data-slide-to="1" class="active"></li>
                            </ol>
                        </div><!-- div row box dots slider -->
                    </div>
                </div>
                <div class="carousel-inner" role="listbox">
                    <div class="item">
                        <div class="tsp-slider-phone hidden-md hidden-lg">
                            <div class="tsp-slide-zoom">
                                <img src="./Suiren - Responsive Travel Template_files/slider-1.jpg" alt="Slider 1 Mobile">
                            </div>
                        </div>
                        <div class="tsp-slider-lg hidden-sm hidden-xs">
                            <div class="tsp-img-big">
                                <img src="./Suiren - Responsive Travel Template_files/slider-1-bg.png" alt="Slider 1">
                            </div>

                            <div class="tsp-caption-slider">
                                <div class="tsp-img-big-bg">
                                    <img src="./Suiren - Responsive Travel Template_files/slider-1-bg.png" alt="Slider 1">
                                </div>
                                <div class="container">
                                    <div class="row">
                                        <div class="tsp-content">


                                            <div class="tsp-fly" data-animation="animated bounceInRight">
                                                <img src="./Suiren - Responsive Travel Template_files/fly.png" alt="icon plan">
                                            </div>
                                            <div class="tsp-bg-liberty">
                                                <img src="./Suiren - Responsive Travel Template_files/slider-bg-liberty.jpg" alt="background statue of Liberty">
                                            </div>
                                            <div class="tsp-statue-of-Liberty" data-animation="animated fadeInUp">
                                                <img src="./Suiren - Responsive Travel Template_files/statue-of-Liberty.png" alt="statue of Liberty">
                                            </div>
                                            <div class="tsp-zeppelins-small animated bounceInUp" data-animation="animated bounceInUp">
                                                <img src="./Suiren - Responsive Travel Template_files/small-kkc.png" alt="zeppelins small">
                                            </div>
                                            <div class="tsp-zeppelins-big animated bounceInLeft" data-animation="animated bounceInLeft">
                                                <img src="./Suiren - Responsive Travel Template_files/big-kkc.png" alt="zeppelins Big">
                                            </div>
                                            <div class="tsp-bg-house">
                                                <img src="./Suiren - Responsive Travel Template_files/slider-bg-house.jpg" alt="background House">
                                            </div>
                                            <div class="tsp-house-slider" data-animation="animated fadeInUp">
                                                <img src="./Suiren - Responsive Travel Template_files/slider-house.png" alt="House slider">
                                            </div>
                                        </div><!-- content caption -->
                                    </div>
                                </div>

                            </div><!-- box caption slider -->
                        </div>
                    </div>
                    <div class="item active">
                        <div class="tsp-slide-zoom">
                            <img src="./Suiren - Responsive Travel Template_files/slider-2.jpg" alt="Slider 2">
                        </div>
                    </div>
                </div>
                <!-- Nav btn next/prev slider -->
                <div class="tsp-nav-slider hidden-lg">
                    <a class="left carousel-control" href="http://template.themespond.com/suiren/#tsp_slider_main" role="button" data-slide="prev">
                        <span><i class="fa fa-angle-left"></i></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="http://template.themespond.com/suiren/#tsp_slider_main" role="button" data-slide="next">
                        <span><i class="fa fa-angle-right"></i></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <div class="tsp-search-home">
                    <section id="tsp_search_booking">
                        <div class="container">
                            <div class="row">
                                <div class="tsp-search-booking">
                                    <ul class="nav tsp-tab-boooking-search">
                                        <li class="active"><a data-toggle="tab" href="http://template.themespond.com/suiren/#seachHotel"><i class="fa fa-hospital-o"></i> Flight</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div id="seachHotel" class="tab-pane fade in active">
                                            <div class="tsp-form-booking">
                                                <form action="/searchWithAPI.do" name="formSearchHotel" method="post">
                                                    <div class="form-group">
                                                        <label>From</label>
                                                        <input type="text" name="fromAirport">
                                                        <span class="add-on"></span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>To</label>
                                                        <input type="text" name="toAirport">
                                                        <span class="add-on"></span>
                                                    </div>
                                                    <div class="form-group input-append date tsp-date">
                                                        <label>Date</label>
                                                        <input type="text" name="dateDeparture">
                                                        <span class="add-on"><i class="fa fa-calendar"></i></span>
                                                    </div>

                                                    <button type="submit">SEARCH</button>
                                                </form>
                                            </div>
                                        </div><!-- End search hotel -->
                                    </div>
                                </div>
                            </div><!-- div row -->
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </main>
</div>

<div class="container">
    <c:forEach var="tripResult" varStatus="theCount" items="${requestScope.tripResultList}">
    <c:set var="flightSegment" value="${tripResult.getSlice().get(0).getSegment()}"/>
    <div class="table-responsive">
        <table class="table table-bordered" style="margin-bottom: 0;">
            <tr>
                <td>${tripResult.getSaleTotal()}</td>
                <td rowspan="2" style="vertical-align: middle;"><c:forEach var="oneSegament" items="${flightSegment}">
                    ${oneSegament.getFlight().getCarrier()} ${oneSegament.getFlight().getNumber()} <br />
                </c:forEach></td>
                <td rowspan="2" style="vertical-align: middle;">${flightSegment.get(0).getLeg().get(0).getOrigin()} ${flightSegment.get(0).getLeg().get(0).getDepartureTime()} <br />
                 - ${flightSegment.get(flightSegment.size() - 1).getLeg().get(0).getDestination()} ${flightSegment.get(flightSegment.size() - 1).getLeg().get(0).getArrivalTime()}</td>
                <td rowspan="2" style="vertical-align: middle;">${tripResult.getSlice().get(0).getDuration()} minutes</td>
                <td rowspan="2" style="vertical-align: middle;">${flightSegment.size() - 1}</td>
                <td rowspan="2" style="vertical-align: middle;">Airline Average Rating</td>
            </tr>
            <tr>
                <td><a class="btn btn-primary" role="button" data-toggle="collapse" href="#${tripResult.getId()}" aria-expanded="false" aria-controls="${tripResult.getId()}">Flight
                    Details</a></td>
            </tr>
        </table>

        <div class="collapse" id="${tripResult.getId()}">
            <c:forEach var="eachSegament" items="${flightSegment}">
            <table class="table table-bordered" style="margin-top: 0;">
                <tr>
                    <td>${eachSegament.getFlight().getCarrier()} ${eachSegament.getFlight().getNumber()}</td>
                    <td>${eachSegament.getLeg().get(0).getOrigin()}</td>
                    <td>${eachSegament.getLeg().get(0).getDestination()}</td>
                    <td>Airline Overall Rating</td>
                </tr>
                <tr>
                    <td>Flight Number</td>
                    <td>${eachSegament.getLeg().get(0).getDepartureTime()}</td>
                    <td>${eachSegament.getLeg().get(0).getArrivalTime()}</td>
                    <td>Several Ratings</td>
                </tr>
            </table>
            <c:if test="${not empty eachSegament.getConnectionDuration()}">
                <center>Change Flight: ${eachSegament.getConnectionDuration()} minutes</center>
            </c:if>
            </c:forEach>
        </div>
    </div>
    </c:forEach>
</div>
</body>

</html>

