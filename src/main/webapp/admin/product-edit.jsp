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
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<%@ include file="/admin/layout-left-sidebar-pro.jsp" %>
<!-- Start Welcome area -->
<div class="all-content-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="logo-pro">
                    <a href="index.jsp"><img class="main-logo" src="img/logo/logo.png" alt=""/></a>
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
                                        <form action="ProductEdit" method="post">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="review-content-section">
                                                    <div class="input-group mg-b-pro-edt" style="width: 100%">
                                                        <label style="color: white">T??n s???n ph???m</label>
                                                        <input type="text" class="form-control"
                                                               placeholder="T??n s???n ph???m">
                                                    </div>
                                                    <div class="input-group mg-b-pro-edt" style="width: 100%">
                                                        <label style="color: white">Gi?? b??n hi???n t???i</label>
                                                        <input type="text" class="form-control" placeholder="Gi?? b??n">
                                                    </div>

                                                    <div class="input-group mg-b-pro-edt">
                                                        <label style="color: white">Tr???ng th??i hi???n t???i</label>
                                                        <select name="select"
                                                                class="form-control pro-edt-select form-control-primary">
                                                            <option value="opt1">??ang b??n</option>
                                                            <option value="opt2">Ng???ng kinh doanh</option>
                                                            <option value="opt3">B??? C???m</option>
                                                        </select></div>

                                                    <div class="input-group mg-b-pro-edt">
                                                        <label style="color: white">Danh m???c s???n ph???m</label>
                                                        <select name="select"
                                                                class="form-control pro-edt-select form-control-primary">
                                                            <option value="opt1">Th???c ??n gia s??c</option>
                                                            <option value="opt2">Th???c ??n gia c???m</option>
                                                            <option value="opt3">Th???c ??n th???y s???n</option>
                                                        </select>
                                                    </div>

                                                    <div class="input-group mg-b-pro-edt">
                                                        <label style="color: white">T??nh ch???t s???n ph???m</label>
                                                        <ul style="color: white; display: flex; flex-wrap: wrap">
                                                            <li style="padding: 20px;"><input type="checkbox">Ngu???n g???c
                                                                ?????ng v???t
                                                            </li>
                                                            <li style="padding: 20px;"><input type="checkbox">Ngu???n g???c
                                                                th???c v???t
                                                            </li>
                                                            <li style="padding: 20px;"><input type="checkbox">Ngu???n g???c
                                                                vi sinh v???t
                                                            </li>
                                                            <li style="padding: 20px;"><input type="checkbox">Ngu???n g???c
                                                                kho??ng ch???t
                                                            </li>
                                                            <li style="padding: 20px;"><input type="checkbox">Th???c ??n
                                                                th??
                                                            </li>
                                                            <li style="padding: 20px;"><input type="checkbox">Th???c ??n
                                                                tinh
                                                            </li>
                                                            <li style="padding: 20px;"><input type="checkbox">Th???c ??n
                                                                t????i
                                                            </li>
                                                            <li style="padding: 20px;"><input type="checkbox">Th???c ??n
                                                                gi??u ?????m
                                                            </li>
                                                            <li style="padding: 20px;"><input type="checkbox">Th???c ??n ???
                                                                chua
                                                            </li>

                                                        </ul>
                                                    </div>

                                                    <div class="input-group mg-b-pro-edt" style="width: 100%;">
                                                        <label style="color: white">M?? t??? s???n ph???m</label>
                                                        <textarea class="form-control" rows="15" cols="50"
                                                                  placeholder="M?? t??? s???n ph???m"></textarea>
                                                    </div>


                                                    <div class="input-group mg-b-pro-edt" style="width: 100%;">
                                                        <div style="display: flex; flex-direction: column; position: relative;">
                                                            <img src="" id="image" alt=""
                                                                 style="width: 200px; height: 200px;">
                                                            <input style="opacity: 0; width: 200px; height: 200px; position: absolute;"
                                                                   type="file" name="img" id="img"
                                                                   onchange="choose(this, 'image')">
                                                        </div>
                                                    </div>

                                                    <div class="input-group mg-b-pro-edt"
                                                         style="width: 100%; display: flex; margin-top: 50px;">
                                                        <div style="margin: auto">
                                                            <button style="color: white; background-color: #0B792F; padding: 5px 20px; margin-right: 20px; border-radius: 5px;">
                                                                L??u thay ?????i
                                                            </button>
                                                            <button style="color: white; background-color: darkred; padding: 5px 20px; border-radius: 5px">
                                                                H???y
                                                            </button>
                                                        </div>
                                                    </div>


                                                </div>
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
    <div class="footer-copyright-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-copy-right">
                        <p>Copyright ?? 2018 <a href="https://colorlib.com/wp/templates/">Colorlib</a> All rights
                            reserved.</p>
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
    function choose(fileInput, id) {
        if (fileInput.files && fileInput.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#' + id).attr('src', e.target.result)
            }
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
</script>
</body>

</html>