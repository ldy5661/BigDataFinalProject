<%--
Created by IntelliJ IDEA.
User: kym1992
Date: 12/3/16
Time: 12:06 PM
To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>

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
                                                    <div class="form-group input-append date tsp-date" id="datetimepicker2">
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

<div class="container" ng-app="sortApp" ng-controller="mainController">

    <div id="result"></div>
    <div class="alert alert-info">
        <p>Sort Type: {{ sortType }}</p>
        <p>Sort Reverse: {{ sortReverse }}</p>
        <p>Search Query: {{ searchFlights }}</p>
    </div>


    <form>
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon"><i class="fa fa-search"></i></div>
                <input type="text" class="form-control" placeholder="Search Flights" ng-model="searchFlights">
            </div>
        </div>
    </form>

    <table class="table table-bordered table-striped" style="margin-bottom: 0;">
        <tr>
            <td width="13%">
                <a href="" ng-click="sortType = 'price1'; sortReverse = !sortReverse">
                    Price
                    <span ng-show="sortType == 'price1' && !sortReverse" class="fa fa-caret-down"></span>
                    <span ng-show="sortType == 'price1' && sortReverse" class="fa fa-caret-up"></span>
                </a>
            </td>
            <td width="12%">
                <a href="" ng-click="sortType = 'flightNumber1'; sortReverse = !sortReverse">
                    Flight Number
                    <span ng-show="sortType == 'flightNumber1' && !sortReverse" class="fa fa-caret-down"></span>
                    <span ng-show="sortType == 'flightNumber1' && sortReverse" class="fa fa-caret-up"></span>
                </a>
            </td>
            <td width="25%">
                <a href="" ng-click="sortType = 'originTime1'; sortReverse = !sortReverse">
                    Departure
                    <span ng-show="sortType == 'origin1Time1' && !sortReverse" class="fa fa-caret-down"></span>
                    <span ng-show="sortType == 'origin1Time1' && sortReverse" class="fa fa-caret-up"></span>
                </a>
                /
                <a href="" ng-click="sortType = 'destinationTime1'; sortReverse = !sortReverse">
                    Arrival
                    <span ng-show="sortType == 'destinationTime1' && !sortReverse" class="fa fa-caret-down"></span>
                    <span ng-show="sortType == 'destinationTime1' && sortReverse" class="fa fa-caret-up"></span>
                </a>
            </td>
            <td width="11%">
                <a href="" ng-click="sortType = 'duration1'; sortReverse = !sortReverse">
                    Duration
                    <span ng-show="sortType == 'duration1' && !sortReverse" class="fa fa-caret-down"></span>
                    <span ng-show="sortType == 'duration1' && sortReverse" class="fa fa-caret-up"></span>
                </a>
            </td>
            <td width="7%">
                <a href="" ng-click="sortType = 'stop1'; sortReverse = !sortReverse">
                    Stops
                    <span ng-show="sortType == 'stop1' && !sortReverse" class="fa fa-caret-down"></span>
                    <span ng-show="sortType == 'stop1' && sortReverse" class="fa fa-caret-up"></span>
                </a>
            </td>
            <td width="15%">
                <a href="" ng-click="sortType = 'delayTimeAvg'; sortReverse = !sortReverse">
                    Delay Time
                    <span ng-show="sortType == 'delayTimeAvg' && !sortReverse" class="fa fa-caret-down"></span>
                    <span ng-show="sortType == 'delayTimeAvg' && sortReverse" class="fa fa-caret-up"></span>
                </a>
                /
                <a href="" ng-click="sortType = 'delayRateAvg'; sortReverse = !sortReverse">
                    Rate
                    <span ng-show="sortType == 'delayRateAvg' && !sortReverse" class="fa fa-caret-down"></span>
                    <span ng-show="sortType == 'delayRateAvg' && sortReverse" class="fa fa-caret-up"></span>
                </a>
            </td>
            <td width="17%">
                <a href="" ng-click="sortType = 'rating1'; sortReverse = !sortReverse">
                    Airline Average Rating
                    <span ng-show="sortType == 'rating1' && !sortReverse" class="fa fa-caret-down"></span>
                    <span ng-show="sortType == 'rating1' && sortReverse" class="fa fa-caret-up"></span>
                </a>
            </td>
        </tr>
    </table>
    <div ng-repeat="tripResultList in messageList | orderBy:sortType:sortReverse | filter:searchFlights">
        <table class="table table-bordered table-striped" style="margin-bottom: 0;">
            <tr>
                <td width="13%">{{tripResultList.price1}}<br />
                    <a class="btn btn-primary" role="button" data-toggle="collapse" href="{{tripResultList.id1}}" aria-expanded="false" aria-controls="{{tripResultList.id11}}">Flight
                        Details</a>
                </td>
                <td width="12%">
                    <div ng-repeat="flight in tripResultList.flightNumber1">
                        <span>{{flight.flightNumberDetail}}</span> <br />
                    </div>
                </td>
                <td width="25%">departs: {{tripResultList.origin1}}  <b>{{tripResultList.originTime1}}</b> <br />
                    arrives: {{tripResultList.destination1}}  <b>{{tripResultList.destinationTime1}}</b></td>
                <td width="11%"><b>{{tripResultList.duration1}}</b> minutes</td>
                <td width="7%">{{tripResultList.stop1}}</td>
                <td width="15%">{{tripResultList.delayTimeAvg}} minutes <br />
                    {{tripResultList.delayRateAvg}} %
                </td>
                <td width="17%">{{tripResultList.rating1}}</td>
            </tr>
        </table>

        <div class="collapse" id="{{tripResultList.id11}}">
            <table class="table table-bordered table-striped" style="margin-top: 20px;">
                <tbody ng-repeat="detail in tripResultList.flightDetailSegement">
                <tr>
                    <td>{{detail.flightNumber2}}</td>
                    <td>departs: {{detail.origin2}}</td>
                    <td>arrives: {{detail.destination2}}</td>
                    <td>
                        Expected Duration: <b>{{detail.duration2}}</b>
                    </td>
                    <td>
                        Avg delay: {{detail.delayTime}} minutes
                    </td>
                    <td>Overall Rating: {{detail.overallRating}}</td>
                </tr>
                <tr>
                    <td>aircraft: {{detail.aircraft2}}</td>
                    <td><b>{{detail.originTime2}}</b></td>
                    <td><b>{{detail.destinationTime2}}</b></td>
                    <td>
                        Historical AirTime: <b>{{detail.actualDuration}}</b>
                    </td>
                    <td>
                        Delay Rate: {{detail.delayRate}}
                    </td>
                    <td>Food: {{detail.food_rating}} Comfort: {{detail.comfort_rating}} Entertainment: {{detail.entertainment_rating}}</td>
                </tr>
                <tr ng-show="detail.connectionduration2.length">
                    <td colspan="6" style="text-align: center;background-color: white;">
                        Change Flight: <b>{{detail.connectionduration2}}</b> minutes
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>



<script type="text/javascript">

    angular.module('sortApp', [])

        .controller('mainController', function($scope,$window,$http) {
            $scope.sortType     = 'price1'; // set the default sort type
            $scope.sortReverse  = false;  // set the default sort order
            $scope.searchFlights   = '';     // set the default search/filter term

            // create the list of messages
            $scope.messageList = [

                <c:forEach var="tripResult" varStatus="theCount" items="${requestScope.tripResultList}">
                <c:set var="flightSegment" value="${tripResult.getSlice().get(0).getSegment()}"/>
                {
                    price1: <c:out value="${tripResult.getSaleTotal().substring(3)}"/>,

                    flightNumber1 : [
                        <c:forEach var="oneSegament" items="${flightSegment}">
                        {flightNumberDetail: '<c:out value="${oneSegament.getFlight().getCarrier()} ${oneSegament.getFlight().getNumber()}" />'},
                        </c:forEach>
                    ],

                    origin1: '<c:out value="${flightSegment.get(0).getLeg().get(0).getOrigin()}" />',
                    originTime1: '<c:out value="${flightSegment.get(0).getLeg().get(0).getDepartureTime()}" />',
                    destination1: '<c:out value="${flightSegment.get(flightSegment.size() - 1).getLeg().get(0).getDestination()}" />',
                    destinationTime1: '<c:out value="${flightSegment.get(flightSegment.size() - 1).getLeg().get(0).getArrivalTime()}" />',
                    duration1: <c:out value="${tripResult.getSlice().get(0).getDuration()}" />,
                    stop1: <c:out value="${flightSegment.size() - 1}" />,
                    id1: '<c:out value="#${tripResult.getId()}" />',
                    id11: '<c:out value="${tripResult.getId()}" />',

                    <c:set var="avgDelayTime" value="0" scope="page" />
                    <c:set var="avgDelayRate" value="0" scope="page" />
                    <c:set var="avgRating" value="0" scope="page" />
                    <c:set var="avgDelayTimeCounter" value="0" scope="page" />
                    <c:set var="avgDelayRateCounter" value="0" scope="page" />
                    <c:set var="avgRatingCounter" value="0" scope="page" />
                    flightDetailSegement: [
                        <c:forEach var="eachSegament" items="${flightSegment}">
                        <c:set var="flightNumberString" value="${eachSegament.getFlight().getCarrier()} ${eachSegament.getFlight().getNumber()}" />
                        {flightNumber2: '<c:out value="${eachSegament.getFlight().getCarrier()} ${eachSegament.getFlight().getNumber()}" />',
                            aircraft2: '<c:out value="${eachSegament.getLeg().get(0).getAircraft()}" />',
                            origin2: '<c:out value="${eachSegament.getLeg().get(0).getOrigin()}" />',
                            destination2: '<c:out value="${eachSegament.getLeg().get(0).getDestination()}" />',
                            originTime2: '<c:out value="${eachSegament.getLeg().get(0).getDepartureTime()}" />',
                            destinationTime2: '<c:out value="${eachSegament.getLeg().get(0).getArrivalTime()}" />',
                            duration2: '<c:out value="${eachSegament.getLeg().get(0).getDuration()} minutes" />',
                            <c:if test="${not empty requestScope.delayMap.get(flightNumberString).get(1)}">
                                <fmt:parseNumber var="actualDuration" integerOnly="true" type="number" value="${requestScope.delayMap.get(flightNumberString).get(1)}" />
                                actualDuration: '<c:out value="${actualDuration} minutes" />',
                            </c:if>
                            <c:if test="${not empty eachSegament.getConnectionDuration()}">
                                connectionduration2: '<c:out value="${eachSegament.getConnectionDuration()}" />',
                            </c:if>
                            <c:if test="${not empty requestScope.delayMap.get(flightNumberString).get(0)}">
                                <fmt:parseNumber var="delayTime" integerOnly="true" type="number" value="${requestScope.delayMap.get(flightNumberString).get(0)}" />
                                delayTime: '<c:out value="${delayTime}" />',
                                <c:set var="avgDelayTime" value="${avgDelayTime + delayTime}" scope="page" />
                                <c:set var="avgDelayTimeCounter" value="${avgDelayTimeCounter + 1}" scope="page" />
                            </c:if>
                            <c:if test="${not empty requestScope.delayMap.get(flightNumberString).get(2)}">
                                <c:set var="avgDelayRate" value="${avgDelayRate + requestScope.delayMap.get(flightNumberString).get(2)}" scope="page" />
                                <c:set var="avgDelayRateCounter" value="${avgDelayRateCounter + 1}" scope="page" />
                                delayRate: '<c:out value="${Math.round(requestScope.delayMap.get(flightNumberString).get(2) * 100)}%"/>',
                            </c:if>

                            <c:if test="${not empty requestScope.delayMap.get(flightNumberString).get(3)}">
                                <c:set var="avgRating" value="${avgRating + requestScope.delayMap.get(flightNumberString).get(3)}" scope="page" />
                                <c:set var="avgRatingCounter" value="${avgRatingCounter + 1}" scope="page" />
                                overallRating: '<c:out value="${requestScope.delayMap.get(flightNumberString).get(3)}"/>',
                            </c:if>
                            food_rating: '<c:out value="${requestScope.delayMap.get(flightNumberString).get(4)}"/>',
                            comfort_rating: '<c:out value="${requestScope.delayMap.get(flightNumberString).get(5)}"/>',
                            entertainment_rating: '<c:out value="${requestScope.delayMap.get(flightNumberString).get(6)}"/>'
                        },

                        </c:forEach>
                    ],
                    rating1: <c:out value="${Math.round(avgRating / avgRatingCounter)}" />,
                    delayTimeAvg: <c:out value="${Math.round(avgDelayTime / avgDelayTimeCounter)}" />,
                    delayRateAvg: <c:out value="${Math.round(avgDelayRate / avgDelayRateCounter * 100)}" />

                },
                </c:forEach>
            ];
        });
</script>

<script type="text/javascript">
    $('#datetimepicker2').datepicker({
        "startDate": new Date(),
        "autoclose": true
    });
</script>

</body>

</html>

