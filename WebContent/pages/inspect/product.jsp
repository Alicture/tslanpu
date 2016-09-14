<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>食品安全动态监管系统</title>
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
	 </head>
  <script type="text/javascript">
  	
  	
  	function _click(){
		$.ajax({
			url:"${pageContext.request.contextPath}/JdProductionServlet",
			data:$("#formValidate").serialize(),
			type:"post",
			async:"false",
			success:function(jsonData){
				alert(jsonData);
			}
		});
	}
	
  </script>
  <style>
		.textareaStyle{width:100%;height:100%; border: 0}
  </style>
  <style>
  		.inputStyle{width:200px; BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: solid}
  </style>
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
                  <h3>食品生产加工单位现场情况检查表</h3>
               </div><!-- /.box-header -->
                <div class="box-body">
                
                <form id="formPro" action="${pageContext.request.contextPath }/ProductionServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idP" name="idP">
                </form>
                
                <form id="formFood" action="${pageContext.request.contextPath }/FoodServlet" method="post">
                	<input type="hidden" name="method" value="infor">
                	<input type="hidden" id="idF" name="idF">
                </form>
                
                <form  id="formValidate" action="" method="post">
                
                  <input type="hidden" name="method" value="infor">
                  <input id="id" type="hidden" name="id">
                  <input id="page" type="hidden" name="page">
                
                  <label class="" >被检查单位名称:</label>&nbsp&nbsp
                  <input type="text" class="inputStyle" name="name" >
                  &nbsp&nbsp&nbsp&nbsp
                  <label class="" >地址:</label>&nbsp&nbsp
                  <input type="text" class="inputStyle" name="address" >
                  <br><br>
                  <label>负责人:</label>
                  <input type="text" class="inputStyle" name="principal" >
                  &nbsp&nbsp&nbsp&nbsp
                  <label class="" >电话:</label>&nbsp&nbsp
                  <input type="text" class="inputStyle" name="tel" >
                  &nbsp&nbsp&nbsp&nbsp
                  <label class="" >产品名称:</label>&nbsp&nbsp
                  <input type="text" class="inputStyle" name="produce" >
                  
                  <br><br>
                  <table align="center" border="1">                   
                    <tbody id="tb">
                    	<tr>
                    		<th width="25%">检查项目</th>
                    		<th width="5%">序号</th>
                    		<th colspan="2" width="30%">检查情况</th>
                    		<th width="30">检查发现问题的描述</th>
                    	</tr>
                    	
                    	
                    	<!--   1.0    -->
                    	<tr>
                    		<td rowspan="4">企业资质</td>
                    		<td rowspan="2">1.1</td>
                    		<td rowspan="2">工商营业执照(或核名手续)</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="oneOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="oneOrOne" value="0"/>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">1.2</td>
                    		<td rowspan="2">食品生产许可证(或登记备案证)</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrTwo" value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="oneOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="oneOrTwo" value="0"/>
                    		</td>
                    	</tr>
                    	
                    	
                    	<!--   2.0    -->
                    	<tr>
                    		<td rowspan="2">采购查验</td>
                    		<td rowspan="2">2.1</td>
                    		<td rowspan="2">采购食品原辅材料索证</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="twoOrOne"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="twoOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="twoOrOne" value="0"/>
                    		</td>
                    	</tr>
                    	
                    	
                    	<!--   3.0    -->
                    	<tr>
                    		<td rowspan="4">生产环境情况</td>
                    		<td rowspan="2">3.1</td>
                    		<td rowspan="2">厂区内环境清洁卫生状况</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="threeOrOne"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="threeOrOne"  value="0"/>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">3.2</td>
                    		<td rowspan="2">生产加工场所清洁卫生状况</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="threeOrTwo"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="threeOrTwo"  value="0"/>
                    		</td>
                    	</tr>
                    	
                    	<!--   4.0    -->
                    	<tr>
                    		<td rowspan="10">食品标识<br/>标注符合情况</td>
                    		<td rowspan="2">4.1</td>
                    		<td rowspan="2">名称、规格、净含量、生产日期、配料表</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="fourOrOne"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="fourOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="fourOrOne"  value="0"/>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td rowspan="2">4.2</td>
                    		<td rowspan="2">生产者的名称、地址、联系方式</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="fourOrTwo"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="fourOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="fourOrTwo" value="0"/>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td rowspan="2">4.3</td>
                    		<td rowspan="2">保质期、储存条件</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="fourOrThree"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="fourOrThreeDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="fourOrThree" value="0"/>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td rowspan="2">4.4</td>
                    		<td rowspan="2">产品标准代号</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="fourOrFour"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="fourOrFourDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="fourOrFour" value="0"/>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td rowspan="2">4.5</td>
                    		<td rowspan="2">生产许可证编号及QS标志</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="fourOrFive"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="fourOrFiveDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="fourOrFive" value="0"/>
                    		</td>
                    	</tr>
                    	
                    	
                    	<!--   5.0    -->
                    	<tr>
                    		<td rowspan="8">食品销售<br/>台账记录情况</td>
                    		<td rowspan="2">5.1</td>
                    		<td rowspan="2">产品名称</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="fiveOrOne"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="fiveOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="fiveOrOne" value="0"/>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td rowspan="2">5.2</td>
                    		<td rowspan="2">数量</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="fiveOrTwo"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="fiveOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="fiveOrTwo" value="0"/>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td rowspan="2">5.3</td>
                    		<td rowspan="2">保质期、储存条件</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="fiveOrThree"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="fiveOrThreeDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="fiveOrThree" value="0"/>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td rowspan="2">5.4</td>
                    		<td rowspan="2">购货者名称及联系方式</td>
                    		<td>
                    			发现问题&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="fiveOrFour"  value="1"/>
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="fiveOrFourDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			未发现问题<input type="radio" name="fiveOrFour" value="0"/>
                    		</td>
                    	</tr>
                    	
                    	<!--   6.0    -->
                    	<tr>
                    		<td rowspan="2">检查结论及处理意见</td>
                    		<td colspan="4">
                    			<textarea class="textareaStyle" name="result"></textarea>
                    		</td>
                    	</tr>
                    	<tr><td></td></tr>
                    	
                    	
                    	<!--   7.0    -->
                    	<tr>
                    		<td rowspan="2" colspan="3">
                    			检查人员签名：
                    			<input type="text" style="border: 0;" name="jcryName">
                    			<br><br>
                    			<div align="right">日期：<input type="text" style="border: 0;" name="jcDate"></div>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2" colspan="2">
                    			被检查单位负责人签名：
                    			<input type="text" style="border: 0;" name="bjcryName">
                    			<br><br>
                    			<div align="right">日期：<input type="text" style="border: 0;" name="bjcDate"></div>
                    		</td>
                    	</tr>
                    </tbody>
                  </table>
                  <br><br>
                  <input type="button" class="btn btn-primary" onclick="_click()" value="提交">
                  <div id="divAction" style="text-align: left;">
                  </div>
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

    
    <script src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath }/plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <script src="${pageContext.request.contextPath }/plugins/fastclick/fastclick.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/js/app.min.js"></script>
    <script src="${pageContext.request.contextPath }/dist/js/demo.js"></script>
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
