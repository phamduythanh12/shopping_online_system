<%-- 
    Document   : search-product
    Created on : Mar 30, 2019, 10:04:03 PM
    Author     : duyth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Product</title>
        <jsp:include page="include/user/index/top_header.jsp"/>
        <script>
            $(document).ready(function (){
              $("#overstock").click(function(){
                  alert("Sản phẩm đã hết trong kho");
              });  
            })
        </script>
    </head>
    <body>
        <jsp:include page="include/user/index/header.jsp"/>
        <jsp:include page="include/user/detailProduct/menu.jsp"/>

        <!-- BREADCRUMB -->
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Products</a></li>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- section-title -->
                    <c:if test="${title != null}">
                        <div class="col-md-12">
                            <div class="section-title">
                                <h2 class="title">${title}</h2>
                                <div class="pull-right">
                                    <div class="product-slick-dots-1 custom-dots"></div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                    <!-- /section-title -->
                    <!-- Product Slick -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="row">

                            <c:forEach var="sonmoi" items="${products}"> 
                                <!-- Product Single -->
                                <div class="col-md-3 col-sm-6 col-xs-6">
                                    <div class="product product-single" text-center>
                                        <div class="product-thumb">
                                            <button class="main-btn quick-view"  onclick="location.href = '<c:url value="/detail-form/${sonmoi.id}"/>'"><i class="fa fa-search-plus"></i> Quick view</button>
                                            <img src="http://localhost:8080/JV27_Spring_Project_Final/resources/Image/${sonmoi.image.get(1).name}" style="width:250px;height:200px" alt="">
                                        </div>
                                        <div class="product-body">
                                            <h3 class="product-price">${sonmoi.price}<sup>đ</sup><del class="product-old-price"></del></h3>
                                            <h2 class="product-name"><a href="#">${sonmoi.name}</a></h2>
                                            <div class="product-btns text-center">
                                                <c:if test="${sonmoi.deleteFlag == true}">
                                                    <button class="primary-btn add-to-cart" onclick="location.href = '<c:url value="/cart-form/${sonmoi.id}"/>'"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
                                                </c:if> 
                                                <c:if test="${sonmoi.deleteFlag != true}">
                                                    <button class="primary-btn add-to-cart" id="overstock" style="width: 100%"><i class="fa "></i>Over Stock</button>  
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /Product Single -->
                            </c:forEach>

                        </div>
                    </div>
                    <!-- /Product Slick -->
                </div>
                <!-- /row -->

            </div>
            <!-- /container -->
        </div>
        <!-- /section -->



        <jsp:include page="include/user/index/footer.jsp"/>
    </body>
</html>
