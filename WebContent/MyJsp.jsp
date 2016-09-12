<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <title>食品药品动态监管系统</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="login/bootstrap.min.css" />
	
	<link rel="stylesheet" href="login/bootstrap-responsive.min.css" />
	<link rel="stylesheet" href="login/matrix-login.css" />
	<link href="login/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="plugins/iCheck/square/blue.css">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/messages_zh.js"></script>
    <script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
	
    <style>
		.error{
			color:red;
		}
	</style>
	
	
	

	
	
  
  <body>

	<div
		style="width:100%;text-align: center;margin: 0 auto;position: absolute;">
		<div id="loginbox">
			<form id="formValidate" action="${pageContext.request.contextPath }/AdminServlet" method="post">
				<div class="control-group normal_text">
					<h3>
						食品药品动态监管系统
					</h3>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_lg">
							<i><img height="37" src="login/user.png" /></i>
							</span><input type="text" name="username" id="username" value="" placeholder="请输入用户名" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_ly">
							<i><img height="37" src="login/suo.png" /></i>
							</span><input type="password" name="password" id="password" placeholder="请输入密码" value="" />
						</div>
					</div>
				</div>
				
				<div class="form-actions">
					<div style="width:86%;padding-left:8%;">
						
						<span class="pull-right" style="padding-right:3%;"><a
							href="javascript:quxiao();" class="btn btn-success">取消</a></span> <span
							class="pull-right"><a onclick="check();"
							class="flip-link btn btn-info" id="to-recover">登录</a></span>

					</div>
				</div>

			</form>

			<!--  
			<div class="controls">
				<div class="main_input_box">
					<font color="white"><span id="nameerr">Copyright © FH
							2100</span></font>
				</div>
			</div>	-->
		</div>
	</div>
	<div id="templatemo_banner_slide" class="container_wapper">
		<div class="camera_wrap camera_emboss" id="camera_slide">
			<img src="login/images/login_body.jpg">
		</div>
		<!-- #camera_wrap_3 -->
	</div>
	
	<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="<c:url value='/plugins/iCheck/icheck.min.js'/>"></script>
    
	<script src="login/js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.tips.js"></script>
	<script type="text/javascript" src="js/jquery.cookie.js"></script>
	<script>
		//取消
		function quxiao() {
			$("#username").val('');
			$("#password").val('');
		}
		
		//客户端校验
		function check() {
		
			var result = true;

			if ($("#username").val() == "") {

				$("#username").tips({
					side : 2,
					msg : '用户名不得为空',
					bg : '#AE81FF',
					time : 3
				});

				$("#username").focus();
				result = false;
			} else {
				$("#username").val(jQuery.trim($('#username').val()));
			}

			if ($("#password").val() == "") {

				$("#password").tips({
					side : 2,
					msg : '密码不得为空',
					bg : '#AE81FF',
					time : 3
				});

				$("#password").focus();
				result = false;
			}

			if(result == true){
				$("#formValidate").submit();			
			}
		} 
		
	</script>
	
  </body>
</html>
