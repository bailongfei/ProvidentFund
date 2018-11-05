<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'FindPerbusiness.jsp' starting page</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="resources/js/bootstrap/css/bootstrap.min.css">  
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap/js/bootstrap.min.js"></script>
  </head>
  
  <body>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>个人账号</th>
				<th>业务类型</th>
				<th>业务发生时间</th>
				<th>发生额度</th>
				<th>单位缴纳</th>
				<th>个人缴纳</th>
				<th>个人缴纳</th>
			</tr>
		</thead>
		<tbody id="tbody">
			<tr>
				<td>Tanmay</td>
				<td>Bangalore</td>
				<td>560001</td>
			</tr>
			<tr>
				<td>Sachin</td>
				<td>Mumbai</td>
				<td>400003</td>
			</tr>
			<tr>
				<td>Uma</td>
				<td>Pune</td>
				<td>411027</td>
			</tr>
		</tbody>
	</table>
  </body>
</html>
