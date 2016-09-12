<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
	<script type="text/javascript" src="<c:url value='/js/jquery.validate.min.js'/>"></script>
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
    		location.href="${pageContext.request.contextPath }/pages/tables/food/downloadFood.jsp";
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
                <div class="box-header">
                  <h3>食品餐饮企业信用档案</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                <form id="formValidate" action="<c:url value='/FoodServlet'/>" method="post">
                <input type="hidden" name="method" value="add">
                <input type="hidden" name="token" value="${tokenF }">
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
		                    	<td><input id="qyname" type="text" style="width:280px" class="" name="qyname" /></td>
								<td>所属行政区域</td>
		                   		 <td >
	                         		<select id="address" style="width:280px" name="address">
	                         			<option value="0">请选择</option>
                			  			<c:forEach items="${addressList}" var="addressLis">
                 		         			 <option  value="${addressLis.position }" >${addressLis.position }</option>
                			 			 </c:forEach>	
                         			</select>
		                     	</td>
							</tr>
							 
							 <tr>
                        		<td>经营场所(具体到门牌号)</td>
                        		<td><input id="scaddress" type="text" style="width:280px" name="scaddress" class=""/>
                        			<br>
                        			<input type='button' id='search_address' value='点击生成经纬度' onclick="searchAddress()"/>
                        		</td>
                        		<td>邮政编码</td>
                        		<td><input id="ems" type="text" style="width:280px" name="ems" class=""/></td>                   
                      		</tr>
                      		 <tr>
                        		<td>法定代表人</td>
                        		<td><input id="fddelegate" type="text" style="width:280px" name="fddelegate" class=""/></td>
								<td>电话(手机)号</td>
                       			 <td><input id="fdphone" type="text" style="width:280px" name="fdphone" class=""/></td>
                      		</tr>
		                     <tr>
		                        <td>负责人</td>
		                        <td><input id="qydelegate" type="text" style="width:280px" class="" name="qydelegate" /></td>
								<td>电话(手机)号</td>
		                        <td><input id="qyphone" type="text" style="width:280px" class="" name="qyphone" /></td>
		                     </tr>
							 <tr>
								 <td>经济类型</td>
                        			<td> <select id="" style="width:280px" name="jjtype">
			                  		          <option  value="" >请选择</option>
			                  		          <option  value="国有" >国有</option>
			                  		          <option  value="集体" >集体</option>
			                  		          <option  value="私营" >私营</option>
			                  		          <option  value="个体" >个体</option>
			                  		          <option  value="联营" >联营</option>
			                  		          <option  value="股份制" >股份制</option>
			                  		          <option  value="外资" >外资</option>
			                  		          <option  value="其他" >其他</option>
                           				</select>
                        		   </td>
								 <td>电子邮箱</td>
		                         <td ><input id="email" type="text" style="width:280px" class="" name="email" /></td>
							 </tr>
		                     <tr>
		                        <td>登记机关</td>
		                        <td><input id="gsorganization" type="text" style="width:280px" class="" name="gsorganization" /></td>
								<td>注册号/统一社会信用代码</td>
		                        <td><input id="zzcode" type="text" style="width:280px" class="" name="zzcode" /></td>
		                     </tr>
							 <tr>
								 <td>成立日期</td>
		                         <td><input id="cldate" type="text" style="width:280px" class="" name="cldate" /></td>
								 <td>年销售额(万元)</td>
		                         <td ><input id="nzyield" type="text" style="width:280px" class="" name="nzyield" /></td>
							 </tr>
		                     <tr>
		                        <td>从业人员数</td>
		                        <td><input id="cyNum" type="text" style="width:280px" class="" name="cyNum" /></td>
								<td>就餐座位数</td>
		                        <td><input id="seats" type="text" style="width:280px" class="" name="seats" /></td>
		                     </tr>
							 <tr>
								 <td>加工经营场所面积</td>
		                         <td><input id="jyArea" type="text" style="width:280px" class="" name="jyArea" /></td>
								 <td>持健康证人数</td>
		                         <td><input id="healthNum" type="text" style="width:280px" class="" name="healthNum" /></td>
							 </tr>
		                     <tr>
                        		<td>监管单位</td>
                      			<td><select style="width:280px" id="department" name="department">
                      						<option value="0">请选择</option>
                      					<c:forEach items="${unitList}" var="list">
                        					<option value="${list.department }">${list.department }</option>
                        				</c:forEach>
                           		 	</select>
                        		</td>
								<td>监管人员</td>
                        		<td><input id="spdelegate" type="text" style="width:280px" name="spdelegate" class=""/></td>
                      		</tr>
                      		
                      		<tr>
                        		<td>监督人员</td>
                        		<td><input id="jiandurenyuan" type="text" style="width:280px" class="" name="jiandurenyuan" /></td>
								<td>协管人员</td>
                        		<td><input id="xieguanrenyuan" type="text" style="width:280px" class="" name="xieguanrenyuan" /></td>
                      		</tr>
                      		
							 <tr>
								 <td>食品经营许可证编号</td>
		                         <td><input id="scpermit" type="text" style="width:280px" class="" name="scpermit" /></td>
								 <td>发证机关</td>
		                         <td ><input id="fazhengjiguan" type="text" style="width:280px" class="" name="fazhengjiguan" /></td>
							 </tr>
							 
							 <tr>
                        		<td>发证日期</td>
                        		<td><input id="fazhengriqi" type="text" style="width:280px" class="" name="fazhengriqi" /></td>
								<td>有效日期</td>
                        		<td><input id="youxiaodate" type="text" style="width:280px" class="" name="youxiaodate" /></td>
                      		</tr>
                      		
                      		<tr>
                       			<td>经度</td>
                        		<td><input id="longitude" type="text" style="width:280px" class="" name="longitude" /></td>
								<td>纬度</td>
                        		<td><input id="latitude" type="text" style="width:280px" class="" name="latitude" /></td>
                      		</tr>
                      		
                      		<tr>
                        		<td><b>二、许可项目</b></td>
                     		</tr>
                     		
                     		<tr>
                        		<td>类型：</td>
                     		</tr>
                     		
                     		<tr>
                       			<td><input id="type" type="checkbox" value="特大型餐馆" name="type">&nbsp&nbsp&nbsp特大型餐馆</td>
                        		<td><input id="superMarket" type="checkbox" value="大型餐馆" name="type">&nbsp&nbsp&nbsp大型餐馆</td>
                        		<td><input id="cvs" type="checkbox" value="中型餐馆" name="type">&nbsp&nbsp&nbsp中型餐馆</td>
                        		<td><input id="store" type="checkbox" value="小型餐馆" name="type">&nbsp&nbsp&nbsp小型餐馆</td>
                      		</tr>
                      		
                      		<tr>
                       			<td><input id="foodMarket" type="checkbox" value="快餐店" name="type">&nbsp&nbsp&nbsp快餐店</td>
                        		<td><input id="superMarket" type="checkbox" value="小吃店" name="type">&nbsp&nbsp&nbsp小吃店</td>
                        		<td><input id="cvs" type="checkbox" value="饮品店" name="type">&nbsp&nbsp&nbsp饮品店</td>
                        		<td><input id="store" type="checkbox" value="食堂" name="type">&nbsp&nbsp&nbsp食堂</td>
                      		</tr>
                      		
                      		<tr>
                       			<td><input id="foodMarket" type="checkbox" value="集体用餐配送单位" name="type">&nbsp&nbsp&nbsp集体用餐配送单位</td>
                        		<td><input id="superMarket" type="checkbox" value="其他" name="type">&nbsp&nbsp&nbsp其他</td>
                      		</tr>
                      		
                      		<tr>
                        		<td>备注：</td>
                     		</tr>
                      		
                      		<tr>
                       			<td><input id="foodMarket" type="checkbox" value="单纯火锅" name="remark">&nbsp&nbsp&nbsp单纯火锅</td>
                        		<td><input id="superMarket" type="checkbox" value="单纯烧烤" name="remark">&nbsp&nbsp&nbsp单纯烧烤</td>
                        		<td><input id="cvs" type="checkbox" value="全部使用羊成品加工" name="remark">&nbsp&nbsp&nbsp全部使用羊成品加工</td>
                        		<td><input id="store" type="checkbox" value="中餐类制售" name="store">&nbsp&nbsp&nbsp中餐类制售</td>
                      		</tr>
                      		
                      		<tr>
                       			<td><input id="foodMarket" type="checkbox" value="西餐类制售" name="remark">&nbsp&nbsp&nbsp西餐类制售</td>
                        		<td><input id="superMarket" type="checkbox" value="日餐类制售" name="remark">&nbsp&nbsp&nbsp日餐类制售</td>
                        		<td><input id="cvs" type="checkbox" value="韩餐类制售" name="remark">&nbsp&nbsp&nbsp韩餐类制售</td>
                        		<td><input id="store" type="checkbox" value="工地食堂" name="store">&nbsp&nbsp&nbsp工地食堂</td>
                      		</tr>
                      		
                      		<tr>
                       			<td><input id="foodMarket" type="checkbox" value="学院食堂" name="remark">&nbsp&nbsp&nbsp学院食堂</td>
                        		<td><input id="superMarket" type="checkbox" value="幼儿园食堂" name="remark">&nbsp&nbsp&nbsp幼儿园食堂</td>
                        		<td><input id="cvs" type="checkbox" value="企事业单位机关食堂" name="remark">&nbsp&nbsp&nbsp企事业单位机关食堂</td>
                        		<td><input id="store" type="checkbox" value="含裱花蛋糕" name="store">&nbsp&nbsp&nbsp含裱花蛋糕</td>
                      		</tr>
                      		
                      		<tr>
                       			<td><input id="foodMarket" type="checkbox" value="含凉菜" name="remark">&nbsp&nbsp&nbsp含凉菜</td>
                        		<td><input id="superMarket" type="checkbox" value="含生食海产品" name="remark">&nbsp&nbsp&nbsp含生食海产品</td>
                        		<td><input id="cvs" type="checkbox" value="冷热饮品制售" name="remark">&nbsp&nbsp&nbsp冷热饮品制售</td>
                        		<td><input id="store" type="checkbox" value="其他" name="remark">&nbsp&nbsp&nbsp其他</td>
                      		</tr>
                      		
                      		<tr>
                        		<td>须知：</td>
                     		</tr>
                     		<tr>
                       			<td colspan="4">
                       				特大型餐馆：经营场所使用面积＞3000㎡，或就餐座位数＞1000座的餐馆
                       			</td>
                      		</tr>
                      		<tr>
                       			<td colspan="4">
                       				大型餐馆：500㎡＜经营场所面积≤3000㎡，或250座＜就餐座位数＜1000座的餐馆
                       			</td>
                      		</tr>
                      		<tr>
                       			<td colspan="4">
                       				中型餐馆：150㎡＜经营场所面积≤500㎡，或75座＜就餐座位数＜250座的餐馆
                       			</td>
                      		</tr>
                      		<tr>
                       			<td colspan="4">
                       				小型餐馆：经营场所面积≤150㎡，或就餐座位数＜75座的餐馆
                       			</td>
                      		</tr>
                      		
                      		
						<tr>
						<td colspan="2" align="right"><input type="button" onclick="_submit()" class="btn btn-primary" width="30px" value="保存"/></td>	
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
          <!--  <b>唐山蓝普</b>-->
        </div>      
        <strong></strong>
      </footer>
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
	</div><!-- ./wrapper -->
    <!-- jQuery 2.1.4 -->
    <!--<script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    --><!-- Bootstrap 3.3.5 -->
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
