<%--
  Created by IntelliJ IDEA.
  User: ledan
  Date: 01/09/2023
  Time: 02:37
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
                        <div class="input-group mg-b-pro-edt" style="width: 100%">
                          <label  style="color: white">Tên sản phẩm</label>
                          <input type="text" class="form-control" placeholder="Tên sản phẩm">
                        </div>
                        <div class="input-group mg-b-pro-edt" style="width: 100%">
                          <label  style="color: white">Giá bán hiện tại</label>
                          <input type="text" class="form-control" placeholder="Giá bán">
                        </div>

                        <div class="input-group mg-b-pro-edt">
                          <label  style="color: white">Trạng thái</label>
                          <select name="select" class="form-control pro-edt-select form-control-primary">
                            <option value="opt1">Đang bán</option>
                            <option value="opt2">Ngừng kinh doanh</option>
                            <option value="opt3">Bị Cấm</option>
                          </select>
                        </div>

                        <div class="input-group mg-b-pro-edt">
                          <label  style="color: white">Danh mục sản phẩm</label>
                          <select name="select" class="form-control pro-edt-select form-control-primary">
                            <option value="opt1">Thức ăn gia súc</option>
                            <option value="opt2">Thức ăn gia cầm</option>
                            <option value="opt3">Thức ăn thủy sản</option>
                          </select>
                        </div>

                        <div class="input-group mg-b-pro-edt">
                          <label style="color: white">Tính chất sản phẩm</label>
                          <ul style="color: white; display: flex; flex-wrap: wrap">
                            <li style="padding: 20px;"><input type="checkbox">Nguồn gốc động vật</li>
                            <li style="padding: 20px;"><input type="checkbox">Nguồn gốc thực vật</li>
                            <li style="padding: 20px;"><input type="checkbox">Nguồn gốc vi sinh vật</li>
                            <li style="padding: 20px;"><input type="checkbox">Nguồn gốc khoáng chất</li>
                            <li style="padding: 20px;"><input type="checkbox">Thức ăn thô</li>
                            <li style="padding: 20px;"><input type="checkbox">Thức ăn tinh</li>
                            <li style="padding: 20px;"><input type="checkbox">Thức ăn tươi</li>
                            <li style="padding: 20px;"><input type="checkbox">Thức ăn giàu đạm</li>
                            <li style="padding: 20px;"><input type="checkbox">Thức ăn ủ chua</li>

                          </ul>
                        </div>

                        <div class="input-group mg-b-pro-edt" style="width: 100%;">
                          <label  style="color: white">Mô tả sản phẩm</label>
                          <textarea class="form-control"  rows="15" cols="50" placeholder="Mô tả sản phẩm"></textarea>
                        </div>


                        <div class="input-group mg-b-pro-edt" style="width: 100%;">
                          <div style="display: flex; flex-direction: column; position: relative;">
                            <img src="" id="image" alt="" style="width: 200px; height: 200px;">
                            <input style="opacity: 0; width: 200px; height: 200px; position: absolute;" type="file" name="img" id="img" onchange="choose(this, 'image')">
                          </div>
                        </div>

                        <div class="input-group mg-b-pro-edt" style="width: 100%; display: flex; margin-top: 50px;">
                          <div style="margin: auto">
                            <button style="color: white; background-color: #0B792F; padding: 5px 20px; margin-right: 20px; border-radius: 5px;">Lưu thay đổi</button>
                            <button style="color: white; background-color: darkred; padding: 5px 20px; border-radius: 5px">Hủy</button>
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