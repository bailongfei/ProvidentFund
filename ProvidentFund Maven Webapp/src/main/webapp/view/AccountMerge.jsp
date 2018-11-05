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
	<script type="text/javascript" src="../resources/jquery-1.11.3.min.js"></script>
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
    <form action="" id="fm">
    	保留账号:<input type="text" name="peracId1" id="pid1">密码:<input type="password" name="peracloginpw1"><br/>
    	保留账号单位:<input type="text" id="unit1"><br/>
    	销户账号:<input type="text" name="peracId2" id="pid2">密码:<input type="password" name="peracloginpw2"><br/>
    	销户账号单位:<input type="text" id="unit2"><br/>
    	<input type="button" value="合并账户" onclick="merge()">
    </form>
    <!-- 1105:1203 -->
  </body>
</html>
