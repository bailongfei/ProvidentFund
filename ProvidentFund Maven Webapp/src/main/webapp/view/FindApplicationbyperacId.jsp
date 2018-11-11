<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Perbusiness.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">            
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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

  </head>
  <body>
  	
    <table  class="table table-bordered">
    	<tr>
    		<td>个人账号</td>
    		<td>个人姓名</td>
    		<td>所在单位名称</td>
    		<td>申请金额</td>
    		<td>申请原因</td>
    		<td>申请时间</td>
    		<td>申请状态</td>
    		<td>审批时间</td>
    	</tr>
    	<tbody id="tab" >
    		<c:forEach items="${list}" var="l">
    			<tr class="active">
    				<td>${l.peracId}</td>
    				<td>${l.bkname}</td>
    				<td>${l.UnitInfoName}</td>
    				<td>${l.ExtractingAmount}</td>
    				<td>${l.cause}</td>
    				<td>${l.sqsj}</td>
    				<td>${l.grapprovalStatuss}</td>
    				<td>${l.spsj}</td>
    			</tr>
    		</c:forEach>
    	</tbody>
    </table>
  </body>
</html>
