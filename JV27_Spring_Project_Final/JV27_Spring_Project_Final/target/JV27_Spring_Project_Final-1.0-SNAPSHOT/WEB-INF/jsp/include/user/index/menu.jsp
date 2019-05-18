<%-- 
    Document   : menu
    Created on : Mar 19, 2019, 12:06:31 AM
    Author     : duyth
--%>
<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- NAVIGATION -->
<div id="navigation">
    <!-- container -->
    <div class="container">
        <div id="responsive-nav">
            <!-- category nav -->
            <div class="category-nav">
                <span class="category-header">Loại Sản Phẩm <i class="fa fa-list"></i></span>
                <ul class="category-list">
                    <c:forEach var="producttype" items="${producttypes}">
                    <li><a href="${pageContext.servletContext.contextPath}/searchproducttype/${producttype.id}/${producttype.name}">${producttype.name}</a></li>
                    </c:forEach>
                    <li class="dropdown side-dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">Thương Hiệu <i class="fa fa-angle-right"></i></a>
                        <div class="custom-menu" style="width: 300px">
                            <div class="row" >
                                <div class="col-md-12">
                                    <ul class="list-links">
                                        <c:forEach var="provider" items="${providers}">
                                        <li><a href="${pageContext.servletContext.contextPath}/searchprovider/${provider.id}/${provider.name}">${provider.name}</a></li>
                                        </c:forEach>
                                    </ul>

                                </div>
   
                            </div>
                        </div>
                    </li>
                   
                </ul>
            </div>
            <!-- /category nav -->

            <!-- menu nav -->
            <div class="menu-nav">
                <span class="menu-header">Menu <i class="fa fa-bars"></i></span>
                <ul class="menu-list">
                    <li><a href="http://localhost:8080/JV27_Spring_Project_Final/home">Home</a></li>
                </ul>
            </div>
            <!-- menu nav -->
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /NAVIGATION -->
