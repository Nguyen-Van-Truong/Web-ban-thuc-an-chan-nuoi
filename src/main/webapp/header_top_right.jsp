<%@ page import="vn.edu.hcmuaf.fit.model.bean.Account" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 10/01/2023
  Time: 8:01 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="description" content="Ogani Template"/>
    <meta name="keywords" content="Ogani, unica, creative, html"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link
            href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
            rel="stylesheet"
    />

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css"/>
    <link rel="stylesheet" href="css/nice-select.css" type="text/css"/>
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css"/>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>

<body>
<div class="col-lg-3 col-md-3">
    <div class="header__top__right">
        <div class="header__top__right__social">
            <a href="https://www.facebook.com/"
            ><i class="fa fa-facebook"></i
            ></a>
            <a href="https://twitter.com/"
            ><i class="fa fa-twitter"></i
            ></a>
            <a href="https://www.instagram.com/"
            ><i class="fa fa-instagram"></i
            ></a>
        </div>
        <% Account account = (Account) request.getSession().getAttribute("currentAccount");
            if (account == null) {
        %>
        <div class="header__top__right__auth">
            <a href="login.jsp"><i class="fa fa-user"></i>Đăng nhập</a>
        </div>
        <%
        } else {
        %>
        <div class="header__top__right__auth">
            <a href="Profile">
                <img style="width: 30px;height: 25px" src="<%=account.getAvatar()%>" alt="">
                <%=account.getName()%>
            </a>
        </div>
        <%
            }
        %>
    </div>
</div>


<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="js/over_common_part.js"></script>
</body>
</html>
