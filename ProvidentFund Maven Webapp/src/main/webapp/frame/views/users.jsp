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

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jqueryExt.js"></script>
</head>

<body>

	<table class="table table-hover">
		<!-- <caption>权限分配页面</caption> -->
		<br />
		<thead>
			<tr>
				<th>员工编号</th>
				<th>员工名称</th>
				<th>角色</th>
				<th style="text-align: center">操作</th>
				<th><button type="button" data-toggle='modal'
						data-target='#myModal' class="adduser btn btn-primary">添加员工</button></th>
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
		<li style="font-weight: lighter;">当前第<input type="text"
			id="currPage"
			style="height:35px;width:50px;border-radius:10px;text-align: center;" />页
		</li>
	</ul>
	<!-- 模态框 -->
	<!-- 按钮触发模态框 -->
	<!-- <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
	开始演示模态框
</button> -->
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改员工信息</h4>
				</div>
				<div class="modal-body">

					<div style="padding:10px;">
						<form class="bs-example bs-example-form" role="form"
							id="userForm">
							<input type="hidden" id="user-id" name="userId" />
							<div class="input-group">
								<span class="input-group-addon">员工名称</span> <input type="text"
									class="form-control" placeholder="请输入员工名称" id="user-name"
									name="userName">
							</div>
							<br>
							<div class="input-group">
								<span class="input-group-addon">角色</span> <input type="text"
									class="form-control" placeholder="请输入员工描述" id="user-miaoshu"
									name="userdescribe">
							</div>
							<br>
							<!-- <div class="input-group">
			<span class="input-group-addon">$</span>
			<input type="text" class="form-control">
			<span class="input-group-addon">.00</span>
		</div> -->
						</form>
					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" id="saveOrUpdate">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
<script type="text/javascript">

	/****************************************************修改前的查询***********************************************************/
	$(document).on("click", ".updateOradd", function() {
		var userId = this.id;
		$.ajax({
			url : "${pageContext.request.contextPath}/login/updateBeforeQueryUsers",
			type : "post",
			data : {
				"userId" : userId
			},
			dataType : "json",
			success : function(data) {
				$("#user-id").val(data[0].userId);
				$("#user-name").val(data[0].userName);
				$("#user-miaoshu").val(data[0].rolesName);
			}
		})
	})

	/****************************************************修改前的查询END!***********************************************************/



	/****************************************************修改保存***********************************************************/
	/* 清空表格 */
	$(document).on("click", ".adduser", function() {
		$("#user-id").val("");
		$("#user-name").val("");
		$("#user-miaoshu").val("");
	})
	/* 提交信息--修改或者添加 */
	$("#saveOrUpdateUsers").click(function() {
		var obj = $("#userForm").serializeObject();
		$.ajax({
			url : "${pageContext.request.contextPath}/login/saveOrUpdateUsers",
			type : "post",
			async : true,
			contentType : "application/json;charset=utf-8",
			data : JSON.stringify(obj),
			dataType : "text",
			success : function() {
				var curr = $("#currPage").val();
				queryAllUsers(curr);
				$("#myModal").modal('hide');
				alert("成功！！！");
				

			}
		})
	})

	/****************************************************删除删除删除***********************************************************/
	$(document).on("click", ".deleteUsers", function() {
		var userId = this.id;
		$.ajax({
			url : "${pageContext.request.contextPath}/login/deleteUsers",
			type : "post",
			data : {
				"userId" : userId
			},
			dataType : "text",
			success : function() {
				var curr = $("#currPage").val();
				queryAllUsers(curr);
			}
		})
	})

	/****************************************************分页分页分页***********************************************************/
	$(function() {
		queryAllUsers(1);
	})

	function queryAllUsers(startPage) {
		$.ajax({
			url : "${pageContext.request.contextPath}/login/queryAllUsers",
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
					tr += "<td>" + obj.userId + "</td>";
					tr += "<td>" + obj.userName + "</td>";
					tr += "<td>" + obj.rolesName + "</td>";
					tr += "<td><button data-toggle='modal' data-target='#myModal'  type='button' value='修改' id=" + obj.userId + " class='updateOradd btn btn-default'>修改</button></td></td>"
					tr += "<td><button type='button' value='删除' id=" + obj.userId + " class='deleteUsers btn btn-primary' data-loading-text='Loading...'>删除</button></td></td>"
					tr += "</tr>";
					//#tbody为模态框的div
					$("#tbody").append(tr); //追加行

				}
				//当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					queryAllUsers(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if (last < curr) {
						$("#currPage").val(last);
						queryAllUsers(last);
					}
					if (curr <= 0) {
						$("#currPage").val(1);
						queryAllUsers(1);
					}
					queryAllUsers(curr);
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
		queryAllUsers(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		queryAllUsers(currPage + 1);
	})
	$("#shouye").click(function() {
		queryAllUsers(1);
	})
	/****************************************************分页结束***********************************************************/
</script>