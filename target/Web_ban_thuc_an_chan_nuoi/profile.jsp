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
            <a href="login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="index">Trang chủ</a></li>
            <li>
                <a href="./shop-grid">Sản phẩm</a>
                <ul class="header__menu__dropdown one__lever">
                    <li>
                        <a href="./shop-grid.html">Thức ăn gia súc</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="shop-grid">Thức ăn cho bò</a></li>
                            <li><a href="shop-grid">Thức ăn cho ngựa</a></li>
                            <li><a href="shop-grid">Thức ăn cho lợn</a></li>
                            <li><a href="shop-grid">Thức ăn cho trâu</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid.html">Thức ăn gai cầm</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid.html">Thức ăn gia súc</a></li>
                            <li><a href="./shop-grid.html">Thức ăn gai cầm</a></li>
                            <li><a href="./shop-grid.html">Thức ăn thủy sản</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid.html">Thức ăn thủy sản</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid.html">Thức ăn cho tôm</a></li>
                            <li><a href="./shop-grid.html">Thức ăn cho cá</a></li>
                            <li><a href="./shop-grid.html">Thức ăn cho mực</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="BlogController?pageNumber=1">Tin Tức</a></li>
            <li><a href="contact.jsp">Liên Hệ</a></li>
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
                                Miễn phí giao hàng cho tất cả đơn hàng có giá trị từ
                                2,000,000 vnđ
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
                        <li><a href="index">Trang Chủ</a></li>
                        <li><a href="shop-grid">Sản phẩm</a></li>
                        <li><a href="BlogController?pageNumber=1">Tin Tức</a></li>
                        <li><a href="contact.jsp">Liên Hệ</a></li>
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
                        <button class="menu__item" onclick="profile_click()">Hồ Sơ</button>
                    </li>
                    <li>
                        <a href="/Web_ban_thuc_an_chan_nuoi_war/changePassword.jsp">
                            <button class="menu__item" onclick="password_click()">Đổi mật khẩu</button>
                        </a>
                    </li>
                    <li>
                        <button class="menu__item" onclick="oder_click()">Đơn hàng đang giao</button>
                    </li>
                    <li>
                        <button class="menu__item" onclick="odered_click()">Đơn hàng đã giao</button>
                    </li>
                    <li><a href="./shop-grid">
                        <button class="menu__item">Sản phẩm yêu thích</button>
                    </a></li>
                    <li><a href="./shop-grid">
                        <button class="menu__item">Sản phẩm đã mua</button>
                    </a></li>
                    <li><a href="./admin.html">
                        <button class="menu__item">Admin</button>
                    </a></li>


                </ul>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="profile" id="profile">
                    <div class="left__profile">
                        <div class="user__name profile__item">
                            <label for="">Tên tài khoản</label>
                            <input type="text" name="" value="<%=account.getName()%>">
                            <a href=""> Thay đổi</a>
                        </div>
                        <div class="email profile__item">
                            <label for="">Địa chỉ email</label>
                            <input type="text" name="" value="<%=account.getEmail()%>">
                            <a href="">Thay đổi</a>
                        </div>
                        <div class="phone__number  profile__item"
                        >
                            <label for="">Số điện thoại</label>
                            <input type="text" name="" id="" value="<%=account.getPhonenumber()%>">
                            <a href="">Thay đổi</a>
                        </div>
                        <div class="birthay  profile__item">
                            <!--                      <label for="">Ngày sinh</label>-->
                            <!--                      <select name="day" id="">-->
                            <!--                        <option value="1">1</option>-->
                            <!--                        <option value="2">2</option>-->
                            <!--                        <option value="3">3</option>-->
                            <!--                      </select>-->
                            <!--                      <select name="month" id="">-->
                            <!--                        <option value="1">Tháng 1</option>-->
                            <!--                        <option value="2">Tháng 2</option>-->
                            <!--                        <option value="3">Tháng 3</option>-->
                            <!--                      </select>-->
                            <!--                      <select name="years" id="">-->
                            <!--                        <option value="2015">2015</option>-->
                            <!--                        <option value="2017">2016</option>-->
                            <!--                        <option value="2016">2017</option>-->
                            <!--                      </select>-->
                            <form action="/profile.jsp">
                                <label for="birthday">Ngày sinh:</label>
                                <input type="text" id="birthday" name="birthday" value="<%=account.getBirthday()%>">

                            </form>

                            <a href="">Thay đổi</a>

                        </div>

                    </div>
                    <div class="right__profile">
                        <div style="display: flex; flex-direction: column;">
                            <img src="<%=account.getAvatar()%>" alt=""
                                 style="width: 200px; border-radius: 200px; margin: auto;">
                            <input type="file" name="image__user" id="image__user" value="Chọn ảnh"
                                   style="width: 98px; margin: 10px auto;">
                        </div>
                    </div>
                </div>
                <div id="oder">
                    <table>
                        <tr>
                            <th>Mã Đơn Hàng</th>
                            <th>Ngày mua hàng</th>
                            <th>Số lượng hàng hóa</th>
                            <th>Tổng Tiền</th>
                            <th>Chi tiết đơn hàng</th>
                        </tr>

                        <tr>
                            <td>003876</td>
                            <td>6/11/2020</td>
                            <td>20</td>
                            <td>2,000,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>

                        <tr>
                            <td>231892</td>
                            <td>8/10/2021</td>
                            <td>45</td>
                            <td>3,499,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>

                        <tr>
                            <td>126871</td>
                            <td>29/12/2021</td>
                            <td>25</td>
                            <td>4,199,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>


                        <tr>
                            <td>908124</td>
                            <td>12/1/2022</td>
                            <td>50</td>
                            <td>25,000,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>

                        <tr>
                            <td>123456</td>
                            <td>22/2/2022</td>
                            <td>35</td>
                            <td>5,399,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>
                    </table>

                </div>
                <div id="odered">
                    <table>
                        <tr>
                            <th>Mã Đơn Hàng</th>
                            <th>Ngày mua hàng</th>
                            <th>Số lượng hàng hóa</th>
                            <th>Tổng Tiền</th>
                            <th>Chi tiết đơn hàng</th>
                        </tr>

                        <tr>
                            <td>003876</td>
                            <td>6/11/2020</td>
                            <td>20</td>
                            <td>2,000,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>

                        <tr>
                            <td>231892</td>
                            <td>8/10/2021</td>
                            <td>45</td>
                            <td>3,499,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>

                        <tr>
                            <td>126871</td>
                            <td>29/12/2021</td>
                            <td>25</td>
                            <td>4,199,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>


                        <tr>
                            <td>908124</td>
                            <td>12/1/2022</td>
                            <td>50</td>
                            <td>25,000,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>

                        <tr>
                            <td>273612</td>
                            <td>22/2/2022</td>
                            <td>35</td>
                            <td>5,399,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>
                        <tr>
                            <td>132635</td>
                            <td>22/2/2022</td>
                            <td>25</td>
                            <td>1,199,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>
                        <tr>
                            <td>891723</td>
                            <td>20/5/2022</td>
                            <td>30</td>
                            <td>4,599,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>
                        <tr>
                            <td>711820</td>
                            <td>22/8/2022</td>
                            <td>15</td>
                            <td>2,229,000đ</td>
                            <td><a href="">xem chi tiết</a></td>
                        </tr>


                    </table>

                </div>

                <%--    <div id="password">--%>
                <%--        <form action="">--%>
                <%--            <div>--%>
                <%--                <label for="old_pass">Nhập mật khẩu cũ</label>--%>
                <%--                <input type="text" name="old_pass" id="">--%>
                <%--            </div>--%>
                <%--            <div>--%>
                <%--                <label for="new_pass">Mật khẩu mới</label>--%>
                <%--                <input type="text" name="new_pass" id="">--%>
                <%--            </div>--%>
                <%--            <div>--%>
                <%--                <label for="new_pass-retypr">Nhập lại mật khẩu mới</label>--%>
                <%--                <input type="text" name="new_pass-retype" id="">--%>
                <%--            </div>--%>
                <%--            <div>--%>
                <%--                <button id="btn">Lưu thay đổi</button>--%>
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
    const id_list = ["profile", "oder", "odered", "password"];

    function hideadd() {
        for (var i = 0; i < id_list.length; i++) {
            document.getElementById(id_list[i]).style.display = "none";
        }
    }

    function profile_click() {
        hideadd();
        document.getElementById('profile').style.display = "flex"
    }

    function oder_click() {
        hideadd();
        document.getElementById('oder').style.display = "flex"
    }

    function odered_click() {
        hideadd();
        document.getElementById('odered').style.display = "flex"
    }

    function password_click() {
        hideadd();
        document.getElementById('password').style.display = "block"
    }
</script>
</body>
</html>
