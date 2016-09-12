<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <section class="sidebar">
          <ul class="sidebar-menu">
          
            <li class="treeview">
                <a href="javascript:void(0)">
                   <i class="fa fa-files-o"></i><span>查询统计</span><i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
			  	    <li><a href="${pageContext.request.contextPath }/pages/tables/query.jsp"><i class="fa fa-circle-o"></i>信息查询</a></li>
				     <li class="active"><a href="#"><i class="fa fa-circle-o"></i>信息统计</a></li>
                </ul>
            </li>
            
             <li class="treeview"><!-- <li class="active treeview"> -->
                 <a href="javascript:void(0)">
                   <i class="fa fa-dashboard"></i> <span>企业建立</span> <i class="fa fa-angle-left pull-right"></i>
                 </a>
                 <ul class="treeview-menu">
			         <li><a href="${pageContext.request.contextPath }/ProductionFormServlet"><i class="fa fa-circle-o"></i>食品生产企业</a></li>
                     <li class="active"><a href="${pageContext.request.contextPath }/CriculateFormServlet"><i class="fa fa-circle-o"></i>食品流通企业</a></li>
				     <li class="active"><a href="${pageContext.request.contextPath }/FoodFormServlet"><i class="fa fa-circle-o"></i>食品餐饮企业</a></li>
				     <li class="active"><a href="${pageContext.request.contextPath }/pages/tables/industry/industry.jsp"><i class="fa fa-circle-o"></i>食品五小行业</a></li>
				     <li class="active"><a href="${pageContext.request.contextPath }/pages/tables/wine/wine.jsp"><i class="fa fa-circle-o"></i>酒类销售企业</a></li>
				     <li class="active"><a href="${pageContext.request.contextPath }/pages/tables/health/health.jsp"><i class="fa fa-circle-o"></i>保健食品销售企业</a></li>
				     <li class="active"><a href="${pageContext.request.contextPath }/pages/tables/cosmetic/cosmetic.jsp"><i class="fa fa-circle-o"></i>化妆品销售企业</a></li>
				     <li class="active"><a href="${pageContext.request.contextPath }/pages/tables/drug/drug.jsp"><i class="fa fa-circle-o"></i>药品零售企业</a></li>
				     <li class="active"><a href="${pageContext.request.contextPath }/pages/tables/medical/medical.jsp"><i class="fa fa-circle-o"></i>医疗器械销售企业</a></li>
				     <li class="active"><a href="${pageContext.request.contextPath }/pages/tables/usemed/usemed.jsp"><i class="fa fa-circle-o"></i>医疗器械使用企业</a></li>
                 </ul>
            </li>
            
            <!-- 一级目录 -->
            <li>
			  <a href="javascript:void(0)">
                <i class="fa fa-th"></i> <span>监督检查</span><i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
              	<!-- 二级目录 -->
			  	<li>
			 		<a href="javascript:void(0)"> <!-- <i class="fa fa-book"> -->
             			<i class="fa fa-circle-o"></i> <span>现场检查</span><i class="fa fa-angle-left pull-right"></i>
             		</a>
             		<ul class="treeview-menu">
			 			<li class="active"><a href="<c:url value='/pages/inspect/product.jsp'/>"><i class="fa fa-circle-o"></i>生产环节</a></li>
			 			<li class="active"><a href="<c:url value='/pages/inspect/criculate.jsp'/>"><i class="fa fa-circle-o"></i>流通环节</a></li>
			 			<li class="active"><a href="<c:url value='/pages/inspect/food.jsp'/>"><i class="fa fa-circle-o"></i>消费环节</a></li>
              		</ul>
			  	</li>
			  	
			  	<li>
			 		<a href="javascript:void(0)">
             			<i class="fa fa-circle-o"></i> <span>隐患排查</span><i class="fa fa-angle-left pull-right"></i>
             		</a>
             		<ul class="treeview-menu">
			 			<li class="active"><a href="<c:url value='/pages/inspect/PcProduct.jsp'/>"><i class="fa fa-circle-o"></i>生产环节</a></li>
			 			<li class="active"><a href="<c:url value='/pages/inspect/PcCriculate.jsp'/>"><i class="fa fa-circle-o"></i>流通环节</a></li>
			 			<li class="active"><a href="<c:url value='/pages/inspect/PcFood.jsp'/>"><i class="fa fa-circle-o"></i>消费环节</a></li>
              		</ul>
			  	</li>
			  	
			  	<li>
			  		<a href="<c:url value='/pages/inspect/hiddenDanger.jsp'/>">
             			<i class="fa fa-circle-o"></i> <span>隐患整改</span><i class="fa fa-angle-left pull-right"></i>
             		</a>
			  	</li>
              </ul>
            </li>
			<li class="treeview">
              <a href="javascript:void(0)">
                <i class="fa fa-table"></i> <span>抽样检验</span>
                <i class="fa fa-angle-left pull-right"></i>
               </a>
                <ul class="treeview-menu">
			 			<li class="active"><a href="<c:url value='/pages/exam/food.jsp'/>"><i class="fa fa-circle-o"></i>食品</a></li>
			 			<li class="active"><a href="<c:url value='/pages/exam/drug.jsp'/>"><i class="fa fa-circle-o"></i>药品</a></li>
			 			<li class="active"><a href="<c:url value='/pages/exam/medicaltec.jsp'/>"><i class="fa fa-circle-o"></i>医疗机械</a></li>
			 			<li class="active"><a href="<c:url value='/pages/exam/medicalfood.jsp'/>"><i class="fa fa-circle-o"></i>保健食品</a></li>
			 			<li class="active"><a href="<c:url value='/pages/exam/makeup.jsp'/>"><i class="fa fa-circle-o"></i>化妆品</a></li>
              		</ul>
             
             
            </li>
            <li class="treeview">
              <a href="javascript:void(0)">
                <i class="fa fa-pie-chart"></i>
                <span>违法查处</span>
                <!--<i class="fa fa-angle-left pull-right"></i>
              --></a>          
            </li>
            <c:choose>
              <c:when test="${sessionScope.sessionAdmin.username eq 'admin' || sessionScope.sessionAdmin.username eq 'admin1'}">
	             <li class="treeview">
	              <a href="javascript:void(0)">
	                <i class="fa fa-files-o"></i>
	                <span>系统设置</span><i class="fa fa-angle-left pull-right"></i>
	              </a>
	              <ul class="treeview-menu"><!-- pages/regulator/personnel.jsp  -->
	              			<li><a href="<c:url value='/FormServlet'/>"><i class="fa fa-circle-o"></i>人员登记</a></li>
	                		<li class="active"><a href="<c:url value='/pages/regulator/personnelFind.jsp'/>"><i class="fa fa-circle-o"></i>人员查询</a></li>
	              		
	              </ul>
	            </li>
            </c:when>
            </c:choose>
            <li class="treeview">
              <a href="javascript:void(0)">
                <i class="fa fa-edit"></i> <span>电子地图</span>
                <!--<i class="fa fa-angle-left pull-right"></i>
              --></a>             
            </li>                                      
          </ul>
        </section>
