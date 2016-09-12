<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>食品药品动态监管系统</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<c:url value='/font-awesome/css/font-awesome.min.css'/>">  
    <link rel="stylesheet" href="<c:url value='/ionicons/css/ionicons.min.css'/>">
    <!-- DataTables -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/plugins/datatables/dataTables.bootstrap.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/dist/css/skins/_all-skins.min.css">
	 <script src="${pageContext.request.contextPath }/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	 <script type="text/javascript" src="<c:url value='/js/public/queryLocal.js'/>"></script>
	 <!--<script type="text/javascript" src="<c:url value='/js/personnel.js'/>"></script>
  --></head>
  <script type="text/javascript">
  	
  	
  	/*
  	$(function(){
		var actionname;
		$.ajax({
			url:"http://localhost:8080/tslanpu/ActionServlet",
			type:"post",
			async:"false",
			dataType:"json",
			success:function(jsonData){
				actionname = jsonData.list[0].actionname;
				var htmlStr = "";
				htmlStr += "<option value=''>请选择...</option>"
				for(var i = 0; i < jsonData.list.length; i++){
					htmlStr += "<option  value='" + jsonData.list[i].department + "'>" + jsonData.list[i].actionname + "</option>"
				}
				$("#department").append(htmlStr);
			}
		});
		
		var name = $("#name").val();
  		var category = $("#category").val();
  		var address = $("#address").val();
  		var department = $("#department").val();
	});
	*/
  	function _go(select){
  		var index = select.selectedIndex;//选中的option的下标
  		var option = select.options[index];//通过下标得到option对象
  		var value = option.value;//通过option元素值得到value值
  		location="${pb.url}&pageCode=" + value;
  	}
	
	function _submit(){
			var val = $("#selectId").val();
			var valRole = $("#selectRole").val();
			$("#formValidate").submit();
				return true;
		}
	
  </script>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
       <!-- 头部标题 -->
        <jsp:include page="/pages/header.jsp"></jsp:include>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <!-- 左边栏 -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <jsp:include page="/pages/left.jsp"></jsp:include>
        <!-- /.sidebar -->
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
		
          <div class="row" style="text-align:center">
            <div class="col-xs-12">
              <div class="box">
                <div >
                  <h3></h3>
               </div><!-- /.box-header -->
                <div class="box-body">
                
                <!-- 食品生产企业 -->
                <form id="formPro" action="${pageContext.request.contextPath }/ProductionServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idP" name="idP">
                </form>
                
                 <!-- 食品餐饮企业 -->
                <form id="formFood" action="${pageContext.request.contextPath }/FoodServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idF" name="idF">
                </form>
                
                <!-- 保健食品 -->
                <form id="formHealth" action="${pageContext.request.contextPath }/HealthServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idH" name="idH">
                </form>
                
                <!-- 医疗器械 -->
                <form id="formMedical" action="${pageContext.request.contextPath }/MedicalServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idM" name="idM">
                </form>
                
              	<!-- 食品五小行业 -->
                <form id="formIndustry" action="${pageContext.request.contextPath }/IndustryServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idI" name="idI">
                </form>
                
                <!-- 酒类销售企业 -->
                <form id="formWine" action="${pageContext.request.contextPath }/WineServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idW" name="idW">
                </form>
                
                <!-- 药品零售企业 -->
                <form id="formDrug" action="${pageContext.request.contextPath }/DrugServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idD" name="idD">
                </form>
                
                <!-- 医疗器械使用企业 -->
                <form id="formUsemed" action="${pageContext.request.contextPath }/UsemedServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idU" name="idU">
                </form>
                
                <!-- 化妆品销售企业 -->
                <form id="formCosmetic" action="${pageContext.request.contextPath }/CosmeticServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idC" name="idC">
                </form>
                
                <!-- 食品流通企业 -->
                <form  id="formValidate" action="${pageContext.request.contextPath}/servlet/CriculateServlet1" method="post">
                  <input type="hidden" name="method" value="infor">
                  <input id="id" type="hidden" name="id">
                  <input id="page" type="hidden" name="page">
                </form>
                
                  <label class="" >企业类别</label>&nbsp&nbsp
                  <select class="" style="width:150px" id="category" onchange="_category()" name="category">
                  			      <option>请选择...</option>
                  			      <option>食品生产企业</option>
                  			      <option>食品流通企业</option>
                  			      <option>食品餐饮企业</option>
                  			      <option>食品五小行业</option>
                  			      <option>酒类销售企业</option>
                  			      <option>保健食品销售企业</option>
                  			      <option>化妆品销售企业</option>
                  			      <option>药品零售企业</option>
                  			      <option>医疗器械销售企业</option>
                  			      <option>医疗器械使用企业</option>
                  </select><font>(必选)</font>
                  
                  
                  <c:choose>
              		<c:when test="${sessionScope.sessionAdmin.department eq '第一分局' || 
              						sessionScope.sessionAdmin.department eq '第二分局' ||
              						sessionScope.sessionAdmin.department eq '第三分局' ||
              						sessionScope.sessionAdmin.department eq '第四分局' ||
              						sessionScope.sessionAdmin.department eq '第五分局' ||
              						sessionScope.sessionAdmin.department eq '第六分局' ||
              						sessionScope.sessionAdmin.department eq '第七分局' }">
                  </c:when>
                  <c:otherwise>
                  	&nbsp&nbsp&nbsp&nbsp
	                  <label>监管单位</label>
	                  <select id="department" style="width:150px" onchange="_department()" name="department">
	                  			<option value="">请选择...</option>
	                  		<c:forEach items="${unitList}" var="listA">
	                  			<option value="${listA.department }">               							
	                  						   ${listA.department }</option>
	                  		</c:forEach>
	                  </select>
                  </c:otherwise>
            	</c:choose>
                  &nbsp&nbsp&nbsp&nbsp
                  <label>企业地址</label>
                  <select id="address" style="width:150px" onchange="_address()" name="address">
                 			 <option value="">请选择...</option>
                  		<c:forEach items="${addressList}" var="addressLis">
                  			<option value="${addressLis.position }" >               							
                  						   ${addressLis.position }</option>
                  		</c:forEach>
                  </select>
                  &nbsp&nbsp&nbsp&nbsp
                  <label>企业名称</label>
                  <input class="" type="text" oninput="showValue()"  id="name" name="name">
                  
                  &nbsp&nbsp&nbsp&nbsp
                  <label>法定代表人</label>
                  <input class="" type="text" oninput="fddelegateShow()"  id="fddelegate" name="fddelegate">
                  
                  &nbsp&nbsp&nbsp&nbsp
                  <label>注册号/统一社会信用代码</label>
                  <input class="" type="text" oninput="zzcodeShow()"  id="zzcode" name="zzcode">
                  <input type="hidden" id="depart" value="${sessionScope.sessionAdmin.department}" name="depart">
                  
                  &nbsp&nbsp&nbsp&nbsp
                  <input type="submit" value="查询">
                  
                  <br/>
                  <br/>
                  <table  class="table table-condensed table-hover">                   
                    <tbody id="tb">
                    </tbody>
                  </table>
                  <div id="divAction" style="text-align: left;">
                  </div>
                  <br/>
                  <br/>
                  <div id="pageCode"></div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->			                         
            </div><!-- /.col -->
			
          </div><!-- /.row -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <!--<b>唐山蓝普</b>
        --></div>
        <strong></strong>
      </footer>

      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
          <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
          <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        
      </aside><!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
   </div><!-- ./wrapper -->

    
    <!-- Bootstrap 3.3.5 -->
    <script src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
    <!-- DataTables -->
    <script src="${pageContext.request.contextPath }/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath }/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="${pageContext.request.contextPath }/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath }/plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath }/dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="${pageContext.request.contextPath }/dist/js/demo.js"></script>
  </body>
</html>
