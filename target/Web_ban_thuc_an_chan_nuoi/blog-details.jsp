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
                    <a href="index.jsp"><img src="img/logo.png" alt=""/></a>
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
                            <%
                                ShoppingCart current_cart = (ShoppingCart) request.getSession().getAttribute("cart");
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
                        <li><a href="IndexController">Trang Chủ</a></li>
                        <li><a href="./shop-grid">Sản phẩm</a></li>
                        <li><a href="BlogController?pageNumber=1">Tin Tức</a></li>
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

<!-- Blog Details Hero Begin -->
<section
        class="blog-details-hero set-bg"
        data-setbg="img/images/banner.jpg"
>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="blog__details__hero__text">
                    <h2>Hòa Phát nhập khẩu 100% heo giống từ Đan Mạch</h2>
                    <ul>
                        <li>Cty Hòa Phát</li>
                        <li>27/07/2022</li>
                        <li>0 Comments</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Hero End -->

<!-- Blog Details Section Begin -->
<section class="blog-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 order-md-1 order-1">
                <div class="blog__details__text">
                    <%
                        Blog blog = (Blog) request.getAttribute("blog");
                        List<ContentBlog> listContent = (List<ContentBlog>) request.getAttribute("listContent");
                    %>


                    <h1>
                        <%= blog.getTitle()%>
                    </h1>
                    <h6 style="margin-bottom: 50px">
                        <%= blog.getCreate_date()%>
                    </h6>
                    <%
                        for (ContentBlog contentBlog : listContent) {
                    %>
                    <div style="display: flex; flex-direction: column">
                        <img src="<%= contentBlog.getUrl_image()%>" alt="" style="margin: auto ; padding: 50px"/>
                        <p>
                            <%= contentBlog.getParagrap()%>
                        </p>
                    </div>

                    <%}%>

                </div>
                <div class="blog__details__content">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="blog__details__author">
                                <div class="blog__details__author__pic">
                                    <!--                      <img src="img/blog/details/details-author.jpg" alt="" />-->
                                </div>
                                <div class="blog__details__author__text">
                                    <!--                      <h6>Michael Scofield</h6>-->
                                    <!--                      <span>Admin</span>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="blog__details__widget">
                                <ul>
                                    <!--                      <li><span>Categories:</span> Food</li>-->
                                    <!--                      <li>-->
                                    <!--                        <span>Tags:</span> All, Trending, Cooking, Healthy Food,-->
                                    <!--                        Life Style-->
                                    <!--                      </li>-->
                                </ul>
                                <div class="blog__details__social">
                                    <!--                      <a href="#"><i class="fa fa-facebook"></i></a>-->
                                    <!--                      <a href="#"><i class="fa fa-twitter"></i></a>-->
                                    <!--                      <a href="#"><i class="fa fa-google-plus"></i></a>-->
                                    <!--                      <a href="#"><i class="fa fa-linkedin"></i></a>-->
                                    <!--                      <a href="#"><i class="fa fa-envelope"></i></a>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- Blog Details Section End -->

<%--    <section>--%>
<%--      <div class="container">--%>
<%--        <div class="row">--%>
<%--          <div class="col-lg-12 col-md-12">--%>
<%--            <h3>Bình Luận</h3>--%>
<%--            <div class="comment">--%>
<%--              <input type="text" name="" id="blog_cmment" class="input_comment" value="Vui lòng nhập bình luận của bạn">--%>
<%--              <button class="primary-btn">Đăng bình luận</button>--%>
<%--            </div>--%>

<%--            <div class="page_comment">--%>
<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--              </div>--%>

<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--              </div>--%>

<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--              </div>--%>

<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--              </div>--%>

<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--              </div>--%>

<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--              </div>--%>
<%--  --%>
<%--              --%>
<%--            </div>--%>
<%--            --%>
<%--          --%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </section>--%>

<%--    <section>--%>
<%--      <div class="container">--%>
<%--        <div class="row">--%>
<%--          <div class="col-lg-12 col-md-12">--%>
<%--            <h3>Đánh Giá</h3>--%>
<%--            <div class="comment">--%>
<%--              <input type="text" name="" id="blog_cmment" class="input_comment" value="Vui lòng nhập bình luận của bạn">--%>
<%--              <button class="primary-btn">Đánh giá</button>--%>
<%--            </div>--%>
<%--            <div class="review_choose">--%>
<%--              <div class="review_star">--%>
<%--                <input type="radio" name="star_radio" id="">--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--              </div>--%>
<%--              <div class="review_star">--%>
<%--                <input type="radio" name="star_radio" id="">--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--              </div>--%>
<%--              <div class="review_star">--%>
<%--                <input type="radio" name="star_radio" id="">--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--              </div>--%>
<%--              <div class="review_star">--%>
<%--                <input type="radio" name="star_radio" id="">--%>
<%--                <i class="fa fa-star"></i>--%>
<%--                <i class="fa fa-star"></i>--%>
<%--              </div>--%>
<%--              <div class="review_star">--%>
<%--                <input type="radio" name="star_radio" id="">--%>
<%--                <i class="fa fa-star"></i>--%>
<%--              </div>--%>
<%--            </div>--%>

<%--            <div class="page_comment">--%>
<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--                <div class="star">--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                </div>--%>
<%--              </div>--%>

<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--                <div class="star">--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                </div>--%>
<%--              </div>--%>

<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--                <div class="star">--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                </div>--%>
<%--              </div>--%>

<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--                <div class="star">--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                </div>--%>
<%--              </div>--%>

<%--              <div class="comments">--%>
<%--                <p class="user_name">Lê Văn Chí</p>--%>
<%--                <p class="content">Sẩn phẩm này rất tốt</p>--%>
<%--                <div class="star">--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                  <i class="fa fa-star"></i>--%>
<%--                </div>--%>
<%--              </div>--%>
<%--  --%>
<%--            </div>--%>
<%--            --%>
<%--          --%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </section>--%>

<!-- Related Blog Section Begin -->
<section class="related-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related-blog-title">
                    <h2>Bài Viết Bạn Có Thể Thích</h2>
                </div>
            </div>
        </div>
        <div class="row">

            <%
                List<Blog> listBlog = (List<Blog>) request.getAttribute("listNewBlog");
                for (Blog oblog : listBlog) {
            %>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <a href="BlogDetails?blog_id=<%= oblog.getBlog_id()%>"><img src="<%= oblog.getUrl_image()%>"
                                                                                    alt=""/></a>
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i><%= oblog.getCreate_date()%>
                            </li>
                        </ul>
                        <h5><a href="BlogDetails?blog_id=<%= oblog.getBlog_id()%>"><%= oblog.getTitle()%>
                        </a></h5>
                        <p>
                            <%= oblog.getIntroduce()%>
                        </p>
                    </div>
                </div>
            </div>


            <%}%>
        </div>
    </div>
</section>
<!-- Related Blog Section End -->

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
