<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.hcmuaf.fit.service.ProductService" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Category" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Characteristic" %>
<html>
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

<div class="col-lg-6">
    <div class="hero__search">
        <div class="hero__search__form" style="position: relative">
            <form action="#">
                <input type="text" id="search-bar" placeholder="Bạn cần sản phẩm nào của chúng tôi"/>
                <button type="submit" class="site-btn" onclick="searchResult(event)">TÌM KIẾM</button>
            </form>
            <ul class="search-results"
                style="position: fixed;border: 1px solid #ddd;background-color: rgba(238,238,238,1);color: #333;list-style-type:none ">
                <%--                danh sach san pham--%>
            </ul>
        </div>
    </div>
</div>

<script>
    // Listen for keyup events on the search bar
    console.log("hello");

    $('#search-bar').keyup(searchResult);

    function searchResult(event) {
        event.preventDefault();
        var searchBarValue = $('#search-bar').val();
        console.log(searchBarValue);
        // Send an AJAX request to the server
        $.ajax({
            url: '/Web_ban_thuc_an_chan_nuoi_war/SearchController',
            data: {q: searchBarValue},
            success: function (results) {
                // Clear the current search results
                $('.search-results').empty();

                // Loop through the results and add them to the search results dropdown
                for (var i = 0; i < results.length; i++) {
                    $('.search-results').append(
                        '<li style="border: 1px solid #ddd;background-color: #eee;color: #333;">' +
                        '<a href="shop-detail?productId=' + results[i].product_id + '">' +
                        results[i].product_name +
                        '</a>' +
                        '</li>'
                    );
                }
            },
            error: function (xhr, status, error) {
                console.log('Error: ' + error);
            }
        });
    }
</script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</body>
</html>
