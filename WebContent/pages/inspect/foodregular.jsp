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
	  <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css">
  
</head>
<script>
	//onchange="_qyname()"
	function _qyname(){
		var name = $("#names").val();
  		if(name!= ""){
  			_myonclickname(name);
  		}
	}
	
  $(function() {
    var availableTags = [
	<c:forEach var="item" items="${qy}">   
	  "${item.qyname}",   
	</c:forEach> 
    ];
    $( "#names" ).autocomplete({
      source: availableTags
    });
  });


	function _myonclickname(name){
	
  		$.ajax({
  			url:"http://localhost:8080/tslanpu/ProductionServlet",
  			data:{method:byqynameFull, qyname:name},
  			async:false,
  			type:"post",
  			dataType:"JSON",
  			success:function(jsonData){
  				var scaddress = jsonData.byqynamePro.scaddress;//生产地址
  				var qyphone = jsonData.byqynamePro.pageCode; //企业负责人手机号
  				var qydelegate = jsonData.byqynamePro.qydelegate;//企业负责人
  				var scpermit = jsonData.byqynamePro.scpermit;//食品生产许可证编号
  				var zzcode = jsonData.byqynamePro.zzcode;//注册号
  				$("#scaddress").attr("value",'scaddress');
  				$("#qyphone").attr("value",'qyphone');
  				$("#qydelegate").attr("value",'qydelegate');
  				$("#scpermit").attr("value",'scpermit');
  				$("#zzcode").attr("value",'zzcode');
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
                  <h3>食品生产经营日常监督检查记录</h3>
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
                
                <form   id="formValidate" action="" method="post">
                  <input type="hidden" name="method" value="infor">
                  <input id="id" type="hidden" name="id">
                  <input id="page" type="hidden" name="page">
                <table class="table table-condensed">
                  <label for="names" class="" >被检查单位名称:</label>&nbsp&nbsp
                  <input onblur="_qyname()" id="names" type="text" class="inputStyle" name="name" >
                  <label class="" >地址:</label>&nbsp&nbsp
                  <input type="text" class="inputStyle" name="address" >
                  <br><br>
                  <label>企业负责人:</label>
                  <input type="text" class="inputStyle" name="qydelegate" >
                  &nbsp&nbsp&nbsp&nbsp
                  <label class="" >电话（手机号）:</label>&nbsp&nbsp
                  <input type="text" class="inputStyle" name="qyphone" >
                  <br><br>
                   <label class="" >生产许可证编号  :</label>&nbsp&nbsp
                  <input type="text" class="inputStyle" name="scpermit" >
                  &nbsp&nbsp&nbsp&nbsp
                  <label class="" >注册号/统一社会信用代码:</label>&nbsp&nbsp
                  <input type="text" class="inputStyle" name="zzcode" >
                  <br><br>
                  <label class="" >检查时间:</label>&nbsp&nbsp
                  <input type="text" class="inputStyle" name="name" >
                  <label class="" >年</label>&nbsp
                  <input type="text" class="inputStyle" name="name" >
                  <label class="" >月</label>&nbsp
                  <input type="text" class="inputStyle" name="name" >
                  <label class="" >日</label>&nbsp
                  <input type="text" class="inputStyle" name="name" >
                  <label class="" >时</label>&nbsp
                  <input type="text" class="inputStyle" name="name" >
                  <label class="" >分至</label>&nbsp
                  <input type="text" class="inputStyle" name="name" >
                  <label class="" >月</label>&nbsp
                  <input type="text" class="inputStyle" name="name" >
                  <label class="" >日</label>&nbsp
                  <input type="text" class="inputStyle" name="name" >
                  <label class="" >时</label>&nbsp
                  <input type="text" class="inputStyle" name="name" >
                  <label class="" >分</label>&nbsp
                  <br><br>
                  <label class="" >检查人员及执法证件编号:</label> 
                  <label class="" >1.姓名:</label>
                  <input type="text" class="inputStyle" name="address" >
                  <label class="" >编号:</label>
                  <input type="text" class="inputStyle" name="address" >
                  <br><br>
                  <label class="" >2.姓名:</label>
                  <input type="text" class="inputStyle" name="address" >
                  <label class="" >编号:</label>
                  <input type="text" class="inputStyle" name="address" >
                  <br><br>
                  <label>检查地点:</label>
                  <input type="text" class="inputStyle" name="principal" >
                  <br><br>
                  <label>被检查单位意见:</label>
                  <input type="text" class="inputStyle" name="principal" >
                  <br><br>
                  <label>被检查单位（法人或负责人）签字:</label>	
                  <input type="text" class="inputStyle" name="principal" >
                  <label>检查人员签字:</label>	
                  <input type="text" class="inputStyle" name="principal" >
                  <br><br>
                     &nbsp&nbsp&nbsp&nbsp<label>&nbsp&nbsp年&nbsp&nbsp月&nbsp&nbsp日</label>   &nbsp&nbsp&nbsp&nbsp
                  <label>&nbsp&nbsp年&nbsp&nbsp月&nbsp&nbsp日</label>
                  <br><br>
                  </table>
                  <table align="center" border="1">                   
                    <tbody id="tb">
                    	<tr>
                    		<th width="25%">检查项目</th>
                    		<th width="5%">序号</th>
                    		<th width="50%">检查内容</th>
                    		<th width="10%">评价</th>
                    		<th width="30">备注</th>
                    	</tr>
                    	
                    	
                    	<!--   1.0    -->
                    	<tr>
                    		<td rowspan="14">1．生产环境条件</td>
                    		<td rowspan="2">1.1</td>
                    		<td rowspan="2">厂区无扬尘、无积水，厂区、车间卫生整洁。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="oneOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*1.2</td>
                    		<td rowspan="2">厂区、车间与有毒、有害场所及其他污染源保持规定的距离。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="oneOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    			
                    		</td>
                    	</tr>
                    	
                    	<tr>
                    		<td rowspan="2">*1.3</td>
                    		<td rowspan="2">卫生间应保持清洁，应设置洗手设施，未与食品生产、包装或贮存等区域直接连通。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="oneOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">1.4</td>
                    		<td rowspan="2">有更衣、洗手、干手、消毒设备、设施，满足正常使用。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="oneOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">1.5</td>
                    		<td rowspan="2">通风、防尘、照明、存放垃圾和废弃物等设备、设施正常运行。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="oneOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">1.6</td>
                    		<td rowspan="2">车间内使用的洗涤剂、消毒剂等化学品应与原料、半成品、成品、包装材料等分隔放置，并有相应的使用记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="oneOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">1.7</td>
                    		<td rowspan="2">定期检查防鼠、防蝇、防虫害装置的使用情况并有相应检查记录，生产场所无虫害迹象。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="oneOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	
                    	
                    	<!--   2.0    -->
                    	<tr>
                    		<td rowspan="6">2．进货查验结果<br/> 注：①检查原辅料仓库；②原辅料品种随机抽查，不足2种的全部检查。</td>
                    		<td rowspan="2">*2.1</td>
                    		<td rowspan="2">查验食品原辅料、食品添加剂、食品相关产品供货者的许可证、产品合格证明文件；供货者无法提供有效合格证明文件的食品原料，有检验记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="twoOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    		<tr>
                    		
                    		<td rowspan="2">*2.2</td>
                    		<td rowspan="2">进货查验记录及证明材料真实、完整，记录和凭证保存期限不少于产品保质期期满后六个月，没有明确保质期的，保存期限不少于二年。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="twoOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    		<tr>
                    		<td rowspan="2">2.3</td>
                    		<td rowspan="2">建立和保存食品原辅料、食品添加剂、食品相关产品的贮存、保管记录和领用出库记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="twoOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	
                    	
                    	<!--   3.0    -->
                    	<tr>
                    		<td rowspan="30">3．生产过程控制<br/>注：在成品库至少抽取2批次产品，按生产日期或批号追溯生产过程记录及控制的全部检查，有专供特定人群的产品至少抽查1个产品。</td>
                    		<td rowspan="2">3.1</td>
                    		<td rowspan="2">有食品安全自查制度文件，定期对食品安全状况进行自查并记录和处置</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*3.2</td>
                    		<td rowspan="2">使用的原辅料、食品添加剂、食品相关产品的品种与索证索票、进货查验记录内容一致。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*3.3</td>
                    		<td rowspan="2">建立和保存生产投料记录，包括投料种类、品名、生产日期或批号、使用数量等。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*3.4</td>
                    		<td rowspan="2">未发现使用非食品原料、回收食品、食品添加剂以外的化学物质、超过保质期的食品原料和食品添加剂生产食品。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*3.5</td>
                    		<td rowspan="2">未发现超范围、超限量使用食品添加剂的情况。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">3.6</td>
                    		<td rowspan="2">生产或使用的新食品原料，限定于国务院卫生行政部门公告的新食品原料范围内。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*3.7</td>
                    		<td rowspan="2">未发现使用药品、仅用于保健食品的原料生产食品。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*3.8</td>
                    		<td rowspan="2">生产记录中的生产工艺和参数与企业申请许可时提供的工艺流程一致。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*3.9</td>
                    		<td rowspan="2">建立和保存生产加工过程关键控制点的控制情况记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">3.10</td>
                    		<td rowspan="2">生产现场未发现人流、物流交叉污染。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">3.11</td>
                    		<td rowspan="2">未发现原辅料、半成品与直接入口食品交叉污染。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">3.12</td>
                    		<td rowspan="2">有温、湿度等生产环境监测要求的，定期进行监测并记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">3.13</td>
                    		<td rowspan="2">生产设备、设施定期维护保养并做好记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*3.14</td>
                    		<td rowspan="2">未发现标注虚假生产日期或批号的情况。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">3.15</td>
                    		<td rowspan="2">工作人员穿戴工作衣帽，生产车间内未发现与生产无关的个人或者其他与生产不相关物品，员工洗手消毒后进入生产车间。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<!--   4.0    -->
                    	<tr>
                    		<td rowspan="10">4．产品检验结果<br/>注：采取抽查方式</td>
                    		<td rowspan="2">4.1</td>
                    		<td rowspan="2">企业自检的，应具备与所检项目适应的检验室和检验能力，有检验相关设备及化学试剂，检验仪器设备按期检定。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">4.2</td>
                    		<td rowspan="2">不能自检的，应当委托有资质的检验机构进行检验。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*4.3</td>
                    		<td rowspan="2">有与生产产品相适应的食品安全标准文本，按照食品安全标准规定进行检验。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*4.4</td>
                    		<td rowspan="2">建立和保存原始检验数据和检验报告记录，检验记录真实、完整。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">4.5</td>
                    		<td rowspan="2">按规定时限保存检验留存样品并记录留样情况。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<!--   5.0    -->
                    	<tr>
                    		<td rowspan="16">5．贮存及交付控制<br/>注：采取抽查方式，有冷链要求的产品必须检查冷链情况。</td>
                    		<td rowspan="2">*5.1</td>
                    		<td rowspan="2">原辅料的贮存有专人管理，贮存条件符合要求。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*5.2</td>
                    		<td rowspan="2">食品添加剂应当专门贮存，明显标示，专人管理。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">5.3</td>
                    		<td rowspan="2">不合格品应在划定区域存放。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">5.4</td>
                    		<td rowspan="2">根据产品特点建立和执行相适应的贮存、运输及交付控制制度和记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">5.5</td>
                    		<td rowspan="2">仓库温湿度应符合要求。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">5.6</td>
                    		<td rowspan="2">生产的产品在许可范围内。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">5.7</td>
                    		<td rowspan="2">有销售台账，台账记录真实、完整。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">5.8</td>
                    		<td rowspan="2">销售台账如实记录食品的名称、规格、数量、生产日期或者生产批号、检验合格证明、销售日期以及购货者名称、地址、联系方式等内容。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	 
                    	<!--   6.0    -->
                    	<tr>
                    		<td rowspan="8">6．不合格品管理和食品召回<br/>注：采取抽查方式</td>
                    		<td rowspan="2">6.1</td>
                    		<td rowspan="2">建立和保存不合格品的处置记录，不合格品的批次、数量应与记录一致。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*6.2</td>
                    		<td rowspan="2">实施不安全食品的召回，有召回计划、公告等相应记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">6.3</td>
                    		<td rowspan="2">召回食品有处置记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">6.4</td>
                    		<td rowspan="2">未发现使用召回食品重新加工食品情况（对因标签存在瑕疵实施召回的除外）。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	
                    	<!--   7.0    -->
                    	<tr>
                    		<td rowspan="12">7．从业人员管理</td>
                    		<td rowspan="2">7.1</td>
                    		<td rowspan="2">有食品安全管理人员、检验人员、负责人。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">7.2</td>
                    		<td rowspan="2">有食品安全管理人员、检验人员、负责人培训和考核记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*7.3</td>
                    		<td rowspan="2">未发现聘用禁止从事食品安全管理的人员。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">7.4</td>
                    		<td rowspan="2">企业负责人在企业内部制度制定、过程控制、安全培训、安全检查以及食品安全事件或事故调查等环节履行了岗位职责并有记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">*7.5</td>
                    		<td rowspan="2">建立从业人员健康管理制度，直接接触食品人员有健康证明，符合相关规定。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">7.6</td>
                    		<td rowspan="2">有从业人员食品安全知识培训制度，并有相关培训记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<!--   8.0    -->
                    	<tr>
                    		<td rowspan="6">8．食品安全事故处置。</td>
                    		<td rowspan="2">8.1</td>
                    		<td rowspan="2">有定期排查食品安全风险隐患的记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">8.2</td>
                    		<td rowspan="2">有按照食品安全应急预案定期演练，落实食品安全防范措施的记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">8.3</td>
                    		<td rowspan="2">发生食品安全事故的，有处置食品安全事故记录。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<!--   9.0    -->
                    	<tr>
                    		<td rowspan="6">9．食品添加剂生产者管理</td>
                    		<td rowspan="2">*9.1</td>
                    		<td rowspan="2">原料和生产工艺符合产品标准规定。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrOneDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">9.2</td>
                    		<td rowspan="2">复配食品添加剂配方发生变化的，按规定报告。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td rowspan="2">9.3</td>
                    		<td rowspan="2">食品添加剂产品标签载明“食品添加剂”，并标明贮存条件、生产者名称和地址、食品添加剂的使用范围、用量和使用方法。</td>
                    		<td rowspan="2">
                    			&nbsp&nbsp<input type="radio" name="oneOrOne" value="1"/>是&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" name="oneOrOne" value="0"/>否
                    		</td>
                    		<td rowspan="2">
                    			<textarea class="textareaStyle" name="threeOrTwoDescribe"></textarea>
                    		</td>
                    	</tr>
                    	<tr>
                    		<td>
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
