<%@ page import="vn.edu.hcmuaf.fit.model.bean.Account" %>
<%--
  Created by IntelliJ IDEA.
  User: ledan
  Date: 01/09/2023
  Time: 04:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Product Edit | Nalika - Material Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- nalika Icon CSS
        ============================================ -->
    <link rel="stylesheet" href="css/nalika-icon.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<%@ include file="/admin/layout-left-sidebar-pro.jsp" %>
<!-- Start Welcome area -->
<div class="all-content-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="logo-pro">
                    <a href="index.jsp"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                </div>
            </div>
        </div>
    </div>

    <!-- Single pro tab start-->
    <div class="single-product-tab-area mg-b-30">
        <!-- Single pro tab review Start-->
        <div class="single-pro-review-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="review-tab-pro-inner">
                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="review-content-section">

                                                <%
                                                    Account account = (Account) request.getAttribute("account");
                                                %>
                                                <div class="input-group mg-b-pro-edt" style="width: 100%; display: flex">
                                                    <img src="<%= account.getAvatar()%>" style="margin: auto; width: 300px; height: 300px; border-radius: 100px; margin-bottom: 50px;">
                                                </div>

                                                <div style="display: flex; justify-content: space-around">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="review-content-section">
                                                            <div class="input-group mg-b-pro-edt" style="width: 100%">
                                                                <label  style="color: white">Tên tài khoản</label>
                                                                <input type="text" disabled="disabled" class="form-control" style="background-color: #152036;" placeholder="<%= account.getName()%>">
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt" style="width: 100%">
                                                                <label  style="color: white">Họ tên khách hàng</label>
                                                                <input type="text" disabled="disabled" class="form-control" style="background-color: #152036;" placeholder="<%= account.getFullname()%>">
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt" style="width: 100%">
                                                                <label  style="color: white">Địa chỉ email</label>
                                                                <input type="text" disabled="disabled" class="form-control" style="background-color: #152036;" placeholder="<%= account.getEmail()%>">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="review-content-section">
                                                            <div class="input-group mg-b-pro-edt" style="width: 100%">
                                                                <label  style="color: white">Sô điện thoại</label>
                                                                <input type="text" disabled="disabled" class="form-control" style="background-color: #152036;" placeholder="<%= account.getPhonenumber()%>">
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt" style="width: 100%">
                                                                <label  style="color: white">Ngày sinh</label>
                                                                <input type="text" disabled="disabled" class="form-control" style="background-color: #152036;" placeholder="<%= account.getBirthday()%>">
                                                            </div>
                                                            <div class="input-group mg-b-pro-edt" style="width: 100%">
                                                                <label  style="color: white">Địa chỉ cư trú</label>
                                                                <input type="text" disabled="disabled" class="form-control" style="background-color: #152036;" placeholder="<%= account.getAddress()%>">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="input-group mg-b-pro-edt" style="width: 100%; display: flex; margin-top: 50px;">
                                                    <form action="/Web_ban_thuc_an_chan_nuoi_war/LockAccount" method="GET">
                                                        <input name="pageNumber" type="text" value="<%= request.getAttribute("pageNow")%>" style="display: none;">
                                                        <input name="account_id" type="text" value="<%= account.getAccount_id()%>" style="display: none;">

                                                        <h3 style="color: white; padding: 10px; margin: 30px 20px">Cập nhật quyền tài khoản</h3>
                                                        <select name="select" class="form-control pro-edt-select form-control-primary" style="margin: 0px 30px; margin-bottom: 70px; background-color: #0c1923">
                                                            <%
                                                                String[] selected = new String[3];
                                                                switch (account.getRole()) {
                                                                    case 0:
                                                                        selected[0] = "selected";
                                                                        break;
                                                                    case 1:
                                                                        selected[1] = "selected";
                                                                        break;
                                                                    case 2:
                                                                        selected[2] = "selected";
                                                                        break;
                                                                }
                                                            %>

                                                            <option <%= selected[0]%> value="0">Bị Khóa</option>
                                                            <option <%= selected[1]%> value="1">Khách hàng</option>
                                                            <option <%= selected[2]%> value="2">Quản Lý</option>
                                                        </select>
                                                        <div style="margin:  10px 30px;">
                                                            <button style="color: white; background-color: #0B792F; padding: 5px 20px; margin-right: 20px; border-radius: 5px;">Lưu thay đổi</button>
                                                            <a href="AccountlistController?pageNumber=<%= request.getAttribute("pageNow")%>" style="display: inline-block"><button style="color: white; background-color: darkred; padding: 5px 20px; border-radius: 5px">Hủy</button></a>
                                                        </div>
                                                    </form>

                                                </div>



                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-copyright-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-copy-right">
                        <p>Copyright © 2018 <a href="https://colorlib.com/wp/templates/">Colorlib</a> All rights reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- jquery
    ============================================ -->
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<!-- bootstrap JS
    ============================================ -->
<script src="js/bootstrap.min.js"></script>
<!-- wow JS
    ============================================ -->
<script src="js/wow.min.js"></script>
<!-- price-slider JS
    ============================================ -->
<script src="js/jquery-price-slider.js"></script>
<!-- meanmenu JS
    ============================================ -->
<script src="js/jquery.meanmenu.js"></script>
<!-- owl.carousel JS
    ============================================ -->
<script src="js/owl.carousel.min.js"></script>
<!-- sticky JS
    ============================================ -->
<script src="js/jquery.sticky.js"></script>
<!-- scrollUp JS
    ============================================ -->
<script src="js/jquery.scrollUp.min.js"></script>
<!-- mCustomScrollbar JS
    ============================================ -->
<script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/scrollbar/mCustomScrollbar-active.js"></script>
<!-- metisMenu JS
    ============================================ -->
<script src="js/metisMenu/metisMenu.min.js"></script>
<script src="js/metisMenu/metisMenu-active.js"></script>
<!-- morrisjs JS
    ============================================ -->
<script src="js/sparkline/jquery.sparkline.min.js"></script>
<script src="js/sparkline/jquery.charts-sparkline.js"></script>
<!-- calendar JS
    ============================================ -->
<script src="js/calendar/moment.min.js"></script>
<script src="js/calendar/fullcalendar.min.js"></script>
<script src="js/calendar/fullcalendar-active.js"></script>
<!-- tab JS
    ============================================ -->
<script src="js/tab.js"></script>
<!-- plugins JS
    ============================================ -->
<script src="js/plugins.js"></script>
<!-- main JS
    ============================================ -->
<script src="js/main.js"></script>

<script>
    function choose(fileInput, id ) {
        if(fileInput.files && fileInput.files[0]){
            var reader = new FileReader();

            reader.onload = function(e){
                $('#'+id).attr('src', e.target.result)
            }
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
</script>
</body>

</html>