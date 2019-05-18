<%-- 
    Document   : home
    Created on : Mar 11, 2019, 6:35:35 PM
    Author     : AnhLe
--%>

<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Electro - HTML Ecommerce Template</title>
        <jsp:include page="include/user/index/top_header.jsp"/>
        <script src="http://localhost:8080/JV27_Spring_Project_Final/resources/user/js/jquery.min.js"></script>
        <script>
              $(document).ready(function (){
              $("#overstock").click(function(){
                  alert("Sản phẩm đã hết trong kho");
              });  
            });
        </script>
    </head>
    <body>
        <jsp:include page="include/user/index/header.jsp"/>
        <jsp:include page="include/user/index/menu.jsp"/>
        <!-- HOME -->

        <div id="home">
            <!-- container -->
            <div class="container" >
                <!-- home wrap -->
                <div class="home-wrap" ">
                    <!-- home slick -->
                    <div id="home-slick">
                        <!-- banner -->
                        <div class="banner banner-1">
                            <img src="resources/user/img/cuahang1.jpg" style="height: 360px" alt="">                          
                        </div>
                        <!-- /banner -->

                        <!-- banner -->
                        <div class="banner banner-1">
                            <img src="resources/user/img/cuahang2.jpg" style="height: 360px" alt="">

                        </div>
                        <!-- /banner -->

                        <!-- banner -->
                        <div class="banner banner-1">
                            <img src="resources/user/img/cuahang3.jpg" style="height: 360px"alt="">                            
                        </div>
                        <!-- /banner -->
                    </div>
                    <!-- /home slick -->
                </div>
                <!-- /home wrap -->
            </div>
            <!-- /container -->
        </div>
        <!-- /HOME -->
        <!-- section -->
        <div class="section">
            <!-- container -->
            <div class="container">

                <!-- row -->
                <div class="row">
                    <!-- section title -->
                    <div class="col-md-12">
                        <div class="section-title">
                            <h2 class="title">Sản Phẩm Mới</h2>
                        </div>
                    </div>
                    <!-- section title -->
                    <c:forEach var="sonmoi" items="${sonmois}"> 
                        <!-- Product Single -->
                        <div class="col-md-4 col-sm-6 col-xs-6">
                            <div class="product product-single">
                                <div class="product-thumb" style="align-content: center">
                                    <button class="main-btn quick-view"  onclick="location.href = '<c:url value="/detail-form/${sonmoi.id}"/>'"><i class="fa fa-search-plus"></i> Quick view</button>
                                    <img src="resources/Image/${sonmoi.image.get(1).name}" style="width:350px;height:250px" alt="">
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
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->
        <div class="section">
            <div class="container" >
                <nav aria-label="Something.." style="padding-left: 40%;padding-right: 30%">
                    <ul class="pagination pagination-lg">
                       
                        <li class="page-item ">
                            <a class="page-link" id="page1" href="${pageContext.servletContext.contextPath}/home?page=1">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" id="page2" href="${pageContext.servletContext.contextPath}/home?page=2">2</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" id="page3" href="${pageContext.servletContext.contextPath}/home?page=3">3</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" id="page4"  href="${pageContext.servletContext.contextPath}/home?page=4">4</a>
                        </li>
                       
                    </ul>
                </nav>
            </div>
        </div>
        <jsp:include page="include/user/index/footer.jsp"/>


    </body>
</html>
