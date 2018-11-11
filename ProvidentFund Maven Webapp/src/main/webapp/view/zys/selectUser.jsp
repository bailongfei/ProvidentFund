<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'User.jsp' starting page</title>
    
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
	href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery.form.js"></script>
  </head>
  
  <body>
<div class="form-group">
      <h2 class="modal-title">找回用户名</h2>
      <div class="modal-body">
       <form action="">
         <div class="form-group">
             <label for="description" class="col-sm-1 control-label">手机号</label>  
           <div class="col-sm-4">
             <input class="form-control" placeholder="请输入手机号" id="phone" type="text"/>
           </div>
         </div>
         <br><br>
         <div class="form-group">
             <label for="description" class="col-sm-1 control-label">姓名</label>
           <div class="col-sm-4">
             <input class="form-control" placeholder="请输入姓名" id="ygxm" type="text"/>
           </div>
         </div>
         <br><br>
         <div class="form-group">
             <label for="description" class="col-sm-1 control-label">身份证号</label>
           <div class="col-sm-4">
             <input class="form-control" placeholder="请输入身份证号码" id="zjh" type="text"/>
           </div>
         </div>
         <br>
          </form>
          </div>
             <a href="login.jsp"><input class="btn btn-primary btn-lg" type="button" value="返回"/></a>
             <input class="btn btn-primary btn-lg" type="button" onclick="queryAll()" value="下一步"/>
       </div>
  </body>
 
</html>
<script>
  function queryAll(){
  var phone=$("#phone").val();
  var ygxm=$("#ygxm").val();
  var zjh=$("#zjh").val();
    $.ajax({
       url:"user/queryAll",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
           for(var i=0;i<data.length;i++){
            var obj=data[i];
            if(obj.user_phone==phone && obj.ygxm==ygxm){
     
              if(obj.zjh==zjh){
             alert("请牢记用户名:"+obj.user_account);
            }else{
            alert("用户不存在!");
            }      
                 }else{
                   alert("用户不存在!");
                 }
          }   
       }
    });
    }
 </script>