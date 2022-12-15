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
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
      <div class="humberger__menu__logo">
        <a href="index.jsp"><img src="img/logo.png" alt="" /></a>
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
          <img src="img/language.png" alt="" />
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
                    <img src="img/language.png" alt="" />
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
                <a href="index.jsp"><img src="img/logo.png" alt="" /></a>
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
  
                <!-- <div class="hero__search__phone">
                          <div class="hero__search__phone__icon">
                              <i class="fa fa-phone"></i>
                          </div>
                          <div class="hero__search__phone__text">
                              <h5>+65 11.188.888</h5>
                              <span>support 24/7 time</span>
                          </div>
                      </div> -->
              </div>
            </div>
            <div class="col-lg-3">
              <div class="header__cart">
                <ul>
                  <li>
                    <a href="shop-grid.html"><i class="fa fa-heart"></i> <span>1</span></a>
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
                  <li><a href="./shop-grid">Sản Phẩm</a></li>
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
                        <h2>Giỏ hàng</h2>
                        <div class="breadcrumb__option">
                            <a href="index.jsp">Trang chủ</a>
                            <span>Giỏ hàng</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">Các sản phẩm</th>
                                    <th>Giá bán</th>
                                    <th>Số lượng</th>
                                    <th>Tổng cộng</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/images/ga/ga-de/1242P-cart.jpg" alt="">
                                        <h5>Cám gà đẻ thương phẩm</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        279,000 đ
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        279,000 đ
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/images/heo/dam-dac/mavin8933ct-cart.jpg" alt="">
                                        <h5>Hỗn hợp cho heo siêu</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        289,000 đ
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        289,000 đ
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/images/ga/ga-thit/mavin5302-cart.jpg" alt="">
                                        <h5>Hỗn hợp cho gà thịt 5302</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        209,000 đ
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        209,000 đ
                                    </td>
                                    <td class="shoping__cart__item__close">
                                        <span class="icon_close"></span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="shop-grid.html" class="primary-btn cart-btn">TIẾP TỤC MUA SẮM</a>
                        <a href="#" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            CẬP NHẬT GIỎ HÀNG</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>Mã giảm giá</h5>
                            <form action="#">
                                <input type="text" placeholder="Nhập mã phiếu giảm giá của bạn">
                                <button type="submit" class="site-btn">ÁP DỤNG COUPON</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Tổng số giỏ hàng</h5>
                        <ul>
                            <li>Tổng phụ<span>777,000 đ</span></li>
                            <li>Tổng cộng <span>777,000 đ</span></li>
                        </ul>
                        <a href="checkout.jsp" class="primary-btn">TIẾN HÀNH ĐẶT HÀNG</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->

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