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
                  <h3>餐饮消费环节食品安全隐患现场排查清单</h3>
               </div><!-- /.box-header -->
                <div class="box-body">
                
                
                <form  id="formValidate" action="" method="post">
                
                  <table align="center" border="1">                   
                    <tbody id="tb">
                    	<tr>
                    		<th width="5%">序号</th>
                    		<th width="60%">隐患要点</th>
                    		<th width="30">检查结果</th>
                    	</tr>
                    	
                    	<tr>
                    		<td>1</td>
                    		<td>
                    			未取得卫生许可从事餐饮经营活动
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="one"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>2</td>
                    		<td>
                    			餐饮企业卫生管理制度不健全，无专职或兼职卫生管理人员
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="two"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>3</td>
                    		<td>
                    			从业人员未经健康体检和岗前培训
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="three"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>4</td>
                    		<td>
                    			经营场所内外环境不整洁，无消毒、更衣、盥洗、采光、照明、通风、防尘、防蝇、防鼠、洗涤、污水排放、存放垃圾和废弃物的设施设备，或设施设备使用不正常
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="four"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>5</td>
                    		<td>
                    			经营者采购的食品、食品原料、调料、食品添加剂不符合国家有关卫生标准和规定要求，未实行索证索票制度
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="five"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>6</td>
                    		<td>
                    			食品储藏场所、储藏方式不符合卫生要求，与有毒有害物品、个人物品混放
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="six"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>7</td>
                    		<td>
                    			服务人员未穿着整洁的工作服、帽，未按要求搞好个人卫生
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="seven"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>8</td>
                    		<td>
                    			食品用器具不符合卫生规定标准和办法要求，器具未按要求消毒和存放
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="eight"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>9</td>
                    		<td>
                    			整体布局不合理，厨房、凉菜间不分。原料、半成品、成品混放
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="nine"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>10</td>
                    		<td>
                    			供顾客自取的饮料、调料、器具不符合卫生要求。使用非食品用包装材料包装食品
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="ten"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>11</td>
                    		<td>
                    			从业人员上岗时有吸烟等有碍食品卫生的行为
                    		</td>
                    		<td>
                    			<textarea  class="textareaStyle" name="eleven"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>12</td>
                    		<td>
                    			食品原料未按规定洗净、消毒、存放
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="twelve"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>13</td>
                    		<td>
                    			需要熟制加工的食品未烧熟煮透，存放食物未经充分再加热即供食用
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="eighteen"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>14</td>
                    		<td>
                    			提供过期变质食品给顾客
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="fourteen"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>15</td>
                    		<td>
                    			在食品中加入不允许添加的物质，或把非食品当做食品提供给顾客
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="fifteen"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>16</td>
                    		<td>
                    			用水不符合生活饮用水卫生标准
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="sixteen"></textarea>
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td>17</td>
                    		<td>
                    			学校食堂制售冷荤凉菜供学生食用
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="seventeen"></textarea>
                    		</td>
                    	</tr>
                    	
                    	
                    	<tr>
                    		<td>18</td>
                    		<td>
                    			根据法律、法规和有关规定，其他可以视为食品安全隐患的情况
                    		</td>
                    		<td>
                    			<textarea class="textareaStyle" name="eighteen"></textarea>
                    		</td>
                    	</tr>
                    	
                    	
                    </tbody>
                  </table>
                  <input type="button" onclick="_click()" value="提交">
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
