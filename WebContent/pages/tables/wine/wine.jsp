<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>食品安全动态监管系统</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value='/font-awesome/css/font-awesome.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/ionicons/css/ionicons.min.css'/>">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/plugins/datatables/dataTables.bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/AdminLTE.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/dist/css/skins/_all-skins.min.css">
<script
	src="${pageContext.request.contextPath }/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/js/jquery.validate.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/messages_zh.js'/>"></script>
<script src="<c:url value='/js/public/public.js'/>"></script>
<script type="text/javascript">
		$(function(){
				//显示提交成功
				if(${success eq null}){
				
		  		}else{
		  			alert("${success}");
		  		}
		});
		//打印
		function print(){
    		location.href="${pageContext.request.contextPath }/pages/tables/wine/downloadWine.jsp";
    	}
		
	</script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<header class="main-header"> <!-- 头部标题 --> <jsp:include
			page="/pages/header.jsp"></jsp:include> </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<!-- 左边栏 --> <jsp:include page="/pages/left.jsp"></jsp:include> <!-- /.sidebar -->
		</aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Main content -->
			<section class="content">
			<div class="row" style="text-align:center">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3>酒类销售企业备案登记表</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<form id="formValidate"
								action="<c:url value='/WineServlet'/>" 
								method="post">
								<input type="hidden" name="method" value="add"> <input
									type="hidden" name="token" value="${tokenC }">
								<table id="" class="table table-condensed">
									<tbody>
										<tr>
											<td><b>一、基本情况</b></td>
											<td></td>
											<td></td>
											<td align="right"><font color="red" size="0.8e"></font>
											</td>
										</tr>
										<tr>
											<td>经营单位名称</td>
											<td><input id="qyname" type="text" style="width:280px"
												class="" name="qyname" value="${formBean.qyname}" /></td>
											<td>所属行政区域</td>
											<td><select id="" style="width:280px" name="address">
													<c:forEach items="${addressList}" var="addressLis">
														<option value="${addressLis.position }"
															>${addressLis.position
															}</option>
													</c:forEach>
											</select>
											</td>
										</tr>
										<tr>
											<td>经营场所(具体到门牌号)</td>
											<td><input id="scaddress" type="text"
												style="width:280px" name="scaddress"
											 class="" /> <br> <input
												type='button' id='search_address' value='点击生成经纬度'
												onclick="searchAddress()" />
											</td>
											<td>邮政编码</td>
											<td><input id="ems" type="text" style="width:280px"
												name="ems"  class="" /></td>
										</tr>
										<tr>
											<td>法定代表人</td>
											<td><input id="fddelegate" type="text" style="width:280px"
												class=""  name="lerepre" /></td>
											<td>电话(手机)号</td>
											<td><input id="lephone" type="text" style="width:280px"
												class=""  name="lephone" /></td>
										</tr>
										<tr>
											<td>企业负责人</td>
											<td><input id="qydelegate" type="text"
												style="width:280px" class="" 
												name="qydelegate" /></td>
											<td>电话(手机)号</td>
											<td><input id="qyphone" type="text" style="width:280px"
												class=""  name="qyphone" /></td>
										</tr>
										<tr>
											<td>注册号/统一社会信用代码</td>
											<td><input id="zzcode" type="text" style="width:280px"
												class=""name="zzcode" /></td>
											<td>成立日期</td>
											<td><input id="cldate" type="text" style="width:280px"
												class=""  name="cldate" /></td>
										</tr>
										<tr>
											<td>监管单位</td>
											<td><select style="width:280px" id="department"
												name="department">
													<option value="0">请选择</option>
													<c:forEach items="${unitList}" var="list">
														<option value="${list.department }">${list.department
															}</option>
													</c:forEach>
											</select></td>
											<td>监管人员</td>
											<td><input id="spdelegate" type="text"
												style="width:280px" name="spdelegate"
												 class="" /></td>
										</tr>
										<tr>
											<td>监督人员</td>
											<td><input id="jiandurenyuan" type="text"
												style="width:280px" class=""
												name="jiandurenyuan" /></td>
											<td>协管人员</td>
											<td><input id="xieguanrenyuan" type="text"
												style="width:280px" class=""
												name="xieguanrenyuan" />
											</td>
										</tr>
										<tr>
											<td>食品经营许可证编号</td>
											<td><input id="scpermit" type="text" style="width:280px"
												class=""  name="scpermit" /></td>
											<td>发证机关</td>
											<td><input id="fazhengjiguan" type="text"
												style="width:280px" class=""
												name="fazhengjiguan" /></td>
										</tr>
										<tr>
											<td>发证日期</td>
											<td><input id="fazhengriqi" type="text"
												style="width:280px" class="" 
												name="fazhengriqi" /></td>
											<td>有效日期</td>
											<td><input id="youxiaodate" type="text"
												style="width:280px" class="" 
												name="youxiaodate" /></td>
										</tr>
										<tr>
											<td>经度</td>
											<td><input id="longitude" type="text"
												style="width:280px" class="" 
												name="longitude" /></td>
											<td>纬度</td>
											<td><input id="latitude" type="text" style="width:280px"
												class=""  name="latitude" /></td>
										</tr>
										<tr>
											<td><b>二、许可范围</b></td>
										</tr>

										<tr>
											<td>经营类型</td>
										</tr>
										<tr>
											<td><input id="isoapprove" type="checkbox"
												value="酒类生产企业" name="type">&nbsp&nbsp&nbsp酒类生产企业</td>
											<td><input id="hacccpapprove" type="checkbox"
												value="白酒生产作坊" name="type">&nbsp&nbsp&nbsp白酒生产作坊</td>
											<td><input id="wghapprove" type="checkbox"
												value="酒类销售企业" name="type">&nbsp&nbsp&nbsp酒类销售企业</td>
											<td><input id="wghapprove" type="checkbox" value="个体工商户"
												name="type">&nbsp&nbsp&nbsp个体工商户</td>

										</tr>
										<tr>
											<td><input id="isoapprove" type="checkbox"
												value="批发（含批零兼营）" name="type">&nbsp&nbsp&nbsp批发（含批零兼营）</td>
											<td><input id="hacccpapprove" type="checkbox" value="零售"
												name="type">&nbsp&nbsp&nbsp零售</td>
											<td><input id="hacccpapprove" type="checkbox" value="餐饮"
												name="type">&nbsp&nbsp&nbsp餐饮</td>
											<td><input id="wghapprove" type="checkbox"
												value="酒吧等娱乐场所" name="type">&nbsp&nbsp&nbsp酒吧等娱乐场所</td>
										</tr>
										<tr>
											<td><input id="wghapprove" type="checkbox" value="其他"
												name="type">&nbsp&nbsp&nbsp其他</td>
										</tr>
										<tr>
											<td>经营范围</td>
										</tr>
										<tr>
											<td><input id="isoapprove" type="checkbox" value="白酒"
												name="range">&nbsp&nbsp&nbsp白酒</td>
											<td><input id="hacccpapprove" type="checkbox" value="啤酒"
												name="range">&nbsp&nbsp&nbsp啤酒</td>
											<td><input id="wghapprove" type="checkbox" value="葡萄酒"
												name="range">&nbsp&nbsp&nbsp葡萄酒</td>
											<td><input id="wghapprove" type="checkbox" value="果酒"
												name="range">&nbsp&nbsp&nbsp果酒</td>
										</tr>
										<tr>
											<td><input id="wghapprove" type="checkbox" value="黄酒"
												name="range">&nbsp&nbsp&nbsp黄酒</td>
											<td><input id="wghapprove" type="checkbox" value="配制酒"
												name="range">&nbsp&nbsp&nbsp配制酒</td>
											<td><input id="isoapprove" type="checkbox" value="进口酒"
												name="range">&nbsp&nbsp&nbsp进口酒</td>
											<td><input id="hacccpapprove" type="checkbox"
												value="酒精度（alcohol）大于0.5%Vol的含酒精饮料" name="range">&nbsp&nbsp&nbsp酒精度（alcohol）大于0.5%Vol的含酒精饮料</td>
										</tr>
										<tr>
											<td colspan="2" align="right"><input type="button"
												onclick="_submit()" class="btn btn-primary" width="30px"
												value="保存" /></td>
												<td><input type="button" onclick="print()" class="btn btn-primary"  width="50px" value="打印"/></td>	
										</tr>
									</tbody>
								</table>
							</form>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row --> </section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<!--  <b>唐山蓝普</b>-->
		</div>
		<strong></strong> </footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark"> <!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
			<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
					class="fa fa-home"></i> </a></li>
			<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
					class="fa fa-gears"></i> </a></li>
		</ul>
		<!-- Tab panes --> </aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

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
