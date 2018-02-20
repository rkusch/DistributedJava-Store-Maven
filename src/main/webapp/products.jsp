<%-- 
    Document   : products
    Created on : Feb 6, 2018, 6:40:49 PM
    Author     : ryan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="edu.wctc.dj.week4.model.Product"%>
<%@page import="edu.wctc.dj.week4.model.StaticPage"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<% List<StaticPage> pageList = (List<StaticPage>) request.getAttribute("pageList");%>
<% List<Product> products = (List<Product>) request.getAttribute("allProducts");%>
<%=pageList.get(0).getContent()%>

<section class="content content-2">
    <div class="container">
        <div class="product">
            <div class="container">
                <div class="product-main">
                    <div class="col-md-9 p-left">
                        <!--start-product-->

                        <%  int productCounter = 0;
                            boolean newRow = false;
                            %>
                            <c:forEach var="product" items="${allProducts}"> 
                            <% 
                                productCounter = productCounter + 1;
                                if (productCounter == 1) {
                        %>
                        <div class='product-one'>
                            <%
                                }
                                if (newRow == true) {

                            %>
                            <div class='clearfix'> </div>
                        </div>
                        <div class='product-one'>

                            <%  }
                            %>

                            <div class='col-md-4 product-left single-left'>
                                <div class='p-one simpleCart_shelfItem'>
                                    <a href='?product=<c:out value="${product.id}"/>'>
                                        <img src='<c:out value="${product.imageUrl}"/>' height='300' width='250'>
                                        <div class='mask'>
                                            <span>Quick View</span>
                                        </div>
                                    </a>
                                    <h4> <c:out value="${product.name}"/> </h4>
                                    <p><a class='item_add' href='#'><i></i> <span class=' item_price'> $ <c:out value="${product.price}"/></span></a></p>
                                </div>
                            </div>
                            <%
                                    if ((productCounter % 3) == 0) {
                                        newRow = true;
                                    } else if (!((productCounter % 3) == 0)) {
                                        newRow = false;
                                    }
                                
                            %>
                            </c:forEach>

                        </div>
                    </div>


                    <div class="col-md-3 p-right single-right">
                        <h3>Categories</h3>
                        <ul class="product-categories">
                            <li><a href="#">Road</a> <span class="count">(14)</span></li>
                            <li><a href="#">Mountain</a> <span class="count">(2)</span></li>
                            <li><a href="#">Electric</a> <span class="count">(2)</span></li>
                            <li><a href="#">Cyclocross</a> <span class="count">(11)</span></li>
                            <li><a href="#">Hybrid</a> <span class="count">(3)</span></li>
                            <li><a href="#">Urban & Commuter</a> <span class="count">(3)</span></li>
                        </ul>
                        <h3>Colors</h3>
                        <ul class="product-categories">
                            <li><a href="#">Green</a> <span class="count">(14)</span></li>
                            <li><a href="#">Blue</a> <span class="count">(2)</span></li>
                            <li><a href="#">Red</a> <span class="count">(2)</span></li>
                            <li><a href="#">Gray</a> <span class="count">(8)</span></li>
                            <li><a href="#">Green</a> <span class="count">(11)</span></li>
                            <li><a href="#">Yellow</a> <span class="count">(2)</span></li>
                        </ul>
                        <h3>Price</h3>
                        <ul class="product-categories p1">
                            <li><a href="#">600$-700$</a> <span class="count">(14)</span></li>
                            <li><a href="#">700$-800$</a> <span class="count">(2)</span></li>
                            <li><a href="#">800$-900$</a> <span class="count">(2)</span></li>
                            <li><a href="#">900$-1000$</a> <span class="count">(8)</span></li>
                            <li><a href="#">1000$-1100$</a> <span class="count">(11)</span></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

        <!--end-product-->
        <!--start-footer-->
        <div class="footer">
            <div class="container">
                <div class="footer-top">
                    <div class="col-md-3 footer-left">
                        <h3>ABOUT US</h3>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="contact.html">Contact Us</a></li>
                            <li><a href="#">Our Sites</a></li>
                            <li><a href="#">In The News</a></li>
                            <li><a href="#">Team</a></li>
                            <li><a href="#">Carrers</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-left">
                        <h3>YOUR ACCOUNT</h3>
                        <ul>
                            <li><a href="account.html">Your Account</a></li>
                            <li><a href="#">Personal Information</a></li>
                            <li><a href="contact.html">Addresses</a></li>
                            <li><a href="#">Discount</a></li>
                            <li><a href="#">Track your order</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-left">
                        <h3>CUSTOMER SERVICES</h3>
                        <ul>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Shipping</a></li>
                            <li><a href="#">Cancellation</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="#">Bulk Orders</a></li>
                            <li><a href="#">Buying Guides</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer-left">
                        <h3>CATEGORIES</h3>
                        <ul>
                            <li><a href="#">Road</a></li>
                            <li><a href="#">Mountain</a></li>
                            <li><a href="#">Electric</a></li>
                            <li><a href="#">Cyclocross</a></li>
                            <li><a href="#">Urban & Commuter</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
</section>
<%=pageList.get(1).getContent()%>



