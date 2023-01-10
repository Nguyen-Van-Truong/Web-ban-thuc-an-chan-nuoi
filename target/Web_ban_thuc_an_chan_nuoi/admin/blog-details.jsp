<%@ page import="vn.edu.hcmuaf.fit.model.Blog" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.ContentBlog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Blog Details | Nalika - Material Admin Template</title>
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
        #from_edit{
            display: flex;
            flex-direction: column;
            width: 95%;
            margin: 20px auto;
            color: white;
        }
        #from_edit > label, input, textarea, div, p{
            margin: 20px 0px;
            font-size: 18px;
        }
        #from_edit >input, textarea {
            color: black;
        }
        #from_edit >div>button{
            padding: 20px;
            margin-right: 40px;
            border-radius: 5px;
        }

        #from_edit>div>a {
            padding: 20px;
            margin-right: 40px;
            border-radius: 5px;
            background-color: darkred;
            border: 2px solid black;
            color: white;
        }
        #from_edit >div>a:hover {
            color: white;
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
                    <h1 style="margin: 45px auto; color: white">CHỈNH SỬA BÀI VIẾT</h1>
                </div>
            </div>
        </div>



        <div class="blog-details-area mg-tb-15">
            <div class="container-fluid" >
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="width: 100%; margin: 10px; padding: 0px;  display: flex">
                        <form action="/Web_ban_thuc_an_chan_nuoi_war/UpdateBlog" method="post" id="from_edit">
                            <%
                                List<ContentBlog> contentBlogList = (List<ContentBlog>) request.getAttribute("contentBlogList");
                                Blog blog = (Blog) request.getAttribute("blog");
                            %>
                            <input name="blog_id" type="number" value="<%=blog.getBlog_id()%>" style="display: none">

                            <label>Tên Bài viết</label>
                            <input name="title" type="text" value="<%=blog.getTitle()%>">
                            <label>Ngày tạo</label>
                            <p><%=blog.getCreate_date()%></p>
                            <label>Nội dung</label>
                            <input name="number_content" type="number" value="<%=contentBlogList.size()%>" style="display: none">
                            <%
                                for(int i = 0; i < contentBlogList.size(); i++){
                            %>
                            <input name="serial<%=i%>" type="number" value="<%=contentBlogList.get(i).getSerial()%>" style="display: none">
                            <div style="display: flex">
                                <div style="position: relative; margin: auto">
                                    <img src="<%=contentBlogList.get(i).getUrl_image()%>" id="image<%=i%>" alt="" style="width:650px; height: 400px;">
                                    <input type="text" value="<%=contentBlogList.get(i).getUrl_image()%>" id="url_image<%=i%>" name="url_image<%=i%>" style="display: none">
                                    <input placeholder="<%=contentBlogList.get(i).getUrl_image()%>" style="opacity: 0; width: 650px; height: 400px; position: absolute; top: 0px; left: 0px;" type="file" name="img<%=i%>" id="img<%=i%>" onchange="choose(this, 'image<%=i%>', 'url_image<%=i%>')">
                                </div>
                            </div>
                            <textarea style="color: black;" name="paragrap<%=i%>" rows="15" cols="20"><%=contentBlogList.get(i).getParagrap()%></textarea>

                            <%}%>
                            <div>
                                <button style="background-color: #1b5e20; color: white">Lưu thay đổi</button>
                                <a href="EditBlog?blog_id=<%=blog.getBlog_id()%>">Hủy</a>
                            </div>

                        </form>
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
    <script src="js/vendor/jquery-1.11.3.min.js"></script>
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
        function choose(fileInput, id, idinput) {
            if(fileInput.files && fileInput.files[0]){
                var reader = new FileReader();

                reader.onload = function(e){
                    $('#'+id).attr('src', e.target.result)
                    $('#'+idinput).attr('value', e.target.result)
                }
                reader.readAsDataURL(fileInput.files[0]);
            }
        }
    </script>
</body>

</html>