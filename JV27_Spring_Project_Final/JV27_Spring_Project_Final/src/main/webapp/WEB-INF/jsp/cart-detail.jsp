<%-- 
    Document   : cart-detail
    Created on : Mar 26, 2019, 11:51:16 PM
    Author     : duyth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Cart</title>
        <jsp:include page="include/user/index/top_header.jsp"/>

        <script>
            $(document).ready(function () {
                if ($(".table").length) {
                    var cartItems = $(".cart_item");
                    cartItems.each(function () {
                        var item = $(this);
                        var updateBtn = item.find("#btupdate");
                        updateBtn.on('click', function () {
                            var quantity = item.find(".product_num").val();
                            var id = item.find("input[name='cart_product_id']").val();
                            window.location.href = "update-form?productId=" + id + "&quantity=" + quantity;

                        });
                    });
                }
            });
        </script>

    </head>
    <body>
        <jsp:include page="include/user/index/header.jsp"/>
        <jsp:include page="include/user/detailProduct/menu.jsp"/>


        <div class="cart-table-area section-padding-100" style="-webkit-box-flex: 0;
             -ms-flex: 0 0 100%;
             flex: 0 0 100%;
             width: 100%;
             max-width: 100%;
             padding-top: 0;
             position: relative;
             z-index: 1;">
            <div class="container-fluid" style="width: 100%;
                 padding-right: 15px;
                 padding-left: 15px;
                 margin-right: auto;
                 margin-left: auto;
                 font-family: 'helveticaneuemedium';
                 font-size: 16px;">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="cart-title mt-50" style="margin-top: 50px !important;">
                            <h1>Shopping Cart</h1>
                        </div>

                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead>
                                    <tr style="vertical-align: inherit;
                                        border-color: inherit; background-color: #E8F1F2;">
                                        <th></th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var ="cart" items="${myCartItems}">

                                        <tr class="cart_item">
                                            <td class="cart_product_img">
                                                <a href="#"><img src="http://localhost:8080/JV27_Spring_Project_Final/resources/Image/${cart.product.image.get(1).name}"  style="width:100px;height:100px" alt="Product"></a>
                                            </td>
                                            <td class="cart_product_desc">
                                                <h5>${cart.product.name}</h5>
                                            </td>
                                            <td class="price">
                                                <span>${cart.product.price}<sup>đ</sup></span>
                                            </td>
                                            <td class="qty" >
                                                <div class="qty-btn d-flex" style="display: flex!important;background-color: #E8F1F2; width: 120px;height: 30px;text-content: center">

                                                    <div class="product_quantity">
                                                        <span class="qty-minus" onclick="var effect = document.getElementById('${cart.product.id}');
                                                                var qty = effect.value;
                                                                if (!isNaN(qty) && effect.value > 1)
                                                                    effect.value--;
                                                                return false;" style="text-align: center">
                                                            <i class="fa fa-minus" style="width: 30px" aria-hidden="true"></i></span>
                                                        <input type="text" class="qty-text product_num" id="${cart.product.id}" style="text-align: center; width: 50px" step="1" min="1" max="20" name="${cart.product.name}" value="${cart.quantity}">
                                                        <span class="qty-plus" onclick="var effect = document.getElementById('${cart.product.id}');
                                                                var qty = effect.value;
                                                                if (!isNaN(qty))
                                                                    effect.value++;
                                                                return false;" style="text-align: center"><i class="fa fa-plus" style="width: 30px" aria-hidden="true"></i></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="price">
                                                <span>${cart.totalPrice}<sup>đ</sup></span>
                                            </td>
                                            <td class="cart_product_img">
                                                <input type="hidden" name="cart_product_id" class="idcart" value="${cart.product.id}" />
                                                <button class="btn btn-warning"
                                                        id="btupdate"
                                                        ><i class="fa fa-refresh"></i></button>

                                                <button class="btn btn-danger"
                                                        onclick="location.href = '<c:url value="/delete1/${cart.product.id}"/>'"
                                                        ><i class="fa fa-trash"></i></button>
                                            </td>

                                        </tr>
                                    </c:forEach>
                                    <c:if test="${myCartItems.size() == 0}">
                                        <tr class="cart_item">
                                            <td  colspan="6">
                                              <img src="http://localhost:8080/JV27_Spring_Project_Final/resources/user/img/Cart_clear.PNG" style="width:900px;height:200px" alt="Cart clear">
                                            </td>   
                                        </tr>
                                    </c:if>
                                </tbody>

                            </table>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary" style="background-color: #f5f7fa;
                             margin-top: 50px;
                             position: relative;
                             z-index: 1;
                             padding: 30px 20px;
                             font-family:'helveticaneuemedium';
                             font-size: 16px;">
                            <h2>Cart Total</h2>
                            <ul class="summary-table" style="    display: block;
                                list-style-type: disc;
                                margin-block-start: 1em;
                                margin-block-end: 1em;
                                margin-inline-start: 0px;
                                margin-inline-end: 0px;
                                padding-inline-start: 40px;">
                                <li><span><strong>Subtotal:</strong></span> <span>${myCartTotal}<sup>đ</sup></span></li>
                                <li><span><strong>Delivery:</strong></span> <span>Free</span></li>
                                <li><span><strong>Total:</strong></span> <span>${myCartTotal}<sup>đ</sup></span></li>
                            </ul>
                            <c:if test="${myCartItems.size() != 0}">
                                <div class="cart-btn mt-100">
                                    <a href="./thanhtoan" class="btn amado-btn w-100" style="    display: inline-block;
                                       min-width: 160px;
                                       height: 55px;
                                       color: #ffffff;
                                       border: none;
                                       border-radius: 0;
                                       padding: 0 7px;
                                       font-size: 18px;
                                       line-height: 56px;
                                       background-color: #fbb710;
                                       font-weight: 400;
                                       width: 100%!important;
                                       text-align: center;
                                       white-space: nowrap;
                                       vertical-align: middle;">Checkout</a>
                                </div>
                            </c:if>
                            <div class="cart-btn mt-100">
                                <a href="./home" class="btn amado-btn w-100" style="    display: inline-block;
                                   min-width: 160px;
                                   height: 55px;
                                   color: #ffffff;
                                   border: none;
                                   border-radius: 0;
                                   padding: 0 7px;
                                   font-size: 18px;
                                   line-height: 56px;
                                   background-color: #abdde5;
                                   font-weight: 400;
                                   width: 100%!important;
                                   text-align: center;
                                   white-space: nowrap;
                                   vertical-align: middle;">Continue Shopping</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->

    <jsp:include page="include/user/index/footer.jsp"/>
    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->

    <!-- Popper js -->
    <script src="http://localhost:8080/JV27_Spring_Project_Final/resources/user/detailCart/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="http://localhost:8080/JV27_Spring_Project_Final/resources/user/detailCart/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="http://localhost:8080/JV27_Spring_Project_Final/resources/user/detailCart/js/plugins.js"></script>
    <!-- Active js -->
    <script src="http://localhost:8080/JV27_Spring_Project_Final/resources/user/detailCart/js/active.js"></script>

    <script src="http://localhost:8080/JV27_Spring_Project_Final/resources/user/detailCart/js/newjavascript.js"></script>
</body>
</html>
