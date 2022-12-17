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
        <a href="./index.html"><img src="img/logo.png" alt=""/></a>
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
            <li class="active"><a href="./index.html">Trang chủ</a></li>
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
            <li><i class="fa fa-envelope"></i></li>
            <li></li>
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

                        <div class="header__top__right__auth">
                            <a href="login.jsp"><i class="fa fa-user"></i>Đăng nhập</a>
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
                    <a href="./index.html"><img src="img/logo.png" alt=""/></a>
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
                            <a href="shop-grid"><i class="fa fa-heart"></i> <span>1</span></a>
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
                        <li class="active"><a href="./index.html">Trang Chủ</a></li>
                        <li><a href="./shop-grid">Sản phẩm</a></li>
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
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="hero__item set-bg" data-setbg="img/images/banner.jpg">
                    <div class="hero__text">
                        <span>Thức ăn chăn nuôi</span>
                        <h2>Từ Thiên Nhiên<br/>100% Chất Lượng</h2>
                        <p>Giao hàng nhanh trong nội thành</p>
                        <a href="shop-grid" class="primary-btn">Sản Phẩm</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Categories Section Begin -->
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg="img/images/heo/dam-dac/hp10.png"
                    >
                        <h5><a href="shop-grid">Thức ăn cho gia súc</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg="img/images/ga/ga-thit/hp22s.png"
                    >
                        <h5><a href="shop-grid">Thức ăn cho gia cầm</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg="img/images/ca/ca-covay/6136.png"
                    >
                        <h5><a href="shop-grid">Thức ăn cho thủy sản</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg="img/images/de/a35-s.png "
                    >
                        <h5><a href="shop-grid">Các loại sản phẩm khác</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Sản phẩm nổi bật</h2>
                </div>
                <div class="featured__controls">
                    <ul>
                        <li class="active" data-filter="*">Tất cả</li>
                        <li data-filter=".oranges">Gia Cầm</li>
                        <li data-filter=".fresh-meat">Gia Súc</li>
                        <li data-filter=".vegetables">Thủy Sản</li>
                        <li data-filter=".fastfood">Sản Phẩm Khác</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row featured__filter">
            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg="img/images/bo/bo-sua/a60.png"
                    >
                        <ul class="featured__item__pic__hover">
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
                    <div class="featured__item__text">
                        <h6><a href="shop-details.jsp">Thức ăn hỗn hợp Bò sữa</a></h6>
                        <h5>259,000 đ</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg="img/images/ca/ca-giong/6116.png"
                    >
                        <ul class="featured__item__pic__hover">
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
                    <div class="featured__item__text">
                        <h6><a href="shop-details.jsp">Thức ăn cao cấp cho Cá rô phi</a></h6>
                        <h5>279,000 đ</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg="img/images/ga/ga-con/hp20g.png"
                    >
                        <ul class="featured__item__pic__hover">
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
                    <div class="featured__item__text">
                        <h6><a href="shop-details.jsp">Thức ăn hỗn hợp hoàn chỉnh cho gà con</a></h6>
                        <h5>269,000 đ</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg="img/images/ga/ga-de/hp32.png"
                    >
                        <ul class="featured__item__pic__hover">
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
                    <div class="featured__item__text">
                        <h6><a href="shop-details.jsp">Thức ăn hỗn hợp hoàn chỉnh cho gà đẻ</a></h6>
                        <h5>249,000 đ</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg="img/images/heo/heo-con/hp02.png"
                    >
                        <ul class="featured__item__pic__hover">
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
                    <div class="featured__item__text">
                        <h6><a href="shop-details.jsp">Thức ăn hỗn hợp hoàn chỉnh cho heo</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg="img/images/vit/vit-thit/mavin6102.jpg"
                    >
                        <ul class="featured__item__pic__hover">
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
                    <div class="featured__item__text">
                        <h6><a href="shop-details.jsp">Hỗn hợp cho vịt, ngan thịt</a></h6>
                        <h5>229,000 đ</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg="img/images/vit/vit-de/a20.png"
                    >
                        <ul class="featured__item__pic__hover">
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
                    <div class="featured__item__text">
                        <h6><a href="shop-details.jsp">Thức ăn hỗn hợp cho vịt đẻ<br>Trứng to, vỏ dày</a></h6>
                        <h5>219,000 đ</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg="img/images/de/a35-s.png"
                    >
                        <ul class="featured__item__pic__hover">
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
                    <div class="featured__item__text">
                        <h6><a href="shop-details.jsp">Thức ăn hỗn hợp cho dê thịt, vỗ béo</a></h6>
                        <h5>$30.00</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/images/bannerGF.jpg" alt=""/>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/images/banner-gioithieu.png" alt=""/>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Latest Product Section Begin -->
<section class="latest-product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Sản phẩm mới nhất</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/tom/700.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn hỗn hợp cho tôm sú giống</h6>
                                    <span>239,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/de/5217.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn hỗn hợp cho dê vỗ béo</h6>
                                    <span>229,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/ca/ca-giong/7424.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn hỗn hợp cho cá giống (Cá Tra, Điêu hồng)</h6>
                                    <span>219,000 đ</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/de/a35-s.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn hỗn hợp cao cấp <br> Dê thịt, dê vỗ béo</h6>
                                    <span>259,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">

                                <div class="latest-product__item__pic">
                                    <img src="img/images/vit/vit-de/a20-super.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn hỗn hợp <br> Vịt đẻ thương phẩm</h6>
                                    <span>$30.00</span>
                                </div>

                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/ga/ga-con/hp20s-1.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn hỗn hợp hoàn chỉnh cho gà con</h6>
                                    <span>239,000 đ</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Sản phẩm bán chạy</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/ga/ga-de/1242P.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Cám gà đẻ thương phẩm</h6>
                                    <span>279,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/heo/dam-dac/mavin8933ct.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Hỗn hợp cho heo siêu</h6>
                                    <span>289,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/heo/dam-dac/hp10.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn đậm đặc cho lợn thịt từ 5kg - xuất chuồng</h6>
                                    <span>299,000 đ</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/vit/vit-con/hp43.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn hỗn hợp hoàn chỉnh cho vịt, ngan dưới 21 ngày tuổi</h6>
                                    <span>219,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/ga/ga-thit/mavin5302.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Hỗn hợp cho gà thịt 5302</h6>
                                    <span>209,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/heo/dam-dac/mavin8933ct.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Hỗn hợp cho heo siêu từ 40kg - xuất chuồng</h6>
                                    <span>233,000 đ</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Đánh được đánh giá cao</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/vit/vit-de/a20-super.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn hỗn hợp <br> Vịt đẻ thương phẩm</h6>
                                    <span>266,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/ga/ga-de/1242P.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Cám gà đẻ thương phẩm</h6>
                                    <span>279,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/heo/dam-dac/hp10.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn đậm đặc cho lợn thịt từ 5kg - xuất chuồng</h6>
                                    <span>299,000 đ</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/de/a35-s.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn hỗn hợp cao cấp <br> Dê thịt, dê vỗ béo</h6>
                                    <span>259,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/de/a35-s.png" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Thức ăn hỗn hợp cao cấp <br> Dê thịt, dê vỗ béo</h6>
                                    <span>259,000 đ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/images/heo/dam-dac/mavin8933ct.jpg" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>Hỗn hợp cho heo siêu</h6>
                                    <span>289,000 đ</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Latest Product Section End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>Tin Tức</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="blog-details.jsp">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/images/thumbnail1.jpg" alt=""/>
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 27/07/2022</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="blog-details.jsp">Hòa Phát nhập khẩu 100% heo giống từ Đan Mạch</a></h5>
                            <p>
                                100% heo giống cụ kỵ của Hòa Phát được nhập khẩu trực tiếp từ Đan Mạch với các ưu điểm
                                vượt trội về năng suất sinh sản, sinh trưởng mạnh, chất lượng thịt tối ưu.
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="blog-details.jsp">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/images/thumbnail2.jpg" alt=""/>
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 04/11/2022</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="blog-details.jsp">Bản tin Thị trường Chăn nuôi ngày 04/11/2022</a></h5>
                            <p>
                                Giá heo hơi bình quân cả nước ngày hôm nay là khoảng 54.000 đồng/kg.

                                Tại miền Bắc, giá heo tiếp tục đà giảm do một số công ty lớn hạ mạnh giá heo biểu to để
                                thoát hàng.
                                Tại miền Trung và miền Nam, lực đóng ra miền Bắc chậm, số lượng heo tồn kho tăng lên nên
                                giá heo tại khu vực này cũng chịu áp lực giá heo giảm trong ngắn hạn.
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="blog-details.jsp">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/images/thumbnailGF.png" alt=""/>
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> 01/10/2022</li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="blog-details.jsp">Thực phẩm thủy hải sản GREENFEED tự hào kiến tạo giá trị
                                Lành - Lạ - Ngon</a></h5>
                            <p>
                                Bắt nguồn từ con giống khỏe mạnh, sản phẩm dinh dưỡng tối ưu, Ngành Thủy Hải Sản
                                GREENFEED đã tạo ra dòng sản phẩm thương phẩm chất lượng cao đáp ứng nhu cầu của thị
                                trường nội địa lẫn các yêu cầu, tiêu chuẩn khắc khe của thế giới.
                            </p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

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
