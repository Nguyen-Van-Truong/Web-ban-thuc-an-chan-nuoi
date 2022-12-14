<%@ page import="vn.edu.hcmuaf.fit.model.*" %>
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
        <a href="index"><img src="img/logo.png" alt=""/></a>
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
            <a href="#"><i class="fa fa-user"></i> ????ng nh???p</a>
        </div>

    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="index">Trang ch???</a></li>
            <li>
                <a href="./shop-grid">S???n ph???m</a>
                <ul class="header__menu__dropdown one__lever">
                    <li>
                        <a href="./shop-grid.html">Th???c ??n gia s??c</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid.html">Th???c ??n cho b??</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n cho ng???a</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n cho l???n</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n cho tr??u</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid.html">Th???c ??n gai c???m</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid.html">Th???c ??n gia s??c</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n gai c???m</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n th???y s???n</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="./shop-grid.html">Th???c ??n th???y s???n</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="./shop-grid.html">Th???c ??n cho t??m</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n cho c??</a></li>
                            <li><a href="./shop-grid.html">Th???c ??n cho m???c</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="BlogController?pageNumber=1">Tin T???c</a></li>
            <li><a href="contact.jsp">Li??n H???</a></li>
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
                                Mi???n ph?? giao h??ng cho t???t c??? ????n h??ng c?? gi?? tr??? t???
                                2,000,000 vn??
                            </li>
                        </ul>
                    </div>
                </div>
                <%@ include file="/header_top_right.jsp" %>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="index"><img src="img/logo.png" alt=""/></a>
                </div>
            </div>
            <%@ include file="/find_product.jsp" %>

            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li>
                            <a href="shop-grid.html"><i class="fa fa-heart"></i> <span>1</span></a>
                        </li>
                        <li>
                            <%
                                ShoppingCart current_cart = (ShoppingCart) request.getSession().getAttribute("cart");
                                int cartSize = 0;
                                if (current_cart != null)
                                    cartSize = current_cart.getItems().size();
                            %>
                            <a href="ShoppingCart"><i class="fa fa-shopping-bag"></i> <span><%=cartSize%></span></a>
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
                        <li><a href="index">Trang Ch???</a></li>
                        <li><a href="./shop-grid">S???n Ph???m</a></li>
                        <li><a href="BlogController?pageNumber=1">Tin T???c</a></li>
                        <li><a href="contact.jsp">Li??n H???</a></li>
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
                    <h2>Gi??? h??ng</h2>
                    <div class="breadcrumb__option">
                        <a href="index">Trang ch???</a>
                        <span>Gi??? h??ng</span>
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
                            <th class="shoping__product">C??c s???n ph???m</th>
                            <th>Gi?? b??n</th>
                            <th>S??? l?????ng</th>
                            <th>T???ng c???ng</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
                            if (cart != null) {
                                List<CartItem> items = cart.getItems();
                                for (CartItem item : items) {
                                    Product product = ProductService.getProductFromProductId(item.getProductId());
                        %>
                        <tr>
                            <td class="shoping__cart__item">
                                <img src="<%=product.get1SrcImg()%>" style="width: 100px; height: 100px;" alt="">
                                <h5><%=product.getProduct_name()%>
                                </h5>
                            </td>
                            <td class="shoping__cart__price">
                                <%=product.getOutPrice()%> ??
                            </td>
                            <td class="shoping__cart__quantity">
                                <div class="quantity">
                                    <div class="pro-qty2">
                                        <span class="dec qtybtn"
                                              onclick="increaseDecrease_Quantity(event,<%=item.getProductId()%>,-1)"
                                              style="width: 35px;font-size: 16px;color: #6f6f6f;cursor: pointer;display: inline-block;">-</span>
                                        <input type="text" class="qty_text p<%=product.getProduct_id()%>"
                                               onkeyup="updateQuantity(event,<%=item.getProductId()%>)"
                                               value="<%=item.getQuantity()%>"
                                               style="width: 35px;font-size: 16px;color: #6f6f6f;display: inline-block;color: black">
                                        <span class="inc qtybtn"
                                              onclick="increaseDecrease_Quantity(event,<%=item.getProductId()%>,+1)"
                                              style="width: 35px;font-size: 16px;color: #6f6f6f;cursor: pointer;display: inline-block;">+</span>
                                    </div>
                                </div>
                            </td>
                            <td class="shoping__cart__total ">
                                <%=item.getTotalCost()%> ??
                            </td>
                            <td class="shoping__cart__item__close" onclick="removeItem(event,<%=item.getProductId()%>)">
                                <span class="icon_close"></span>
                            </td>
                        </tr>
                        <%
                                }
                            }
                        %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="shoping__cart__btns">
                    <a href="shop-grid" class="primary-btn cart-btn">TI???P T???C MUA
                        S???M</a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__continue">
                    <div class="shoping__discount">
                        <h5>M?? gi???m gi??</h5>
                        <form action="#">
                            <input type="text" placeholder="Nh???p m?? phi???u gi???m gi?? c???a b???n">
                            <button type="submit" class="site-btn">??P D???NG COUPON</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="shoping__checkout">
                    <h5>T???ng s??? gi??? h??ng</h5>
                    <ul>
                        <%
                            double totalCostCart = 0;
                            if (cart != null)
                                totalCostCart = cart.getTotalCost();
                        %>
                        <li>T???ng ph???<span>0 ??</span></li>
                        <li>T???ng c???ng <span><%=totalCostCart%> ??</span></li>
                    </ul>
                    <%if (cart != null) {%>
                    <a href="Checkout" class="primary-btn">TI???N H??NH ?????T H??NG</a>
                    <%
                        } else {

                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shoping Cart Section End -->

<!-- Footer Section Begin -->
<div class="over_footer"></div>
<!-- Footer Section End -->


<script>
    function removeItem(event, productId) {
        event.preventDefault();

        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                event.target.parentElement.parentElement.remove();
            }
        };
        xhttp.open("POST", "/Web_ban_thuc_an_chan_nuoi_war/ShoppingCart", true);
        xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhttp.send("action=remove&productId=" + productId);
    };
</script>

<script>
    var proQty = $('.pro-qty2');
    proQty.on('click', '.qtybtn', function () {
        var $button = $(this);
        var oldValue = $button.parent().find('input').val();
        if ($button.hasClass('inc')) {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 0) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        $button.parent().find('input').val(newVal);
    });

    function updateQuantity(event, productId) {

        event.preventDefault();
        console.log("onchange")
        var qtyText = document.querySelector('.p' + productId);
        var quantity = qtyText.value;
        console.log(quantity);
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
            }
        };
        xhttp.open("POST", "/Web_ban_thuc_an_chan_nuoi_war/ShoppingCart", true);
        xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhttp.send("action=updateQuantity&productId=" + productId + "&quantity=" + quantity);
    }

    function increaseDecrease_Quantity(event, productId, upOrDown) {
        event.preventDefault();
        console.log("onchange")
        var qtyText = document.querySelector('.p' + productId);
        let value = parseInt(qtyText.value);
        let upOrDown1 = parseInt(upOrDown);
        let quantity = value + upOrDown1;
        console.log(quantity);
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
            }
        };
        xhttp.open("POST", "/Web_ban_thuc_an_chan_nuoi_war/ShoppingCart", true);
        xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhttp.send("action=updateQuantity&productId=" + productId + "&quantity=" + quantity);
    }
</script>

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