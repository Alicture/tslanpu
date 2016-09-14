<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<%
	String path = request.getContextPath();

	String basePath = request.getScheme() + "://"

			+ request.getServerName() + ":" + request.getServerPort()

			+ path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>食品药品动态监管系统</title>
<%--  <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.autocomplete.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/jquery.autocomplete.css"></link> --%>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value='/font-awesome/css/font-awesome.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/ionicons/css/ionicons.min.css'/>">
<!-- DataTables -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/datatables/dataTables.bootstrap.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/skins/_all-skins.min.css">
<script
	src="${pageContext.request.contextPath }/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/js/jquery.validate.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/messages_zh.js'/>"></script>
<script src="<c:url value='/js/public/public.js'/>"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script type="text/javascript">
		
    	 function changeFunc(){
    			var selectBox = document.getElementById("table");
    			var selectedValue = selectBox.options[selectBox.selectedIndex].value;
    			var target=document.getElementById(selectedValue);
    			
    				if(target){
    					
    						if(target.style.display=="block"){
    							target.style.display="none";
    						}
    						else{
    							target.style.display="block";
    						}
    					
    				}
    			} 
    	
    			  $(function() {
    			    var availableTags = [
    			                     Ï	<c:forEach var="item" items="${qy}">   
    			                  	  "${item.qyname}",   
    			                  	</c:forEach> 
    			                      ];
    			    $( "#dw" ).autocomplete({
    			      source: availableTags
    			    });
    			  });
    			function(){
    				var qyname = $("#dw").val();
    				if(qyname!=null)
    					{
    						qyajax(qyname);
    					}
    				
    			}
    			function qyajax(qyname){
    				$.ajax
    				
    			}
   </script>

</head>
<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">

		<header class="main-header"> <!-- 头部标题 --> <jsp:include
			page="/pages/header.jsp"></jsp:include> </header>

		<!-- Left side column. contains the logo and sidebar -->
		<!-- 左边栏 -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<jsp:include page="/pages/left.jsp"></jsp:include> <!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<!--  <section class="content-header">
          <h1>
            Data Tables
            <small>advanced tables</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Tables</a></li>
            <li class="active">Data tables</li>
          </ol>
        </section> -->
			<!-- Main content -->
			<section class="content">
			<div class="row" style="text-align: center">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3>抽检报告制作</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<form id="formValidate" action="<c:url value='/FoodServlet'/>"
								method="post">
								<input type="hidden" name="method" value="add"> <input
									type="hidden" name="token" value="${tokenF }">
								<table id="" class="table table-condensed">
									<tbody>
										<tr>
											<td><b>1.被抽检单位</b></td>
											<td><input id="dw" type="text" style="width: 280px"></input>

											</td>
											<td><b>2.抽检时间</b></td>
											<td><input id="cjsj" type="text" style="width: 280px"
												class="" name="cjsj" /></td>
										</tr>

										<tr>
											<td>请选择表：</td>
											<td><select id="table" style="width: 280px" name="table"
												onchange="changeFunc();">
													<option value="0">请选择</option>
													<option value="div1">食品安全抽样检验告知书</option>
											</select></td>
										</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>

			<div id="div1" style="display: none">
				<p>hello</p>
			</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<!--  <b>唐山蓝普</b>-->
		</div>
		<strong></strong> </footer>
		<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->
	<!-- jQuery 2.1.4 -->
	<!--<script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    -->
	<!-- Bootstrap 3.3.5 -->
	<script
		src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
	<!-- DataTables -->
	<script
		src="${pageContext.request.contextPath }/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/plugins/datatables/dataTables.bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script
		src="${pageContext.request.contextPath }/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="${pageContext.request.contextPath }/plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="${pageContext.request.contextPath }/dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="${pageContext.request.contextPath }/dist/js/demo.js"></script>
	<!-- page script -->
	<script>
      $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>

</body>
</html>
