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

<% boolean cartIsEmpty = false;
    if ("noItems".equals(request.getAttribute("addedToCart"))) {
        cartIsEmpty = true;
    }%>

<jsp:include page="/WEB-INF/header.html" />
<jsp:include page="/WEB-INF/body_top.html" />



<div>
    <h4> Your Cart<%
        if (cartIsEmpty) {
        %> is Empty<%}%> </h4>
        <%
            if (!cartIsEmpty) {
        %>
    <div class='p-one simpleCart_shelfItem'>
        <a href='?product=<c:out value="${addedToCart.id}"/>'>
            <img src='<c:out value="${addedToCart.imageUrl}"/>' height='600' width='480'>
        </a>
        <h4><c:out value="${addedToCart.name}"/> </h4>
        <p>$<c:out value="${addedToCart.price}"/></p>
        <p><c:out value="${addedToCart.description}"/></p>
        </p>
    </div>
    <%}%>
</div>

<jsp:include page="/WEB-INF/body_bottom.html" />
<jsp:include page="/WEB-INF/footer.html" />



