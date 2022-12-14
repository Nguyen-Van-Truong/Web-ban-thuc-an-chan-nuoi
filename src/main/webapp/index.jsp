<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.service.BlogService" %>
<%@ page import="vn.edu.hcmuaf.fit.model.bean.Account" %>
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
        <a href="./index"><img src="img/logo.png" alt=""/></a>
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
            <li class="active"><a href="./index">Trang ch???</a></li>
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
                        <a href="./shop-grid">Th???c ??n gai c???m</a>
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
            <li><a href="BlogController">Tin T???c</a></li>
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
                    <a href="./index"><img src="img/logo.png" alt=""/></a>
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
                                vn.edu.hcmuaf.fit.model.ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
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
                    <ul class="menu__list" style="z-index: 99">
                        <li class="active"><a href="./index">Trang Ch???</a></li>
                        <li><a href="./shop-grid">S???n ph???m</a></li>
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
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="hero__item set-bg" data-setbg="img/images/banner.jpg" style="margin-top: 17px">
                    <div class="hero__text">
                        <span>Th???c ??n ch??n nu??i</span>
                        <h2>T??? Thi??n Nhi??n<br/>100% Ch???t L?????ng</h2>
                        <p>Giao h??ng nhanh trong n???i th??nh</p>
                        <a href="shop-grid" class="primary-btn">S???n Ph???m</a>
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
                <%
                    List<Category> listAllCategory = (List<Category>) request.getAttribute("ListAllCategory");
                    for (Category cate : listAllCategory) {
                        String imgProductFromCategory = cate.get1ImgProductFromCategory();
                        if (imgProductFromCategory != null) {
                %>
                <div class="col-lg-3">
                    <div
                            class="categories__item set-bg"
                            data-setbg="<%=imgProductFromCategory%>"
                    >
                        <h5><a href="shop-grid?categoryId=<%=cate.getCategoryId()%>"><%=cate.getName()%>
                        </a></h5>
                    </div>
                </div>
                <%
                        }
                    }
                %>
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
                    <h2>S???n ph???m n???i b???t</h2>
                </div>
                <div class="featured__controls">
                    <ul>
                        <li class="active" data-filter="*">T???t c???</li>
                        <%
                            List<Category> categoryList = (List<Category>) request.getAttribute("ListCategoryHaveFeaturedProduct");
                            for (Category c : categoryList) {
                        %>
                        <li data-filter=".c<%=c.getCategoryId()%>"><%=c.getName()%>
                        </li>
                        <%
                            }
                        %>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row featured__filter">
            <%
                List<Product> ListFeaturedProduct = (List<Product>) request.getAttribute("ListFeaturedProduct");
                for (Product p : ListFeaturedProduct) {
            %>
            <div class="col-lg-3 col-md-4 col-sm-6 mix <%=p.toStringListCate(p.getAllCategoryIds())%>">
                <div class="featured__item">
                    <div
                            class="featured__item__pic set-bg"
                            data-setbg="<%=p.get1SrcImg()%>"
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
                        <h6><a href="shop-detail?productId=<%=p.getProduct_id()%>"><%=p.getProduct_name()%>
                        </a></h6>
                        <h5><%=p.getOutPrice()%> ??</h5>
                    </div>
                </div>
            </div>
            <%
                }
            %>
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
                    <h4>S???n ph???m m???i nh???t</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <%
                                List<Product> list6NewProducts = (List<Product>) request.getAttribute("ListNNewProducts");
                                for (int i = 0; i < list6NewProducts.size() / 2; i++) {
                                    Product p = list6NewProducts.get(i);%>
                            <a href="shop-detail?productId=<%=p.getProduct_id()%>" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.get1SrcImg()%>" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%=p.getProduct_name()%>></h6>
                                    <span><%=p.getOutPrice()%>> ??</span>
                                </div>
                            </a>
                            <%
                                }
                            %>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <%
                                for (int i = list6NewProducts.size() / 2; i < list6NewProducts.size(); i++) {
                                    Product p = list6NewProducts.get(i);%>
                            <a href="shop-detail?productId=<%=p.getProduct_id()%>" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.get1SrcImg()%>" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%=p.getProduct_name()%>></h6>
                                    <span><%=p.getOutPrice()%>> ??</span>
                                </div>
                            </a>
                            <%
                                }
                            %>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>S???n ph???m b??n ch???y</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">

                            <%
                                List<Product> list6BestSellingProducts = (List<Product>) request.getAttribute("ListNBestSellingProducts");
                                for (int i = 0; i < list6BestSellingProducts.size() / 2; i++) {
                                    Product p = list6BestSellingProducts.get(i);%>
                            <a href="shop-detail?productId=<%=p.getProduct_id()%>" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.get1SrcImg()%>" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%=p.getProduct_name()%>></h6>
                                    <span><%=p.getOutPrice()%>> ??</span>
                                </div>
                            </a>
                            <%
                                }
                            %>
                        </div>
                        <div class="latest-prdouct__slider__item">

                            <%
                                for (int i = list6NewProducts.size() / 2; i < list6BestSellingProducts.size(); i++) {
                                    Product p = list6BestSellingProducts.get(i);%>
                            <a href="shop-detail?productId=<%=p.getProduct_id()%>" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.get1SrcImg()%>" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%=p.getProduct_name()%>></h6>
                                    <span><%=p.getOutPrice()%>> ??</span>
                                </div>
                            </a>
                            <%
                                }
                            %>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>????nh ???????c ????nh gi?? cao</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <%
                                List<Product> listNBestAvgScoreProducts = (List<Product>) request.getAttribute("ListNBestAvgScoreProducts");
                                for (int i = 0; i < listNBestAvgScoreProducts.size() / 2; i++) {
                                    Product p = listNBestAvgScoreProducts.get(i);%>
                            <a href="shop-detail?productId=<%=p.getProduct_id()%>" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.get1SrcImg()%>" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%=p.getProduct_name()%>></h6>
                                    <span><%=p.getOutPrice()%>> ??</span>
                                </div>
                            </a>
                            <%
                                }
                            %>
                        </div>
                        <div class="latest-prdouct__slider__item">

                            <%
                                for (int i = listNBestAvgScoreProducts.size() / 2; i < listNBestAvgScoreProducts.size(); i++) {
                                    Product p = listNBestAvgScoreProducts.get(i);%>
                            <a href="shop-detail?productId=<%=p.getProduct_id()%>" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="<%=p.get1SrcImg()%>" alt=""/>
                                </div>
                                <div class="latest-product__item__text">
                                    <h6><%=p.getProduct_name()%>></h6>
                                    <span><%=p.getOutPrice()%>> ??</span>
                                </div>
                            </a>
                            <%
                                }
                            %>

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
                    <h2>Tin T???c</h2>
                </div>
            </div>
        </div>
        <div class="row" id="blog">
            <%
                List<Blog> listBlog = (List<Blog>) request.getAttribute("listBlog");
                for (Blog blog : listBlog) { %>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="BlogDetails?blog_id=<%= blog.getBlog_id()%>">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="<%= blog.getUrl_image() %>" alt=""/>
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> <%=  blog.getCreate_date() %>
                                </li>
                            </ul>

                            <h5><a href="BlogDetails?blog_id=<%= blog.getBlog_id()%>">"<%=  blog.getTitle() %>"</a></h5>

                            <p>
                                <%=
                                blog.getIntroduce()
                                %>
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <% } %>
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

