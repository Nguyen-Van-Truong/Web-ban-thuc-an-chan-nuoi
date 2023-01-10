<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Blog" %>
<%@ page import="vn.edu.hcmuaf.fit.service.BlogService" %><%--
  Created by IntelliJ IDEA.
  User: ledan
  Date: 01/09/2023
  Time: 04:51
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: ledan
  Date: 01/09/2023
  Time: 04:41
  To change this template use File | Settings | File Templates.
--%>
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
        <h1 style="margin: 45px auto; color: white">TRANG QUẢN LÝ BÀI VIẾT</h1>
      </div>
    </div>
  </div>
  <div class="product-status mg-b-30">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <div class="product-status-wrap">
            <h4>Danh sách bài viết</h4>
            <div class="add-product">
              <a href="product-edit.jsp">Thêm bài viết</a>
            </div>
            <table>
              <tr>
                <th>Ảnh</th>
                <th>Tên bài viết</th>
                <th>Trạng thái</th>
                <th>Ngày tạo</th>
                <th>Tùy chọn</th>
              </tr>
              <%
                List<Blog> blogList = (List<Blog>) request.getAttribute("listBlog");
                for(Blog blog: blogList){
              %>
              <tr>
                <td><img src="<%=BlogService.getUrl_image(blog.getBlog_id())%>" alt="" style="width: 50px; height: 50px"/></td>
                <td><%=blog.getTitle()%></td>
                <td>
                  <%
                    String status = "" ;
                    String classs = "";
                    switch (blog.getIs_use()){
                      case 0: status = "Đã ẩn"; classs = "r-setting"; break;
                      case 1: status = "Hiển thị"; classs = "gr-setting"; break;
                    }
                  %>
                  <button class="<%= classs%>"><%= status%></button>
                </td>
                <td>
                  <%=blog.getCreate_date()%>
                </td>
                <td>
                  <a href="product-edit.jsp">
                    <button data-toggle="tooltip" title="Xem chi tiết" class="pd-setting-ed"><i class="fa fa-eye"aria-hidden="true"></i></button>
                  </a>
                  <a href="EditBlog?blog_id=<%=blog.getBlog_id()%>">
                     <button data-toggle="tooltip" title="Chỉnh sửa" class="pd-setting-ed"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
                  </a>
                  <a href="SetStatusBlog?blog_id=<%=blog.getBlog_id()%>&status=<%=blog.getIs_use()%>&pageNumber=<%=request.getAttribute("pageNow")%>">
                    <button data-toggle="tooltip" title="Ẩn bài viết" class="pd-setting-ed"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
                  </a>
                </td>
              </tr>
              <%}%>
            </table>
            <div class="custom-pagination">
              <ul class="pagination">
                <%
                  int pageSize = (int) request.getAttribute("pageSize");
                  for(int i = 1; i <= pageSize; i++){
                %>
                <li class="page-item"><a class="page-link" href="LoadBlogList?pageNumber=<%=i%>"><%=i%></a></li>
                <%}%>
              </ul>
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
            <p>Copyright © 2022 <a href="https://colorlib.com/wp/templates/">Chăn nuôi</a> Đã đăng kí bản quyền.</p>
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
<!-- plugins JS
    ============================================ -->
<script src="js/plugins.js"></script>
<!-- main JS
    ============================================ -->
<script src="js/main.js"></script>
</body>

</html>

