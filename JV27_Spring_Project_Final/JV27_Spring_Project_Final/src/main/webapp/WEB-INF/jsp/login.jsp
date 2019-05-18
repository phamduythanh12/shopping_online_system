<%-- 
    Document   : login
    Created on : Feb 13, 2019, 6:34:09 PM
    Author     : AnhLe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="<c:url value="/webjars/bootstrap/3.3.7/css/bootstrap.min.css"/>" 
              type="text/css" rel="stylesheet"/>
        <jsp:include page="include/user/index/top_header.jsp"/>
        <style>
            @import url(https://fonts.googleapis.com/css?family=Roboto:300);
            .form input {
                font-family: "Roboto", sans-serif;
                outline: 0;
                background: #f2f2f2;
                width: 100%;
                border: 0;
                margin: 0 0 15px;
                padding: 15px;
                box-sizing: border-box;
                font-size: 14px;
            }

            .form .message {
                margin: 15px 0 0;
                color: #b3b3b3;
                font-size: 12px;
            }
            .form .message a {
                color: #4CAF50;
                text-decoration: none;
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
                    <li class="active">Login</li>
                </ul>
            </div>
        </div>
        <!-- /BREADCRUMB -->
        <div class="section"  style=" background: #76b852; /* fallback for old browsers */
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
            <div class="row">
                <div class="col-xs-12 col-sm-12" style="text-align: center">
                    <h1 style="color: #ffffff">Login</h1>
                </div> 
            </div>
            <c:if test="${message!=null && message!=''}">
                <div class="row">
                    <div class="col-sm-offset-2 col-xs-4 col-sm-8">
                        <div class="alert alert-danger">
                            ${message}
                        </div>
                    </div>
                </div>
            </c:if>
            <div class="row">
                <div class="container" style="  margin: 0 0 15px;
                     padding: 0;
                     font-size: 36px;
                     font-weight: 300;
                     color: #1a1a1a;
                     display: block;
                     clear: both;
                     position: relative;
                     z-index: 1;
                     max-width: 300px;
                     margin: 0 auto;">
                    <div class="login-page" style="width: 360px;
                         padding: 8% 0 0;
                         margin: auto;">
                        <div class="form" style="position: relative;
                             z-index: 1;
                             background: #FFFFFF;
                             max-width: 360px;
                             margin: 0 auto 100px;
                             padding: 45px;
                             text-align: center;
                             box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);">
                            <form class="login-form" action="<c:url value="j_spring_security_check"/>" method="post">
                                <input type="text" placeholder="username" name="username"/>
                                <input type="password"   name="password" placeholder="password"/>
                                <button style="font-family: 'Roboto', sans-serif;
                                        text-transform: uppercase;
                                        outline: 0;
                                        background: #4CAF50;
                                        width: 100%;
                                        border: 0;
                                        padding: 15px;
                                        color: #FFFFFF;
                                        font-size: 14px;
                                        -webkit-transition: all 0.3 ease;
                                        transition: all 0.3 ease;
                                        cursor: pointer;">login</button>
                                <p class="message">Not registered? <a href="${pageContext.servletContext.contextPath}/createaccount"">Create an account</a></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="include/user/index/footer.jsp"/>
    </body>
</html>
