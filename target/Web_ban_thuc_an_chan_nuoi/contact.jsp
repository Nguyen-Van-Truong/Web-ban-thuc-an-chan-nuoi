<%@ page import="vn.edu.hcmuaf.fit.model.ShoppingCart" %>
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
            <a href="#"><i class="fa fa-user"></i> Đăng nhập</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="index">Trang chủ</a></li>
            <li>
                <a href="./shop-grid">Sản phẩm</a>
                <ul class="header__menu__dropdown one__lever">
                    <li>
                        <a href="./shop-grid">Thức ăn gia súc</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid">Thức ăn cho bò</a></li>
                            <li><a href="./shop-grid">Thức ăn cho ngựa</a></li>
                            <li><a href="./shop-grid">Thức ăn cho lợn</a></li>
                            <li><a href="./shop-grid">Thức ăn cho trâu</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid">Thức ăn gai cầm</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid">Thức ăn gia súc</a></li>
                            <li><a href="./shop-grid">Thức ăn gai cầm</a></li>
                            <li><a href="./shop-grid">Thức ăn thủy sản</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid">Thức ăn thủy sản</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid">Thức ăn cho tôm</a></li>
                            <li><a href="./shop-grid">Thức ăn cho cá</a></li>
                            <li><a href="./shop-grid">Thức ăn cho mực</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="BlogController?pageNumber=1">Tin Tức</a></li>
            <li><a href="./contact.html">Liên Hệ</a></li>
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
                            <%
                                ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
                                int cartSize = 0;
                                if (cart != null)
                                    cartSize = cart.getItems().size();
                            %>
                            <a href="ShoppingCart"><i class="fa fa-shopping-bag"></i> <span><%=cartSize%></span></a>
                        </li>
                    </ul>
                    <div class="header__cart__price">item: <span>$150.00</span></div>
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
                        <li><a href="./shop-grid">Sản Phẩm</a></li>
                        <li><a href="BlogController?pageNumber=1">Tin Tức</a></li>
                        <li class="active"><a href="./contact.html">Liên Hệ</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- Header Section End -->

<!-- Hero Section Begin -->

<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/images/banner.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Liên hệ chúng tôi</h2>
                    <div class="breadcrumb__option">
                        <a href="index">Trang chủ</a>
                        <span>Liên hệ chúng tôi</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Contact Section Begin -->
<section class="contact spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                <div class="contact__widget">
                    <span class="icon_phone"></span>
                    <h4>Điện thoại</h4>
                    <p>+01-3-8888-6868</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                <div class="contact__widget">
                    <span class="icon_pin_alt"></span>
                    <h4>Địa chỉ</h4>
                    <p>Địa chỉ: Khu Phố 6, Thủ Đức, Thành phố Hồ Chí Minh</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                <div class="contact__widget">
                    <span class="icon_clock_alt"></span>
                    <h4>Giờ mở cửa</h4>
                    <p>10:00 sáng đến 23:00 tối</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                <div class="contact__widget">
                    <span class="icon_mail_alt"></span>
                    <h4>Email</h4>
                    <p>animalfeed@gmail.com</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Contact Section End -->

<!-- Map Begin -->
<div class="map">
    <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2431952147535!2d106.78664556471922!3d10.869098492258649!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOw7RuZyBMw6JtIFRwLiBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1668052208949!5m2!1svi!2s"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"
            height="500"
            style="border: 0"
            allowfullscreen=""
            aria-hidden="false"
            tabindex="0"
    ></iframe>
    <div class="map-inside">
        <i class="icon_pin"></i>
        <div class="inside-widget">
            <h4>Đại Học Nông Lâm</h4>
            <ul>
                <li>Điện thoại: +12-345-6789</li>
                <li>Địa chỉ: Khu Phố 6, Thủ Đức, Tp.Hồ Chí Minh</li>
            </ul>
        </div>
    </div>
</div>
<!-- Map End -->

<!-- Contact Form Begin -->
<div class="contact-form spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="contact__form__title">
                    <h2>Để lại tin nhắn</h2>
                </div>
            </div>
        </div>
        <form action="#">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <input type="text" placeholder="Tên của bạn"/>
                </div>
                <div class="col-lg-6 col-md-6">
                    <input type="text" placeholder="Email của bạn"/>
                </div>
                <div class="col-lg-12 text-center">
                    <textarea placeholder="Tin nhắn của bạn"></textarea>
                    <button type="submit" class="site-btn">Gửi tin nhắn</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- Contact Form End -->

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
</body>
</html>
