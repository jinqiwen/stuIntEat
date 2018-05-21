<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <meta name="format-detection" content="telephone=no">
        <meta charset="UTF-8">

        <meta name="description" content="Violate Responsive Admin Template">
        <meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

        <title>Super Admin Responsive Template</title>
            
        <!-- CSS -->
        <link href="${pageContext.request.contextPath}/statics/css2/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/css2/form.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/css2/style.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/css2/animate.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/css2/generics.css" rel="stylesheet"> 
        
    </head>
    <body id="skin-blur-violate">

   <section id="login">
            <header>
                <h1 style="font-size: 4rem;text-align: center;margin-top: 10rem;">智慧校园饮食管理系统</h1>
                <p></p>
            </header>
        
            <div class="clearfix"></div>
           <!--  action="dologin.html" -->
            <!-- Login -->
            
           <!--  <div class="box tile animated active" id="box-login" >
            <fieldset>
                <h2 class="m-t-0 m-b-15">Login</h2>
                <input type="text" class="login-control m-b-10" placeholder="Username or Email Address" name="loginCode" id="loginCode" value=""/>
                <input type="password" class="login-control" placeholder="Password" name="password" id="password" value=""/>
                <div class="checkbox m-b-20">
                    <label>
                        <input type="checkbox">
                        Remember Me
                    </label>
                </div>
                <ul id="formtip"></ul>
                <button  class="btn btn-sm m-r-5" type="submit" id="loginBtn">登录</button>
                
                <small>
                    <a class="box-switcher" data-switch="box-register" href="">Don't have an Account?</a> or
                    <a class="box-switcher" data-switch="box-reset" href="">Forgot Password?</a>
                </small>
                </fieldset>
            </div>
             -->
             <!-- 表单提交 的action 没有 "/"-->
              <div class="box tile animated active" id="box-login"  style="margin: 0 auto; margin-left: 36%; margin-top:2rem;">
           
                <h2 class="m-t-0 m-b-15">Login</h2>
                <input type="text" class="login-control m-b-10" placeholder="Username" name="loginCode" id="loginCode" value=""/>
                <input type="password" class="login-control" placeholder="Password" name="password" id="password" value=""/>
                <div class="checkbox m-b-20">
                    <label>
                        <input type="checkbox">
                        记住密码
                    </label>
                </div>
                <ul id="formtip"></ul>
                <button  class="btn btn-sm m-r-5" type="submit" id="loginBtn">登录</button>
                <small>
                    <a class="box-switcher" data-switch="box-register" href="">没有账号?</a> or
                    <a class="box-switcher" data-switch="box-reset" href="">忘记密码?</a>
                </small>
                
            </div>
            <!-- Register --><!-- action="doregister.html" -->
            <form class="box animated tile" id="box-register" >
                <h2 class="m-t-0 m-b-15">注册</h2>
                <input type="text" class="login-control m-b-10" placeholder="Full Name" >
                <input type="text" class="login-control m-b-10" placeholder="Username">
                <input type="email" class="login-control m-b-10" placeholder="Email Address">    
                <input type="password" class="login-control m-b-10" placeholder="Password">
                <input type="password" class="login-control m-b-20" placeholder="Confirm Password">

                <button class="btn btn-sm m-r-5">注册</button>

                <small><a class="box-switcher" data-switch="box-login" href="">Already have an Account?</a></small>
            </form>
            
            <!-- Forgot Password -->
            <form class="box animated tile" id="box-reset">
                <h2 class="m-t-0 m-b-15">Reset Password</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu risus. Curabitur commodo lorem fringilla enim feugiat commodo sed ac lacus.</p>
                <input type="email" class="login-control m-b-20" placeholder="Email Address">    

                <button class="btn btn-sm m-r-5">Reset Password</button>

                <small><a class="box-switcher" data-switch="box-login" href="">Already have an Account?</a></small>
            </form>
        </section>   
        
           <!-- Javascript Libraries -->
        <!-- jQuery -->
        <script src="${pageContext.request.contextPath}/statics/js2/jquery.min.js"></script> <!-- jQuery Library -->
        
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/statics/js2/bootstrap.min.js"></script>
        
        <!--  Form Related -->
        <script src="${pageContext.request.contextPath}/statics/js2/icheck.js"></script> <!-- Custom Checkbox + Radio -->
        
        <!-- All JS functions -->
        <script src="${pageContext.request.contextPath}/statics/js2/functions.js"></script>           
        <script src="${pageContext.request.contextPath}/statics/localjs/index.js"></script>    
  </body>
</html>
