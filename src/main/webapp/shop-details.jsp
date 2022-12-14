<%@ page import="vn.edu.hcmuaf.fit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<%
    Product p = (Product) request.getAttribute("current-product");
%>
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
                <%
                    ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
                    int cartSize = 0;
                    if (cart != null)
                        cartSize = cart.getItems().size();
                %>
                <a href="cart"><i class="fa fa-shopping-bag"></i><%=cartSize%> <span></span></a>
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
            <a href="#"><i class="fa fa-user"></i> ????ng nh???p</a>
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
                            <li><a href="./shop-grid.html">Th???c ??n cho b??</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n cho ng???a</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n cho l???n</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n cho tr??u</a></li>
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
                            <a href="shop-grid.html"><i class="fa fa-heart"></i> <span>1</span></a>
                        </li>
                        <li>
                            <a href="ShoppingCart"
                            ><i class="fa fa-shopping-bag"></i> <span><%=cartSize%></span></a
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
                        <li><a href="index">Trang Ch???</a></li>
                        <li><a href="./shop-grid">S???n Ph???m</a></li>
                        <li><a href="BlogController?pageNumber=1">Tin T???c</a></li>
                        <li><a href="contact.jsp">Li??n H???</a></li>
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
                    <h2>Th???c ??n cho heo</h2>
                    <div class="breadcrumb__option">
                        <a href="index">Trang ch???</a>
                        <a href="index">Th???c ??n cho heo</a>
                        <span><%=p.getProduct_name()%></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="product__details__pic">
                    <div class="product__details__pic__item">
                        <img class="product__details__pic__item--large"
                             src="<%=p.get1SrcImg()%>" alt="">
                    </div>
                    <div class="product__details__pic__slider owl-carousel">
                        <%
                            for (String img : p.getAllSrcImg()) {
                        %>
                        <img data-imgbigurl="<%=img%>"
                             src="<%=img%>" alt="">
                        <%
                            }
                        %>


                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="product__details__text">
                    <h3><%=p.getProduct_name()%>
                    </h3>
                    <div class="product__details__rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <span>(18 nh???n x??t)</span>
                    </div>
                    <div class="product__details__price"><%=p.getOutPrice()%>VND</div>

                    <p><%=p.getProduct_description()%>
                    </p>

                    <div class="product__details__quantity">
                        <div class="quantity">
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>
                        </div>
                    </div>
                    <a href="#" class="primary-btn" data-product-id="<%=p.getProduct_id()%>" onclick="addToCart(event)">TH??M
                        V??O GI??? H??NG</a>
                    <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                    <ul>
                        <li><b>Kh??? d???ng</b> <span>Trong kho</span></li>
                        <li><b>??ang chuy???n h??ng</b> <span> V???n chuy???n 01 ng??y. <samp> Nh???n mi???n ph?? ngay h??m nay</samp></span>
                        </li>
                        <li><b>Tr???ng l?????ng</b> <span>20 kg</span></li>
                        <li><b>Chia s???</b>
                            <div class="share">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-pinterest"></i></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="product__details__tab">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                               aria-selected="true">S??? m?? t???</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                               aria-selected="false">Th??ng tin</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                               aria-selected="false">Nh???n x??t <span>(0)</span></a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Th??ng tin s???n ph???m</h6>
                                <p><%=p.getProduct_description()%>
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <h6>Th??nh ph???n</h6>
                                <p><%=p.getProduct_description()%>></p>
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="product__details__tab__desc">
                                <div class="comment">
                                    <input type="text" name="" id="blog_cmment" class="input_comment"
                                           value="Vui l??ng nh???p b??nh lu???n c???a b???n">
                                    <button class="primary-btn">????ng b??nh lu???n</button>
                                </div>

                                <div class="page_comment">
                                    <div class="comments">
                                        <p class="user_name">L?? V??n Ch??</p>
                                        <p class="content">S???n ph???m n??y r???t t???t</p>
                                    </div>

                                    <div class="comments">
                                        <p class="user_name">L?? V??n Ch??</p>
                                        <p class="content">S???n ph???m n??y r???t t???t</p>
                                    </div>

                                    <div class="comments">
                                        <p class="user_name">L?? V??n Ch??</p>
                                        <p class="content">S???n ph???m n??y r???t t???t</p>
                                    </div>

                                    <div class="comments">
                                        <p class="user_name">L?? V??n Ch??</p>
                                        <p class="content">S???n ph???m n??y r???t t???t</p>
                                    </div>

                                    <div class="comments">
                                        <p class="user_name">L?? V??n Ch??</p>
                                        <p class="content">S???n ph???m n??y r???t t???t</p>
                                    </div>

                                    <div class="comments">
                                        <p class="user_name">L?? V??n Ch??</p>
                                        <p class="content">S???n ph???m n??y r???t t???t</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Details Section End -->

<section>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <h3>????nh Gi??</h3>
                <div class="comment">
                    <input type="text" name="" id="blog_comment" class="input_comment"
                           value="Vui l??ng nh???p b??nh lu???n c???a b???n">
                    <button class="primary-btn">????nh gi??</button>
                </div>
                <div class="review_choose">
                    <div class="review_star">
                        <input type="radio" name="star_radio" id="1s">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="review_star">
                        <input type="radio" name="star_radio" id="2s">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="review_star">
                        <input type="radio" name="star_radio" id="3s">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="review_star">
                        <input type="radio" name="star_radio" id="4s">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="review_star">
                        <input type="radio" name="star_radio" id="5s">
                        <i class="fa fa-star"></i>
                    </div>
                </div>

                <div class="page_comment">
                    <div class="comments">
                        <p class="user_name">L?? V??n Ch??</p>
                        <p class="content">S???n ph???m n??y r???t t???t</p>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>

                    <div class="comments">
                        <p class="user_name">L?? V??n Ch??</p>
                        <p class="content">S???n ph???m n??y r???t t???t</p>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>

                    <div class="comments">
                        <p class="user_name">L?? V??n Ch??</p>
                        <p class="content">S???n ph???m n??y r???t t???t</p>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>

                    <div class="comments">
                        <p class="user_name">L?? V??n Ch??</p>
                        <p class="content">S???n ph???m n??y r???t t???t</p>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>

                    <div class="comments">
                        <p class="user_name">L?? V??n Ch??</p>
                        <p class="content">S???n ph???m n??y r???t t???t</p>
                        <div class="star">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>
</section>

<!-- Related Product Section Begin -->
<section class="related-product">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related__product__title">
                    <h2>S???n ph???m li??n quan</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <%
                for (Product product_re : p.getNRelatedProducts(4)) {
            %>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="<%=product_re.get1SrcImg()%>">
                        <ul class="product__item__pic__hover">
                            <li><a href="#"><i class="fa fa-heart"></i></a></li>
                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                            <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6>
                            <a href="shop-detail?productId=<%=product_re.getProduct_id()%>"><%=product_re.getProduct_name()%>
                            </a></h6>
                        <h5><%=product_re.getOutPrice()%> ??</h5>
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
</section>
<!-- Related Product Section End -->

<!-- Footer Section Begin -->
<div class="over_footer"></div>
<!-- Footer Section End -->

<script>
    function addToCart(event) {
        event.preventDefault();

        var productId = <%=p.getProduct_id()%>;
        var quantity = $('.pro-qty input').val();

        $.ajax({
            url: '/Web_ban_thuc_an_chan_nuoi_war/ShoppingCart',
            method: 'POST',
            data: {
                productId: productId,
                quantity: quantity,
                action: "add",
            },
            success: function (response) {
                console.log('Product added to cart!');
            },
            error: function (xhr, status, error) {
                console.log('Error: ' + error);
            }
        });
    }
</script>

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