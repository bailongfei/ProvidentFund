<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AccountMerge.jsp' starting page</title>
    
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
	href="../resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="../resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="../resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="../resources/jquery.form.js"></script>
	<script type="text/javascript">
		function merge(){
			alert($("#fm").serialize());
			$.ajax({
				url:"Peraccount/AccountMerge",
				type:"post",
				data:$("#fm").serialize(),
				dataType:'text',
				success:function(data){
					alert(data);
				}
			})
		}
		function findunitName(pid,obj){
			$.ajax({
				url:"Peraccount/findUnitName",
				type:"post",
				data:{
					"peracId":pid
				},
				dataType:'json',
				success:function(data){
					if(obj=='1'){
						$("#unit1").val(data.UnitInfoName);
					}else{
						$("#unit2").val(data.UnitInfoName);
					}
				}
			})
		}
		$(document).ready(function(){
	  	    $("#pid1").blur(function(){
	  	    	var pid=$("#pid1").val();
	  	    	alert(pid);
	 			findunitName(pid,1);
	  	    });
	  	    $("#pid2").blur(function(){
	  	    	var pid=$("#pid2").val();
	  	    	alert(pid);
	 			findunitName(pid,2)
	  	    });
	    });
	</script>
  </head>
  
  <body>
  <form class="form-horizontal" role="form" action="" id="fm">
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label">保留账号:</label>
		<div class="col-sm-4">
			<input type="text" name="peracId1" id="pid1" class="form-control" 
				   placeholder="请输入保留账号">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">密码:</label>
		<div class="col-sm-4">
			<input type="password" name="peracloginpw1" class="form-control" 
				   placeholder="请输入姓">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">保留账号单位:</label>
		<div class="col-sm-4">
			<input ype="text" id="unit1"  class="form-control" 
				   placeholder="请输入姓">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">销户账号:</label>
		<div class="col-sm-4">
			<input type="text" name="peracId2" id="pid2" class="form-control" 
				   placeholder="请输入姓">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">密码:</label>
		<div class="col-sm-4">
			<input type="password" name="peracloginpw2" class="form-control" 
				   placeholder="请输入姓">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">销户账号单位:</label>
		<div class="col-sm-4">
			<input type="text" id="unit2" class="form-control" 
				   placeholder="请输入姓">
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-4">
			<input type="button" value="合并账户" onclick="merge()" class="btn btn-default">
		</div>
	</div>
</form>
  
  
   <!--  <form action="" id="fm">
    	保留账号:<input type="text" name="peracId1" id="pid1">密码:<input type="password" name="peracloginpw1"><br/>
    	保留账号单位:<input type="text" id="unit1"><br/>
    	销户账号:<input type="text" name="peracId2" id="pid2">密码:<input type="password" name="peracloginpw2"><br/>
    	销户账号单位:<input type="text" id="unit2"><br/>
    	<input type="button" value="合并账户" onclick="merge()">

    </form> -->

  </body>
</html>
