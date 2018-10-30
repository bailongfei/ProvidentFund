<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'yonghu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.min.css">

<script
	src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>


</head>

<body>

	<table class="table table-hover">
		<caption>权限分配页面</caption>
		<thead>
			<tr>
				<th>角色编号</th>
				<th>角色名称</th>
				<th>角色描述</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody id="tbody">

		</tbody>
	</table>
	<ul class="pager">
		<li><button type="button" class="btn btn-default" id="shouye">首页</button></li>
		<li><button type="button" class="btn btn-default" id="syy">上一页</button></li>
		<li><button type="button" class="btn btn-default" id="xyy">下一页</button></li>
		<li><button type="button" class="btn btn-default" id="weiye">尾页</button></li>
		<li style="font-weight: lighter;">当前第<input type="text" id="currPage" style="height:35px;width:50px;border-radius:10px;text-align: center;"/>页</li>
	</ul>
	
</body>
<script type="text/javascript">
	$(function() {
		queryAllRoles(1);
	})

	function queryAllRoles(startPage) {
		$.ajax({
			url : "${pageContext.request.contextPath}/login/queryAllRoles",
			type : "post",
			data : {
				"startPage" : startPage
			},
			dataType : "json",
			success : function(data) {
				$("#tbody").html("");
				var ary = data.list;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i];
					var tr = "<tr>";
					tr += "<td>" + obj.rolesId + "</td>";
					tr += "<td>" + obj.rolesName + "</td>";
					tr += "<td>" + obj.rolesdescribe + "</td>";					
					tr += "</tr>";
					//#tbody为模态框的div
					$("#tbody").append(tr); //追加行

				}
				//当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					queryAllRoles(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if(last<curr){
					   $("#currPage").val(last);
					   queryAllRoles(last);
					}
					if(curr<=0){
					  $("#currPage").val(1);
					   queryAllRoles(1);
					}
					 queryAllRoles(curr);
				});
				
				if (data.isFirstPage) {
					$("#syy").attr("disabled", "disabled");
					$("#shouye").attr("disabled", "disabled");
				} else {
					$("#syy").removeAttr("disabled", "disabled");
					$("#shouye").removeAttr("disabled", "disabled");
				}
				if (data.isLastPage) {
					$("#xyy").attr("disabled", "disabled");
					$("#weiye").attr("disabled", "disabled");
				} else {
					$("#xyy").removeAttr("disabled", "disabled");
					$("#weiye").removeAttr("disabled", "disabled");
				}

			}
		})

	}
	/* 按钮的赋值 */
	$("#syy").click(function() {
		var currPage = parseInt($("#currPage").val());
		queryAllRoles(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		queryAllRoles(currPage + 1);
	})
	$("#shouye").click(function() {
		queryAllRoles(1);
	})
</script>