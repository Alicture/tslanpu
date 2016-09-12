<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- Logo -->
        <a href="<c:url value='/pages/index.jsp'/>" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"></span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>食品药品动态监管</b></span>
        </a>
        
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
        
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
            
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="${pageContext.request.contextPath }/${sessionScope.sessionAdmin.image}" class="user-image" alt="User Image">
                  <span class="hidden-xs">${sessionScope.sessionAdmin.username }</span>
                </a>
                <ul class="dropdown-menu">
                
	                  <!-- User image -->
	                  <li class="user-header">
	                    <img src="${pageContext.request.contextPath }/${sessionScope.sessionAdmin.image}" class="img-circle" alt="User Image">
	                    <!--<p>
	                      Alexander Pierce - Web Developer
	                      <small>Member since Nov. 2012</small>
	                    </p>
	                  --></li>
                  
	                  <!-- Menu Body --><!--
	                  <li class="user-body">
	                    <div class="col-xs-4 text-center">
	                      <a href="#">Followers</a>
	                    </div>
	                    <div class="col-xs-4 text-center">
	                      <a href="#">Sales</a>
	                    </div>
	                    <div class="col-xs-4 text-center">
	                      <a href="#">Friends</a>
	                    </div>
	                  </li>
	                  
	                  --><!-- Menu Footer-->
	                  <li class="user-footer">
	                    <div class="pull-left">
	                      <a href="#" class="btn btn-default btn-flat">修改密码</a>
	                    </div>
	                    <div class="pull-right">
	                      <a href="${pageContext.request.contextPath }/UserQuitServlet" class="btn btn-default btn-flat">退出</a>
	                    </div>
	                  </li>
	                  
             </ul>
         </li>
       </ul>
     </div>
        </nav>
