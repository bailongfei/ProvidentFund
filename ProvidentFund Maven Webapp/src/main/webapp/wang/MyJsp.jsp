<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  		<link rel="stylesheet" type="text/css" href="styles.css">

	<!-- 使用模态窗口引入bootstrap ${pageContext.request.contextPath}-->
	<link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap.min.css">
       <link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap-theme.min.css">
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap/js/bootstrap.min.js"></script>
	<!--最基础jQuery.js都是基于这个  -->
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	<!-- 异步转换参数js -->
	<script type="text/javascript" src="resources/jqueryExt.js"></script>
	<!-- 上传文件js -->
	<script type="text/javascript" src="resources/jquery.form.js"></script>
    
  <body>
   		<h1 class="text-center">贷款申请成功 请耐心等待~</h1>
  </body>
</html>
