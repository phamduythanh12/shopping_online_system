<%-- 
    Document   : thanhtoan
    Created on : Mar 29, 2019, 3:23:20 PM
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
        <jsp:include page="include/user/index/top_header.jsp"/>

        <title>Create Account</title>
        <style>
            input{
                color: red;    
            }
        </style>
    </head>

    <body>
        <jsp:include page="include/user/index/header.jsp"/>
        <jsp:include page="include/user/detailProduct/menu.jsp"/>

        <!-- BREADCRUMB -->
        <div id="breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>
                        <c:if test="${message != null && message =='create'}">
                        <li class="active">Create Account</li>
                        </c:if>
                        <c:if test="${message != null && message =='updateaccount'}">
                        <li class="active">Edit Account</li>
                        </c:if>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->


        <!-- section -->
        <div class="section" style=" background: #76b852; /* fallback for old browsers */
             background: -webkit-linear-gradient(right, #76b852, #8DC26F);
             background: -moz-linear-gradient(right, #76b852, #8DC26F);
             background: -o-linear-gradient(right, #76b852, #8DC26F);
             background: linear-gradient(to left, #76b852, #8DC26F);
             background-image: url('http://localhost:8080/JV27_Spring_Project_Final/resources/Image/544750.jpg');
             font-family: Roboto, sans-serif;
             -webkit-font-smoothing: antialiased;
             -moz-osx-font-smoothing: grayscale;
             margin: 50px auto;
             text-align: center;">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row" style="">
                    <form  class="clearfix" id="checkout-form" style="margin-left: 35%;margin-right: 10%;" action="${pageContext.servletContext.contextPath}/${action}"  method="post" modelAttribute="acount" class="form-horizontal">
                        <div class="col-md-6">
                            <div class="billing-details">
                                <c:if test="${message != null && message =='create'}">
                                    <p>Already a customer ? <a href="${pageContext.servletContext.contextPath}/login">Login</a></p>
                                    <div class="section-title">
                                        <h3 class="title"><strong style="color: red">Create Account</strong></h3>
                                    </div>
                                </c:if>
                                <c:if test="${message != null && message =='updateaccount'}">
                                    <div class="section-title">
                                        <h3 class="title"><strong style="color: red">Edit Account</strong></h3>
                                    </div>
                                </c:if>
                                <c:if test="${message1!=null}">
                                    <div class="row">
                                        <div class="col-sm-offset-2 col-xs-4 col-sm-8">
                                            <div class="alert alert-danger">
                                                <p>${message1}</p>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                                <div class="form-group">
                                    <c:if test="${accounted != null}">
                                        <input class="input" type="hidden" name="id"  value="${accounted.id}">
                                    </c:if>
                                    <input class="input" type="text" name="name" placeholder="Name" value="${accounted.name}">
                                </div>      
                                <div class="form-group">
                                    <input class="input" type="text" name="username" placeholder="User Name" value="${accounted.username}">
                                </div>   
                                <div class="form-group">
                                    <input class="input" type="email" name="email" placeholder="Email" value="${accounted.email}">
                                </div>
                                <div class="form-group">
                                    <input class="input" type="text" name="address" placeholder="Address" value="${accounted.address}">
                                </div>
                                <div class="form-group">
                                    <input class="input" type="tel" name="phone" placeholder="Telephone" value="${accounted.phone}">
                                </div>
                                <c:if test="${message != null && message =='create'}">
                                    <div class="form-group">
                                        <input class="input" type="password" id="commit" name="password" placeholder="Password">
                                    </div> 
                                </c:if>
                            </div>    
                            <c:if test="${message != null && message =='create'}">
                                <div class="pull-right">
                                    <button class="primary-btn"   id="create" type="submit">Create Account</button>
                                </div>  
                            </c:if>
                            <c:if test="${message != null && message =='updateaccount'}">
                                <div class="pull-right">
                                    <button class="primary-btn"  type="submit">Update Account</button>
                                </div>  
                            </c:if>
                        </div>
                    </form>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
        <!-- /section -->


        <jsp:include page="include/user/index/footer.jsp"/>
    </body>
</html>
