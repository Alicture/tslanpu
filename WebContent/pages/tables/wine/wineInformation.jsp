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

			//经营范围的数据回显
			var jyrange='${wine.jyrange}';
			var rangearr=Array();
			rangearr=jyrange.split(",");
			$("input:checkbox[name='range']").each(
			function (){
				for(i=0;i<rangearr.length;i++){
				var abc=rangearr[i];
				if (abc==$(this).val()){$(this).attr("checked",true);}
			}
			}
			);
				
			//循环遍历jytype选中项
	   		var jytype = '${wine.jytype}';
	           var typearr = new Array();
	           typearr=jytype.split(",");
	           $("input:checkbox[name='type']").each(function (){
	           for(i=0;i<typearr.length;i++){
	           		if(typearr[i] == $(this).val()){
	           			$(this).attr("checked",true);
	           			continue;
	           		}
	           	}
			});
				//显示提交成功
				if(${success eq null}){
				
		  		}else{
		  			alert("${success}");
		  		}
		});
		
		
		
	    
    	function onclick1(id){
    		
    		/*if(${groupid eq 0}){
    			alert("对不起您没有权限");
    			return false;
    		}*/
    		
    		var sub = confirm("确定要删除吗？");
    		if(sub == true){
	   			$.ajax({
					url:"${pageContext.request.contextPath }/WineServlet",
					type: "POST",
			        data:$('#deleteForm').serialize(),
			        async: false,
			        success: function(jsonData) {
			        	if(jsonData == 1){
			        		window.history.back();
			        	}
			        }
				});
	   			return true;
    		}else{
    		return false;
    		}
    	}
    	
		//打印
		function print(){
    		$("#printForm").submit();
    	}
		
		
        function method1(){  
        	$("#exprotExcel").submit();
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
				<form id="deleteForm" action="" method="post">
                	<input type="hidden" name="method" value="delete">
                	<input type="hidden" name="idW" value="${wine.id }">
                	<input type="hidden" name="pageCode" value="${pageCode }">
                </form>
                
                 <form id="printForm" action="${pageContext.request.contextPath }/WineServlet" method="post">
                	<input type="hidden" name="method" value="print">
                	<input type="hidden" name="idW" value="${wine.id }">
                </form>
                
                <form id="exprotExcel" action="${pageContext.request.contextPath }/WineServlet" method="post">
                	<input type="hidden" name="method" value="exprotExcel">
                	<input type="hidden" name="idW" value="${wine.id }">
                </form>
                
                <form action="${pageContext.request.contextPath }/WineServlet" method="post" onsubmit="return sumbit_sure()" >
                <input type="hidden" name="method" value="update">
                <input type="hidden" name="idW" value="${wine.id}">
                  <label class="pull-left">最后修改人: ${wine.amend }</label>
                  
                  <c:choose>
                		<c:when test="${status eq 2}">
                			<a class="pull-right" href="javascript:" onclick="history.go(-2); ">返回上一页</a>
                		</c:when>
                		<c:otherwise>
                			<a class="pull-right" href="javascript:" onclick="history.back(); ">返回上一页</a>
                		</c:otherwise>
                	</c:choose>
							
								<table id="ta" class="table table-condensed">
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
												class="" name="qyname" value="${wine.qyname}" /></td>
											<td>所属行政区域</td>
											<td><select id="" style="width:280px" name="address">
													<c:forEach items="${addressList}" var="addressLis">
														<option value="${addressLis.position }"
															<c:if test="${addressLis.position eq wine.address}">selected</c:if>>${addressLis.position
															}</option>
													</c:forEach>
											</select>
											</td>
										</tr>
										<tr>
											<td>经营场所(具体到门牌号)</td>
											<td><input id="scaddress" type="text"
												style="width:280px" name="scaddress"
												value="${wine.scaddress}" class="" /> <br> <input
												type='button' id='search_address' value='点击生成经纬度'
												onclick="searchAddress()" />
											</td>
											<td>邮政编码</td>
											<td><input id="ems" type="text" style="width:280px"
												name="ems" value="${wine.ems}" class="" /></td>
										</tr>
										<tr>
											<td>法定代表人</td>
											<td><input id="lerepre" type="text" style="width:280px"
												class="" value="${wine.lerepre}" name="lerepre" /></td>
											<td>电话(手机)号</td>
											<td><input id="lephone" type="text" style="width:280px"
												class="" value="${wine.lephone}" name="lephone" /></td>
										</tr>
										<tr>
											<td>企业负责人</td>
											<td><input id="qydelegate" type="text"
												style="width:280px" class="" value="${wine.qydelegate}"
												name="qydelegate" /></td>
											<td>电话(手机)号</td>
											<td><input id="qyphone" type="text" style="width:280px"
												class="" value="${wine.qyphone}" name="qyphone" /></td>
										</tr>
										<tr>
											<td>注册号/统一社会信用代码</td>
											<td><input id="zzcode" type="text" style="width:280px"
												class="" value="${wine.zzcode}" name="zzcode" /></td>
											<td>成立日期</td>
											<td><input id="cldate" type="text" style="width:280px"
												class="" value="${wine.cldate}" name="cldate" /></td>
										</tr>
										<tr>
											<td>监管单位</td>
											<td><select style="width:280px" id="department"
												name="department">
													<option value="0">请选择</option>
													<c:forEach items="${unitList}" var="list">
														<option value="${list.department }" <c:if test="${list.department eq wine.department}">selected</c:if>>${list.department
															}</option>
													</c:forEach>
											</select></td>
											<td>监管人员</td>
											<td><input id="spdelegate" type="text"
												style="width:280px" name="spdelegate"
												value="${wine.spdelegate}" class="" /></td>
										</tr>
										<tr>
											<td>监督人员</td>
											<td><input id="jiandurenyuan" type="text"
												style="width:280px" class=""
												value="${wine.jiandurenyuan}" name="jiandurenyuan" /></td>
											<td>协管人员</td>
											<td><input id="xieguanrenyuan" type="text"
												style="width:280px" class=""
												value="${wine.xieguanrenyuan}" name="xieguanrenyuan" />
											</td>
										</tr>
										<tr>
											<td>食品经营许可证编号</td>
											<td><input id="scpermit" type="text" style="width:280px"
												class="" value="${wine.scpermit}" name="scpermit" /></td>
											<td>发证机关</td>
											<td><input id="fazhengjiguan" type="text"
												style="width:280px" class=""
												value="${wine.fazhengjiguan}" name="fazhengjiguan" /></td>
										</tr>
										<tr>
											<td>发证日期</td>
											<td><input id="fazhengriqi" type="text"
												style="width:280px" class="" value="${wine.fazhengriqi}"
												name="fazhengriqi" /></td>
											<td>有效日期</td>
											<td><input id="youxiaodate" type="text"
												style="width:280px" class="" value="${wine.youxiaodate}"
												name="youxiaodate" /></td>
										</tr>
										<tr>
											<td>经度</td>
											<td><input id="longitude" type="text"
												style="width:280px" class="" value="${wine.longitude}"
												name="longitude" /></td>
											<td>纬度</td>
											<td><input id="latitude" type="text" style="width:280px"
												class="" value="${wine.latitude}" name="latitude" /></td>
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
						<td colspan="2" align="right"><input type="submit" class="btn btn-primary"  width="30px" value="修改"/></td>
						<td><input type="button" onclick="onclick1(${wine.id})" class="btn btn-primary"  width="50px" value="删除"/></td>
						<td><input type="button" onclick="print()" class="btn btn-primary"  width="50px" value="打印"/></td>	
						<td><input type="button" onclick="method1()" class="btn btn-primary"  width="50px" value="导出EXCEL"/></td>	
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
