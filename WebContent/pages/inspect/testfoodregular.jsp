<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:w="urn:schemas-microsoft-com:office:word"
xmlns:m="http://schemas.microsoft.com/office/2004/12/omml"
xmlns="http://www.w3.org/TR/REC-html40">
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
        <div class=WordSection1 style='layout-grid:15.6pt 0pt;mso-layout-grid-char-alt:
0'>

<p class=MsoNormal align=center style='text-align:center;line-height:29.0pt;
mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:none'><span
style='font-size:22.0pt;mso-bidi-font-size:18.0pt;font-family:方正小标宋简体'>食品生产经营日常监督检查记录<span
lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:char;
mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
font-family:宋体;mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:char;
mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:宋体;
mso-font-kerning:0pt'>被 检 查 单 位：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;</span></span>地<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span>址：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:char;
mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:宋体;
mso-font-kerning:0pt'>企 业 负 责 人：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;</span></span>电话（手机号）：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:char;
mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:宋体;
mso-font-kerning:0pt'>生产许可证编号：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u><span lang=EN-US><span style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span></span>注册号<span lang=EN-US>/</span>统一社会信用代码：<u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:char;
mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:宋体;
mso-font-kerning:0pt'>检查时间：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span></span></u>年<u> <span
style='mso-spacerun:yes'>&nbsp;</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span></span></u>月<u> <span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span></span></u>日<u> <span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span></span></u>时<u> <span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span></span></u>分至<u> <span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span></span></u>月<u> <span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span></span></u>日<u> <span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span></span></u>时<u> <span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span></span></u>分<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:char;
mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:宋体;
mso-font-kerning:0pt'>检查人员及执法证件编号：<span lang=EN-US>1.</span>姓名：<u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp; </span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;</span></span>编号：<u> <span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:char;
mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
font-family:宋体;mso-font-kerning:0pt'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span>2.</span><span style='font-size:12.0pt;font-family:宋体;mso-font-kerning:
0pt'>姓名：<u><span lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp; </span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;</span></span>编号：<u> <span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:char;
mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:宋体;
mso-font-kerning:0pt'>检查地点：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal align=left style='text-align:left;line-height:20.0pt;
mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:char;
mso-layout-grid-align:none'><span style='mso-bidi-font-size:10.5pt;font-family:
宋体;mso-font-kerning:0pt'>被检查单位意见：<u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><o:p></o:p></span></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
tab-stops:39.75pt;layout-grid-mode:char;mso-layout-grid-align:none'><span
lang=EN-US style='font-family:"Calibri",sans-serif'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
tab-stops:39.75pt;layout-grid-mode:char;mso-layout-grid-align:none'><span
style='font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri'>被检查单位（法人或负责人）签字：</span><u><span
lang=EN-US style='font-family:"Calibri",sans-serif'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></u><span lang=EN-US style='font-family:"Calibri",sans-serif'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span
style='font-family:宋体;mso-ascii-font-family:Calibri;mso-hansi-font-family:Calibri'>检查人员签字：</span><span
style='font-family:"Calibri",sans-serif'> <u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><o:p></o:p></span></u></span></p>

<p class=MsoNormal align=center style='text-align:center;line-height:29.0pt;
mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:none'><span
lang=EN-US style='font-size:12.0pt;font-family:宋体;mso-font-kerning:0pt'><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='font-size:12.0pt;font-family:宋体;mso-font-kerning:0pt'>年<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>月<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>日<span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp; </span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span>年<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>月<span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span>日</span><span
lang=EN-US style='font-size:22.0pt;mso-bidi-font-size:18.0pt;font-family:方正小标宋简体'><o:p></o:p></span></p>

<p class=MsoNormal align=center style='text-align:center;line-height:29.0pt;
mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:none'><span
lang=EN-US style='font-size:22.0pt;mso-bidi-font-size:18.0pt;font-family:方正小标宋简体'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=center style='text-align:center;line-height:29.0pt;
mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:none'><span
lang=EN-US style='font-size:22.0pt;mso-bidi-font-size:18.0pt;font-family:方正小标宋简体'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=center style='text-align:center;line-height:29.0pt;
mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:none'><span
lang=EN-US style='font-size:22.0pt;mso-bidi-font-size:18.0pt;font-family:方正小标宋简体'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal align=center style='text-align:center;line-height:29.0pt;
mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:none'><span
lang=EN-US style='font-size:22.0pt;mso-bidi-font-size:18.0pt;font-family:方正小标宋简体'><o:p>&nbsp;</o:p></span></p>

<div align=center>

<table class=MsoNormalTable border=1 cellspacing=0 cellpadding=0 width="100%"
 style='width:100.8%;border-collapse:collapse;border:none;mso-border-alt:solid windowtext .5pt;
 mso-yfti-tbllook:160;mso-padding-alt:0cm 5.4pt 0cm 5.4pt;mso-border-insideh:
 .5pt solid windowtext;mso-border-insidev:.5pt solid windowtext'>
 <thead>
  <tr style='mso-yfti-irow:0;mso-yfti-firstrow:yes;page-break-inside:avoid;
   height:25.5pt'>
   <td width="15%" style='width:15.16%;border:solid windowtext 1.0pt;
   mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:
   25.5pt'>
   <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
   mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
   char;mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:
   黑体;mso-font-kerning:0pt;mso-bidi-font-weight:bold'>检查项目<span lang=EN-US><o:p></o:p></span></span></p>
   </td>
   <td width="8%" style='width:8.42%;border:solid windowtext 1.0pt;border-left:
   none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
   padding:0cm 5.4pt 0cm 5.4pt;height:25.5pt'>
   <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
   mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
   char;mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:
   黑体;mso-font-kerning:0pt;mso-bidi-font-weight:bold'>项目序号<span lang=EN-US><o:p></o:p></span></span></p>
   </td>
   <td width="53%" style='width:53.12%;border:solid windowtext 1.0pt;
   border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
   solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.5pt'>
   <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
   mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
   char;mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:
   黑体;mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-bidi-font-weight:bold'>检查内容<span
   lang=EN-US><o:p></o:p></span></span></p>
   </td>
   <td width="8%" style='width:8.72%;border:solid windowtext 1.0pt;border-left:
   none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
   padding:0cm 5.4pt 0cm 5.4pt;height:25.5pt'>
   <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
   mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
   char;mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:
   黑体;mso-bidi-font-family:宋体;color:black;mso-font-kerning:0pt;mso-bidi-font-weight:
   bold'>评价</span><span lang=EN-US style='font-size:12.0pt;font-family:黑体;
   mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-bidi-font-weight:bold'><o:p></o:p></span></p>
   </td>
   <td width="14%" style='width:14.58%;border:solid windowtext 1.0pt;
   border-left:none;mso-border-left-alt:solid windowtext .5pt;mso-border-alt:
   solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.5pt'>
   <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
   mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
   char;mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:
   黑体;mso-bidi-font-family:宋体;color:black;mso-font-kerning:0pt;mso-bidi-font-weight:
   bold'>备注</span><span lang=EN-US style='font-size:12.0pt;font-family:黑体;
   mso-bidi-font-family:宋体;mso-font-kerning:0pt;mso-bidi-font-weight:bold'><o:p></o:p></span></p>
   </td>
  </tr>
 </thead>
 <tr style='mso-yfti-irow:1;page-break-inside:avoid;height:23.35pt'>
  <td width="15%" rowspan=7 style='width:15.16%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:23.35pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:
  none'><span lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;
  mso-font-kerning:0pt'>1</span><span style='font-size:12.0pt;font-family:仿宋;
  mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  mso-font-kerning:0pt'>．生产环境条件</span><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:23.35pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>1.1<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:23.35pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>厂区无扬尘、无积水，厂区、车间卫生整洁。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:23.35pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" style='width:14.58%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:23.35pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:仿宋;mso-bidi-font-family:
  宋体;mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:2;page-break-inside:avoid;height:21.45pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.45pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*1.2<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.45pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>厂区、车间与有毒、有害场所及其他污染源保持规定的距离。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.45pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" style='width:14.58%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.45pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:仿宋;mso-bidi-font-family:
  宋体;mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:3;page-break-inside:avoid;height:40.15pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:40.15pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*1.3<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:40.15pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>卫生间应保持清洁，应设置洗手设施，未与食品生产、包装或贮存等区域直接连通。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:40.15pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" style='width:14.58%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:40.15pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='mso-bidi-font-size:10.5pt;font-family:仿宋;mso-bidi-font-family:
  宋体;mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:4;page-break-inside:avoid;height:21.45pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.45pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>1.4<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.45pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>有更衣、洗手、干手、消毒设备、设施，满足正常使用。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.45pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.45pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:5;page-break-inside:avoid;height:18.85pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:18.85pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>1.5<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:18.85pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>通风、防尘、照明、存放垃圾和废弃物等设备、设施正常运行。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:18.85pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:18.85pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:6;page-break-inside:avoid;height:37.55pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:37.55pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>1.6<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:37.55pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>车间内使用的洗涤剂、消毒剂等化学品应与原料、半成品、成品、包装材料等分隔放置，并有相应的使用记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:37.55pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:37.55pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:7;page-break-inside:avoid;height:35.2pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:35.2pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>1.7<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:35.2pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>定期检查防鼠、防蝇、防虫害装置的使用情况并有相应检查记录，生产场所无虫害迹象。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" valign=top style='width:8.72%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:35.2pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:35.2pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:8;page-break-inside:avoid;height:37.0pt'>
  <td width="15%" rowspan=3 style='width:15.16%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:37.0pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>2</span><span
  style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-font-kerning:0pt'>．进货查验结果</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:
  0pt'><o:p></o:p></span></p>
  <p class=MsoNormal align=left style='text-align:left;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:
  仿宋;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  mso-font-kerning:0pt'>注：</span><span style='font-size:12.0pt;font-family:
  宋体;mso-bidi-font-family:宋体;mso-font-kerning:0pt'>①</span><span
  style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-font-kerning:0pt'>检查原辅料仓库；</span><span
  style='font-size:12.0pt;font-family:宋体;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>②</span><span style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-font-kerning:
  0pt'>原辅料品种随机抽查，不足</span><span lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:
  仿宋;mso-font-kerning:0pt'>2</span><span style='font-size:12.0pt;font-family:
  仿宋;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  mso-font-kerning:0pt'>种的全部检查。</span><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:37.0pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*2.1<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:37.0pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>查验食品原辅料、食品添加剂、食品相关产品供货者的许可证、产品合格证明文件；供货者无法提供有效合格证明文件的食品原料，有检验记录。<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:37.0pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:37.0pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:9;page-break-inside:avoid;height:39.6pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:39.6pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*2.2<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:39.6pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>进货查验记录及证明材料真实、完整，记录和凭证保存期限不少于产品保质期期满后六个月，没有明确保质期的，保存期限不少于二年。<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:39.6pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:39.6pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:10;page-break-inside:avoid;height:38.9pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:38.9pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>2.3<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:38.9pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>建立和保存食品原辅料、食品添加剂、食品相关产品的贮存、保管记录和领用出库记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:38.9pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:38.9pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:11;page-break-inside:avoid'>
  <td width="15%" rowspan=15 style='width:15.16%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
  style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>3</span><span
  style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-font-kerning:0pt'>．生产过程控制注：在成品库至少抽取</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:
  0pt'>2</span><span style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-font-kerning:
  0pt'>批次产品，按生产日期或批号追溯生产过程记录及控制的全部检查，有专供特定人群的产品至少抽查</span><span lang=EN-US
  style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>1</span><span
  style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-font-kerning:0pt'>个产品。</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:
  0pt'><o:p></o:p></span></p>
  </td>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>3.1<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>有食品安全自查制度文件，定期对食品安全状况进行自查并记录和处置。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:12;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*3.2<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>使用的原辅料、食品添加剂、食品相关产品的品种与索证索票、进货查验记录内容一致。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:13;page-break-inside:avoid;height:41.15pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:41.15pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*3.3<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:41.15pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>建立和保存生产投料记录，包括投料种类、品名、生产日期或批号、使用数量等。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:41.15pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:41.15pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:14;page-break-inside:avoid;height:40.15pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:40.15pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*3.4<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:40.15pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>未发现使用非食品原料、回收食品、食品添加剂以外的化学物质、超过保质期的食品原料和食品添加剂生产食品。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:40.15pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:40.15pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:15;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*3.5<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>未发现超范围、超限量使用食品添加剂的情况。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:16;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>3.6<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>生产或使用的新食品原料，限定于国务院卫生行政部门公告的新食品原料范围内。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:17;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*3.7<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>未发现使用药品、仅用于保健食品的原料生产食品。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:18;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*3.8<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>生产记录中的生产工艺和参数与企业申请许可时提供的工艺流程一致。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" valign=top style='width:8.72%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:19;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*3.9<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>建立和保存生产加工过程关键控制点的控制情况记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:20;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>3.10<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>生产现场未发现人流、物流交叉污染。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:21;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>3.11<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>未发现原辅料、半成品与直接入口食品交叉污染。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:22;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>3.12<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>有温、湿度等生产环境监测要求的，定期进行监测并记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:23;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>3.13<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>生产设备、设施定期维护保养并做好记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:24;page-break-inside:avoid;height:11.25pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:11.25pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*3.14<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:11.25pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>未发现标注虚假生产日期或批号的情况。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:11.25pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:11.25pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:25;page-break-inside:avoid;height:41.8pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:41.8pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>3.15<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:41.8pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>工作人员穿戴工作衣帽，生产车间内未发现与生产无关的个人或者其他与生产不相关物品，员工洗手消毒后进入生产车间。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:41.8pt'>
  <p class=MsoNormal style='line-height:22.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:41.8pt'>
  <p class=MsoNormal style='line-height:20.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:26;page-break-inside:avoid;height:51.55pt'>
  <td width="15%" rowspan=5 style='width:15.16%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:51.55pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
  style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>4</span><span
  style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-font-kerning:0pt'>．产品检验结果注：采取抽查方式</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:
  0pt'><o:p></o:p></span></p>
  </td>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:51.55pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>4.1<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:51.55pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>企业自检的，应具备与所检项目适应的检验室和检验能力，有检验相关设备及化学试剂，检验仪器设备按期检定。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:51.55pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>□是□否<span lang=EN-US style='color:black'><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:51.55pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:27;page-break-inside:avoid;height:11.25pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:11.25pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>4.2<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:11.25pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>不能自检的，应当委托有资质的检验机构进行检验。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:11.25pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:11.25pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:28;page-break-inside:avoid;height:46.05pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:46.05pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*4.3<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:46.05pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>有与生产产品相适应的食品安全标准文本，按照食品安全标准规定进行检验。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:46.05pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:46.05pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:29;page-break-inside:avoid;height:34.85pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:34.85pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*4.4<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:34.85pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>建立和保存原始检验数据和检验报告记录，检验记录真实、完整。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" valign=top style='width:8.72%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:34.85pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:34.85pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:30;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>4.5<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>按规定时限保存检验留存样品并记录留样情况。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:31;page-break-inside:avoid'>
  <td width="15%" rowspan=8 style='width:15.16%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:
  0pt'>5</span><span style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-font-kerning:
  0pt'>．贮存及交付控制</span><span lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:
  仿宋;mso-font-kerning:0pt'><o:p></o:p></span></p>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-font-kerning:0pt'>注：采取抽查方式，有冷链要求的产品必须检查冷链情况。</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:
  0pt'><o:p></o:p></span></p>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
  style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*5.1<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>原辅料的贮存有专人管理，贮存条件符合要求。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:32;page-break-inside:avoid;height:23.25pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:23.25pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*5.2<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:23.25pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>食品添加剂应当专门贮存，明显标示，专人管理。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:23.25pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:23.25pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:33;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>5.3<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>不合格品应在划定区域存放。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:34;page-break-inside:avoid;height:32.35pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:32.35pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>5.4<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:32.35pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>根据产品特点建立和执行相适应的贮存、运输及交付控制制度和记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:32.35pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:32.35pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:35;page-break-inside:avoid;height:25.1pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.1pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>5.5<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.1pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>仓库温湿度应符合要求。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.1pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.1pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:36;page-break-inside:avoid;height:25.1pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.1pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>5.6<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.1pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>生产的产品在许可范围内。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.1pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:25.1pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:37;page-break-inside:avoid;height:27.75pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:27.75pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>5.7<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:27.75pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>有销售台账，台账记录真实、完整。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:27.75pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:27.75pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:38;page-break-inside:avoid;height:49.5pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:49.5pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>5.8<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:49.5pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>销售台账如实记录食品的名称、规格、数量、生产日期或者生产批号、检验合格证明、销售日期以及购货者名称、地址、联系方式等内容。<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:49.5pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:49.5pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:39;page-break-inside:avoid'>
  <td width="15%" rowspan=4 style='width:15.16%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>6</span><span
  style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-font-kerning:0pt'>．不合格品管理和食品召回</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:
  0pt'><o:p></o:p></span></p>
  <p class=MsoNormal align=left style='text-align:left;line-height:16.0pt;
  mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:
  none'><span style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:
  "Times New Roman";mso-hansi-font-family:"Times New Roman";mso-font-kerning:
  0pt'>注：采取抽查方式</span><span lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:
  仿宋;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>6.1<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>建立和保存不合格品的处置记录，不合格品的批次、数量应与记录一致。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:40;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*6.2<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>实施不安全食品的召回，有召回计划、公告等相应记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:41;page-break-inside:avoid;height:18.15pt'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:18.15pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*6.3<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:18.15pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>召回食品有处置记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:18.15pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt;height:18.15pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:42;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>6.4<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>未发现使用召回食品重新加工食品情况（对因标签存在瑕疵实施召回的除外）。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:43;page-break-inside:avoid'>
  <td width="15%" rowspan=6 style='width:15.16%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:16.0pt;
  mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:
  none'><span lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  <p class=MsoNormal align=left style='text-align:left;line-height:16.0pt;
  mso-line-height-rule:exactly;layout-grid-mode:char;mso-layout-grid-align:
  none'><span lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;
  mso-font-kerning:0pt'>7</span><span style='font-size:12.0pt;font-family:仿宋;
  mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
  mso-font-kerning:0pt'>．从业人员管理</span><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>7.1<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>有食品安全管理人员、检验人员、负责人。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:44;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>7.2<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>有食品安全管理人员、检验人员、负责人培训和考核记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:45;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*7.3<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>未发现聘用禁止从事食品安全管理的人员。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:46;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>7.4<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>企业负责人在企业内部制度制定、过程控制、安全培训、安全检查以及食品安全事件或事故调查等环节履行了岗位职责并有记录。<span
  lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:47;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*7.5<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>建立从业人员健康管理制度，直接接触食品人员有健康证明，符合相关规定。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:48;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>7.6<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>有从业人员食品安全知识培训制度，并有相关培训记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:49;page-break-inside:avoid'>
  <td width="15%" rowspan=3 style='width:15.16%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>8</span><span
  style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-font-kerning:0pt'>．食品安全事故处置</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:
  0pt'><o:p></o:p></span></p>
  </td>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>8.1<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>有定期排查食品安全风险隐患的记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:50;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>8.2<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>有按照食品安全应急预案定期演练，落实食品安全防范措施的记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:51;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*8.3<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>发生食品安全事故的，有处置食品安全事故记录。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否</span><span lang=EN-US style='font-size:12.0pt;
  font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:0pt'><o:p></o:p></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:52;page-break-inside:avoid'>
  <td width="15%" rowspan=3 style='width:15.16%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=left style='text-align:left;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>9</span><span
  style='font-size:12.0pt;font-family:仿宋;mso-ascii-font-family:"Times New Roman";
  mso-hansi-font-family:"Times New Roman";mso-font-kerning:0pt'>．食品添加剂生产者管理</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:
  0pt'><o:p></o:p></span></p>
  </td>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>*9.1<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>原料和生产工艺符合产品标准规定。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:53;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>9.2<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>复配食品添加剂配方发生变化的，按规定报告。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:54;page-break-inside:avoid'>
  <td width="8%" style='width:8.42%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal align=center style='text-align:center;line-height:16.0pt;
  mso-line-height-rule:exactly;mso-pagination:widow-orphan;layout-grid-mode:
  char;mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋;mso-font-kerning:0pt'>9.3<o:p></o:p></span></p>
  </td>
  <td width="53%" style='width:53.12%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;mso-font-kerning:
  0pt'>食品添加剂产品标签载明“食品添加剂”，并标明贮存条件、生产者名称和地址、食品添加剂的使用范围、用量和使用方法。<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="8%" style='width:8.72%;border-top:none;border-left:none;
  border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;color:black;
  mso-font-kerning:0pt'>□是□否<span lang=EN-US><o:p></o:p></span></span></p>
  </td>
  <td width="14%" valign=top style='width:14.58%;border-top:none;border-left:
  none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;
  mso-border-top-alt:solid windowtext .5pt;mso-border-left-alt:solid windowtext .5pt;
  mso-border-alt:solid windowtext .5pt;padding:0cm 5.4pt 0cm 5.4pt'>
  <p class=MsoNormal style='line-height:24.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:仿宋;mso-bidi-font-family:宋体;
  mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:55;page-break-inside:avoid;height:72.3pt'>
  <td width="100%" colspan=5 valign=top style='width:100.0%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:72.3pt'>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  style='font-size:12.0pt;font-family:黑体;color:black;mso-font-kerning:0pt'>其他需要记录的问题：<span
  lang=EN-US><o:p></o:p></span></span></p>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:
  0pt'><o:p>&nbsp;</o:p></span></p>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
  style='font-size:12.0pt;mso-fareast-font-family:仿宋;mso-font-kerning:0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
 <tr style='mso-yfti-irow:56;mso-yfti-lastrow:yes;page-break-inside:avoid;
  height:108.6pt'>
  <td width="100%" colspan=5 valign=top style='width:100.0%;border:solid windowtext 1.0pt;
  border-top:none;mso-border-top-alt:solid windowtext .5pt;mso-border-alt:solid windowtext .5pt;
  padding:0cm 5.4pt 0cm 5.4pt;height:108.6pt'>
  <p class=MsoNormal style='margin-left:36.0pt;text-indent:-36.0pt;mso-char-indent-count:
  -3.0;line-height:20.0pt;mso-line-height-rule:exactly;layout-grid-mode:char;
  mso-layout-grid-align:none'><span style='font-size:12.0pt;font-family:仿宋_GB2312;
  mso-ascii-font-family:"Times New Roman"'>说明：</span><span lang=EN-US
  style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>1.</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>上表中食品通用检查项目：重点项（</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>*</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>）</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>21</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>项，一般项</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>30</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>项，共</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>51</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>项。食品添加剂通用检查项目：重点项（</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>*</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>）</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>19</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>项，一般项</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>31</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>项，共</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>50</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>项。</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'><o:p></o:p></span></p>
  <p class=MsoNormal style='margin-left:53.9pt;mso-para-margin-left:3.42gd;
  text-indent:-18.0pt;mso-char-indent-count:-1.5;line-height:20.0pt;mso-line-height-rule:
  exactly;layout-grid-mode:char;mso-layout-grid-align:none'><span lang=EN-US
  style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>2</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>．每次检查抽查重点项不少于</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>10</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>个，总检查项目不少于</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>20</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>个。</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'><o:p></o:p></span></p>
  <p class=MsoNormal style='text-indent:36.0pt;mso-char-indent-count:3.0;
  line-height:20.0pt;mso-line-height-rule:exactly;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋_GB2312'>3</span><span style='font-size:12.0pt;
  font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>．上表中除</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>1.7</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>、</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>3.4</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>、</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>3.5</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>、</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>3.6</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>项以及</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>2.1</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>项中关于“食品相关产品”的检查部分，其他项目均适用于食品添加剂生产者。</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'><o:p></o:p></span></p>
  <p class=MsoNormal style='text-indent:36.0pt;mso-char-indent-count:3.0;
  line-height:20.0pt;mso-line-height-rule:exactly;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋_GB2312'>4</span><span style='font-size:12.0pt;
  font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>．对食品添加剂生产者每次检查，还需检查第</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>9</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>项，对食品生产者的检查不需检查第</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'>9</span><span
  style='font-size:12.0pt;font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>项。</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'><o:p></o:p></span></p>
  <p class=MsoNormal style='text-indent:36.0pt;mso-char-indent-count:3.0;
  line-height:20.0pt;mso-line-height-rule:exactly;layout-grid-mode:char;
  mso-layout-grid-align:none'><span lang=EN-US style='font-size:12.0pt;
  mso-fareast-font-family:仿宋_GB2312'>5</span><span style='font-size:12.0pt;
  font-family:仿宋_GB2312;mso-ascii-font-family:"Times New Roman"'>．如果检查项目存在合理缺项，该项无需勾选“是或否”，并在备注中说明，不计入不符合项数。</span><span
  lang=EN-US style='font-size:12.0pt;mso-fareast-font-family:仿宋_GB2312'><o:p></o:p></span></p>
  <p class=MsoNormal style='line-height:16.0pt;mso-line-height-rule:exactly;
  mso-pagination:widow-orphan;layout-grid-mode:char;mso-layout-grid-align:none'><span
  lang=EN-US style='font-size:12.0pt;font-family:黑体;color:black;mso-font-kerning:
  0pt'><o:p>&nbsp;</o:p></span></p>
  </td>
 </tr>
</table>

</div>

<p class=MsoNormal><span lang=EN-US style='font-size:12.0pt;font-family:仿宋'><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='text-indent:21.0pt;mso-char-indent-count:2.0'><u><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";color:red'>（监管单位名称）下拉菜单选择</span></u><span style='font-family:
宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman"'>检查人员根据《中华人民共和国食品安全法》及其实施条例、《食品生产经营日常监督检查管理办法》的规定，于</span><u>
<span lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>年</span><u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span></u><span style='font-family:
宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman"'>月</span><u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span></u><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>日对你单位进行了监督检查。本次监督检查按照以上表格所列内容开展，共检查了（</span><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp; </span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>）项内容，其中：</span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>重点项（</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span><span style='font-family:宋体;
mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman"'>）项，项目序号分别是（</span><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman"'>）；</span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span><span
style='mso-spacerun:yes'>&nbsp;</span></span><span style='font-family:宋体;
mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman"'>发现问题（</span><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>）项，项目序号分别是（</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman"'>）；</span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>具体问题：①</span> <u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;</span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>；</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span lang=EN-US style='font-family:宋体'><span
style='mso-spacerun:yes'>&nbsp;</span></span><span style='font-family:宋体'>② <u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;</span></span></u></span><u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;</span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>；</span><span style='font-family:宋体'> <span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US style='font-family:宋体'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-family:宋体'>③ <u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;</span></span>；</span><u><span
lang=EN-US><o:p></o:p></span></u></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>一般项（</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp; </span></span><span style='font-family:宋体;
mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman"'>）项，项目序号分别是（</span><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman"'>）；</span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>发现问题（</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span><span style='font-family:
宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman"'>）项，项目序号分别是（</span><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-family:宋体;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman"'>）；</span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US style='font-family:黑体'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>具体问题：①</span> <u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;</span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>；</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span lang=EN-US style='font-family:宋体'><span
style='mso-spacerun:yes'>&nbsp;</span></span><span style='font-family:宋体'>② <u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;</span></span></u></span><u><span
lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;</span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>；</span><span style='font-family:宋体'> <span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US style='font-family:宋体'><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style='font-family:宋体'>③ <u><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></u><span
lang=EN-US><span style='mso-spacerun:yes'>&nbsp;&nbsp;</span></span>；</span><u><span
lang=EN-US><o:p></o:p></span></u></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
style='font-family:黑体'>检查结果<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>□符合</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>□基本符合</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp; </span></span><span style='font-family:
宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman"'>□不符合</span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
style='font-family:黑体'>结果处理<span lang=EN-US><o:p></o:p></span></span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>□通过</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>□书面限期整改</span><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span
style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman"'>□食品生产经营者立即停止食品生产经营活动</span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal style='margin-left:23.95pt;mso-para-margin-left:2.28gd'><span
lang=EN-US><o:p>&nbsp;</o:p></span></p>

<p class=MsoNormal><!--[if gte vml 1]><v:shapetype id="_x0000_t202"
 coordsize="21600,21600" o:spt="202" path="m,l,21600r21600,l21600,xe">
 <v:stroke joinstyle="miter"/>
 <v:path gradientshapeok="t" o:connecttype="rect"/>
</v:shapetype><v:shape id="_x0000_s1031" type="#_x0000_t202" style='position:absolute;
 left:0;text-align:left;margin-left:90pt;margin-top:7.8pt;width:63pt;height:23.4pt;
 z-index:251660288'>
 <v:textbox style='mso-next-textbox:#_x0000_s1031'/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout;position:
absolute;z-index:251660288;left:0px;margin-left:119px;margin-top:9px;
width:90px;height:38px'>

<table cellpadding=0 cellspacing=0>
 <tr>
  <td width=90 height=38 bgcolor=white style='border:.75pt solid black;
  vertical-align:top;background:white'><![endif]><![if !mso]><span
  style='position:absolute;mso-ignore:vglayout;left:0pt;z-index:251660288'>
  <table cellpadding=0 cellspacing=0 width="100%">
   <tr>
    <td><![endif]>
    <div v:shape="_x0000_s1031" style='padding:4.35pt 7.95pt 4.35pt 7.95pt'
    class=shape>
    <p class=MsoNormal style='text-indent:10.5pt;mso-char-indent-count:1.0'><span
    style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
    "Times New Roman"'>保存</span></p>
    </div>
    <![if !mso]></td>
   </tr>
  </table>
  </span><![endif]><![if !mso & !vml]>&nbsp;<![endif]><![if !vml]></td>
 </tr>
</table>

</span><![endif]><!--[if gte vml 1]><v:shape id="_x0000_s1026" type="#_x0000_t202"
 style='position:absolute;left:0;text-align:left;margin-left:9pt;margin-top:7.8pt;
 width:63pt;height:23.4pt;z-index:251655168'>
 <v:textbox style='mso-next-textbox:#_x0000_s1026'/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout;position:
absolute;z-index:251655168;left:0px;margin-left:11px;margin-top:9px;width:90px;
height:38px'>

<table cellpadding=0 cellspacing=0>
 <tr>
  <td width=90 height=38 bgcolor=white style='border:.75pt solid black;
  vertical-align:top;background:white'><![endif]><![if !mso]><span
  style='position:absolute;mso-ignore:vglayout;left:0pt;z-index:251655168'>
  <table cellpadding=0 cellspacing=0 width="100%">
   <tr>
    <td><![endif]>
    <div v:shape="_x0000_s1026" style='padding:4.35pt 7.95pt 4.35pt 7.95pt'
    class=shape>
    <p class=MsoNormal style='text-indent:10.5pt;mso-char-indent-count:1.0'><span
    style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
    "Times New Roman"'>修改</span></p>
    </div>
    <![if !mso]></td>
   </tr>
  </table>
  </span><![endif]><![if !mso & !vml]>&nbsp;<![endif]><![if !vml]></td>
 </tr>
</table>

</span><![endif]><!--[if gte vml 1]><v:shape id="_x0000_s1030" type="#_x0000_t202"
 style='position:absolute;left:0;text-align:left;margin-left:6in;margin-top:7.8pt;
 width:1in;height:23.4pt;z-index:251659264'>
 <v:textbox style='mso-next-textbox:#_x0000_s1030'/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout;position:
absolute;z-index:251659264;left:0px;margin-left:575px;margin-top:9px;
width:102px;height:38px'>

<table cellpadding=0 cellspacing=0>
 <tr>
  <td width=102 height=38 bgcolor=white style='border:.75pt solid black;
  vertical-align:top;background:white'><![endif]><![if !mso]><span
  style='position:absolute;mso-ignore:vglayout;left:0pt;z-index:251659264'>
  <table cellpadding=0 cellspacing=0 width="100%">
   <tr>
    <td><![endif]>
    <div v:shape="_x0000_s1030" style='padding:4.35pt 7.95pt 4.35pt 7.95pt'
    class=shape>
    <p class=MsoNormal style='text-indent:10.5pt;mso-char-indent-count:1.0'><span
    style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
    "Times New Roman"'>上传数据</span></p>
    </div>
    <![if !mso]></td>
   </tr>
  </table>
  </span><![endif]><![if !mso & !vml]>&nbsp;<![endif]><![if !vml]></td>
 </tr>
</table>

</span><![endif]><!--[if gte vml 1]><v:shape id="_x0000_s1029" type="#_x0000_t202"
 style='position:absolute;left:0;text-align:left;margin-left:4in;margin-top:7.8pt;
 width:90pt;height:23.4pt;z-index:251658240'>
 <v:textbox style='mso-next-textbox:#_x0000_s1029'/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout;position:
absolute;z-index:251658240;left:0px;margin-left:383px;margin-top:9px;
width:126px;height:38px'>

<table cellpadding=0 cellspacing=0>
 <tr>
  <td width=126 height=38 bgcolor=white style='border:.75pt solid black;
  vertical-align:top;background:white'><![endif]><![if !mso]><span
  style='position:absolute;mso-ignore:vglayout;left:0pt;z-index:251658240'>
  <table cellpadding=0 cellspacing=0 width="100%">
   <tr>
    <td><![endif]>
    <div v:shape="_x0000_s1029" style='padding:4.35pt 7.95pt 4.35pt 7.95pt'
    class=shape>
    <p class=MsoNormal style='text-indent:10.5pt;mso-char-indent-count:1.0'><span
    style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
    "Times New Roman"'>生成电子表格</span></p>
    </div>
    <![if !mso]></td>
   </tr>
  </table>
  </span><![endif]><![if !mso & !vml]>&nbsp;<![endif]><![if !vml]></td>
 </tr>
</table>

</span><![endif]><!--[if gte vml 1]><v:shape id="_x0000_s1027" type="#_x0000_t202"
 style='position:absolute;left:0;text-align:left;margin-left:180pt;
 margin-top:7.8pt;width:63pt;height:23.4pt;z-index:251656192'>
 <v:textbox style='mso-next-textbox:#_x0000_s1027'/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout;position:
absolute;z-index:251656192;left:0px;margin-left:239px;margin-top:9px;
width:90px;height:38px'>

<table cellpadding=0 cellspacing=0>
 <tr>
  <td width=90 height=38 bgcolor=white style='border:.75pt solid black;
  vertical-align:top;background:white'><![endif]><![if !mso]><span
  style='position:absolute;mso-ignore:vglayout;left:0pt;z-index:251656192'>
  <table cellpadding=0 cellspacing=0 width="100%">
   <tr>
    <td><![endif]>
    <div v:shape="_x0000_s1027" style='padding:4.35pt 7.95pt 4.35pt 7.95pt'
    class=shape>
    <p class=MsoNormal style='text-indent:10.5pt;mso-char-indent-count:1.0'><span
    style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
    "Times New Roman"'>删除</span></p>
    </div>
    <![if !mso]></td>
   </tr>
  </table>
  </span><![endif]><![if !mso & !vml]>&nbsp;<![endif]><![if !vml]></td>
 </tr>
</table>

</span><![endif]><!--[if gte vml 1]><v:shape id="_x0000_s1028" type="#_x0000_t202"
 style='position:absolute;left:0;text-align:left;margin-left:549pt;
 margin-top:7.8pt;width:63pt;height:23.4pt;z-index:251657216'>
 <v:textbox style='mso-next-textbox:#_x0000_s1028'/>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout;position:
absolute;z-index:251657216;left:0px;margin-left:731px;margin-top:9px;
width:90px;height:38px'>

<table cellpadding=0 cellspacing=0>
 <tr>
  <td width=90 height=38 bgcolor=white style='border:.75pt solid black;
  vertical-align:top;background:white'><![endif]><![if !mso]><span
  style='position:absolute;mso-ignore:vglayout;left:0pt;z-index:251657216'>
  <table cellpadding=0 cellspacing=0 width="100%">
   <tr>
    <td><![endif]>
    <div v:shape="_x0000_s1028" style='padding:4.35pt 7.95pt 4.35pt 7.95pt'
    class=shape>
    <p class=MsoNormal style='text-indent:10.5pt;mso-char-indent-count:1.0'><span
    style='font-family:宋体;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
    "Times New Roman"'>打印</span></p>
    </div>
    <![if !mso]></td>
   </tr>
  </table>
  </span><![endif]><![if !mso & !vml]>&nbsp;<![endif]><![if !vml]></td>
 </tr>
</table>

</span><![endif]><span lang=EN-US><span
style='mso-spacerun:yes'>&nbsp;&nbsp;&nbsp; </span></span><span lang=EN-US
style='font-family:黑体'><o:p></o:p></span></p>

<p class=MsoNormal style='tab-stops:201.75pt 262.5pt'><span lang=EN-US
style='font-family:黑体'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span
style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><o:p></o:p></span></p>

</div>

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
