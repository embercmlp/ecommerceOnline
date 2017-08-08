<%-- 
    Document   : category
    Created on : 07/08/2017, 10:35:21 PM
    Author     : EOV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="grow">
    <div class="container">
        <h2>PRODUCTOS</h2>
    </div>
</div>
<div class="container">
        <c:forEach var="product" items="${products }">
            <div class="col-md-6 bottom-cd simpleCart_shelfItem">
                <div class="product-at ">
                    <a href="detail.html"><img class="img-responsive" src="${pageContext.servletContext.contextPath
                                                                             }/assets/images/${product.photo}" alt="">
                        <div class="pro-grid">
                            <span class="buy-in">Buy Now</span>
                        </div>
                    </a>	
                </div>
                <p class="tun">${product.name}<br>${product.description}</p>
                <div class="ca-rt">
                    <a href="#" class="item_add"><p class="number item_price"><i> </i>${product.price}</p></a>						
                </div>
                <div class="clearfix"></div>
            </div>
    </c:forEach>
    <div class="clearfix"></div>
    
</div>