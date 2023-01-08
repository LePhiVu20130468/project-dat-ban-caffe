<%--
  Created by IntelliJ IDEA.
  User: Le Phi Vu
  Date: 4/01/2023
  Time: 8:46 pm
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ include file="headerLibrary" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="./css/feather/feather.css?" type="text/css"/> <!--css-->
    <link rel="stylesheet" href="./css/ti-icons/css/themify-icons.css?" type="text/css"/>
    <link rel="stylesheet" href="./css/css/vendor.bundle.base.css?" type="text/css"/>
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="./css/vertical-layout-light/style.css" type="text/css"/>
    <!-- endinject -->
    <link rel="icon" href="./images/nlu.png" type="image/x-icon" />

</head>

<body>
<div class="py-1 bg-black top" style="background: #c8a97e;">
    <div class="container">
        <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
            <div class="col-lg-12 d-block">
                <div class="row d-flex">
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span
                                class="icon-phone2"></span></div>
                        <span class="text">(+84) 839496385</span>
                    </div>
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span
                                class="icon-paper-plane"></span></div>
                        <span class="text">20130468.20130225.20130360@st.hcmuaf.edu.vn</span>
                    </div>
                    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right justify-content-end">
                        <p class="mb-0 register-link"><span>Giờ mở cửa:</span> <span>Thứ 2 - Chủ Nhật</span> <span>8:00AM - 9:00PM</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container" style="opacity: 1.5;">
        <a class="navbar-brand" href="home">Feliciano</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item "><a href="home" class="nav-link">Trang chủ</a></li>
                <li class="nav-item"><a href="about" class="nav-link">Về chúng tôi</a></li>
                <li class="nav-item"><a href="menu" class="nav-link">Menu</a></li>
                <li class="nav-item"><a href="blog" class="nav-link">Bài viết</a></li>
                <li class="nav-item"><a href="contact" class="nav-link">Liên hệ</a></li>
                <li class="nav-item cta"><a href="reservation" class="nav-link">Đặt bàn ngay</a></li>
                <li class="nav-item active"><a href="register" class="nav-link">Đăng kí</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth px-0">
            <div class="row w-100 mx-0">
                <div class="col-lg-4 mx-auto">
                    <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                        <div class="brand-logo">
                            <a class="navbar-brand" href="./home" style="font-weight: 700;">Feliciano</a>
                        </div>
                        <h4>Chào bạn! Hãy cùng nhau trải nghiệm nhé</h4>
                        <h6 class="font-weight-light">Đăng nhập để tiếp tục.</h6>
                        <form class="pt-3" action="/dang-nhap" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control form-control-lg" id="exampleInputEmail1"
                                       placeholder="Tên đăng nhập hoặc email" name="username" value="${param.username}">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control form-control-lg" id="password"
                                       placeholder="Mật khẩu" name="pass">
                                <img id="eyeicon" src="./images/eye-open.png" style="top: 40%;">
                            </div>
                            <div class="mt-3">
                                <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">
                                    ĐĂNG NHẬP
                                </button>
                            </div>
                            <div class="my-2 d-flex justify-content-between align-items-center">
                                <div class="form-check">
                                    <label class=" text-muted">
                                        <input type="checkbox">
                                        Lưu mật khẩu
                                    </label>
                                </div>
                                <a href="#" class="auth-link text-black">Quên mật khẩu?</a>
                            </div>
                            <div class="mb-2">
                                <button type="button" class="btn btn-block btn-facebook auth-form-btn">
                                    <img class="icon-facebook-login" src="./images/icon-facebook.png" style="width: 20px; height: 20px; padding-right: 5px;"/>Đăng nhập bằng Facebook

                                </button>
                            </div>
                            <div class="mb-2">
                                <button type="button" class="btn btn-block btn-facebook auth-form-btn">
                                    <img class="icon-facebook-login" src="./images/icon-google.png" style="width: 20px; height: 20px; padding-right: 5px;"/>Đăng nhập bằng Google

                                </button>
                            </div>
                            <div class="text-center mt-4 font-weight-light">
                                Chưa có tài khoản? <a href="register" class="text-primary">ĐĂNG KÍ NGAY</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<footer class="ftco-footer ftco-bg-dark ftco-section">
        <div class="row" style="background: #c8a97e;">
            <div class="col-md-12 text-center">

                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Bản quyền &copy;<script>document.write(new Date().getFullYear());</script>
                    thuộc về <i class="icon-heart" aria-hidden="true"></i><a href="https://colorlib.com"
                                                                             target="_blank" style="color: red;">
                        Nhóm 40 - Môn Lập Trình
                        Web - HK1/2022_2023</a> <br>
                    Khoa Công nghệ Thông tin<br>
                    Trường Đại học Nông Lâm Thành phố Hồ Chí Minh
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
</footer>

<!--tuyet roi-->
<div class='snow-container'>
    <div class='snow foreground'></div>
    <div class='snow foreground layered'></div>
    <div class='snow middleground'></div>
    <div class='snow middleground layered'></div>
    <div class='snow background'></div>
    <div class='snow background layered'></div>
</div>
<!--tuyet roi - end-->

<!--ong gia noel-->
<img class="santa" src="images/santas.gif" alt="Santa Be Watchin" />
<!--ong gia noel - end-->

<!-- plugins:js -->
<script src="/js/js/vendor.bundle.base.js" type="text/javascript"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="/js/off-canvas.js" type="text/javascript"></script>
<script src="/js/hoverable-collapse.js" type="text/javascript"></script>
<script src="/js/template.js" type="text/javascript"></script>
<script src="/js/settings.js" type="text/javascript"></script>
<script src="./js/todolist.js" type="text/javascript"></script>
<!-- endinject -->
<script>
    const eye = document.querySelector('#eyeicon');
    const pass = document.querySelector('#password');


    eye.addEventListener('click', () => {
        pass.type = pass.type === 'password' ? 'text' : 'password';
        eye.src = eye.src.includes('open') ? "./images/eye-closed.png" : "./images/eye-open.png";
    });
</script>
</body>

</html>

<%--<html>--%>
<%--<head>--%>
<%--    <!-- Required meta tags -->--%>
<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
<%--    <title>Vũ</title>--%>
<%--    <!-- plugins:css -->--%>
<%--    <link rel="stylesheet" href="./css/feather/feather.css" type="text/css"> <!--css-->--%>
<%--    <link rel="stylesheet" href="./css/ti-icons/css/themify-icons.css?" type="text/css">--%>
<%--    <link rel="stylesheet" href="./css/css/vendor.bundle.base.css" type="text/css">--%>
<%--    <!-- endinject -->--%>
<%--    <!-- Plugin css for this page -->--%>
<%--    <!-- End plugin css for this page -->--%>
<%--    <!-- inject:css -->--%>
<%--    <link rel="stylesheet" href="./css/vertical-layout-light/style.css" type="text/css">--%>
<%--    &lt;%&ndash;    <link rel="stylesheet" href="./css/test.css">&ndash;%&gt;--%>
<%--    <!-- endinject -->--%>
<%--    &lt;%&ndash;    <link rel="icon" type="image/png" href="./images/nlu.png"/>&ndash;%&gt;--%>
<%--    <link rel="shortcut icon" href="./images/nlu.png" type="image/x-icon">--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container-scroller">--%>
<%--    <div class="container-fluid page-body-wrapper full-page-wrapper">--%>
<%--        <div class="content-wrapper d-flex align-items-center auth px-0">--%>
<%--            <div class="row w-100 mx-0">--%>
<%--                <div class="col-lg-4 mx-auto">--%>
<%--                    <div class="auth-form-light text-left py-5 px-4 px-sm-5">--%>
<%--                        <div class="brand-logo">--%>
<%--                            <a class="navbar-brand" href="index.html">Feliciano</a>--%>
<%--                        </div>--%>
<%--                        <h4>Chào bạn! Hãy cùng nhau trải nghiệm nhé</h4>--%>
<%--                        <h6 class="font-weight-light">Đăng nhập để tiếp tục.</h6>--%>
<%--                        <form class="pt-3" action="/dang-nhap" method="post">--%>
<%--                            <div class="form-group">--%>
<%--                                <input type="text" class="form-control form-control-lg" id="exampleInputEmail1"--%>
<%--                                       placeholder="Tên đăng nhập hoặc email" name="username" value="${param.username}">--%>
<%--                            </div>--%>
<%--                            <div class="form-group">--%>
<%--                                <input type="password" class="form-control form-control-lg" id="password"--%>
<%--                                       placeholder="Mật khẩu" name="pass">--%>
<%--                                <img id="eyeicon" src="${pageContext.request.contextPath}/images/eye-open.png">--%>
<%--                            </div>--%>
<%--                            <div class="mt-3">--%>
<%--                                <button type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">--%>
<%--                                    ĐĂNG NHẬP--%>
<%--                                </button>--%>
<%--                            </div>--%>
<%--                            <div class="my-2 d-flex justify-content-between align-items-center">--%>
<%--                                <div class="form-check">--%>
<%--                                    <label class="form-check-label text-muted">--%>
<%--                                        <input type="checkbox" class="form-check-input">--%>
<%--                                        Lưu mật khẩu--%>
<%--                                    </label>--%>
<%--                                </div>--%>
<%--                                <a href="#" class="auth-link text-black">Quên mật khẩu?</a>--%>
<%--                            </div>--%>
<%--                            <div class="mb-2">--%>
<%--                                <button type="button" class="btn btn-block btn-facebook auth-form-btn">--%>
<%--                                    <i class="ti-facebook mr-2"></i>Đăng nhập bằng facebook--%>
<%--                                </button>--%>
<%--                            </div>--%>
<%--                            <div class="text-center mt-4 font-weight-light">--%>
<%--                                Chưa có tài khoản? <a href="register.html" class="text-primary">Đăng kí</a>--%>
<%--                            </div>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!-- content-wrapper ends -->--%>
<%--    </div>--%>
<%--    <!-- page-body-wrapper ends -->--%>
<%--</div>--%>
<%--<!-- container-scroller -->--%>

<%--<!--tuyet roi-->--%>
<%--<div class='snow-container'>--%>
<%--    <div class='snow foreground'></div>--%>
<%--    <div class='snow foreground layered'></div>--%>
<%--    <div class='snow middleground'></div>--%>
<%--    <div class='snow middleground layered'></div>--%>
<%--    <div class='snow background'></div>--%>
<%--    <div class='snow background layered'></div>--%>
<%--</div>--%>
<%--<!--tuyet roi - end-->--%>

<%--<!--ong gia noel-->--%>
<%--<img class="santa" src="${pageContext.request.contextPath}/images/santas.gif">--%>
<%--<!--ong gia noel - end-->--%>

<%--<!-- plugins:js -->--%>
<%--<script src="./js/js/vendor.bundle.base.js" type="text/javascript"></script>--%>
<%--<!-- endinject -->--%>
<%--<!-- Plugin js for this page -->--%>
<%--<!-- End plugin js for this page -->--%>
<%--<!-- inject:js -->--%>
<%--<script src="./js/off-canvas.js"></script>--%>
<%--<script src="./js/hoverable-collapse.js"></script>--%>
<%--<script src="./js/template.js"></script>--%>
<%--<script src="./js/settings.js"></script>--%>
<%--<script src="./js/todolist.js"></script>--%>
<%--<!-- endinject -->--%>
<%--<script>--%>
<%--    const eye = document.querySelector('#eyeicon');--%>
<%--    const pass = document.querySelector('#password');--%>


<%--    eye.addEventListener('click', () => {--%>
<%--        pass.type = pass.type === 'password' ? 'text' : 'password';--%>
<%--        eye.src = eye.src.includes('open') ? "./images/eye-closed.png" : "./images/eye-open.png";--%>
<%--    });--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>