<%-- 
    Document   : Register
    Created on : Jun 23, 2021, 7:27:09 PM
    Author     : truon
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng kí</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style1.css">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form class="register-form" id="register-form" action="RegisterServlet">
                            <div class="form-group">
                                <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="username" id="username" placeholder="Tên tài khoản"/>
                                <c:set var="errors" value="${requestScope.INSERTERR}" />
                                <c:if test="${not empty errors.usernameLengthErr}">
                                    <font color="red">${errors.usernameLengthErr}</font><br><br>
                                    <a href="Register.jsp"></a>
                                </c:if>                                
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Email" value="${requestScope.email}"/>
                                <c:if test="${not empty errors.emailLengthErr}">
                                    <font color="red">${errors.emailLengthErr}</font><br><br>
                                </c:if>    
                            </div>
                            <div class="form-group">
                                <label for="fullname"><i class="zmdi zmdi-email"></i></label>
                                <input type="text" name="fullname" id="fullname" placeholder="Họ và tên"/>
                                <c:if test="${not empty errors.fullnameLengthErr}">
                                    <font color="red">${errors.fullnameLengthErr}</font><br><br>
                                </c:if>                                    
                            </div>
                            <div class="form-group">
                                <label for="password"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="password" placeholder="Mật khẩu"/>
                                <c:if test="${not empty errors.passwordLengthErr}">
                                    <font color="red">${errors.passwordLengthErr}</font><br><br>
                                </c:if>    
                            </div>
                            <div class="form-group">
                                <label for="re_password"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_password" id="re_password" placeholder="Xác nhận mật khẩu"/>
                                <c:if test="${not empty errors.re_passwordNoMatch}">
                                    <font color="red">${errors.re_passwordNoMatch}</font><br><br>
                                </c:if>                                    
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>Tôi đồng ý tất cả các tuyên bố trong <a href="#" class="term-service">Điều khoản dịch vụ</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Đăng kí"/>
                            </div>
                            <a href="home.jsp">Quay trở lại trang chủ</a>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="Login.jsp" class="signup-image-link">Tôi đã có tài khoản</a>
                    </div>
                </div>
            </div>
        </section>
    </div>


    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
