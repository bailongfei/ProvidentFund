<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>登入 - layuiAdmin</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  
  <script type="text/javascript" src="../../../resources/jquery-1.11.3.min.js"></script>
  <script type="text/javascript" src="../../../resources/jqueryExt.js"></script>
  
</head>
<body>


 

  <form  id="loginForm" method="post">

        用户名:<input type="text" name = "userAccount" id = "username" />
        <br />
        <br />
        密&nbsp;码: <input type="text" name = "userPwd" id = "password" />
        <br />
        <br />
        <button type="submit" onclick="login()">登录</button>     
    </form> 







<hr>


  
</body>
</html>
  <script type="text/javascript">

function login(){
    var obj = $("#loginForm").serializeObject();
   $.ajax({
      url:"${pageContext.request.contextPath}/login/logindo",
      contentType : "application/json;charset=utf-8",
      data:JSON.stringify(obj),
      dataType:"text",
      type:"post",
      success:function(data){
      alert(data);
       // window.location.href = "http://localhost:8080/ProvidentFund/frame/views/index.jsp";
       if(data=='1'){
         window.location.href = "../index.jsp";
       }else{
       window.location.href = "login.jsp";
       }
      }
    }) 
}
</script>