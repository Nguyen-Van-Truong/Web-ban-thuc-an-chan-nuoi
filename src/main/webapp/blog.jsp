<%@ page import="java.util.List" %>
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
                        <a href="./shop-grid">Th???c ??n gia s??c</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid">Th???c ??n cho b??</a></li>
                            <li><a href="./shop-grid">Th???c ??n cho ng???a</a></li>
                            <li><a href="./shop-grid">Th???c ??n cho l???n</a></li>
                            <li><a href="./shop-grid">Th???c ??n cho tr??u</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid.jsp">Th???c ??n gai c???m</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid">Th???c ??n gia s??c</a></li>
                            <li><a href="./shop-grid">Th???c ??n gai c???m</a></li>
                            <li><a href="./shop-grid">Th???c ??n th???y s???n</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid">Th???c ??n th???y s???n</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid">Th???c ??n cho t??m</a></li>
                            <li><a href="./shop-grid">Th???c ??n cho c??</a></li>
                            <li><a href="./shop-grid">Th???c ??n cho m???c</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="./blog">Tin T???c</a></li>
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
                        <li><a href="index">Trang Ch???</a></li>
                        <li><a href="./shop-grid">S???n Ph???m</a></li>
                        <li class="active"><a href="BlogController?pageNumber=1">Tin T???c</a></li>
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
                    <h2>Tin T???c</h2>
                    <div class="breadcrumb__option">
                        <a href="index">Trang ch???</a>
                        <span>Tin T???c</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Blog Section Begin -->
<section class="blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <form action="#">
                            <input type="text" placeholder="T??m ki???m..."/>
                            <button type="submit">
                                <span class="icon_search"></span>
                            </button>
                        </form>
                    </div>

                    <div class="blog__sidebar__item">
                        <h4>Tin t???c g???n ????y</h4>
                        <div class="blog__sidebar__recent">
                            <%
                                List<Blog> listNewBlog = (List<Blog>) request.getAttribute("listNewBlog");
                                for (Blog blog : listNewBlog) {
                            %>
                            <a href="BlogDetails?blog_id=<%= blog.getBlog_id()%>" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="<%= blog.getUrl_image()%> " alt="" style="width: 100px; height: 100px;"/>
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>
                                        <%= blog.getTitle()%>
                                    </h6>
                                    <span><%= blog.getCreate_date()%></span>
                                </div>
                            </a>
                            <%--                            <a href="blog-details.jsp" class="blog__sidebar__recent__item">--%>
                            <%--                                <div class="blog__sidebar__recent__item__pic">--%>
                            <%--                                    <img src="img/images/tintuc4.jpg" alt=""/>--%>
                            <%--                                </div>--%>
                            <%--                                <div class="blog__sidebar__recent__item__text">--%>
                            <%--                                    <h6>--%>
                            <%--                                        Tri???n khai Th??ng v??? sinh, kh??? tr??ng ti??u ?????c <br/>--%>
                            <%--                                        m??i tr?????ng ch??n nu??i--%>
                            <%--                                    </h6>--%>
                            <%--                                    <span>07/11/2022</span>--%>
                            <%--                                </div>--%>
                            <%--                            </a>--%>
                            <%--                            <a href="blog-details.jsp" class="blog__sidebar__recent__item">--%>
                            <%--                                <div class="blog__sidebar__recent__item__pic">--%>
                            <%--                                    <img src="img/images/tintuc5.jpg" alt=""/>--%>
                            <%--                                </div>--%>
                            <%--                                <div class="blog__sidebar__recent__item__text">--%>
                            <%--                                    <h6>--%>
                            <%--                                        Quy tr??nh k??? thu???t nu??i d?? l???y s???a hi???u qu??? cao--%>
                            <%--                                    </h6>--%>
                            <%--                                    <span>04/11/2022</span>--%>
                            <%--                                </div>--%>
                            <%--                            </a>--%>

                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-7">
                <div class="row">
                    <%
                        List<Blog> listBlog = (List<Blog>) request.getAttribute("listBlog");
                        for (Blog blog : listBlog) {
                    %>

                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="<%= blog.getUrl_image()%>" alt=""/>
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li><i class="fa fa-calendar-o"></i> <%= blog.getCreate_date()%>
                                    </li>
                                </ul>
                                <h5><a href="BlogDetails?blog_id=<%= blog.getBlog_id()%>"><%= blog.getTitle()%>
                                </a></h5>
                                <p>
                                    <%= blog.getIntroduce()%>
                                </p>
                                <a href="BlogDetails?blog_id=<%= blog.getBlog_id()%>" class="blog__btn"
                                >?????c th??m <span class="arrow_right"></span
                                ></a>
                            </div>
                        </div>
                    </div>

                    <%}%>


                    <%--                    <div class="col-lg-6 col-md-6 col-sm-6">--%>
                    <%--                        <div class="blog__item">--%>
                    <%--                            <div class="blog__item__pic">--%>
                    <%--                                <img src="img/images/thumbnail1.jpg" alt=""/>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="blog__item__text">--%>
                    <%--                                <ul>--%>
                    <%--                                    <li><i class="fa fa-calendar-o"></i> 27/07/2022</li>--%>
                    <%--                                    <li><i class="fa fa-comment-o"></i> 5</li>--%>
                    <%--                                </ul>--%>
                    <%--                                <h5><a href="blog-details.jsp">H??a Ph??t nh???p kh???u 100% heo gi???ng t??? ??an M???ch</a></h5>--%>
                    <%--                                <p>--%>
                    <%--                                    100% heo gi???ng c??? k??? c???a H??a Ph??t ???????c nh???p kh???u tr???c ti???p t??? ??an M???ch v???i c??c ??u--%>
                    <%--                                    ??i???m v?????t tr???i v??? n??ng su???t sinh s???n, sinh tr?????ng m???nh, ch???t l?????ng th???t t???i ??u.--%>
                    <%--                                </p>--%>
                    <%--                                <a href="blog-details.jsp" class="blog__btn"--%>
                    <%--                                >?????c th??m <span class="arrow_right"></span--%>
                    <%--                                ></a>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-6 col-md-6 col-sm-6">--%>
                    <%--                        <div class="blog__item">--%>
                    <%--                            <div class="blog__item__pic">--%>
                    <%--                                <img src="img/images/thumbnail2.jpg" alt=""/>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="blog__item__text">--%>
                    <%--                                <ul>--%>
                    <%--                                    <li><i class="fa fa-calendar-o"></i> 04/11/2022</li>--%>
                    <%--                                    <li><i class="fa fa-comment-o"></i> 5</li>--%>
                    <%--                                </ul>--%>
                    <%--                                <h5><a href="blog-details.jsp">B???n tin Th??? tr?????ng Ch??n nu??i ng??y 04/11/2022</a></h5>--%>
                    <%--                                <p>--%>
                    <%--                                    Gi?? heo h??i b??nh qu??n c??? n?????c ng??y h??m nay l?? kho???ng 54.000 ?????ng/kg.--%>

                    <%--                                    T???i mi???n B???c, gi?? heo ti???p t???c ???? gi???m do m???t s??? c??ng ty l???n h??? m???nh gi?? heo bi???u to--%>
                    <%--                                    ????? tho??t h??ng.--%>
                    <%--                                    T???i mi???n Trung v?? mi???n Nam, l???c ????ng ra mi???n B???c ch???m, s??? l?????ng heo t???n kho t??ng l??n--%>
                    <%--                                    n??n--%>
                    <%--                                    gi?? heo t???i khu v???c n??y c??ng ch???u ??p l???c gi?? heo gi???m trong ng???n h???n.--%>
                    <%--                                </p>--%>
                    <%--                                <a href="blog-details.jsp" class="blog__btn"--%>
                    <%--                                >?????c th??m <span class="arrow_right"></span--%>
                    <%--                                ></a>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-6 col-md-6 col-sm-6">--%>
                    <%--                        <div class="blog__item">--%>
                    <%--                            <div class="blog__item__pic">--%>
                    <%--                                <img src="img/images/thumbnailGF.png" alt=""/>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="blog__item__text">--%>
                    <%--                                <ul>--%>
                    <%--                                    <li><i class="fa fa-calendar-o"></i> 01/10/2022</li>--%>
                    <%--                                    <li><i class="fa fa-comment-o"></i> 5</li>--%>
                    <%--                                </ul>--%>
                    <%--                                <h5><a href="blog-details.jsp">Th???c ph???m th???y h???i s???n GREENFEED t??? h??o ki???n t???o gi?? tr???--%>
                    <%--                                    L??nh - L??? - Ngon</a></h5>--%>
                    <%--                                <p>--%>
                    <%--                                    B???t ngu???n t??? con gi???ng kh???e m???nh, s???n ph???m dinh d?????ng t???i ??u, Ng??nh Th???y H???i S???n--%>
                    <%--                                    GREENFEED ???? t???o ra d??ng s???n ph???m th????ng ph???m ch???t l?????ng cao ????p ???ng nhu c???u c???a th???--%>
                    <%--                                    tr?????ng n???i ?????a l???n c??c y??u c???u, ti??u chu???n kh???c khe c???a th??? gi???i.--%>
                    <%--                                </p>--%>
                    <%--                                <a href="blog-details.jsp" class="blog__btn"--%>
                    <%--                                >?????c th??m<span class="arrow_right"></span--%>
                    <%--                                ></a>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-6 col-md-6 col-sm-6">--%>
                    <%--                        <div class="blog__item">--%>
                    <%--                            <div class="blog__item__pic">--%>
                    <%--                                <img src="img/images/tin-tuc1.jpg" alt=""/>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="blog__item__text">--%>
                    <%--                                <ul>--%>
                    <%--                                    <li>--%>
                    <%--                                        <i class="fa fa-calendar-o"></i>10/11/2022--%>
                    <%--                                    </li>--%>
                    <%--                                    <li><i class="fa fa-comment-o"></i> 5</li>--%>
                    <%--                                </ul>--%>
                    <%--                                <h5><a href="blog-details.jsp">Tuy??n b??? c???a H???i ?????ng Gia c???m Qu???c t??? (International--%>
                    <%--                                    Poultry Council ??? IPC) v??? s??? d???ng kh??ng sinh v?? c??c nguy??n t???c qu???n l?? kh??ng--%>
                    <%--                                    sinh</a></h5>--%>
                    <%--                                <p>--%>
                    <%--                                    S??? m???nh: IPC v?? c??c th??nh vi??n s??? th??c ?????y vi???c s??? d???ng v?? qu???n l?? c?? tr??ch nhi???m--%>
                    <%--                                    c??c ch???t kh??nh khu???n; nh???m b???o v??? s???c kh???e v?? ph??c l???i c???a ????n gia c???m, s???n xu???t--%>
                    <%--                                    th???c ph???m an to??n, b???o ?????m t??nh hi???u qu??? c???a c??c ch???t kh??ng khu???n v?? t???o ni???m tin--%>
                    <%--                                    v???i ng?????i ti??u d??ng.--%>
                    <%--                                </p>--%>
                    <%--                                <a href="blog-details.jsp" class="blog__btn"--%>
                    <%--                                >?????c th??m<span class="arrow_right"></span--%>
                    <%--                                ></a>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-6 col-md-6 col-sm-6">--%>
                    <%--                        <div class="blog__item">--%>
                    <%--                            <div class="blog__item__pic">--%>
                    <%--                                <img src="img/images/tintuc2.jpg" alt=""/>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="blog__item__text">--%>
                    <%--                                <ul>--%>
                    <%--                                    <li>--%>
                    <%--                                        <i class="fa fa-calendar-o"></i>14/07/2022--%>
                    <%--                                    </li>--%>
                    <%--                                    <li><i class="fa fa-comment-o"></i> 5</li>--%>
                    <%--                                </ul>--%>
                    <%--                                <h5>--%>
                    <%--                                    <a href="blog-details.jsp"--%>
                    <%--                                    >H??a Ph??t cung c???p g???n 200.000 con heo trong 6 th??ng ?????u n??m</a--%>
                    <%--                                    >--%>
                    <%--                                </h5>--%>
                    <%--                                <p>--%>
                    <%--                                    6 th??ng ?????u n??m, s???n l?????ng heo ti??u th??? c??c lo???i ?????t g???n 200.000 con heo th???t th????ng--%>
                    <%--                                    ph???m, heo gi???ng??? ngang b???ng so v???i c??ng k?? n??m ngo??i.--%>
                    <%--                                </p>--%>
                    <%--                                <a href="blog-details.jsp" class="blog__btn"--%>
                    <%--                                >?????c th??m<span class="arrow_right"></span--%>
                    <%--                                ></a>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <%--                    <div class="col-lg-6 col-md-6 col-sm-6">--%>
                    <%--                        <div class="blog__item">--%>
                    <%--                            <div class="blog__item__pic">--%>
                    <%--                                <img src="img/images/tintuc6.jpg" alt=""/>--%>
                    <%--                            </div>--%>
                    <%--                            <div class="blog__item__text">--%>
                    <%--                                <ul>--%>
                    <%--                                    <li>--%>
                    <%--                                        <i class="fa fa-calendar-o"></i>03/10/2022--%>
                    <%--                                    </li>--%>
                    <%--                                    <li><i class="fa fa-comment-o"></i> 5</li>--%>
                    <%--                                </ul>--%>
                    <%--                                <h5><a href="blog-details.jsp">K??? s?? tr??? v??? l??ng nu??i g?? ki???m ti???n t???</a></h5>--%>
                    <%--                                <p>--%>
                    <%--                                    Ch??n c???nh s???ng ng???t ng???t, g?? b?? ??? th??nh th???, ch??ng k??? s?? CNTT b??? Th??? ???? v??? qu?? l???p--%>
                    <%--                                    nghi???p b???ng c??ch ch??n g??, nu??i l???n, th??? c??, tr???ng rau. Sau g???n 10 n??m, anh ???? th??nh--%>
                    <%--                                    ??ng ch??? c???a 5 ngh??n con g??, g???n 100 con l???n v?? ao c?? r???ng g???n 1ha.--%>
                    <%--                                </p>--%>
                    <%--                                <a href="blog-details.jsp" class="blog__btn"--%>
                    <%--                                >?????c th??m <span class="arrow_right"></span--%>
                    <%--                                ></a>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>


                    <div class="col-lg-12">
                        <div class="product__pagination blog__pagination">
                            <%
                                int blogSize = (int) request.getAttribute("blogSize");
                                for (int i = 1; i <= blogSize; i++) {
                            %>
                            <a href="BlogController?pageNumber=<%= i%>"><%= i%>
                            </a>
                            <%}%>
                        </div>
                    </div>
                </div>
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
