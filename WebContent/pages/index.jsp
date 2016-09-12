<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>食品药品动态监管系统</title>
    <link rel="stylesheet" href="<c:url value='/bootstrap/css/bootstrap.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/font-awesome/css/font-awesome.min.css'/>">  
    <link rel="stylesheet" href="<c:url value='/ionicons/css/ionicons.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/dist/css/AdminLTE.min.css'/>">
    <link rel="stylesheet" href="<c:url value='/dist/css/skins/_all-skins.min.css' />">
    <link rel="stylesheet" href="<c:url value='/plugins/iCheck/flat/blue.css'/>">
    <link rel="stylesheet" href="<c:url value='/plugins/morris/morris.css'/>">
    <link rel="stylesheet" href="<c:url value='/plugins/jvectormap/jquery-jvectormap-1.2.2.css'/>">
    <link rel="stylesheet" href="<c:url value='/plugins/datepicker/datepicker3.css'/>">
    <link rel="stylesheet" href="<c:url value='/plugins/daterangepicker/daterangepicker-bs3.css'/>">
    <link rel="stylesheet" href="<c:url value='/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css'/>">
    <script src="<c:url value='/plugins/jQuery/jQuery-2.1.4.min.js'/>"></script>
    <script src="http://cdn.bootcss.com/bootstrap/2.3.1/js/bootstrap-transition.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/2.3.1/js/bootstrap-modal.js"></script>
  </head>
  <script type="text/javascript">
  		
  		$(function(){
  			var password = '${sessionScope.sessionAdmin.password}';
  			if(password == '666666'){
  				$("#mymodal").modal("toggle");
  			}
  		});
  		
  		//初次登陆用来修改密码
  		function change(){
  			var password = $("#password").val();
  			var againPassword = $("#againPassword").val();
	  		if(password != againPassword){
	  			$("#font").html("两次密码不一致");
	  		}else{
	  			$.ajax({
					url:"${pageContext.request.contextPath}/UpdatePassword",
					data:{password:password},
					type:"post",
					async:"false",
					success:function(jsonData){
						if(jsonData == 1){
							//$('#mymodal').modal('hide');
							alert("修改成功,点击确定重新登陆");
							location.href="${pageContext.request.contextPath}/login.jsp";
						}else{
							alert("修改失败");
						}
					}
				});
	  		}
  		}
  
  </script>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
      	<!-- 头部标题 -->
        <jsp:include page="/pages/header.jsp"></jsp:include>
      </header>
      
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
      
        <!-- sidebar: style can be found in sidebar.less -->
        <!-- 左边栏  -->
        <jsp:include page="/pages/left.jsp"></jsp:include>
        <!-- /.sidebar -->
      </aside>
       Content Wrapper. Contains page content 
      <div class="content-wrapper">
         
		<div class="modal" id="mymodal">
		    <div class="modal-dialog">
		        <div class="modal-content">
		            <div class="modal-header">
				<!--  	<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>   -->
						<h4 class="modal-title">首次登陆必须修改密码</h4>
					</div>
					<div class="modal-body">
								<label><font id="font" size="0.8" color="red"></font></label>
						<div class="form-group has-feedback">
            				新密码:<input type="password" id="password"  class="form-control" name="password">
          				</div>
          				<div class="form-group has-feedback">
            				确认密码：<input type="password" id="againPassword" class="form-control" name="againPassword">
          				</div>
					</div>
					<div class="modal-footer">
				<!--	<button type="button" class="btn btn-default" >关闭</button>   -->
						<button type="button" onclick="change()" class="btn btn-primary">保存</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
         
         
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <!--<b>唐山蓝普</b>
        --></div>
        <!-- <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved. -->
      </footer>

      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="<c:url value='/plugins/jQuery/jQuery-2.1.4.min.js'/>"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge('uibutton', $.ui.button);
    </script>
    <!-- Bootstrap 3.3.5 -->
    <script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
    <!-- Morris.js charts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="<c:url value='/plugins/morris/morris.min.js'/>"></script>
    <!-- Sparkline -->
    <script src="<c:url value='/plugins/sparkline/jquery.sparkline.min.js'/>"></script>
    <!-- jvectormap -->
    <script src="<c:url value='/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js'/>"></script>
    <script src="<c:url value='/plugins/jvectormap/jquery-jvectormap-world-mill-en.js'/>"></script>
    <!-- jQuery Knob Chart -->
    <script src="<c:url value='/plugins/knob/jquery.knob.js'/>"></script>
    <!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="<c:url value='/plugins/daterangepicker/daterangepicker.js'/>"></script>
    <!-- datepicker -->
    <script src="<c:url value='/plugins/datepicker/bootstrap-datepicker.js'/>"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="<c:url value='/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js'/>"></script>
    <!-- Slimscroll -->
    <script src="<c:url value='/plugins/slimScroll/jquery.slimscroll.min.js'/>"></script>
    <!-- FastClick -->
    <script src="<c:url value='/plugins/fastclick/fastclick.min.js'/>"></script>
    <!-- AdminLTE App -->
    <script src="<c:url value='/dist/js/app.min.js'/>"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="<c:url value='/dist/js/pages/dashboard.js'/>"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<c:url value='/dist/js/demo.js'/>"></script>
  </body>
</html>
