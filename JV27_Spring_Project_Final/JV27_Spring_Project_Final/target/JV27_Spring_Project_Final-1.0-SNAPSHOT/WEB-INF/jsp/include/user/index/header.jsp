
<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!-- HEADER -->
<header>

    <!-- header -->
    <div id="header">
        <div class="container">
            <div class="pull-left">
                <!-- Logo -->
                <div class="header-logo">
                    <a class="logo" href="#">
                        <img src="http://localhost:8080/JV27_Spring_Project_Final/resources/user/img/logo.png" alt="">
                    </a>
                </div>
                <!-- /Logo -->

                <!-- Search -->
                <div class="header-search">
                    <form action="${pageContext.servletContext.contextPath}/search" method="post">
                        <input class="input search-input" name="productName" id = "producnname"type="text" placeholder="Enter name product">
                        <button class="search-btn btn-search" type="submit" ><i class="fa fa-search"></i></button>
                    </form>
                </div>
                <!-- /Search -->
            </div>
            <div class="pull-right">
                <ul class="header-btns">
                    <!-- Account -->
                    <c:if test="${acction != null}">
                        <li class="header-account dropdown default-dropdown">
                            <p style="color: red">${acction}</p>
                        </li>
                    </c:if>
                    <li class="header-account dropdown default-dropdown">
                        <div class="dropdown-toggle" role="button" data-toggle="dropdown" aria-expanded="true">
                            <div class="header-btns-icon" style="background-color: #d99a56">
                                <i class="fa fa-user-o"></i>
                            </div>
                            <sec:authorize access="isAuthenticated()">
                                <sec:authorize access="hasRole('ROLE_USER')">
                                    <strong class="text-uppercase" style="color: darkturquoise"><sec:authentication property="principal.username"/></strong>
                                    </sec:authorize>
                                </sec:authorize>
                        </div>
                        <sec:authorize access="!isAuthenticated()">
                            <ul class="custom-menu">
                                <li> <a href="${pageContext.servletContext.contextPath}/login" class="text-uppercase"><i class="fa fa-user-o"></i> Login</a></li>                         
                                <li><a href="${pageContext.servletContext.contextPath}/createaccount"><i class="fa fa-check"></i> Create An Account</a></li>  
                            </ul>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <ul class="custom-menu">
                                <li><a href="${pageContext.servletContext.contextPath}/tomyaccount"><i class="fa fa-user-o"></i> My Account</a></li>                         
                                <c:if test="${myCartNum != 0}">
                                <li><a href="${pageContext.servletContext.contextPath}/thanhtoan"><i class="fa fa-check"></i> Checkout</a></li>
                                </c:if>
                                <li><a href="<c:url value="/logout"/>"><i class="fa fa-unlock-alt"></i> Logout</a></li>
                            </ul>
                        </sec:authorize>
                    </li>
                    <!-- /Account -->

                    <!-- Cart -->
                    <li class="header-cart dropdown default-dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                            <div class="header-btns-icon" style="background-color: #d99a56">
                                <i class="fa fa-shopping-cart"></i>
                                <span class="qty">${myCartNum}</span>
                            </div>
                            <strong class="text-uppercase">Your Cart</strong>
                            <br>
                            <span>${myCartTotal}<sup>đ</sup></span>
                        </a>
                        <c:if test="${myCartNum != 0}">
                            <div class="custom-menu">
                                <div id="shopping-cart">
                                    <div class="shopping-cart-list">
                                        <c:forEach var ="cart" items="${myCartItems}">
                                            <div class="product product-widget">
                                                <div class="product-thumb">
                                                    <img src="http://localhost:8080/JV27_Spring_Project_Final/resources/Image/${cart.product.image.get(1).name}" alt="">
                                                </div>
                                                <div class="product-body">
                                                    <h3 class="product-price">${cart.product.price}<sup>đ</sup> <span class="qty">x${cart.quantity}</span></h3>
                                                    <h2 class="product-name"><a href="#">${cart.product.name}</a></h2>
                                                </div>
                                                <button class="cancel-btn" onclick="location.href = '<c:url value="/delete-cart/${cart.product.id}"/>'"><i class="fa fa-trash"></i></button>
                                            </div>
                                        </c:forEach>

                                    </div>
                                    <div class="shopping-cart-btns">
                                        <button class="main-btn" onclick="location.href = '<c:url value="/cart-detail"/>'">View Cart</button>
                                        <button class="primary-btn"  onclick="location.href = '<c:url value="/thanhtoan"/>'">Checkout <i class="fa fa-arrow-circle-right"></i></button>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </li>
                    <!-- /Cart -->

                    <!-- Mobile nav toggle-->
                    <li class="nav-toggle">
                        <button class="nav-toggle-btn main-btn icon-btn"><i class="fa fa-bars"></i></button>
                    </li>
                    <!-- / Mobile nav toggle -->
                </ul>
            </div>
        </div>
        <!-- header -->
    </div>
    <!-- container -->
</header>
<!-- /HEADER -->