<%-- 
    Document   : dat-hang-thanh-cong
    Created on : Mar 29, 2019, 6:38:25 PM
    Author     : duyth
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="include/user/index/top_header.jsp"/>
        <!--bootstrap for table -->
        <link type="text/css" rel="stylesheet" href="http://localhost:8080/JV27_Spring_Project_Final/resources/user/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="http://localhost:8080/JV27_Spring_Project_Final/resources/user/AllinOne.css" />
        <title>Dat hang thanh cong</title>
    </head>
    <body>
        <jsp:include page="include/user/index/header.jsp"/>
        <jsp:include page="include/user/detailProduct/menu.jsp"/>

        <!-- BREADCRUMB -->
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Đặt hàng thành công</li>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- table detail account -->

        <div class="order">
            <div class="row">
                <div class="col-lg-6 col-md-7 col-xs-12">
                    <div class="section__header"> <h3>Cám ơn bạn đã mua hàng tại E-Shop. Bạn sẽ thanh toán khi nhận hàng, chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất</h3> </div>
                    <div class="fieldset">
                        <div class="fieldset-head ">
                            <label class="label--full-width"> Thông Tin Khách Hàng </label>
                        </div>
                        <div class="fieldset-body">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-xs-5">Họ tên</div>
                                <div class="col-lg-8 col-md-8 col-xs-7">
                                    <span>${shipping.shippingOrder.fullName}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-xs-5">Email</div>
                                <div class="col-lg-8 col-md-8 col-xs-7">
                                    <span>${shipping.shippingOrder.email}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-xs-5">Số điện thoại</div>
                                <div class="col-lg-8 col-md-8 col-xs-7">
                                    <span>${shipping.shippingOrder.phone}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-xs-5">Địa chỉ</div>
                                <div class="col-lg-8 col-md-8 col-xs-7">
                                    <span>${shipping.shippingOrder.address}</span>
                                </div>
                            </div>

                        </div>

                        <button id="btn_submit_cart" type="button" class="btn btn-large btn-block btn-default btn-checkout" onclick="location.href = ' <c:url value="/home" /> '">Trở về trang chủ </button>
                    </div>
                </div>
                    <br>
                    <br>
                    <br>
                <div class="col-lg-6 col-md-5 col-xs-12">
                    <div id="cart-info" class="cart-info">
                        <h2 class="title">Giỏ Hàng</h2>
                        <ul class="list-unstyled">
                            <c:forEach var="cart" items="${cartItem}">
                                <li>
                                    <figure>
                                        <a class="cart_list_product_img" href="" title="giỏ hàng">
                                            <img src="http://localhost:8080/JV27_Spring_Project_Final/resources/Image/${cart.product.image.get(1).name}" alt="${cart.product.name}">
                                        </a>
                                    </figure>
                                    <div class="list_content">
                                        <h5>
                                            <a class="cart_list_product_img">
                                                <span>${cart.product.name} </span>
                                            </a>
                                        </h5>
                                        <div class="quantity">
                                            ${cart.quantity} x
                                            <span class="amount">
                                                <span class="money">
                                                    ${cart.product.price}
                                                </span>
                                            </span>
                                            <div class="pull-right tt">
                                                ${cart.totalPrice}
                                            </div>
                                        </div>
                                    </div>
                                </li>
            </c:forEach>

                        </ul>
                        <div class="load-ship">
                            <div class="box-coupon">
                                <p class="list-info-price">
                                    <small class="color-black">Tạm tính: </small> <span style="color:green">${myCartTotal}</span>
                                </p>
                            </div>
                        </div>
                        <div class="load-giamgia hide">
                            <div class="box-coupon">
                                <p class="list-info-price" id="pricetotalmis" data-id="870000">
                                    <small class="color-black">Giảm giá: </small> <span style="color:green">- ₫</span>
                                </p>
                            </div>
                        </div>
                        <div class="load-ship">
                            <div class="box-coupon">
                                <p class="list-info-price" id="priceship" data-id="0">
                                    <small class="color-black">Phí vận chuyển: </small> <span style="color:green"> + 0 ₫</span>
                                </p>
                            </div>
                        </div>
                        <!--Tổng số tiền-->
                        <div class="subtotal">
                            Thành tiền:
                            <span>
                                <span class="amount">
                                    <strong class="money" style="color:green"> ${myCartTotal}</strong>
                                </span>
                            </span>
                        </div>
                        <div class="pttt">
                            <span>* Phương thức thanh toán: Nhận hàng &amp; thanh toán tại nhà</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 



    <jsp:include page="include/user/index/footer.jsp"/>
</body>
</html>
