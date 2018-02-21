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
<jsp:include page="/WEB-INF/header.html" />
<jsp:include page="/WEB-INF/body_top.html" />


<div>
    <div class='p-one simpleCart_shelfItem'>
        <a href='?product=<c:out value="${currentProduct.id}"/>'>
            <img src='<c:out value="${currentProduct.imageUrl}"/>' height='600' width='480'>
        </a>
        <h4> <c:out value="${currentProduct.name}"/> </h4>
        <p> $<c:out value="${currentProduct.price}"/><a class='item_add' href='?cart=<c:out value="${currentProduct.id}"/>'><i></i> <span class=' item_price'>  <i>Add To Cart </i></span></a> </p>
        <p> <c:out value="${currentProduct.description}"/> </p>
    </div>
</div>


<jsp:include page="/WEB-INF/body_bottom.html" />
<jsp:include page="/WEB-INF/footer.html" />



