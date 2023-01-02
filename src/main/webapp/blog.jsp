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
                <a href="./shop-grid.jsp">Sản phẩm</a>
                <ul class="header__menu__dropdown one__lever">
                    <li>
                        <a href="./shop-grid.jsp">Thức ăn gia súc</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid">Thức ăn cho bò</a></li>
                            <li><a href="./shop-grid">Thức ăn cho ngựa</a></li>
                            <li><a href="./shop-grid">Thức ăn cho lợn</a></li>
                            <li><a href="./shop-grid">Thức ăn cho trâu</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid.jsp">Thức ăn gai cầm</a>
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
            <li><a href="./blog">Tin Tức</a></li>
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
                        <li><a href="index.jsp">Trang Chủ</a></li>
                        <li><a href="./shop-grid">Sản Phẩm</a></li>
                        <li class="active"><a href="./blog.html">Tin Tức</a></li>
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
                    <h2>Tin Tức</h2>
                    <div class="breadcrumb__option">
                        <a href="index.jsp">Trang chủ</a>
                        <span>Tin Tức</span>
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
                            <input type="text" placeholder="Tìm kiếm..."/>
                            <button type="submit">
                                <span class="icon_search"></span>
                            </button>
                        </form>
                    </div>
                    <!-- <div class="blog__sidebar__item">
                      <h4>Thể loại</h4>
                      <ul>
                        <li><a href="#">Tất cả</a></li>
                        <li><a href="#">Gia Cầm (20)</a></li>
                        <li><a href="#">Gia Súc (5)</a></li>
                        <li><a href="#">Thủy Sản (9)</a></li>
                        <li><a href="#">Khác (10)</a></li>
                      </ul>
                    </div> -->
                    <div class="blog__sidebar__item">
                        <h4>Tin tức gần đây</h4>
                        <div class="blog__sidebar__recent">
                            <a href="blog-details.jsp" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/images/tintuc3.jpg" alt=""/>
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>
                                        Tinh dầu thay thế kháng sinh <br/>
                                        trong chăn nuôi heo
                                    </h6>
                                    <span>08/11/2022</span>
                                </div>
                            </a>
                            <a href="blog-details.jsp" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/images/tintuc4.jpg" alt=""/>
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>
                                        Triển khai Tháng vệ sinh, khử trùng tiêu độc <br/>
                                        môi trường chăn nuôi
                                    </h6>
                                    <span>07/11/2022</span>
                                </div>
                            </a>
                            <a href="blog-details.jsp" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="img/images/tintuc5.jpg" alt=""/>
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6>
                                        Quy trình kỹ thuật nuôi dê lấy sữa hiệu quả cao
                                    </h6>
                                    <span>04/11/2022</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-7">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
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
                                    100% heo giống cụ kỵ của Hòa Phát được nhập khẩu trực tiếp từ Đan Mạch với các ưu
                                    điểm vượt trội về năng suất sinh sản, sinh trưởng mạnh, chất lượng thịt tối ưu.
                                </p>
                                <a href="blog-details.jsp" class="blog__btn"
                                >Đọc thêm <span class="arrow_right"></span
                                ></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
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

                                    Tại miền Bắc, giá heo tiếp tục đà giảm do một số công ty lớn hạ mạnh giá heo biểu to
                                    để thoát hàng.
                                    Tại miền Trung và miền Nam, lực đóng ra miền Bắc chậm, số lượng heo tồn kho tăng lên
                                    nên
                                    giá heo tại khu vực này cũng chịu áp lực giá heo giảm trong ngắn hạn.
                                </p>
                                <a href="blog-details.jsp" class="blog__btn"
                                >Đọc thêm <span class="arrow_right"></span
                                ></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
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
                                <a href="blog-details.jsp" class="blog__btn"
                                >Đọc thêm<span class="arrow_right"></span
                                ></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/images/tin-tuc1.jpg" alt=""/>
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li>
                                        <i class="fa fa-calendar-o"></i>10/11/2022
                                    </li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="blog-details.jsp">Tuyên bố của Hội đồng Gia cầm Quốc tế (International
                                    Poultry Council – IPC) về sử dụng kháng sinh và các nguyên tắc quản lý kháng
                                    sinh</a></h5>
                                <p>
                                    Sứ mệnh: IPC và các thành viên sẽ thúc đẩy việc sử dụng và quản lý có trách nhiệm
                                    các chất khánh khuẩn; nhằm bảo vệ sức khỏe và phúc lợi của đàn gia cầm, sản xuất
                                    thực phẩm an toàn, bảo đảm tính hiệu quả của các chất kháng khuẩn và tạo niềm tin
                                    với người tiêu dùng.
                                </p>
                                <a href="blog-details.jsp" class="blog__btn"
                                >Đọc thêm<span class="arrow_right"></span
                                ></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/images/tintuc2.jpg" alt=""/>
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li>
                                        <i class="fa fa-calendar-o"></i>14/07/2022
                                    </li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5>
                                    <a href="blog-details.jsp"
                                    >Hòa Phát cung cấp gần 200.000 con heo trong 6 tháng đầu năm</a
                                    >
                                </h5>
                                <p>
                                    6 tháng đầu năm, sản lượng heo tiêu thụ các loại đạt gần 200.000 con heo thịt thương
                                    phẩm, heo giống… ngang bằng so với cùng kì năm ngoái.
                                </p>
                                <a href="blog-details.jsp" class="blog__btn"
                                >Đọc thêm<span class="arrow_right"></span
                                ></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="blog__item">
                            <div class="blog__item__pic">
                                <img src="img/images/tintuc6.jpg" alt=""/>
                            </div>
                            <div class="blog__item__text">
                                <ul>
                                    <li>
                                        <i class="fa fa-calendar-o"></i>03/10/2022
                                    </li>
                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                </ul>
                                <h5><a href="blog-details.jsp">Kỹ sư trẻ về làng nuôi gà kiếm tiền tỉ</a></h5>
                                <p>
                                    Chán cảnh sống ngột ngạt, gò bó ở thành thị, chàng kỹ sư CNTT bỏ Thủ đô về quê lập
                                    nghiệp bằng cách chăn gà, nuôi lợn, thả cá, trồng rau. Sau gần 10 năm, anh đã thành
                                    ông chủ của 5 nghìn con gà, gần 100 con lợn và ao cá rộng gần 1ha.
                                </p>
                                <a href="blog-details.jsp" class="blog__btn"
                                >Đọc thêm <span class="arrow_right"></span
                                ></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="product__pagination blog__pagination">
                            <a href="#">1</a>
                            <a href="#">2</a>
                            <a href="#">3</a>
                            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
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