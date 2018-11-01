<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
			$.ajax({
				url:"Peraccount/login",
				type:"post",
				data:$("#loginform").serialize(),
				dataType:'text',
				success:function(data){
					if(data=='1'){
						alert("登录成功！");
						window.location.href="view/Main.jsp";
					}else{
						alert("登录失败！");
					}
					
				}
			})
		});
	});		
	</script>
  </head>
  
  <body>
    <form action="" id="loginform">
    	账号:<input type="text" name="peracid"><br/>
    	密码:<input type="text" name="peracloginpw"><br/>
    	<input type="button" value="登录" id="btn">
    </form>
  </body>
</html>
