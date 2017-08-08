<%-- 
    Document   : templateuser
    Created on : 29/07/2017, 04:44:43 PM
    Author     : EOV
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="shop.service.*" %> 
<%@ page import="org.springframework.web.servlet.support.RequestContextUtils" %> 
<%@ page import="org.springframework.context.ApplicationContext" %> 

<html>
    <head>
        <title>Mattress A Ecommerce Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
        <link href="${pageContext.servletContext.contextPath }/assets/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="${pageContext.servletContext.contextPath }/assets/js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="${pageContext.servletContext.contextPath }/assets/css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Mattress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'><!--//fonts-->
        <!-- start menu -->
        <link href="${pageContext.servletContext.contextPath }/assets/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="${pageContext.servletContext.contextPath }/assets/js/memenu.js"></script>
        <script>$(document).ready(function(){$(".memenu").memenu();});</script>
        <script src="${pageContext.servletContext.contextPath }/assets/js/simpleCart.min.js"></script>
    </head>
    <body>
        <%
            ApplicationContext applicationContext
                    = RequestContextUtils.getWebApplicationContext(request);
            CategoryService categoryService = (CategoryService) applicationContext.getBean("categoryService");
        %>
        <!--header-->
        <div class="header">
            <div class="header-top">
                <div class="container">
                    <div class="social">
                        <ul>
                            <li><a href="#"><i class="facebok"> </i></a></li>
                            <li><a href="#"><i class="twiter"> </i></a></li>
                            <li><a href="#"><i class="inst"> </i></a></li>
                            <li><a href="#"><i class="goog"> </i></a></li>
                            <div class="clearfix"></div>	
                        </ul>
                    </div>
                    <div class="header-left">

                        <div class="search-box">
                            <div id="sb-search" class="sb-search">
                                <form action="#" method="post">
                                    <input class="sb-search-input" placeholder="¿Qué estás buscando?" type="search"  id="search">
                                    <input class="sb-search-submit" type="submit" value="">
                                    <span class="sb-icon-search"> </span>
                                </form>
                            </div>
                        </div>

                        <!-- search-scripts -->
                        <script src="${pageContext.servletContext.contextPath }/assets/js/classie.js"></script>
                        <script src="${pageContext.servletContext.contextPath }/assets/js/uisearch.js"></script>
                        <script>
            new UISearch(document.getElementById('sb-search'));
                        </script>
                        <!-- //search-scripts -->

                        <div class="ca-r">
                            <div class="cart box_1">
                                <a href="checkout.html">
                                    <h3> <div class="total">
                                            <span class="simpleCart_total"></span> </div>
                                        <img src="${pageContext.servletContext.contextPath }/assets/images/cart.png" alt=""/></h3>
                                </a>
                                <p><a href="javascript:;" class="simpleCart_empty">Vaciar Carrito</a></p>

                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                </div>
            </div>
            <div class="container">
                <div class="head-top">
                    <div class="logo">
                        <h1><a href="${pageContext.request.contextPath }/home.htm">BIENVENIDO!</a></h1>
                    </div>
                    <div class=" h_menu4">
                        <ul class="memenu skyblue">
                            <li><a class="color8" href="${pageContext.request.contextPath }/home.htm">INICIO</a></li>	
                            <li><a class="color1" href="#">CAMAS</a>
                                <div class="mepanel">
                                    <div class="row">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <c:forEach var="category" items="<%= categoryService.findAll()%>">
                                                        <li><a href="#">${category.name }</a></li>
                                                    </c:forEach>
                                                </ul>	
                                            </div>							
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                            <!--  <ul>
                                                    <li><a href="products.html">Alpaca</a></li>
                                                    <li><a href="products.html">Cashmere</a></li>
                                                    <li><a href="products.html">Cotton</a></li>
                                                    <li><a href="products.html">Cotton Blend</a></li>
                                                    <li><a href="products.html">Down</a></li>
                                                    <li><a href="products.html">Down Alternative</a></li>
                                                    <li><a href="products.html">Egyptian Cotton</a></li>
                                                    <li><a href="products.html">Modal</a></li>
                                                    <li><a href="products.html">Pima Cotton</a></li>
                                                    <li><a href="products.html">Silk </a></li>

                                                </ul>	-->
                                            </div>							
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                           <!--     <ul>
                                                    <li><a href="products.html">Bedskirt</a></li>
                                                    <li><a href="products.html">Blanket/Throw</a></li>
                                                    <li><a href="products.html">Collection/Duvet</a></li>
                                                    <li><a href="products.html">Comforter</a></li>
                                                    <li><a href="products.html">Comforter Set</a></li>
                                                    <li><a href="products.html">Decorative Pillow</a></li>
                                                    <li><a href="products.html">Mattress Pad </a></li>
                                                    <li><a href="products.html">Mattress Topper</a></li>
                                                    <li><a href="products.html">Pillow</a></li>
                                                    <li><a href="products.html">Pillow Protector</a></li>
                                                </ul>	-->
                                            </div>												
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="grid"><a class="color2" href="#">OTROS PRODUCTOS</a>
                                <div class="mepanel">
                                    <div class="row">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <li><a href="products.html">Mantas</a></li>
                                                    <li><a href="products.html">Cobertores</a></li>
                                                    <li><a href="products.html">Cortinas</a></li>
                                                    <li><a href="products.html">Velos</a></li>
                                                    <li><a href="products.html">Edredones</a></li>
                                                    <li><a href="products.html">Colchas</a></li>
                                                    <li><a href="products.html">Frazadas</a></li>
                                                    <li><a href="products.html">Almohadas</a></li>
                                                    <li><a href="products.html">Fundas para almohadas</a></li>

                                                </ul>	
                                            </div>								
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                               <!-- <ul>
                                                    <li><a href="products.html">Alpaca</a></li>
                                                    <li><a href="products.html">Cashmere</a></li>
                                                    <li><a href="products.html">Cotton</a></li>
                                                    <li><a href="products.html">Cotton Blend</a></li>
                                                    <li><a href="products.html">Down</a></li>
                                                    <li><a href="products.html">Down Alternative</a></li>
                                                    <li><a href="products.html">Egyptian Cotton</a></li>
                                                    <li><a href="products.html">Modal</a></li>
                                                    <li><a href="products.html">Pima Cotton</a></li>
                                                    <li><a href="products.html">Silk </a></li>
                                                </ul> -->	
                                            </div>							
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                          <!--      <ul>
                                                    <li><a href="products.html">Bedskirt</a></li>
                                                    <li><a href="products.html">Blanket/Throw</a></li>
                                                    <li><a href="products.html">Collection/Duvet</a></li>
                                                    <li><a href="products.html">Comforter</a></li>
                                                    <li><a href="products.html">Comforter Set</a></li>
                                                    <li><a href="products.html">Decorative Pillow</a></li>
                                                    <li><a href="products.html">Mattress Pad </a></li>
                                                    <li><a href="products.html">Mattress Topper</a></li>
                                                    <li><a href="products.html">Pillow</a></li>
                                                    <li><a href="products.html">Pillow Protector</a></li>
                                                </ul>	-->
                                            </div>												
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a class="color4" href="${pageContext.request.contextPath }/login.htm">REGISTRO</a></li>				
                            <li><a class="color6" href="contact.html">CONTÁCTENOS</a></li>
                        </ul> 
                    </div>

                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--content-->
        <tiles:insertAttribute name="content"></tiles:insertAttribute> 
 
        <div class="footer w3layouts">
            <div class="container">
                <div class="footer-top-at w3">

                    <div class="col-md-3 amet-sed w3l">
                        <h4>MÁS INFORMACIÓN</h4>
                        <ul class="nav-bottom">
                            <li><a href="#">Cómo Comprar</a></li>
                            <li><a href="#">Preguntas Frecuentes</a></li>
                            <li><a href="contact.html">Ubícanos</a></li>
                            <li><a href="#">Envíos</a></li>
                            <li><a href="#">Afiliación</a></li>	
                        </ul>	
                    </div>
                    <div class="col-md-3 amet-sed w3ls">
                        <a href="#"><h4>CAMAS</h4></a>
                        <ul class="nav-bottom">
                            <c:forEach var="category" items="<%= categoryService.findAll()%>">
                                <li><a href="${pageContext.request.contextPath }/product/category/${category.id}.htm">${category.name }</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="col-md-3 amet-sed agileits">
                        <h4>BOLETÍN</h4>
                        <div class="stay agileinfo">
                            <div class="stay-left wthree">
                                <form action="#" method="post">
                                    <input type="text" placeholder="Ingrese su correo" required="">
                                </form>
                            </div>
                            <div class="btn-1 w3-agileits">
                                <form action="#" method="post">
                                    <input type="submit" value="Suscribirse">
                                </form>
                            </div>
                            <div class="clearfix"> </div>
                        </div>

                    </div>
                    <div class="col-md-3 amet-sed agileits-w3layouts">
                        <h4>CONTÁCTANOS</h4>
                        <p>Comuníquese con nosotros,</p>
                        <p>a través del número:</p>
                        <p>+51991645850</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="footer-class w3-agile">
                <p>© 2017 Página Web de Ventas. Elaborada Por Axell Ñacari y Ember Ochoa.</p>
                <p>Laboratorio Comercio Electrónico<p>
            </div>
        </div>
    </body>
</html>

