<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.service.ProductService" %>

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
        <a href="index.jsp"><img src="img/logo.png" alt=""/></a>
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
            <li class="active"><a href="index.jsp">Trang chủ</a></li>
            <li>
                <a href="./shop-grid">Sản phẩm</a>
                <ul class="header__menu__dropdown one__lever">
                    <li>
                        <a href="./shop-grid.html">Thức ăn gia súc</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid.html">Thức ăn cho bò</a></li>
                            <li><a href="./shop-grid.html">Thức ăn cho ngựa</a></li>
                            <li><a href="./shop-grid.html">Thức ăn cho lợn</a></li>
                            <li><a href="./shop-grid.html">Thức ăn cho trâu</a></li>
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
            <li><a href="blog.jsp">Tin Tức</a></li>
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
                        <div class="header__top__right__auth">
                            <a href="profile.jsp"><i class="fa fa-user"></i>Tài khoản</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="index.jsp"><img src="img/logo.png" alt=""/></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <input
                                    type="text"
                                    placeholder="Bạn cần sản phẩm nào của chúng tôi"
                            />
                            <button type="submit" class="site-btn">TÌM KIẾM</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li>
                            <a href="shop-grid.jsp"><i class="fa fa-heart"></i> <span>1</span></a>
                        </li>
                        <li>
                            <a href="shoping-cart.jsp"
                            ><i class="fa fa-shopping-bag"></i> <span>3</span></a
                            >
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
                        <li><a href="index.jsp">Trang Chủ</a></li>
                        <li class="active"><a href="./shop-grid">Sản Phẩm</a></li>
                        <li><a href="blog.jsp">Tin Tức</a></li>
                        <li><a href="contact.jsp">Liên Hệ</a></li>
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
                    <h2>Thức Ăn Chăn Nuôi</h2>
                    <div class="breadcrumb__option">
                        <a href="index.jsp">Trang chủ</a>
                        <span>Cửa hàng</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <ul>
                            <h4>Danh Mục</h4>
                            <li class="menu_item">
                                <a href="">Thức ăn cho gia cầm</a>
                                <ul class="menu">
                                    <li><a href=""></a></li>
                                    <li><a href="">Thức ăn cho gà</a></li>
                                    <li><a href="">Thức ăn cho vịt</a></li>
                                    <li><a href="">Thức ăn cho chim</a></li>
                                </ul>
                            </li>
                            <li class="menu_item">
                                <a href="">Thức ăn cho gia súc</a>
                                <ul class="menu">
                                    <li><a href="">Thức ăn cho trâu</a></li>
                                    <li><a href="">Thúc ăn cho lợn</a></li>
                                    <li><a href="">Thức ăn cho bò</a></li>
                                    <li><a href="">Thức ăn cho ngựa</a></li>
                                </ul>
                            </li>
                            <li class="menu_item">
                                <a href="">Thức ăn cho thủy sản</a>
                                <ul class="menu">
                                    <li><a href="">Thức ăn cho tôm</a></li>
                                    <li><a href="">Thức ăn cho cá</a></li>
                                    <li><a href="">Thức ăn cho mực</a></li>
                                </ul>
                            </li>
                            <li class="menu_item">
                                <a href="">Các loại thức ăn khác</a>
                            </li>
                        </ul>


                    </div>

                    <div class="sidebar__item">
                        <h4>Nguồn gốc</h4>
                        <ul>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">Động Vật</label>
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">Thực Vật</label>
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">Khoáng Chất</label>
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">Vi Sinh Vật</label>
                            </li>
                        </ul>
                    </div>
                    <div class="sidebar__item">
                        <h4>Tính Chất</h4>
                        <ul>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">Thức Ăn Thô</label>
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">Thức Ăn Tinh</label>
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">Thức Ăn Tươi</label>
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio"
                                >Thức Ăn Giàu Đạm</label
                                >
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">Thức Ăn Ủ Chua</label>
                            </li>
                        </ul>
                    </div>
                    <div class="sidebar__item">
                        <h4>Giá</h4>
                        <div class="price-range-wrap">
                            <div
                                    class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                    data-min="10"
                                    data-max="540"
                            >
                                <div
                                        class="ui-slider-range ui-corner-all ui-widget-header"
                                ></div>
                                <span
                                        tabindex="0"
                                        class="ui-slider-handle ui-corner-all ui-state-default"
                                ></span>
                                <span
                                        tabindex="0"
                                        class="ui-slider-handle ui-corner-all ui-state-default"
                                ></span>
                            </div>
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount"/>
                                    <input type="text" id="maxamount"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar__item">
                        <h4>Đánh Giá</h4>
                        <ul>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">5 sao</label>
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">4 Sao</label>
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">3 Sao</label>
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">2 Sao</label>
                            </li>
                            <li>
                                <input type="radio" name="n"/>
                                <label class="label__radio">1 Sao</label>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2>Giảm Giá</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div
                                            class="product__discount__item__pic set-bg"
                                            data-setbg="img/images/vit/vit-con/hp43.png"
                                    >
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li>
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-retweet"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <h5><a href="shop-details.jsp">Thức ăn hỗn hợp hoàn chỉnh cho vịt, ngan dưới 21
                                            ngày tuổi</a></h5>
                                        <div class="product__item__price">
                                            183,200 đ<span>229,000 đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div
                                            class="product__discount__item__pic set-bg"
                                            data-setbg="img/images/vit/vit-thit/mavin6103.jpg"
                                    >
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li>
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-retweet"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <h5><a href="shop-details.jsp">Hỗn hợp cho vịt, ngan thịt</a></h5>
                                        <div class="product__item__price">
                                            199,200 đ <span>249,000 đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div
                                            class="product__discount__item__pic set-bg"
                                            data-setbg="img/images/bo/bo-thit/mavin6096.jpg"
                                    >
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li>
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-retweet"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <h5><a href="shop-details.jsp">Hỗn hợp cho bò thịt</a></h5>
                                        <div class="product__item__price">
                                            191,200 đ <span>239,000 đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div
                                            class="product__discount__item__pic set-bg"
                                            data-setbg="img/images/ca/ca-covay/7562-NA.png"
                                    >
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li>
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-retweet"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <h5><a href="shop-details.jsp">Thức ăn hỗn hợp cho Cá rô phi và cá điêu
                                            hồng</a></h5>
                                        <div class="product__item__price">
                                            183,200 đ <span>229,000 đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div
                                            class="product__discount__item__pic set-bg"
                                            data-setbg="img/images/de/hp96.png"
                                    >
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li>
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-retweet"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <h5><a href="shop-details.jsp">Thức ăn hỗn hợp cho dê vỗ béo</a></h5>
                                        <div class="product__item__price">
                                            188,800 đ <span>236,000 đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div
                                            class="product__discount__item__pic set-bg"
                                            data-setbg="img/images/ga/ga-con/hp20g.png">
                                        <div class="product__discount__percent">-20%</div>
                                        <ul class="product__item__pic__hover">
                                            <li>
                                                <a href="#"><i class="fa fa-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-retweet"></i></a>
                                            </li>
                                            <li>
                                                <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <h5><a href="shop-details.jsp">Thức ăn hỗn hợp hoàn chỉnh cho gà dưới 30 ngày
                                            tuổi</a></h5>
                                        <div class="product__item__price">
                                            188,800 đ <span>236,000 đ</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sắp Xếp Theo</span>
                                <select>
                                    <option value="0">Mặc Định</option>
                                    <option value="0">Mặc Định</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="filter__found">
                                <h6><span>16</span> Sản phẩm được tìm thấy</h6>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-3">
                            <div class="filter__option">
                                <span class="icon_grid-2x2"></span>
                                <span class="icon_ul"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <%--                    listproduct--%>
                <div id="content" class="row">

                </div>
                <%
                    int pageSize = ProductService.getPageSize();  // Number of products per page
                    int totalProducts = ProductService.getTotalNumberOfProducts();  // Total number of products
                    int totalPages = (int) Math.ceil((double) totalProducts / pageSize);  // Total number of pages
                    int currentPage = 1;

                %>
                <div class="product__pagination">
                    <button onclick="loadPage(1)"><<</button>
                    <button onclick="loadPage(1)">1</button>
                    <!-- Add links for additional pages -->
                    <% for (int i = 2; i <= totalPages; i++) { %>
                    <button onclick="loadPage(<%= i %>)"><%= i %></button>
                    <% } %>
                    <button onclick="loadPage(<%= totalPages %>)">>></button>
                </div>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
                <script>
                    const buttons = document.querySelectorAll('.product__pagination button');
                    buttons.forEach(button => {
                        button.addEventListener('click', () => {
                            buttons.forEach(b => {
                                b.style.color = '#333';
                                b.style.backgroundColor = '#fff';
                            });
                            button.style.color = 'white';
                            button.style.backgroundColor = '#555';
                        });
                    });

                    function loadPage(page) {
                        currentPage = page;
                        $.ajax({
                            url: "/Web_ban_thuc_an_chan_nuoi_war/LoadProductsAJax_shopGrid",
                            type: "get",
                            data: {page: page},
                            success: function (data) {
                                var row = document.getElementById("content");
                                row.innerHTML = data;
                            },
                            error: function (xhr) {

                            }
                        });
                    }

                    function loadData() {
                        $.ajax({
                            url: "/Web_ban_thuc_an_chan_nuoi_war/LoadProductsAJax_shopGrid",
                            type: "get",
                            data: {page: currentPage + 1},
                            success: function (data) {
                                var row = document.getElementById("content");
                                row.innerHTML += data;
                            },
                            error: function (xhr) {

                            }
                        });
                    }

                    loadPage(1);
                </script>


            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->

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
