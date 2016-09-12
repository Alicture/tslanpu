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
    	/*
    	$(function(){
    		//$("tbody>tr>td>input").attr("readonly", readonly);
    		if(${groupid eq 1})
    		{
    			$(":input[readonly]").removeAttr("readonly");
    			$("#textarea").removeAttr("readonly");
    			$("#selectId").removeAttr("disabled");
    			$(":checkbox").removeAttr("disabled");
    		}
    	});
    	*/		
    			//产品执行标准
    			var chanpinName1 = '${production.chanpinName}';
                var zxbzName1 = '${production.zxbzName}';
                var zxbzCode1 = '${production.zxbzCode}';
                var beian1 = '${production.beian}';
                var chanpinName = new Array();
                var zxbzName = new Array();
                var zxbzCode = new Array();
                var beian = new Array(); 
                 chanpinName = chanpinName1.split(",");
                 zxbzName = zxbzName1.split(",");
                 zxbzCode = zxbzCode1.split(",");
                 beian = beian1.split(",");
                 
                 //产品明细
                var cpName1 = '${production.cpName}';
                var guiGe1 = '${production.guiGe}';
                var nianChanLiang1 = '${production.nianChanLiang}';
                var cpName = new Array();
                var guiGe = new Array();
                var nianChanLiang = new Array();
                 cpName = cpName1.split(",");
                 guiGe = guiGe1.split(",");
                 nianChanLiang = nianChanLiang1.split(",");
                 
                 //食品添加剂使用情况	
                var additive1 = '${production.additive}';
                var additiveComposition1 = '${production.additiveComposition}';
                var addFoodName1 = '${production.addFoodName}';
                var maxAmount1 = '${production.maxAmount}';
                var amount1 = '${production.addFoodName}';
                var handlers1 = '${production.handlers}';
                var additive = new Array();
                var additiveComposition = new Array();
                var addFoodName = new Array();
                var maxAmount = new Array(); 
                var amount = new Array();
                var handlers = new Array();
                 additive = additive1.split(",");
                 additiveComposition = additiveComposition1.split(",");
                 addFoodName = addFoodName1.split(",");
                 maxAmount = maxAmount1.split(",");
                 amount = amount1.split(",");
                 handlers = handlers1.split(",");
                 
                 
    	$(function(){
   			//产品执行标准
               var table1 = "";
               var j = 0;
               for(i=0; i<chanpinName.length;i++){
               	j++;
               	table1+="<tr><td>"+ j + "</td><td><input type='text'  name='chanpinName' value='" + chanpinName[i] +"'/></td>"+
               						"<td><input type='text'  name='zxbzName' value='" + zxbzName[i] +"'/>" +
               	      "</td><td><input type='text'  name='zxbzCode' value='" + zxbzCode[i] +"'/></td>"+
               	      "<td><input type='text'  name='beian' value='" + beian[i] +"'/></td>" + 
               	      "<td><a href=javascript:void(0) onclick=delete1('"+"table1"+count+"')>删除</a></td></tr>";
               }
               $("#table1").append(table1);
               
               //产品明细
               var table2 = "";
               var j = 0;
               for(i=0; i<cpName.length;i++){
               	j++;
               	table2+="<tr><td>"+ j + "</td><td><input type='text'  name='cpName' value='" + cpName[i] +"'/></td>"+
               							"<td><input type='text'  name='guiGe' value='" + guiGe[i] +"'/>" +
               	      					"</td><td><input type='text'  name='nianChanLiang' value='" + nianChanLiang[i] +"'/></td>" +
               	     				 	"<td><a href=javascript:void(0) onclick=delete2('"+"table2"+count2+"')>删除</a></td></tr>";
               }
               $("#table2").append(table2);
               
               //食品添加剂使用情况	
               var table3 = "";
               var j = 0;
               for(i=0; i<additive.length;i++){
               	j++;
               	table3+="<tr><td>"+ j + "</td><td><input type='text'  name='additive' value='" +additive[i] +"'/></td>" +
               							"<td><input type='text'  name='additiveComposition' value='" + additiveComposition[i] +"'/></td>" +
               	      					"<td><input type='text'  name='addFoodName' value='" + addFoodName[i] +"'/></td>"+
               	     					"<td><input type='text' name='maxAmount' value='" + maxAmount[i] +"'/></td>"+
               	      					"<td><input type='text' name='amount' value='" + amount[i] +"'/>"+
               	      					"</td><td><input type='text' name='handlers' value='" + handlers[i] +"'/></td>"+
               	      					"<td><a href=javascript:void(0) onclick=delete3('"+"table3"+count3+"')>删除</a></td></tr>";
               }
               $("#table3").append(table3);
                
            });
    	
    	
    		 //产品执行标准
    		var b=chanpinName.length;
		  	var count = 1;
			function addNew()
			{
				b++; 
				tr=document.all.table1.insertRow(); 
				tr.insertCell().innerHTML='<div   align=left>'+b+'</div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text	  name=chanpinName  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=zxbzName  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=zxbzCode  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=beian  class=border_index></div>';
				tr.insertCell().innerHTML="<a href=javascript:void(0) onclick=delete1('"+"table1"+count+"')>删除</a>";
				count++;
			}
			function  delete1(aa){
			 	document.all.table1.deleteRow(window.event.srcElement.parentElement.parentElement.rowIndex);   
			}
			
			 //产品明细
			var j=cpName.length;
		  	var count2 = 1;
			function addNew2()
			{
				j++;   
				tr=document.all.table2.insertRow(); 
				tr.insertCell().innerHTML='<div   align=left>'+j+'</div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=cpName  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=guiGe  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=nianChanLiang  class=border_index></div>';   
				tr.insertCell().innerHTML="<a href=javascript:void(0) onclick=delete2('"+"table2"+count2+"')>删除</a>";
				count2++;
			}
			function  delete2(aa){
			 	document.all.table2.deleteRow(window.event.srcElement.parentElement.parentElement.rowIndex);   
			}
			
			//食品添加剂使用情况	
			var k=chanpinName.length;
		  	var count3 = 1;
			function addNew3()
			{
				k++;   
				tr=document.all.table3.insertRow(); 
				tr.insertCell().innerHTML='<div   align=left>'+k+'</div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=additive  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=additiveComposition  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=addFoodName  class=border_index></div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=maxAmount  class=border_index></div>';
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=amount  class=border_index></div>';
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=handlers  class=border_index></div>';
				tr.insertCell().innerHTML="<a href=javascript:void(0) onclick=delete3('"+"table3"+count3+"')>删除</a>";
				count3++;
			}
			function  delete3(aa){
			 	document.all.table3.deleteRow(window.event.srcElement.parentElement.parentElement.rowIndex);   
			}
			
			
	        
        function sumbit_sure(id){
        	
	    	/*if(${groupid eq 0}){
	    			alert("对不起您没有权限");
	    			return false;
	    	}*/
	    	
	   		var sub = confirm("确定要修改吗？");
	   		if(sub == true){
	   			return true;
	   		}else{
	   			return false;
	   		}
	    }
	    
    	function onclick1(id){
    		
    		/*if(${groupid eq 0}){
    			alert("对不起您没有权限");
    			return false;
    		}*/
    		
    		var sub = confirm("确定要删除吗？");
    		if(sub == true){
	   			$.ajax({
					url:"${pageContext.request.contextPath }/ProductionServlet",
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
                  <h3>食品生产企业信用档案</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                <form id="deleteForm" action="" method="post">
                	<input type="hidden" name="method" value="delete">
                	<input type="hidden" name="idP" value="${production.id }">
                	<input type="hidden" name="pageCode" value="${pageCode }">
                </form>
                
                <!-- 打印 -->
                <form id="printForm" action="${pageContext.request.contextPath }/ProductionServlet" method="post">
                	<input type="hidden" name="method" value="print">
                	<input type="hidden" name="idP" value="${production.id }">
                </form>
                
                <form action="${pageContext.request.contextPath }/ProductionServlet" method="post" onsubmit="return sumbit_sure()" >
                <input type="hidden" name="method" value="update">
                <input type="hidden" name="idP" value="${production.id}">
                  <label class="pull-left">最后修改人: ${production.amend }</label>
                  
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
                        <td><input id="qyname" type="text" style="width:280px" name="qyname" value="${production.qyname }"/></td>
						<td>所属行政区域</td>
                        <td>
                        	<select id="address" style="width:280px" name="address">
                        			<option value="0">请选择</option>
                 			  <c:forEach items="${addressList}" var="addressLis">
                  		          <option  value="${addressLis.position }" <c:if test="${production.address eq addressLis.position }">selected='selected'</c:if>>${addressLis.position }</option>
                 			  </c:forEach>	
                           </select>
                       </td>
					 </tr>
					  <tr>
                        <td>生产地址(具体到门牌号)</td>
                        <td><input id="scaddress" type="text" style="width:280px" name="scaddress" value="${production.scaddress }"/>
                        	<br>
                        <input type='button' id='search_address' value='点击生成经纬度' onclick="searchAddress()"/>
                        </td>
                        <td>邮政编码</td>
                        <td><input id="ems" type="text" style="width:280px" name="ems" value="${production.ems }"/></td>                   
                      </tr>
					  <tr>
                        <td>固定电话</td>
                        <td><input id="phone" type="text" style="width:280px" name="phone" value="${production.phone }"/></td>
						<td>传    真</td>
                        <td><input id="fax" type="text" style="width:280px" name="fax" value="${production.fax }"/></td>
                      </tr>
					  <tr>                        
                        <td>电子邮箱</td>
                        <td><input id="email" type="text" style="width:280px" name="email" value="${production.email }"/></td>
						<td>经济类型</td>
                        <td> <select id="" style="width:280px" name="jjtype">
                  		          <option  value="" >请选择</option>
                  		          <option  value="国有" <c:if test="${production.jjtype eq '国有' }">selected='selected'</c:if> >国有</option>
                  		          <option  value="集体" <c:if test="${production.jjtype eq '集体' }">selected='selected'</c:if>>集体</option>
                  		          <option  value="私营" <c:if test="${production.jjtype eq '私营' }">selected='selected'</c:if>>私营</option>
                  		          <option  value="个体" <c:if test="${production.jjtype eq '个体' }">selected='selected'</c:if>>个体</option>
                  		          <option  value="联营" <c:if test="${production.jjtype eq '联营' }">selected='selected'</c:if>>联营</option>
                  		          <option  value="股份制" <c:if test="${production.jjtype eq '股份制' }">selected='selected'</c:if>>股份制</option>
                  		          <option  value="外资" <c:if test="${production.jjtype eq '外资' }">selected='selected'</c:if>>外资</option>
                  		          <option  value="其他" <c:if test="${production.jjtype eq '其他' }">selected='selected'</c:if>>其他</option>
                           </select>
                        </td>
                      </tr>
					  <tr> 
						<td>登记机关</td>
                        <td><input id="gsorganization" type="text" style="width:280px" name="gsorganization" value="${production.gsorganization }"/></td>
                        <td>注册号/统一社会信用代码</td>
                        <td><input id="zzcode" type="text" style="width:280px" name="zzcode" value="${production.zzcode }"/></td>
                      </tr>
                      
                      
                      
                      <tr>
                        <td>成立日期</td>
                        <td><input id="cldate" type="text" style="width:280px" name="cldate" value="${production.cldate }"/></td>
						<td>年总产值(万元)</td>
                        <td><input id="nzyield" type="text" style="width:280px" name="nzyield" value="${production.nzyield }"/></td>
                      </tr>
                      <tr>
                        <td>法定代表人</td>
                        <td><input id="fddelegate" type="text" style="width:280px" name="fddelegate" value="${production.fddelegate }"/></td>
						<td>电话(手机)号</td>
                        <td><input id="fdphone" type="text" style="width:280px" name="fdphone" class="" value="${production.fdphone }"/></td>
                      </tr>
                      <tr>
                        <td>企业负责人</td>
                        <td><input id="qydelegate" type="text" style="width:280px" name="qydelegate" class="" value="${production.qydelegate }"/></td>
						<td>电话(手机)号</td>
                        <td><input id="qyphone" type="text" style="width:280px" name="qyphone" class="" value="${production.qyphone }"/></td>
                      </tr>
                      <tr>
                        <td>从业人员数量</td>
                        <td><input id="cynumber" type="text" style="width:280px" name="cynumber" class="" value="${production.cynumber }"/></td>
						 <td>化验人员数量</td>
                        <td><input id="assay" type="text" style="width:280px" name="assay" class="" value="${production.assay }"/></td>
                      </tr>
                      <tr>
                        <td>监管单位</td>
                      	<td><select style="width:280px" id="selectId" name="department">
                      				<option value="0">请选择</option>
                      			<c:forEach items="${unitList}" var="list">
                        			<option value="${list.department }" <c:if test="${production.department eq list.department }">selected='selected'</c:if> >${list.department }</option>
                        		</c:forEach>
                            </select>
                        </td>
						<td>监管人员</td>
                        <td><input id="spdelegate" type="text" style="width:280px" name="spdelegate" class="" value="${production.spdelegate }"/></td>
                      </tr>
                      <tr>
                        <td>监督人员</td>
                        <td><input id="jiandurenyuan" type="text" style="width:280px" class="" name="jiandurenyuan" value="${production.jiandurenyuan }"/></td>
						<td>协管人员</td>
                        <td><input id="xieguanrenyuan" type="text" style="width:280px" class="" name="xieguanrenyuan" value="${production.xieguanrenyuan }"/></td>
                      </tr>
                      <tr>
                       <td>生产许可证编号</td>
                        <td><input id="scpermit" type="text" style="width:280px" name="scpermit" class="" value="${production.scpermit }"/></td>
						<td>发证机关</td>
                        <td><input id="fazhengjiguan" type="text" style="width:280px" class="" name="fazhengjiguan" value="${production.fazhengjiguan }"/></td>
                      </tr>
                      <tr>
                        <td>发证日期</td>
                        <td><input id="fazhengriqi" type="text" style="width:280px" class="" name="fazhengriqi" value="${production.fazhengriqi }"/></td>
						<td>有效日期</td>
                        <td><input id="youxiaodate" type="text" style="width:280px" class="" name="youxiaodate" value="${production.youxiaodate }"/></td>
                      </tr>
                      <tr>
                        <td>经度</td>
                        <td><input id="longitude" type="text" style="width:280px" class="" name="longitude" value="${production.longitude }"/></td>
						<td>纬度</td>
                        <td><input id="latitude" type="text" style="width:280px" class="" name="latitude" value="${production.latitude }"/></td>
                      </tr>
					 
					  <tr>
                        <td><b>二、企业管理认证情况</b></td>                 
                      </tr>
					  <tr>
                        <td><input id="isoapprove" type="checkbox" value="ISO质量体系认证" name="isoapprove" <c:if test="${production.isoapprove eq 'ISO质量体系认证' }">checked='checked'</c:if>>
                        	&nbsp&nbsp&nbspISO质量体系认证</td>
                        <td><input id="hacccpapprove" type="checkbox" value="HACCP认证" name="hacccpapprove" <c:if test="${production.hacccpapprove eq 'HACCP认证' }">checked='checked'</c:if>>
                        	&nbsp&nbsp&nbspHACCP认证</td>
                        <td><input id="wghapprove" type="checkbox" value="无公害食品认证" name="wghapprove" <c:if test="${production.wghapprove eq '无公害食品认证' }">checked='checked'</c:if>>
                        	&nbsp&nbsp&nbsp无公害食品认证</td>                        
                      </tr>
					  <tr>
                        <td><input id="lsapprove" type="checkbox" value="绿色食品认证" name="lsapprove" <c:if test="${production.lsapprove eq '绿色食品认证' }">checked='checked'</c:if>>
                        	&nbsp&nbsp&nbsp绿色食品认证</td>
						<td><input id="yjapprove" type="checkbox" value="有机食品认证" name="yjapprove" <c:if test="${production.yjapprove eq '有机食品认证' }">checked='checked'</c:if>>
							&nbsp&nbsp&nbsp有机食品认证</td>
						<td><input id="capprove" type="checkbox" value="标志认证" name="capprove" <c:if test="${production.capprove eq '标志认证' }">checked='checked'</c:if>>
							&nbsp&nbsp&nbsp标志认证</td>                   
                      </tr>
					  
					  <tr>
                        <td><b>三、产品执行标准</b></td>
                      </tr>
                      <tr>
                      	<td colspan="4">
	                      	<table class="table table-condensed"  id="table1">    
								<tr>
			      			 		<td width="5%">序号</td> 
			    				    <td width="20%">产品名称</td> 
			    	       	 		<td width="20%">执行标准名称</td>  
			    	      	 		<td width="20%">执行标准编号</td>
			    	      	 		<td width="20%">是否备案</td> 
			    	      			<td width="15%"> <a href="javascript:void(0)"   onclick="addNew()">添加明细</a></td>  
		    	    			</tr> 
	         				</table>
         				</td>
                      </tr>
                      
                      <tr>
                        <td align="left"><b>四、产品明细</b></td>
                      </tr>
                      <tr>
                      	<td colspan="4">
	                      	<table class="table table-condensed"  id="table2">    
								<tr>
			      			 		<td width="5%">序号</td> 
			      			 		<td width="20%">产品名称</td>
			    				    <td width="20%">规格</td> 
			    	       	 		<td width="20%">年产量</td>  
			    	      			<td width="20%"> <a href="javascript:void(0)"   onclick="addNew2()">添加明细</a></td>  
		    	    			</tr>  
	         				</table>
         				</td>
                      </tr>
                      
                      <tr>
                        <td><b>五、食品添加剂使用情况</b></td>
                      </tr>
                      <tr>
                      	<td colspan="4">
	                      	<table class="table table-condensed" width="100%" cellspacing="1" id="table3">    
								<tr>
			      			 		<td width="5%">序号</td> 
			    				    <td width="15%">添加剂名称</td> 
			    	       	 		<td width="15%">添加剂主要成分</td>  
			    	      	 		<td width="15%">需要添加食品名称</td>
			    	      	 		<td width="15%">标准规格最大使用量(g/kg)</td>
			    	      	 		<td width="10%">实际用量(g/kg)</td>
			    	      	 		<td width="10%">操作者</td> 
			    	      			<td width="10%"> <a href="javascript:void(0)"   onclick="addNew3()">添加明细</a></td>  
		    	    			</tr>
	         				</table>
         				</td>
                      </tr>
                      
                      
                      <tr>
                        <td><b>六、委托加工备案情况</b></td>
                      </tr>
                      <tr>
                      	<td>产品类别</td>
                        <td><input id="chanPinLeiBie" type="text" style="width:280px" class="" name="chanPinLeiBie" value="${production.chanPinLeiBie }"/></td>
						<td>委托加工产品名称</td>
                        <td><input id="wtChanPinName" type="text" style="width:280px" class="" name="wtChanPinName" value="${production.wtChanPinName }"/></td>
                      </tr>
                      
                      <tr>
                      	<td>委托方企业名称</td>
                        <td><input id="wtQyName" type="text" style="width:280px" class="" name="wtQyName" value="${production.wtQyName }"/></td>
						<td>生产地址</td>
                        <td><input id="wtScAddress" type="text" style="width:280px" class="" name="wtScAddress" value="${production.wtScAddress }"/></td>
                      </tr>
                      
                      <tr>
                      	<td>委托方联系人</td>
                        <td><input id="wtLinkman" type="text" style="width:280px" name="wtLinkman" value="${production.wtLinkman }"/></td>
						<td>联系电话</td>
                        <td><input id="wtTel" type="text" style="width:280px" name="wtTel" value="${production.wtTel }"/></td>
                      </tr>
                      
                      <tr>
                      	<td>被委托方企业名称</td>
                        <td><input id="bwtQyName" type="text" style="width:280px" name="bwtQyName" value="${production.bwtQyName }"/></td>
						<td>生产地址</td>
                        <td><input id="bwtScAddress" type="text" style="width:280px" name="bwtScAddress" value="${production.bwtScAddress }"/></td>
                      </tr>
                      
                      <tr>
                      	<td>被委托方联系人</td>
                        <td><input id="bwtLinkName" type="text" style="width:280px" name="bwtLinkName" value="${production.bwtLinkName }"/></td>
						<td>联系电话</td>
                        <td><input id="bwtTel" type="text" style="width:280px" name="bwtTel" value="${production.bwtTel }"/></td>
                      </tr>
                      
                      <tr>
                      	<td>合同生效日期</td>
                        <td><input id="htSxDate" type="text" style="width:280px" name="htSxDate" value="${production.htSxDate }"/></td>
						<td>委托合同期限</td>
                        <td><input id="wtHtDate" type="text" style="width:280px" name="wtHtDate" value="${production.wtHtDate}"/></td>
                      </tr>
                      
						<tr>
						<td colspan="2" align="right"><input type="submit" class="btn btn-primary"  width="30px" value="修改"/></td>
						<td><input type="button" onclick="onclick1(${production.id})" class="btn btn-primary"  width="50px" value="删除"/></td>
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
