<%-- 
    Document   : detail-product
    Created on : Mar 24, 2019, 8:56:34 PM
    Author     : duyth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Product</title>
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
                    <li class="active">${product.name}</li>
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
                    <!--  Product Details -->
                    <div class="product product-details clearfix">
                        <div class="col-md-6">
                            <div id="product-main-view">
                                <c:forEach var="image" items="${product.image}">
                                    <div class="product-view">
                                        <img src="http://localhost:8080/JV27_Spring_Project_Final/resources/Image/${image.name}" style="width:450px;height:450px" alt="">
                                    </div>
                                </c:forEach>

                            </div>
                            <div id="product-view">
                                <c:forEach var="image" items="${product.image}">
                                    <div class="product-view">
                                        <img src="http://localhost:8080/JV27_Spring_Project_Final/resources/Image/${image.name}" style="width:130px;height:120px" alt="">
                                    </div>
                                </c:forEach>

                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="product-body">
                                <h2 class="product-name">${product.name}</h2>
                                <h3 class="product-price">${product.price}<sup>đ</sup><del class="product-old-price"></del></h3>
                                <p><strong>Availability: <c:if test="${product.deleteFlag == true}"></strong > <i style="color: red">In Stock</i></p></c:if>
                                <c:if test="${product.deleteFlag != true}"></strong> <i style="color: red">Over Stock</i></p></c:if>
                                    <p><strong>Brand:</strong> E-SHOP</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                        dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>


                                    <div class="product-btns">
                                    <c:if test="${product.deleteFlag == true}">
                                        <button class="primary-btn add-to-cart" onclick="location.href = '<c:url value="/cart-form/${product.id}"/>'"><i class="fa fa-shopping-cart" ></i> Add to Cart</button>
                                    </c:if>
                                    <c:if test="${product.deleteFlag != true}">
                                        <button class="primary-btn" id="overstock"><i class="fa " ></i>Over Stock</button>
                                    </c:if>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- /Product Details -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->



        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">

                <!-- row -->
                <div class="row">
                    <!-- section title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h2 class="title">Son Môi</h2>
                        </div>
                    </div>
                    <!-- section title -->
                    <c:forEach var="sonmoi" items="${sonmois}"> 
                        <!-- Product Single -->
                        <div class="col-md-3 col-sm-6 col-xs-6">
                            <div class="product product-single">
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
                                            <button class="primary-btn add-to-cart" style="width: 100%"><i class="fa "></i>Over Stock</button>  
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /Product Single -->
                    </c:forEach>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->


        <jsp:include page="include/user/index/footer.jsp"/>

    </body>
</html>
