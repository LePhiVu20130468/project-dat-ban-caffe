<%--
  Created by IntelliJ IDEA.
  User: Le Phi Vu
  Date: 5/01/2023
  Time: 2:14 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="./css/feather/feather.css?" type="text/css"/> <!--css-->
    <link rel="stylesheet" href="./css/ti-icons/css/themify-icons.css?" type="text/css"/>
    <link rel="stylesheet" href="./css/css/vendor.bundle.base.css?" type="text/css"/>
    ${linkTag}
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="./css/vertical-layout-light/style.css?" type="text/css"/>
    <!-- endinject -->
    <link rel="icon" href="./images/nlu.png" type="image/x-icon"/>
    <style>${css}</style>

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
                <li class="nav-item active"><a href="login" class="nav-link">Đăng nhập</a></li>
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
                        <p class="text-text" style="font-weight: 100; ${css}">${meseageFromServlet}</p>
                        <h4>Chưa có tài khoản mới?</h4>
                        <h6 class="font-weight-light">Đăng kí ngay để trải nghiệm bạn nhé!</h6>
                        <form class="pt-3" action="/dang-ki-by-phone" method="post">
                            <div class="form-group test_input">
                                <input type="text" class="form-control form-control-lg test" id="exampleInputUsername1"
                                       placeholder="Tên Đăng Nhập" name="username" value="${param.username}">
                            </div>
                            <div class="form-group test_input">
                                <input type="text" class="form-control form-control-lg test" id="exampleInputEmail1"
                                       placeholder="Số Điện Thoại" name="phone" value="${param.phone}">
                            </div>

                            <div class="form-group test_input" style="margin-bottom: 0px">
                                <input type="password" class="form-control form-control-lg test" id="password"
                                       placeholder="Mật Khẩu" name="pass" style="position: relative;" ><!--style="position: absolute;"-->
                                <img src="./images/eye-open.png" id="eyeicon_res1" style="width: 20px;
    position: relative;
    top: -35px;
    left: 341px;
    cursor: pointer;">
                            </div>
                            <div class="form-group test_input">
                                <input type="password" class="form-control form-control-lg test" id="password_again"
                                       placeholder="Xác nhận lại mật Khẩu" name="confirmPass" style="position: relative;">
                                <img src="./images/eye-open.png" id="eyeicon_res2" style="width: 20px;
    position: relative;
    top: -35px;
    left: 341px;
    cursor: pointer;">
                            </div>
                            <div class="mb-4">
                                <div class="form-check">
                                    <label class=" text-muted">
                                        <input type="checkbox" class="confirmTerms" name="confirmTerms" value="confirm">
                                        Tôi đồng ý với Coffee Shop về Điều khoản dịch vụ và Chính sách bảo mật.
                                    </label>
                                </div>
                            </div>
                            <div class="mt-3">
                                <button type="submit"
                                        class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">
                                    ĐĂNG KÝ
                                </button>
                            </div>
                            <br>
                            <div class="mb-2">
                                <a href="https://accounts.google.com/o/oauth2/auth?scope=openid%20profile%20email&redirect_uri=http://localhost:80/LoginGoogleHandler&response_type=code&client_id=688402958617-tv3kr8uvrhevm5mr82fflgu761377kqf.apps.googleusercontent.com&approval_prompt=force"
                                   class="btn btn-block btn-facebook auth-form-btn">
                                    <img class="icon-facebook-login" src="./images/icon-facebook.png"
                                         style="width: 20px; height: 20px; padding-right: 5px;"/>Đăng kí bằng Facebook

                                </a>
                            </div>
                            <div class="mb-2">
                                <a href="https://accounts.google.com/o/oauth2/auth?scope=openid%20profile%20email&redirect_uri=http://localhost:80/LoginGoogleHandler&response_type=code&client_id=688402958617-tv3kr8uvrhevm5mr82fflgu761377kqf.apps.googleusercontent.com&approval_prompt=force"
                                   class="btn btn-block btn-facebook auth-form-btn">
                                    <img class="icon-facebook-login" src="./images/icon-google.png"
                                         style="width: 20px; height: 20px; padding-right: 5px;"/>Đăng kí bằng Google

                                </a>
                            </div>
                            <div class="text-center mt-4 font-weight-light">
                                Đã có tài khoản? <a href="./login" class="text-primary">ĐĂNG NHẬP NGAY</a>
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
<img class="santa" src="images/santas.gif" alt="Santa Be Watchin"/>

<!--ong gia noel - end-->
${tag_div}
${script}
<c:if test="${sucess == true}">
    <script>${callFunction}</script>
</c:if>
<!-- plugins:js -->
<script src="./js/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="./js/off-canvas.js"></script>
<script src="./js/hoverable-collapse.js"></script>
<script src="./js/template.js"></script>
<script src="./js/settings.js"></script>
<script src="./js/todolist.js"></script>
<!-- endinject -->
<script>
    const eye1 = document.querySelector('#eyeicon_res1');
    const eye2 = document.querySelector('#eyeicon_res2');
    const pass = document.querySelector('#password');
    const pass_again = document.querySelector('#password_again');


    eye1.addEventListener('click', () => {
        pass.type = pass.type === 'password' ? 'text' : 'password';
        eye1.src = eye1.src.includes('open') ? "./images/eye-closed.png" : "./images/eye-open.png";
        pass_again.type = pass_again.type === 'password' ? 'text' : 'password';
        eye2.src = eye2.src.includes('open') ? "./images/eye-closed.png" : "./images/eye-open.png";
    });

</script>
</body>
</html>
