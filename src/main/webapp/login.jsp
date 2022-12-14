<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/login-SignUp.css">

    <meta name="robots" content="noindex, follow">
    <script nonce="1b5648d4-9587-46c5-8a75-8a2c46cfd88d">(function (w, d) {
        !function (Z, _, ba, bb) {
            Z.zarazData = Z.zarazData || {};
            Z.zarazData.executed = [];
            Z.zaraz = {deferred: [], listeners: []};
            Z.zaraz.q = [];
            Z.zaraz._f = function (bc) {
                return function () {
                    var bd = Array.prototype.slice.call(arguments);
                    Z.zaraz.q.push({m: bc, a: bd})
                }
            };
            for (const be of ["track", "set", "debug"]) Z.zaraz[be] = Z.zaraz._f(be);
            Z.zaraz.init = () => {
                var bf = _.getElementsByTagName(bb)[0], bg = _.createElement(bb),
                    bh = _.getElementsByTagName("title")[0];
                bh && (Z.zarazData.t = _.getElementsByTagName("title")[0].text);
                Z.zarazData.x = Math.random();
                Z.zarazData.w = Z.screen.width;
                Z.zarazData.h = Z.screen.height;
                Z.zarazData.j = Z.innerHeight;
                Z.zarazData.e = Z.innerWidth;
                Z.zarazData.l = Z.location.href;
                Z.zarazData.r = _.referrer;
                Z.zarazData.k = Z.screen.colorDepth;
                Z.zarazData.n = _.characterSet;
                Z.zarazData.o = (new Date).getTimezoneOffset();
                Z.zarazData.q = [];
                for (; Z.zaraz.q.length;) {
                    const bl = Z.zaraz.q.shift();
                    Z.zarazData.q.push(bl)
                }
                bg.defer = !0;
                for (const bm of [localStorage, sessionStorage]) Object.keys(bm || {}).filter((bo => bo.startsWith("_zaraz_"))).forEach((bn => {
                    try {
                        Z.zarazData["z_" + bn.slice(7)] = JSON.parse(bm.getItem(bn))
                    } catch {
                        Z.zarazData["z_" + bn.slice(7)] = bm.getItem(bn)
                    }
                }));
                bg.referrerPolicy = "origin";
                bg.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(Z.zarazData)));
                bf.parentNode.insertBefore(bg, bf)
            };
            ["complete", "interactive"].includes(_.readyState) ? zaraz.init() : Z.addEventListener("DOMContentLoaded", zaraz.init)
        }(w, d, 0, "script");
    })(window, document);</script>
</head>
<body>
<div class="container-login100" style="background-image: url('img/login/background-login.jpg');">
    <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-50">
        <form class="login100-form validate-form" action="/Web_ban_thuc_an_chan_nuoi_war/doLogin" method="post">
                <span class="login100-form-title p-b-37">
                   ????ng Nh???p
                </span>
            <%--            <form action="/Web_ban_thuc_an_chan_nuoi_war/doLogin" method="post">--%>
            <%
                if (error != null) {
            %>
            <div class="alert alert-danger" role="alert">
                <%= error %>
            </div>
            <%
                }
            %>
            <div class="wrap-input100 validate-input m-b-20" data-validate="Enter username or email">
                <input class="input100" type="text"
                       value="<%= request.getParameter("username")!=null?request.getParameter("username"):"" %>"
                       name="username" placeholder="T??i kho???n">
                <span class="focus-input100"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
                <input class="input100" type="password" name="pass" placeholder="M???t kh???u">
                <span class="focus-input100"></span>
            </div>
            <div class="container-login100-form-btn">
                <button class="login100-form-btn">
                    ????ng Nh???p
                </button>
            </div>
            <div class="text-center p-t-57 p-b-20">

                     <span class="txt1">
                    </span>
            </div>
            <%--            </form>--%>
            <div class="text-center">
                Ch??a c?? t??i kho???n?
                <a href="sign-up.jsp" class="txt2 hov1">
                    ????ng K??
                </a>
            </div>
            <div class="text-center">
                <a href="forgot.jsp" class="txt2 hov1">
                    Qu??n m???t kh???u?
                </a>
            </div>
        </form>
    </div>
</div>
<div id="dropDownSelect1"></div>

<script src="js/login-signUp.js"></script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }

    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
        integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
        data-cf-beacon='{"rayId":"76762e265ce50970","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2022.11.0","si":100}'
        crossorigin="anonymous"></script>
</body>
</html>
