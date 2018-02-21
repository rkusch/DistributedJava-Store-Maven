<%-- 
    Document   : home
    Created on : Feb 6, 2018, 6:40:49 PM
    Author     : ryan
--%>

<%@page import="edu.wctc.dj.week4.model.StaticPage"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.List"%>
<%@page import="edu.wctc.dj.week4.model.Name"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<% List<StaticPage> pageList = (List<StaticPage>) request.getAttribute("pageList");%>
<jsp:include page="/WEB-INF/header.html" />

<header>
    <div class="header-content">
        <div class="header-content-inner">
            <h1>Explore the Outdoors</h1>
            <p>With bikes from Adventure Works, you have the power to explore the outdoors like never before. </p>
            <a href="?product=all" class="btn btn-primary btn-lg">All Products</a>
        </div>
    </div>
</header>

<!-- Intro Section -->
<section class="intro">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <span class="glyphicon glyphicon-apple" style="font-size: 60px"></span>
                <h2 class="section-heading">Authentic Quality Components</h2>
                <p class="text-light">All of our products come from verified vendors who provide 100% authentic components.
            </div>
        </div>
    </div>
</section>

<!-- Content 1 -->
<!--    <section class="content">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <img class="img-responsive img-circle center-block" src="images/microphone.jpg" alt="">
                </div>
                <div class="col-sm-6">
                        <h2 class="section-header">Best in Class</h2>
                        <p class="lead text-muted">Holisticly predominate extensible testing procedures for reliable supply chains. Dynamically innovate resource-leveling customer service for state of the art customer service.</p>
                        <a href="#" class="btn btn-primary btn-lg">Classify It</a>
                </div>

            </div>
        </div>
    </section>-->

<!-- Content 2 -->
<section class="content content-2">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h2 class="section-header">Orders</h2>
                <p class="lead text-light">Our order history is sortable by the customer's name, city, state, as well as their overall total purchased.  </p>
                <a href="?id=orders" class="btn btn-default btn-lg">All Orders</a>
            </div>
            <div class="col-sm-6">
                <img class="img-responsive img-circle center-block" src="images/iphone.jpg" alt="">
                <!-- Image from http://d1gxum163dfxw6.cloudfront.net/images/made/images/remote/https_marineeimages.s3.amazonaws.com/images/1826/17_mrn_attack_4__large_640_366_80_c1_smart_scale.jpg -->
            </div>

        </div>
    </div>
</section>

<!-- Promos -->
<div class="container-fluid">
    <div class="row promo">
        <a href="#">
            <div class="col-md-4 promo-item item-1">
                <h3>
                    Unleash
                    <!-- Image from http://www.sidetracked.com/wp-content/uploads/2015/08/MountainBike-Adventure-Wales-05.jpg -->
                </h3>
            </div>
        </a>
        <a href="#">
            <div class="col-md-4 promo-item item-2">
                <h3>
                    Synergize
                    <!-- Image from https://images-na.ssl-images-amazon.com/images/G/01/img15/outdoors/billboard/18728_OD_bikes_1691x536._CB309157653_.png -->
                </h3>
            </div>
        </a>

        <a href="#">
            <div class="col-md-4 promo-item item-3">
                <h3>
                    Explore
                </h3><!-- Image from http://d1aem64s5ph5r2.cloudfront.net/wp-content/uploads/2014/05/Bike-Storage-Sheds-e1407834760795.jpg -->
            </div>
        </a>
    </div>
</div>

<jsp:include page="/WEB-INF/footer.html" />


