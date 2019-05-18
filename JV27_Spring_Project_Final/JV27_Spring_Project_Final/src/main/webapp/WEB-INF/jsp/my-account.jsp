<%-- 
    Document   : dat-hang-thanh-cong
    Created on : Mar 29, 2019, 6:38:25 PM
    Author     : duyth
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="include/user/index/top_header.jsp"/>
        <!--bootstrap for table -->
        <link type="text/css" rel="stylesheet" href="http://localhost:8080/JV27_Spring_Project_Final/resources/user/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="http://localhost:8080/JV27_Spring_Project_Final/resources/user/AllinOne.css" />
        <title>My account</title>
    </head>
    <body>
        <jsp:include page="include/user/index/header.jsp"/>
        <jsp:include page="include/user/detailProduct/menu.jsp"/>

        <!-- BREADCRUMB -->
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">My Account</li>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->

        <!-- table detail account -->

        <div class="order" style=" background: #76b852; 
             background: -webkit-linear-gradient(right, #76b852, #8DC26F);
             background: -moz-linear-gradient(right, #76b852, #8DC26F);
             background: -o-linear-gradient(right, #76b852, #8DC26F);
             background: linear-gradient(to left, #76b852, #8DC26F);
             background-image: url('http://localhost:8080/JV27_Spring_Project_Final/resources/Image/544750.jpg');
             font-family: Roboto, sans-serif;
             -webkit-font-smoothing: antialiased;
             -moz-osx-font-smoothing: grayscale;
             margin:auto;
             ">
            <div class="row" style="text-align: center">
                <div class="col-lg-12 col-md-7 col-xs-12">

                    <div class="fieldset" style="margin-left: 20%;margin-right: 20%;">
                        <div class="fieldset-head ">
                            <label class="label--full-width"> Thông Tin Khách Hàng </label>
                        </div>

                        <div class="fieldset-body">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-xs-5">Họ tên</div>
                                <div class="col-lg-8 col-md-8 col-xs-7">
                                    <span>${getaccount.name}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-xs-5">Email</div>
                                <div class="col-lg-8 col-md-8 col-xs-7">
                                    <span>${getaccount.email}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-xs-5">Số điện thoại</div>
                                <div class="col-lg-8 col-md-8 col-xs-7">
                                    <span>${getaccount.phone}</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-xs-5">Địa chỉ</div>
                                <div class="col-lg-8 col-md-8 col-xs-7">
                                    <span>${getaccount.address}</span>
                                </div>
                            </div>
                        </div>
                        <button id="btn_submit_cart" type="button" class="btn btn-large btn-block btn-default btn-checkout" style="background-color: #00ff00" onclick="location.href = ' <c:url value="/home" /> '"><strong>Trở về trang chủ </strong></button>
                        <c:if test="${saveaccount == null}">
                            <button id="btn_submit_cart" type="button" class="btn btn-large btn-block btn-default btn-checkout" style="background-color: #eed1b3" onclick="location.href = ' <c:url value="/edit" /> '"><strong>Edit Account</strong></button>
                        </c:if>
                        <c:if test="${saveaccount != null}">
                            <button id="btn_submit_cart" type="button" class="btn btn-large btn-block btn-default btn-checkout" style="background-color: #eed1b3" onclick="location.href = ' <c:url value="/login" /> '"><strong>Login</strong></button>
                        </c:if>
                    </div>
                </div>

            </div>
        </div>
    </div> 
    <jsp:include page="include/user/index/footer.jsp"/>
</body>
</html>
