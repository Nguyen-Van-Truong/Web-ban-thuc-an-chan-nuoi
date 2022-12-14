<%@ page import="vn.edu.hcmuaf.fit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="zxx">
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
    <link rel="stylesheet" href="css/profile_style.css" type="text/css"/>

</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="index"><img src="img/logo.png" alt=""/></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li>
                <a href="like"><i class="fa fa-heart"></i> <span>1</span></a>
            </li>
            <li>
                <a href="cart"><i class="fa fa-shopping-bag"></i> <span>3</span></a>
            </li>
        </ul>
        <div class="header__cart__price">item: <span>$150.00</span></div>
    </div>
    <div class="humberger__menu__widget">
        <div class="header__top__right__language">
            <img src="img/language.png" alt=""/>
            <div>English</div>
            <span class="arrow_carrot-down"></span>
            <ul>
                <li><a href="#">Spanis</a></li>
                <li><a href="#">English</a></li>
            </ul>
        </div>
        <div class="header__top__right__auth">
            <a href="login.jsp"><i class="fa fa-user"></i> ????ng nh???p</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="index">Trang ch???</a></li>
            <li>
                <a href="./shop-grid">S???n ph???m</a>
                <ul class="header__menu__dropdown one__lever">
                    <li>
                        <a href="./shop-grid.html">Th???c ??n gia s??c</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="shop-grid">Th???c ??n cho b??</a></li>
                            <li><a href="shop-grid">Th???c ??n cho ng???a</a></li>
                            <li><a href="shop-grid">Th???c ??n cho l???n</a></li>
                            <li><a href="shop-grid">Th???c ??n cho tr??u</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid.html">Th???c ??n gai c???m</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid.html">Th???c ??n gia s??c</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n gai c???m</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n th???y s???n</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid.html">Th???c ??n th???y s???n</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid.html">Th???c ??n cho t??m</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n cho c??</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n cho m???c</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="BlogController?pageNumber=1">Tin T???c</a></li>
            <li><a href="contact.jsp">Li??n H???</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
            <li>Free Shipping for all Order of $99</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-9">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i>animalfeed@gmail.com</li>
                            <li>
                                Mi???n ph?? giao h??ng cho t???t c??? ????n h??ng c?? gi?? tr??? t???
                                2,000,000 vn??
                            </li>
                        </ul>
                    </div>
                </div>
                <%@ include file="/header_top_right.jsp" %>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="index"><img src="img/logo.png" alt=""/></a>
                </div>
            </div>
            <%@ include file="/find_product.jsp" %>

            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li>
                            <a href="shop-grid"><i class="fa fa-heart"></i> <span>1</span></a>
                        </li>
                        <li>
                            <a href="shoping-cart.jsp"
                            ><i class="fa fa-shopping-bag"></i> <span>3</span></a
                            >
                        </li>
                    </ul>
                    <!--                    <div class="header__cart__price">item: <span>$150.00</span></div>-->
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <nav class="header__menu">
                    <ul class="menu__list">
                        <li><a href="index">Trang Ch???</a></li>
                        <li><a href="shop-grid">S???n ph???m</a></li>
                        <li><a href="BlogController?pageNumber=1">Tin T???c</a></li>
                        <li><a href="contact.jsp">Li??n H???</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->
<div class="user">
    <div class="container user__information ">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="img-left">
                    <img src="<%=account.getAvatar()%>" alt="" class="img__user">
                    <p><%=account.getName()%>
                    </p>
                </div>
                <ul class="menu">
                    <li>
                        <button class="menu__item" onclick="profile_click()">H??? S??</button>
                    </li>
                    <li>
                        <a href="/Web_ban_thuc_an_chan_nuoi_war/changePassword.jsp">
                            <button class="menu__item" onclick="password_click()">?????i m???t kh???u</button>
                        </a>
                    </li>
                    <li>
                        <button class="menu__item" onclick="oder_click()">L???ch s??? mua h??ng</button>
                    </li>
                    <li><a href="./admin/index.jsp">
                        <button class="menu__item">Admin</button>
                    </a></li>


                </ul>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="profile" id="profile_account">
                    <div class="left__profile">
                        <form action="/Web_ban_thuc_an_chan_nuoi_war/Profile" method="post">
                            <div class="user__name profile__item">
                                <label>H??? v?? t??n</label>
                                <input type="text" name="fullnameOfUser" value="<%=account.getFullname()%>">
                            </div>
                            <div class="email profile__item">
                                <label>?????a ch??? email</label>
                                <input type="text" name="emailAddress" value="<%=account.getEmail()%>">
                            </div>
                            <div class="phone__number  profile__item"
                            >
                                <label>S??? ??i???n tho???i</label>
                                <input type="text" name="phoneNumber" value="<%=account.getPhonenumber()%>">
                            </div>
                            <div class="birthay  profile__item">
                                <label for="birthday">Ng??y sinh:</label>
                                <input type="text" id="birthday" name="birthday" value="<%=account.getBirthday()%>">

                            </div>
                            <div class="container-login100-form-btn" style="float: right; margin-right: 5px">
                                <button class="login100-form-btn">
                                    C???p nh???t
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="right__profile">
                        <div style="display: flex; flex-direction: column;">
                            <img src="<%=account.getAvatar()%>" alt=""
                                 style="width: 200px; border-radius: 200px; margin: auto;">
                            <input type="file" name="image__user" id="image__user" value="Ch???n ???nh"
                                   style="width: 98px; margin: 10px auto;">
                        </div>
                    </div>
                </div>
                <div id="oder">
                    <table>
                        <tr>
                            <th>M?? ????n H??ng</th>
                            <th>Ng??y mua h??ng</th>
                            <th>T???ng ti???n</th>
                            <th>Chi ti???t</th>
                        </tr>
                        <%
                            List<Order> orderList = (List<Order>) request.getAttribute("OrderList");
                            for (Order o : orderList) {
                        %>
                        <tr>
                            <td><%=o.getOrderId()%>
                            </td>
                            <td><%=o.getDate()%>
                            </td>
                            <td><%=o.totalCost()%> ??</td>
                            <td>
                                <%
                                    List<OrderDetail> orderDetails = o.getAllOrderDetail();
                                    for (OrderDetail od : orderDetails) {
                                %>
                                <%=od.getNameProduct()%>, gi??:<%=od.getOutPrice()%>, s??? l?????ng:<%=od.getQuantity()%>
                                <br/>
                                <%}%>
                            </td>

                        </tr>
                        <%}%>
                    </table>

                </div>

                <%--    <div id="password">--%>
                <%--        <form action="">--%>
                <%--            <div>--%>
                <%--                <label for="old_pass">Nh???p m???t kh???u c??</label>--%>
                <%--                <input type="text" name="old_pass" id="">--%>
                <%--            </div>--%>
                <%--            <div>--%>
                <%--                <label for="new_pass">M???t kh???u m???i</label>--%>
                <%--                <input type="text" name="new_pass" id="">--%>
                <%--            </div>--%>
                <%--            <div>--%>
                <%--                <label for="new_pass-retypr">Nh???p l???i m???t kh???u m???i</label>--%>
                <%--                <input type="text" name="new_pass-retype" id="">--%>
                <%--            </div>--%>
                <%--            <div>--%>
                <%--                <button id="btn">L??u thay ?????i</button>--%>
                <%--            </div>--%>
                <%--        </form>--%>
                <%--    </div>--%>
            </div>
        </div>
    </div>
</div>


<!-- Footer Section Begin -->
<div class="over_footer"></div>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="js/over_common_part.js"></script>

<script>
    const id_list = ["profile_account", "oder"];

    function hideadd() {
        for (var i = 0; i < id_list.length; i++) {
            document.getElementById(id_list[i]).style.display = "none";
        }
    }

    function profile_click() {
        hideadd();
        document.getElementById('profile_account').style.display = "flex"
    }

    function oder_click() {
        hideadd();
        document.getElementById('oder').style.display = "flex"
    }

</script>
</body>
</html>
