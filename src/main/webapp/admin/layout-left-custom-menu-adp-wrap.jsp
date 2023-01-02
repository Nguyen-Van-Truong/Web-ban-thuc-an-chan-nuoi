<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Danh sách sản phẩm | Admin - Chăn nuôi</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="#">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/font-awesome.min.css">
    <!-- nalika Icon CSS
        ============================================ -->
    <link rel="stylesheet" href="admin/css/nalika-icon.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/owl.carousel.css">
    <link rel="stylesheet" href="admin/css/owl.theme.css">
    <link rel="stylesheet" href="admin/css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="admin/css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="admin/css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="admin/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="admin/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="admin/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>

<div class="left-custom-menu-adp-wrap comment-scrollbar">
    <nav class="sidebar-nav left-sidebar-menu-pro">
        <ul class="metismenu" id="menu1">
            <li class="active">
                <a class="has-arrow" href="admin/index.html">
                    <i class="icon nalika-home icon-wrap"></i>
                    <span class="mini-click-non">Thương mại điện tử</span>
                </a>
                <ul class="submenu-angle" aria-expanded="true">
                    <li><a title="Dashboard v.1" href="index.jsp"><span class="mini-sub-pro">Bảng thống kê</span></a></li>
                    <li><a title="Product List" href="product-list.jsp"><span class="mini-sub-pro">Danh sách sản phẩm</span></a></li>
                    <li><a title="Product Edit" href="product-edit.jsp"><span class="mini-sub-pro">Chỉnh sửa sản phẩm</span></a></li>
                    <li><a title="Product Detail" href="product-detail.jsp"><span class="mini-sub-pro">Chi tiết sản phẩm</span></a></li>
                    <li><a title="Product Cart" href="product-cart.jsp"><span class="mini-sub-pro">Giỏ hàng</span></a></li>
                    <li><a title="Product Payment" href="product-payment.jsp"><span class="mini-sub-pro">Thanh toán</span></a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow" href="mailbox.jsp" aria-expanded="false"><i class="icon nalika-mail icon-wrap"></i> <span class="mini-click-non">Mailbox</span></a>
                <ul class="submenu-angle" aria-expanded="false">
                    <li><a title="Inbox" href="mailbox.jsp"><span class="mini-sub-pro">Inbox</span></a></li>
                </ul>
            </li>
            <li>
                <a class="has-arrow" href="mailbox.jsp" aria-expanded="false"><i class="icon nalika-pie-chart icon-wrap"></i> <span class="mini-click-non">Miscellaneous</span></a>
                <ul class="submenu-angle" aria-expanded="false">
                    <li><a title="File Manager" href="file-manager.jsp"><span class="mini-sub-pro">File Manager</span></a></li>
                    <li><a title="Blog" href="blog.jsp"><span class="mini-sub-pro">Blog</span></a></li>
                    <li><a title="Blog Details" href="blog-details.jsp"><span class="mini-sub-pro">Blog Details</span></a></li>
                    <li><a title="404 Page" href="404.html"><span class="mini-sub-pro">404 Page</span></a></li>
                    <li><a title="500 Page" href="500.html"><span class="mini-sub-pro">500 Page</span></a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>


<!--script-->
<!-- jquery
     ============================================ -->
<script src="admin/js/vendor/jquery-1.12.4.min.js"></script>
<!-- bootstrap JS
    ============================================ -->
<script src="admin/js/bootstrap.min.js"></script>
<!-- wow JS
    ============================================ -->
<script src="admin/js/wow.min.js"></script>
<!-- price-slider JS
    ============================================ -->
<script src="admin/js/jquery-price-slider.js"></script>
<!-- meanmenu JS
    ============================================ -->
<script src="admin/js/jquery.meanmenu.js"></script>
<!-- owl.carousel JS
    ============================================ -->
<script src="admin/js/owl.carousel.min.js"></script>
<!-- sticky JS
    ============================================ -->
<script src="admin/js/jquery.sticky.js"></script>
<!-- scrollUp JS
    ============================================ -->
<script src="admin/js/jquery.scrollUp.min.js"></script>
<!-- mCustomScrollbar JS
    ============================================ -->
<script src="admin/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="admin/js/scrollbar/mCustomScrollbar-active.js"></script>
<!-- metisMenu JS
    ============================================ -->
<script src="admin/js/metisMenu/metisMenu.min.js"></script>
<script src="admin/js/metisMenu/metisMenu-active.js"></script>
<!-- morrisjs JS
    ============================================ -->
<script src="admin/js/sparkline/jquery.sparkline.min.js"></script>
<script src="admin/js/sparkline/jquery.charts-sparkline.js"></script>
<!-- calendar JS
    ============================================ -->
<script src="admin/js/calendar/moment.min.js"></script>
<script src="admin/js/calendar/fullcalendar.min.js"></script>
<script src="admin/js/calendar/fullcalendar-active.js"></script>
<!-- plugins JS
    ============================================ -->
<script src="admin/js/plugins.js"></script>
<!-- main JS
    ============================================ -->
<script src="admin/js/main.js"></script>
</body>
</html>