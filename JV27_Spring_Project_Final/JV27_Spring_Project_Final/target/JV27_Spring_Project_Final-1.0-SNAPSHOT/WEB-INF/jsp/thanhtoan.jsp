<%-- 
    Document   : thanhtoan
    Created on : Mar 29, 2019, 3:23:20 PM
    Author     : duyth
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="include/user/index/top_header.jsp"/>

        <title>Check Out</title>
        <script>
            $(document).ready(function () {
                if ($(".table").length) {
                    var cartItems = $(".cart_item");
                    cartItems.each(function () {
                        var item = $(this);
                        var deleteBtn = item.find("#delete");
                        deleteBtn.on('click', function () {

                            var id = item.find("input[name='cart_product_id']").val();
                            window.location.href = "deletefromcheckout?productId=" + id;

                        });
                    });
                }
            });
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
                    <li class="active">Checkout</li>
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
                    <form  class="clearfix" id="checkout-form"  action="./${action}"  method="post" modelAttribute="order" class="form-horizontal">
                        <div class="col-md-6">
                            <div class="billing-details">
                                <c:if test="${getaccount.name == null}">
                                    <p>Already a customer ? <a href="${pageContext.servletContext.contextPath}/login">Login</a></p>
                                </c:if>
                                <div class="section-title">               
                                    <h3 class="title">Thông tin khách hàng</h3>
                                </div>

                                <div class="form-group">
                                    <input class="input" type="text" name="shippingOrder.fullName" placeholder="Full Name" value="${getaccount.name}">
                                </div>          
                                <div class="form-group">
                                    <input class="input" type="email" name="shippingOrder.email" placeholder="Email" value="${getaccount.email}">
                                </div>
                                <div class="form-group">
                                    <input class="input" type="text" name="shippingOrder.address" placeholder="Address" value="${getaccount.address}">
                                </div>
                                <div class="form-group">
                                    <input class="input" type="tel" name="shippingOrder.phone" placeholder="Telephone" value="${getaccount.phone}">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6" style="align-content: center">
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <table class="shopping-cart-table table">
                                <tfoot>
                                    <tr>
                                        <th class="empty" colspan="3"></th>
                                        <th>SUBTOTAL</th>
                                        <th colspan="2" class="sub-total">${myCartTotal}<sup>đ</sup></th>
                                    </tr>
                                    <tr>
                                        <th class="empty" colspan="3"></th>
                                        <th>SHIPING</th>
                                        <td colspan="2">Free Shipping</td>
                                    </tr>
                                    <tr>
                                        <th class="empty" colspan="3"></th>
                                        <th>TOTAL</th>
                                        <th colspan="2" class="total">${myCartTotal}<sup>đ</sup></th>
                                    </tr>
                                </tfoot>

                            </table>
                            <div class="pull-right">
                                <button class="primary-btn" type="submit">Place Order</button>
                            </div>
                        </div>
                    </form>
                    <div class="col-md-12">
                        <div class="order-summary clearfix">
                            <div class="section-title">
                                <h3 class="title">Order Review</h3>
                            </div>
                            <table class="shopping-cart-table table">
                                <thead>
                                    <tr >
                                        <th>Product</th>
                                        <th></th>
                                        <th class="text-center">Price</th>
                                        <th class="text-center">Quantity</th>
                                        <th class="text-center">Total</th>
                                        <th class="text-right"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var ="cart" items="${myCartItems}">
                                        <tr class="cart_item">
                                            <td class="thumb"><img src="http://localhost:8080/JV27_Spring_Project_Final/resources/Image/${cart.product.image.get(1).name}" alt=""></td>
                                            <td class="details">
                                                <a href="#">${cart.product.name}</a>              
                                            </td>
                                            <td class="price text-center"><strong>${cart.product.price}<sup>đ</sup></strong><br><del class="font-weak"><small></small></del></td>
                                            <td class="qty text-center"><input class="input" style="text-align: center" type="text" value="${cart.quantity}"> <input type="hidden" name="cart_product_id" value="${cart.product.id}"/></td>
                                            <td class="total text-center"><strong class="primary-color">${cart.totalPrice}<sup>đ</sup></strong></td>
                                            <td class="text-right"><button class="main-btn icon-btn" id="delete" ><i class="fa fa-close"></i></button></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                        </div>

                    </div>


                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->

        <jsp:include page="include/user/index/footer.jsp"/>
    </body>
</html>
