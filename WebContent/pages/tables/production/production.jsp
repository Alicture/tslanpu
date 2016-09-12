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
		
			//产品执行标准
			var i=3;
		  	var count = 1;
			function addNew()
			{
				i++;   
				tr=document.all.table1.insertRow(); 
				tr.insertCell().innerHTML='<div   align=left>'+i+'</div>';   
				tr.insertCell().innerHTML='<div   align=left><input   type=text  name=chanpinName  class=border_index></div>';   
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
			var j=3;
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
			var k=3;
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
			
			//打印
    	function print(){
    		location.href="${pageContext.request.contextPath }/pages/tables/production/downloadProduction.jsp";
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
                  <h3>食品生产企业信用档案</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
               <form id="formValidate" action="<c:url value='/ProductionServlet'/>" method="post">
                 <input type="hidden" name="method" value="adddd">
                 <input type="hidden" name="token" value="${tokenP }">
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
                        <td><input id="qyname" type="text" style="width:280px" name="qyname" class=""/></td>
						<td>所属行政区域</td>
                        <td>
                        	<select id="address" style="width:280px" name="address">
                        		<option value="0">请选择</option>
                 			  <c:forEach items="${addressList}" var="addressLis">
                  		          <option  value="${addressLis.position }" >${addressLis.position }</option>
                 			  </c:forEach>	
                           </select>
                       </td>
					 </tr>
					  <tr>
                        <td>生产地址(具体到门牌号)</td>
                        <td><input id="scaddress" type="text" style="width:280px" name="scaddress" class=""/>
                        	<br>
                        <input type='button' id='search_address' value='点击生成经纬度' onclick="searchAddress()"/>
                        </td>
                        <td>邮政编码</td>
                        <td><input id="ems" type="text" style="width:280px" name="ems" class=""/></td>                   
                      </tr>
					  <tr>
                        <td>固定电话</td>
                        <td><input id="phone" type="text" style="width:280px" name="phone" class=""/></td>
						<td>传    真</td>
                        <td><input id="fax" type="text" style="width:280px" name="fax" class=""/></td>
                      </tr>
					  <tr>                        
                        <td>电子邮箱</td>
                        <td><input id="email" type="text" style="width:280px" name="email" class=""/></td>
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
                      </tr>
					  <tr> 
						<td>登记机关</td>
                        <td><input id="gsorganization" type="text" style="width:280px" name="gsorganization" class=""/></td>
                        <td>注册号/统一社会信用代码</td>
                        <td><input id="zzcode" type="text" style="width:280px" name="zzcode" class=""/></td>
                      </tr>
                      
                      
                      
                      <tr>
                        <td>成立日期</td>
                        <td><input id="cldate" type="text" style="width:280px" name="cldate" class=""/></td>
						<td>年总产值(万元)</td>
                        <td><input id="nzyield" type="text" style="width:280px" name="nzyield" class=""/></td>
                      </tr>
                      <tr>
                        <td>法定代表人</td>
                        <td><input id="fddelegate" type="text" style="width:280px" name="fddelegate" class=""/></td>
						<td>电话(手机)号</td>
                        <td><input id="fdphone" type="text" style="width:280px" name="fdphone" class=""/></td>
                      </tr>
                      <tr>
                        <td>企业负责人</td>
                        <td><input id="qydelegate" type="text" style="width:280px" name="qydelegate" class=""/></td>
						<td>电话(手机)号</td>
                        <td><input id="qyphone" type="text" style="width:280px" name="qyphone" class=""/></td>
                      </tr>
                      <tr>
                        <td>从业人员数量</td>
                        <td><input id="cynumber" type="text" style="width:280px" name="cynumber" class=""/></td>
						 <td>化验人员数量</td>
                        <td><input id="assay" type="text" style="width:280px" name="assay" class=""/></td>
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
                       <td>生产许可证编号</td>
                        <td><input id="scpermit" type="text" style="width:280px" name="scpermit" class=""/></td>
						<td>发证机关</td>
                        <td><input id="fazhengjiguan" type="text" style="width:280px" class="" name="fazhengjiguan" /></td>
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
                        <td><b>二、企业管理认证情况</b></td>                 
                      </tr>
					  <tr>
                        <td><input id="isoapprove" type="checkbox" value="ISO质量体系认证" name="isoapprove">&nbsp&nbsp&nbspISO质量体系认证</td>
                        <td><input id="hacccpapprove" type="checkbox" value="HACCP认证" name="hacccpapprove">&nbsp&nbsp&nbspHACCP认证</td>
                        <td><input id="wghapprove" type="checkbox" value="无公害食品认证" name="wghapprove">&nbsp&nbsp&nbsp无公害食品认证</td>                        
                      </tr>
					  <tr>
                        <td><input id="lsapprove" type="checkbox" value="绿色食品认证" name="lsapprove">&nbsp&nbsp&nbsp绿色食品认证</td>
						<td><input id="yjapprove" type="checkbox" value="有机食品认证" name="yjapprove">&nbsp&nbsp&nbsp有机食品认证</td>
						<td><input id="capprove" type="checkbox" value="标志认证" name="capprove">&nbsp&nbsp&nbsp标志认证</td>                   
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
		    	    			<tr>
			      			 		<td>1</td> 
			    				    <td><input type="text"  name="chanpinName"></td>  
			    	       	 		<td><input type="text"  name="zxbzName"></td>   
			    	      	 		<td><input type="text"  name="zxbzCode"></td> 
			    	      	 		<td><input type="text"  name="beian"></td>  
			    	      			<td><a href=javascript:void(0) onclick=delete1(this)>删除</a></td>  
		    	    			</tr>
		    	    			<tr>
			      			 		<td>2</td> 
			    				    <td><input type="text"  name="chanpinName"></td>  
			    	       	 		<td><input type="text"  name="zxbzName"></td>   
			    	      	 		<td><input type="text"  name="zxbzCode"></td> 
			    	      	 		<td><input type="text"  name="beian"></td>  
			    	      			<td><a href=javascript:void(0) onclick=delete1(this)>删除</a></td>  
		    	    			</tr>
		    	    			<tr>
			      			 		<td>3</td> 
			    				    <td><input type="text"  name="chanpinName"></td>  
			    	       	 		<td><input type="text"  name="zxbzName"></td>   
			    	      	 		<td><input type="text"  name="zxbzCode"></td> 
			    	      	 		<td><input type="text"  name="beian"></td>  
			    	      			<td><a href=javascript:void(0) onclick=delete1(this)>删除</a></td>  
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
								<tr>
			      			 		<td>1</td> 
			    				    <td><input type="text"  name="cpName"></td>  
			    	       	 		<td><input type="text"  name="guiGe"></td>   
			    	      	 		<td><input type="text"  name="nianChanLiang"></td> 
			    	      			<td><a href=javascript:void(0) onclick=delete2(this)>删除</a></td>  
		    	    			</tr>
		    	    			<tr>
			      			 		<td>2</td> 
			    				    <td><input type="text"  name="cpName"></td>  
			    	       	 		<td><input type="text"  name="guiGe"></td>   
			    	      	 		<td><input type="text"  name="nianChanLiang"></td> 
			    	      			<td><a href=javascript:void(0) onclick=delete2(this)>删除</a></td>  
		    	    			</tr>
		    	    			<tr>
			      			 		<td>3</td> 
			    				    <td><input type="text"  name="cpName"></td>  
			    	       	 		<td><input type="text"  name="guiGe"></td>   
			    	      	 		<td><input type="text"  name="nianChanLiang"></td> 
			    	      			<td><a href=javascript:void(0) onclick=delete2(this)>删除</a></td>  
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
		    	    			<tr>
			      			 		<td>1</td> 
			    				    <td><input type="text"  name="additive"></td>  
			    	       	 		<td><input type="text"  name="additiveComposition"></td>   
			    	      	 		<td><input type="text"  name="addFoodName"></td>
			    	      	 		<td><input type="text" name="maxAmount"></td>
			    	      	 		<td><input type="text" name="amount"></td>
			    	      	 		<td><input type="text" name="handlers"></td> 
			    	      			<td><a href=javascript:void(0) onclick=delete3(this)>删除</a></td>  
		    	    			</tr>
		    	    			<tr>
			      			 		<td>2</td> 
			    				    <td><input type="text"  name="additive"></td>  
			    	       	 		<td><input type="text"  name="additiveComposition"></td>   
			    	      	 		<td><input type="text"  name="addFoodName"></td>
			    	      	 		<td><input type="text" name="maxAmount"></td>
			    	      	 		<td><input type="text" name="amount"></td>
			    	      	 		<td><input type="text" name="handlers"></td> 
			    	      			<td><a href=javascript:void(0) onclick=delete3(this)>删除</a></td>  
		    	    			</tr> 
		    	    			<tr>
			      			 		<td>3</td> 
			    				    <td><input type="text"  name="additive"></td>  
			    	       	 		<td><input type="text"  name="additiveComposition"></td>   
			    	      	 		<td><input type="text"  name="addFoodName"></td>
			    	      	 		<td><input type="text" name="maxAmount"></td>
			    	      	 		<td><input type="text" name="amount"></td>
			    	      	 		<td><input type="text" name="handlers"></td> 
			    	      			<td><a href=javascript:void(0) onclick=delete3(this)>删除</a></td>  
		    	    			</tr>  
	         				</table>
         				</td>
                      </tr>
                      
                      
                      <tr>
                        <td><b>五、委托加工备案情况</b></td>
                      </tr>
                      <tr>
                      	<td>产品类别</td>
                        <td><input id="chanPinLeiBie" type="text" style="width:280px" class="" name="chanPinLeiBie" /></td>
						<td>委托加工产品名称</td>
                        <td><input id="wtChanPinName" type="text" style="width:280px" class="" name="wtChanPinName" /></td>
                      </tr>
                      
                      <tr>
                      	<td>委托方企业名称</td>
                        <td><input id="wtQyName" type="text" style="width:280px" class="" name="wtQyName" /></td>
						<td>生产地址</td>
                        <td><input id="wtScAddress" type="text" style="width:280px" class="" name="wtScAddress" /></td>
                      </tr>
                      
                      <tr>
                      	<td>委托方联系人</td>
                        <td><input id="wtLinkman" type="text" style="width:280px" class="" name="wtLinkman" /></td>
						<td>联系电话</td>
                        <td><input id="wtTel" type="text" style="width:280px" class="" name="wtTel" /></td>
                      </tr>
                      
                      <tr>
                      	<td>被委托方企业名称</td>
                        <td><input id="bwtQyName" type="text" style="width:280px" class="" name="bwtQyName" /></td>
						<td>生产地址</td>
                        <td><input id="bwtScAddress" type="text" style="width:280px" class="" name="bwtScAddress" /></td>
                      </tr>
                      
                      <tr>
                      	<td>被委托方联系人</td>
                        <td><input id="bwtLinkName" type="text" style="width:280px" class="" name="bwtLinkName" /></td>
						<td>联系电话</td>
                        <td><input id="bwtTel" type="text" style="width:280px" class="" name="bwtTel" /></td>
                      </tr>
                      
                      <tr>
                      	<td>合同生效日期</td>
                        <td><input id="htSxDate" type="text" style="width:280px" class="" name="htSxDate" /></td>
						<td>委托合同期限</td>
                        <td><input id="wtHtDate" type="text" style="width:280px" class="" name="wtHtDate" /></td>
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
         <!--   <b>唐山蓝普</b>-->
        </div>      
        <strong></strong>
      </footer>
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
	</div><!-- ./wrapper -->
    <!-- jQuery 2.1.4 -->
    <!--<script src="<c:url value='/plugins/jQuery/jQuery-2.1.4.min.js'/>"></script>
    --><!-- Bootstrap 3.3.5 -->
    <script src="<c:url value='/bootstrap/js/bootstrap.min.js'/>"></script>
    <!-- DataTables -->
    <script src="<c:url value='/plugins/datatables/jquery.dataTables.min.js'/>"></script>
    <script src="<c:url value='/plugins/datatables/dataTables.bootstrap.min.js'/>"></script>
    <!-- SlimScroll -->
    <script src="<c:url value='/plugins/slimScroll/jquery.slimscroll.min.js'/>"></script>
    <!-- FastClick -->
    <script src="<c:url value='/plugins/fastclick/fastclick.min.js'/>"></script>
    <!-- AdminLTE App -->
    <script src="<c:url value='/dist/js/app.min.js'/>"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="<c:url value='/dist/js/demo.js'/>"></script>
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
