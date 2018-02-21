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
<jsp:include page="/WEB-INF/header.html" />
<jsp:include page="/WEB-INF/body_top.html" />


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
<jsp:include page="/WEB-INF/body_bottom.html" />
<jsp:include page="/WEB-INF/footer.html" />


