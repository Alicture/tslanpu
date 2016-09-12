<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <title>食品药品动态监管系统</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<c:url value='/bootstrap/css/bootstrap.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/font-awesome/css/font-awesome.min.css'/>">  
    <link rel="stylesheet" href="<c:url value='/ionicons/css/ionicons.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/dist/css/AdminLTE.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/plugins/iCheck/square/blue.css'/>">
    <script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/jquery.validate.min.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/messages_zh.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/js/login.js'/>"></script>
    <style>
		.error{
			color:red;
		}
	</style>
  </head>
  <body class="hold-transition login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="">食品药品监管系统</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <!--<p class="login-box-msg">Sign in to start your session</p>
        -->
        <form id="formValidate" action="${pageContext.request.contextPath }/AdminServlet" method="post">
        	<font color="red" size="0.9e">${msg }</font>
          <div class="form-group has-feedback">
            <input type="text" id="username" class="form-control" name="username" placeholder="请输入账号">
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" id="password" class="form-control" name="password" placeholder="请输入密码">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">
              <div class="checkbox icheck">
                <label><!--
                  <input type="checkbox"> Remember Me
                --></label>
              </div>
            </div><!-- /.col -->
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
            </div><!-- /.col -->
          </div>
        </form>

        <!--<a href="#">I forgot my password</a><br>
        <a href="#" class="text-center">Register a new membership</a>
 -->
 	</div><!-- /.login-box-body -->
	 	<div id="templatemo_banner_slide" class="container_wapper">
			<div class="camera_wrap camera_emboss" id="camera_slide">
				<img src="${pageContext.request.contextPath }/loginImg/banner_slide_01.jpg">
			</div>
			<!-- #camera_wrap_3 -->
		</div>
    </div><!-- /.login-box -->
	
    <!--<script src="<c:url value='/plugins/jQuery/jQuery-2.1.4.min.js'/>"> </script>-->
    <script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/plugins/iCheck/icheck.min.js'/>"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>
