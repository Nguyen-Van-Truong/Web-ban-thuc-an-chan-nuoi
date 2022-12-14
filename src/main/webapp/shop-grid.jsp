<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.service.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.model.*" %>

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
                            <a href="shop-grid.jsp"><i class="fa fa-heart"></i> <span>1</span></a>
                        </li>
                        <li>
                            <%
                                ShoppingCart current_cart = (vn.edu.hcmuaf.fit.model.ShoppingCart) request.getSession().getAttribute("cart");
                                int cartSize = 0;
                                if (current_cart != null)
                                    cartSize = current_cart.getItems().size();
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
                        <li><a href="index">Trang Ch???</a></li>
                        <li class="active"><a href="./shop-grid">S???n Ph???m</a></li>
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
                    <h2>Th???c ??n Ch??n Nu??i</h2>
                    <div class="breadcrumb__option">
                        <a href="index">Trang ch???</a>
                        <span>C???a h??ng</span>
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
                            <h4>Danh M???c</h4>
                            <li class="menu_item">
                                <a onclick="loadPage(1,-99,currentCharistic)" style="cursor: pointer">T???t c??? s???n ph???m
                                </a>
                                <ul class="menu">
                                    <li><a onclick="loadPage(1,-99,currentCharistic)"
                                           style="cursor: pointer">T???t c??? s???n ph???m
                                    </a></li>
                                </ul>
                            </li>

                            <%
                                List<Category> categories = (List<Category>) request.getAttribute("ListCategory");
                                for (Category c : categories) {
                                    if (c.getParentCategoryId() == 0) {
                            %>
                            <li class="menu_item">
                                <a onclick="loadPage(1,<%=c.getCategoryId()%>,currentCharistic)"
                                   style="cursor: pointer"><%=c.getName()%>
                                </a>
                                <ul class="menu">
                                    <%
                                        for (Category sub : c.getListSubCategory()) {
                                    %>
                                    <li><a onclick="loadPage(1,<%=sub.getCategoryId()%>,currentCharistic)"
                                           style="cursor: pointer"><%=sub.getName()%>
                                    </a></li>
                                    <%}%>
                                </ul>
                            </li>
                            <%
                                    }
                                }
                            %>
                        </ul>
                    </div>

                    <div class="sidebar__item">
                        <h4>T??nh Ch???t</h4>
                        <ul>
                            <%
                                List<Characteristic> sources = (List<Characteristic>) request.getAttribute("ListCharacteristic");
                                for (Characteristic s : sources) {
                            %>
                            <li>
                                <input type="checkbox" name="charistic" value="<%=s.getCharistic_id()%>"/>
                                <label class="label__checkbox"><%=s.getName()%>
                                </label>
                            </li>
                            <%}%>
                        </ul>
                    </div>
                    <div class="sidebar__item">
                        <h4>Gi??</h4>
                        <div class="price-range-wrap">
                            <div
                                    class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                    data-min="10"
                                    data-max="540"
                            >
                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            </div>
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount" name="minprice" value=""/>
                                    <input type="text" id="maxamount" name="maxprice" value=""/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar__item">
                        <h4>????nh Gi??</h4>
                        <ul>
                            <li>
                                <input type="radio" name="rating" value="5 sao"/>
                                <label class="label__radio">5 sao</label>
                            </li>
                            <li>
                                <input type="radio" name="rating" value="4 sao"/>
                                <label class="label__radio">4 sao</label>
                            </li>
                            <li>
                                <input type="radio" name="rating" value="3 sao"/>
                                <label class="label__radio">3 sao</label>
                            </li>
                            <li>
                                <input type="radio" name="rating" value="2 sao"/>
                                <label class="label__radio">2 sao</label>
                            </li>
                            <li>
                                <input type="radio" name="rating" value="1 sao"/>
                                <label class="label__radio">1 sao</label>
                            </li>
                        </ul>
                    </div>

                    <input onclick="loadPage(1,currentCategory,getSelectedCheckboxes())" type="submit" value="T??m Ki???m"
                           style="height: 50px; width: 100px; background-color:
                    darkred;color: white;border: none;font-size: 16px;  cursor: pointer;"/>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2>Gi???m Gi??</h2>
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
                                        <h5><a href="shop-details.jsp">Th???c ??n h???n h???p ho??n ch???nh cho v???t, ngan d?????i 21
                                            ng??y tu???i</a></h5>
                                        <div class="product__item__price">
                                            183,200 ??<span>229,000 ??</span>
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
                                        <h5><a href="shop-details.jsp">H???n h???p cho v???t, ngan th???t</a></h5>
                                        <div class="product__item__price">
                                            199,200 ?? <span>249,000 ??</span>
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
                                        <h5><a href="shop-details.jsp">H???n h???p cho b?? th???t</a></h5>
                                        <div class="product__item__price">
                                            191,200 ?? <span>239,000 ??</span>
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
                                        <h5><a href="shop-details.jsp">Th???c ??n h???n h???p cho C?? r?? phi v?? c?? ??i??u
                                            h???ng</a></h5>
                                        <div class="product__item__price">
                                            183,200 ?? <span>229,000 ??</span>
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
                                        <h5><a href="shop-details.jsp">Th???c ??n h???n h???p cho d?? v??? b??o</a></h5>
                                        <div class="product__item__price">
                                            188,800 ?? <span>236,000 ??</span>
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
                                        <h5><a href="shop-details.jsp">Th???c ??n h???n h???p ho??n ch???nh cho g?? d?????i 30 ng??y
                                            tu???i</a></h5>
                                        <div class="product__item__price">
                                            188,800 ?? <span>236,000 ??</span>
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
                                <span>S???p X???p Theo</span>
                                <select>
                                    <option value="0">M???c ?????nh</option>
                                    <option value="0">M???c ?????nh</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="filter__found">
                                <h6><span>16</span> S???n ph???m ???????c t??m th???y</h6>
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
                %>
                <div class="product__pagination">
                    <button onclick="loadPage(1,currentCategory,currentCharistic)"><<</button>
                    <button onclick="loadPage(1,currentCategory,currentCharistic)">1</button>
                    <!-- Add links for additional pages -->
                    <% for (int i = 2; i <= totalPages; i++) { %>
                    <button onclick="loadPage(<%= i %>,currentCategory,currentCharistic)"><%= i %>
                    </button>
                    <% } %>
                    <button onclick="loadPage(<%= totalPages %>,currentCategory,currentCharistic)">>></button>
                </div>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
                <script>
                    var currentPage = 1;
                    var currentCategory = -99;
                    var currentCharistic = -99;

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

                    function loadPage(page, category_id, charistic_id) {
                        currentPage = page;
                        currentCategory = category_id;
                        currentCharistic = charistic_id;
                        $.ajax({
                            url: "/Web_ban_thuc_an_chan_nuoi_war/LoadProductsAJax_shopGrid",
                            type: "get",
                            data: {page: page, category_id: category_id, charistic_id: charistic_id.join(",")},
                            success: function (data) {
                                var row = document.getElementById("content");
                                row.innerHTML = data;
                            },
                            error: function (xhr) {
                            }
                        });
                    }

                    var sourceIdList = [];
                    <%
                    int passCategoryIdFromIndex = -99;
                    Category currentCategory = (Category) request.getAttribute("current-category");
                    if (currentCategory!=null){
                    passCategoryIdFromIndex = currentCategory.getCategoryId();
                    }
                    %>
                    console.log(<%=passCategoryIdFromIndex%>);
                    loadPage(1, <%=passCategoryIdFromIndex%>, sourceIdList)
                </script>

                <script>
                    //lay ra source da chon
                    function getSelectedCheckboxes() {
                        var checkboxes = document.getElementsByName("charistic");
                        var selected = [];
                        for (var i = 0; i < checkboxes.length; i++) {
                            if (checkboxes[i].checked) {
                                selected.push(checkboxes[i].value);
                            }
                        }
                        return selected;
                    }
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
