<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
	<script  src="${pageContext.request.contextPath }/js/jquery-1.5.1.js"></script>
	<script src="<c:url value='/js/public/public.js'/>"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
    	
    	//医疗器械使用情况明细
           var names = '${medical.name}';
           var manufacturers = '${medical.manufacturer}';
           var guiGes = '${medical.guiGe}';
           var priductCodes = '${medical.priductCode}';
           var suppliers = '${medical.supplier}';
           var times = '${medical.time}';
           
           var name1 = new Array();
           var manufacturer = new Array();
           var guiGe = new Array();
           var priductCode = new Array(); 
           var supplier = new Array();
           var time = new Array();
           
            name1 = names.split(",");
            manufacturer = manufacturers.split(",");
            guiGe = guiGes.split(",");
            priductCode = priductCodes.split(",");
            supplier = suppliers.split(",");
            time = times.split(",");
            
    	$(function(){
    		//$("tbody>tr>td>input").attr("readonly", readonly);
    		/*if(${groupid eq 1})
    		{
    			$(":input[readonly]").removeAttr("readonly");
    			$("#textarea").removeAttr("readonly");
    			$("#selectId").removeAttr("disabled");
    			$(":checkbox").removeAttr("disabled");
    		}*/
    		 
                //医疗器械使用情况明细
               var table3 = "";
               var j = 0;
               for(i=0; i<name1.length;i++){
               	j++;
               	table3+="<tr><td>"+ j + "</td><td><input type='text' name='name' value='" +name1[i] +"'/></td>" +
               							"<td><input type='text'  name='manufacturer' value='" + manufacturer[i] +"'/></td>" +
               	      					"<td><input type='text'  name='guiGe' value='" + guiGe[i] +"'/></td>"+
               	     					"<td><input type='text'  name='priductCode' value='" + priductCode[i] +"'/></td>"+
               	      					"<td><input type='text'  name='supplier' value='" + supplier[i] +"'/></td>"+
               	      					"<td><input type='text'  name='time' value='" + time[i] +"'/></td>"+
               	      					"<td><a href=javascript:void(0) onclick=delete3('"+"table3"+count3+"')>删除</a></td></tr>";
               }
               $("#table3").append(table3);
			
    	});
    	
    	//医疗器械使用情况明细
			var k=name1.length;
		  	var count3 = 1;
			function addNew3(){
				k++;   
				tr=document.all.table3.insertRow(); 
				tr.insertCell().innerHTML='<div   align=left>'+k+'</div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=name  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=manufacturer  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=guiGe  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=priductCode  class=border_index></div>';
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=supplier  class=border_index></div>';
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=time  class=border_index></div>';
				tr.insertCell().innerHTML="<a href=javascript:void(0) onclick=delete3('"+"table3"+count3+"')>删除</a>";
				count3++;
			}
			function  delete3(aa){
			 	document.all.table3.deleteRow(window.event.srcElement.parentElement.parentElement.rowIndex);   
			}
    	
	    
    	function onclick1(id){
    		
    		/*if(${groupid eq 0}){
    			alert("对不起您没有权限");
    			return false;
    		}*/
    		
    		var sub = confirm("确定要删除吗？");
    		if(sub == true){
	   			$.ajax({
					url:"${pageContext.request.contextPath }/UsemedServlet",
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
    	
    </script>
  </head>
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
                <div class="box-header">
                  <h3>医疗器械使用企业信用档案</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                <form id="deleteForm" action="" method="post">
                	<input type="hidden" name="method" value="delete">
                	<input type="hidden" name="id" value="${medical.id }">
                	<input type="hidden" name="pageCode" value="${pageCode }">
                </form>
                
                <!-- 打印 -->
                <form id="printForm" action="${pageContext.request.contextPath }/UsemedServlet" method="post">
                	<input type="hidden" name="method" value="print">
                	<input type="hidden" name="idU" value="${medical.id }">
                </form>
                
                <form action="${pageContext.request.contextPath }/UsemedServlet" method="post" onsubmit="return sumbit_sure()" >
                <input type="hidden" name="method" value="update">
                <input type="hidden" name="idM" value="${medical.id}">
                  <label class="pull-left">最后修改人: ${medical.amend }</label>
                  
                  <c:choose>
                		<c:when test="${status eq 2}">
                			<a class="pull-right" href="javascript:" onclick="history.go(-2); ">返回上一页</a>
                		</c:when>
                		<c:otherwise>
                			<a class="pull-right" href="javascript:" onclick="history.back(); ">返回上一页</a>
                		</c:otherwise>
                	</c:choose>
                  
                  <table id="" class="table table-condensed" >                   
                    <tbody>
					 <tr>
                        <td ><b>一、基本情况</b></td>
                         <td></td>
                        <td></td>
                        <td align="right"><font color="red" size="0.8e"></font></td>                 
                     </tr>
					 <tr>
						<td>企业名称</td>
                        <td><input id="qyname" type="text" style="width:280px" name="qyname" value="${medical.qyname }"/></td>
						<td>所属行政区域</td>
                        <td>
                        	<select id="address" style="width:280px" name="address">
                        		<option value="0">请选择</option>
                 			  <c:forEach items="${addressList}" var="addressLis">
                  		          <option  value="${addressLis.position }" <c:if test="${medical.address eq addressLis.position }">selected='selected'</c:if>>${addressLis.position }</option>
                 			  </c:forEach>	
                           </select>
                       </td>
					 </tr>
					  <tr>
                        <td>经营地址(具体到门牌号)</td>
                        <td><input id="scaddress" type="text" style="width:280px" name="scaddress" class="" value="${medical.scaddress }"/>
                        	<br>
                        <input type='button' id='search_address' value='点击生成经纬度' onclick="searchAddress()" />
                        </td>
                        <td>邮政编码</td>
                        <td><input id="ems" type="text" style="width:280px" name="ems" value="${medical.ems }"/></td>                   
                      </tr>
					  <tr>
                        <td>固定电话</td>
                        <td><input id="phone" type="text" style="width:280px" name="phone" value="${medical.phone }"/></td>
						<td>传    真</td>
                        <td><input id="fax" type="text" style="width:280px" name="fax" value="${medical.fax }"/></td>
                      </tr>
					  <tr>                        
                        <td>电子邮箱</td>
                        <td><input id="email" type="text" style="width:280px" name="email" value="${medical.email }"/></td>
						<td>经济类型</td>
                        <td> <select id="" style="width:280px" name="jjtype">
                  		          <option  value="" >请选择</option>
                  		          <option  value="国有" <c:if test="${medical.jjtype eq '国有' }">selected='selected'</c:if> >国有</option>
                  		          <option  value="集体" <c:if test="${medical.jjtype eq '集体' }">selected='selected'</c:if>>集体</option>
                  		          <option  value="私营" <c:if test="${medical.jjtype eq '私营' }">selected='selected'</c:if>>私营</option>
                  		          <option  value="个体" <c:if test="${medical.jjtype eq '个体' }">selected='selected'</c:if>>个体</option>
                  		          <option  value="联营" <c:if test="${medical.jjtype eq '联营' }">selected='selected'</c:if>>联营</option>
                  		          <option  value="股份制" <c:if test="${medical.jjtype eq '股份制' }">selected='selected'</c:if>>股份制</option>
                  		          <option  value="外资" <c:if test="${medical.jjtype eq '外资' }">selected='selected'</c:if>>外资</option>
                  		          <option  value="其他" <c:if test="${medical.jjtype eq '其他' }">selected='selected'</c:if>>其他</option>
                           </select>
                        </td>
                      </tr>
					  <tr> 
						<td>登记机关</td>
                        <td><input id="gsorganization" type="text" style="width:280px" name="gsorganization" value="${medical.gsorganization }"/></td>
                        <td>注册号</td>
                        <td><input id="zzcode" type="text" style="width:280px" name="zzcode" value="${medical.zzcode }"/></td>
                      </tr>
                      
                      <tr>
                        <td>法定代表人</td>
                        <td><input id="fddelegate" type="text" style="width:280px" name="fddelegate" value="${medical.fddelegate }"/></td>
						<td>电话(手机)号</td>
                        <td><input id="fdphone" type="text" style="width:280px" name="fdphone" value="${medical.fdphone }"/></td>
                      </tr>
                      <tr>
                        <td>企业负责人</td>
                        <td><input id="qydelegate" type="text" style="width:280px" name="qydelegate" value="${medical.qydelegate }"/></td>
						<td>电话(手机)号</td>
                        <td><input id="qyphone" type="text" style="width:280px" name="qyphone" value="${medical.qyphone }"/></td>
                      </tr>
                      
                      <tr>
                        <td>监管单位</td>
                      	<td><select style="width:280px" id="department" name="department">
                      			<option value="0">请选择</option>
                      			<c:forEach items="${unitList}" var="list">
                        			<option value="${list.department }" <c:if test="${medical.department eq list.department }">selected='selected'</c:if>>${list.department }</option>
                        		</c:forEach>
                            </select>
                        </td>
						<td>监管人员</td>
                        <td><input id="spdelegate" type="text" style="width:280px" name="spdelegate" value="${medical.spdelegate }"/></td>
                      </tr>
                      <tr>
                        <td>监督人员</td>
                        <td><input id="jiandurenyuan" type="text" style="width:280px" class="" name="jiandurenyuan" value="${medical.jiandurenyuan }"/></td>
						<td>协管人员</td>
                        <td><input id="xieguanrenyuan" type="text" style="width:280px" class="" name="xieguanrenyuan" value="${medical.xieguanrenyuan }"/></td>
                      </tr>
                      
                      <tr>
                        <td>经营范围</td>
                        <td><input id="jyArea" type="text" style="width:280px" name="jyArea" value="${medical.jyArea }"/></td>
						 <td>使用单位类别</td>
                        <td><input id="useCategory" type="text" style="width:280px" name="useCategory" value="${medical.useCategory }"/></td>
                      </tr>
                      
                      <tr>
                       <td>生产许可证编号</td>
                        <td><input id="scpermit" type="text" style="width:280px" name="scpermit" value="${medical.scpermit }"/></td>
						<td>发证机关</td>
                        <td><input id="fazhengjiguan" type="text" style="width:280px" class="" name="fazhengjiguan" value="${medical.fazhengjiguan }"/></td>
                      </tr>
                      <tr>
                        <td>发证日期</td>
                        <td><input id="fazhengriqi" type="text" style="width:280px" class="" name="fazhengriqi" value="${medical.fazhengriqi }"/></td>
						<td>有效日期</td>
                        <td><input id="youxiaodate" type="text" style="width:280px" class="" name="youxiaodate" value="${medical.youxiaodate }"/></td>
                      </tr>
                      <tr>
                        <td>经度</td>
                        <td><input id="longitude" type="text" style="width:280px" class="" name="longitude" value="${medical.longitude }"/></td>
						<td>纬度</td>
                        <td><input id="latitude" type="text" style="width:280px" class="" name="latitude" value="${medical.latitude }"/></td>
                      </tr>
					 
					 <!--  
					  <tr>
                        <td><b>二、企业类别</b></td>                 
                      </tr>
					  <tr>
                        <td><input id="jyType" type="checkbox" value="销售" name="market" <c:if test="${medical.market eq '销售' }">checked='checked'</c:if>>
                        		&nbsp&nbsp&nbsp医疗器械销售企业</td>
                        <td><input id="hacccpapprove" type="checkbox" value="使用" name="useEnterprise" <c:if test="${medical.useEnterprise eq '使用' }">checked='checked'</c:if>>
                        		&nbsp&nbsp&nbsp医疗器械使用企业</td>
                      </tr>
                      -->
                      
                      <tr>
                        <td><b>二、医疗器械使用情况明细</b></td>                 
                      </tr>
					   <tr>
                      	<td colspan="4">
	                      	<table class="table table-condensed" width="100%" cellspacing="1" id="table3">    
								<tr>
			      			 		<td width="5%">序号</td> 
			    				    <td width="15%">医疗器械名称</td> 
			    	       	 		<td width="15%">生产厂家</td>  
			    	      	 		<td width="15%">规格型号</td>
			    	      	 		<td width="15%">产品注册证号</td>
			    	      	 		<td width="10%">供货单位</td>
			    	      	 		<td width="10%">购进时间</td> 
			    	      			<td width="10%"> <a href="javascript:void(0)"   onclick="addNew3()">添加明细</a></td>  
		    	    			</tr>
	         				</table>
         				</td>
                      </tr>
                      
                      
						<tr>
						<td colspan="2" align="right"><input type="submit" class="btn btn-primary"  width="30px" value="修改"/></td>
						<td><input type="button" onclick="onclick1(${health.id})" class="btn btn-primary"  width="50px" value="删除"/></td>
						<td><input type="button" onclick="print()" class="btn btn-primary"  width="50px" value="打印"/></td>						
                     </tr>											  
                    </tfoot>
                  </table>	
                  </form>
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

    <!-- jQuery 2.1.4 -->
    <script src="${pageContext.request.contextPath }/plugins/jQuery/jQuery-2.1.4.min.js"></script>
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
