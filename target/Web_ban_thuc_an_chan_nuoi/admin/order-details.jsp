<%@ page import="vn.edu.hcmuaf.fit.model.bean.Account" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.OrdersDetails" %>
<%@ page import="vn.edu.hcmuaf.fit.service.AccountService" %>
<%@ page import="com.mysql.cj.x.protobuf.MysqlxCrud" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Orders" %>
<%@ page import="vn.edu.hcmuaf.fit.service.OrdersService" %>
<%@ page import="vn.edu.hcmuaf.fit.service.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Transport" %>
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

    <style>
        .product-status-wrap .g-setting {
            border: none;
            color: #fff;
            padding: 5px 15px;
            font-size: 15px;
            background: #a2a2a2;
            border-radius: 3px;
        }
        .product-status-wrap .gr-setting {
            border: none;
            color: #fff;
            padding: 5px 15px;
            font-size: 15px;
            background: #24caa1;
            border-radius: 3px;
        }
        .product-status-wrap .y-setting {
            border: none;
            color: #fff;
            padding: 5px 15px;
            font-size: 15px;
            background: #d09e00;
            border-radius: 3px;
        }
        .product-status-wrap .b-setting {
            border: none;
            color: #fff;
            padding: 5px 15px;
            font-size: 15px;
            background: #2eb7f3;
            border-radius: 3px;
        }
        .product-status-wrap .r-setting {
            border: none;
            color: #fff;
            padding: 5px 15px;
            font-size: 15px;
            background: #eb4b4b;
            border-radius: 3px;
        }
    </style>
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
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="display: flex">
                <h1 style="margin: 45px auto; color: white;">CHI TIẾT ĐƠN HÀNG</h1>
            </div>
        </div>
    </div>

    <!-- Single pro tab start-->
    <div class="single-product-tab-area product-status mg-b-30">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="product-status-wrap">
                        <h4>Thông tin đơn hàng</h4>
                        <div style="display: flex; justify-content: space-around ;width: 100%;">
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                                <div class="review-content-section">
                                    <%
                                        Orders orders = (Orders) request.getAttribute("orders");
                                        Transport transport = (Transport) request.getAttribute("transport");
                                    %>
                                    <div class="input-group mg-b-pro-edt" style="width: 100%">
                                        <label  style="color: white">Tên khách hàng</label>
                                        <input type="text" disabled="disabled" class="form-control" style="background-color: #152036;" placeholder="<%= AccountService.getFullname(orders.getAccount_id())%>">
                                    </div>
                                    <div class="input-group mg-b-pro-edt" style="width: 100%">
                                        <label  style="color: white">Ngày mua hàng</label>
                                        <input type="text" disabled="disabled" class="form-control" style="background-color: #152036;" placeholder="<%= orders.getCreate_date()%>">
                                    </div>


                                    <div class="input-group mg-b-pro-edt" style="width: 100%">
                                        <label  style="color: white">Địa chỉ</label>
                                        <input type="text" disabled="disabled" class="form-control" style="background-color: #152036;" placeholder="<%= orders.getAddress()%>">
                                    </div>
                                    <div class="input-group mg-b-pro-edt" style="width: 100%">
                                        <label  style="color: white">Phương thức vận chuyển</label>
                                        <input type="text" disabled="disabled" class="form-control" style="background-color: #152036;" placeholder="<%= transport.getTransport_name()%>">
                                    </div>



                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                <div class="review-content-section">
                                    <div class="input-group mg-b-pro-edt" style="width: 100%; display: flex; flex-direction: column">
                                        <label  style="color: white">Trạng thái đơn hàng</label>
                                        <%
                                            String status = "" ;
                                            String classs = "";
                                            switch (orders.getStatuss()){
                                                case 0: status = "Chưa xác nhận"; classs = "y-setting"; break;
                                                case 1: status = "Đã xác nhận"; classs = "g-setting"; break;
                                                case 2: status = "Đang giao hàng"; classs = "b-setting"; break;
                                                case 3: status = "Đã giao hàng"; classs = "gr-setting"; break;
                                                case 4: status = "Bị hủy"; classs = "r-setting"; break;
                                            }
                                        %>
                                        <button class="<%= classs%>" style=" width: 100%"><%= status%></button>
                                    </div>
                                    <div class="input-group mg-b-pro-edt" style="width: 100%">
                                        <label  style="color: white">Cập nhật trạng thái đơn hàng</label>
                                        <form action="/Web_ban_thuc_an_chan_nuoi_war/SetStatusOrder" method="post" style="display: flex">
                                            <input name="orders_id" value="<%=orders.getOrders_id()%>" style="display: none">
                                            <select  name="select" style="background-color: #0c1923; color: white; margin: 5px auto 70px; font-size: 18px; border-radius: 5px; flex: 1;">
                                                <option value="0">Chưa xác nhận</option>
                                                <option value="1">Đã xác nhận</option>
                                                <option value="2">Đang giao hàng</option>
                                                <option value="3">Đã giao hàng</option>
                                                <option value="4">Bị hủy</option>
                                                <option selected value="5">none</option>
                                            </select>
                                            <button style="padding: 5px; background-color:#0B792F; font-size: 18px; height: 45px; margin-left: 10px; border-radius: 5px">Lưu thay đổi</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                                </div>
                        <h4 style="margin-top: 50px;">Danh sách hàng hóa</h4>
                        <table>
                            <tr>
                                <th>Ảnh</th>
                                <th>Tên sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>
                                <th>Tổng cộng</th>
                            </tr>
                            <%
                                List<OrdersDetails> ordersDetailsList = (List<OrdersDetails>) request.getAttribute("listOrdersDetails");
                                for(OrdersDetails ordersDetails: ordersDetailsList){
                            %>

                            <tr>
                                <td><img src="<%= ProductService.get1SrcImg(ordersDetails.getProduct_id())%>" alt="" style="width: 50px; height: 50px;"/></td>
                                <td><%= ProductService.getProductName(ordersDetails.getProduct_id())%></td>
                                <td><%= ordersDetails.getQuantity()%></td>
                                <td><%= ordersDetails.getOut_price()%> vnd</td>
                                <td><%= ordersDetails.totalAmount()%> vnd</td>
                            </tr>
                            <%}%>
                        </table>
                        <h4 style="margin-top: 50px;">Thanh toán</h4>
                        <h5 style="color: white"> Phí vận chuyển</h5>
                        <h6 style="color: white"> <%= transport.getPrice()%> vnd</h6>
                        <h5 style="color: white"> Tổng tiền</h5>
                        <h6 style="color: white"> <%= orders.getTotal_price()%> vnd</h6>


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

</body>

</html>