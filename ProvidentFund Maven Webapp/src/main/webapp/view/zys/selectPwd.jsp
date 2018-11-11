<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectPws.jsp' starting page</title>
    
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

<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/js/bootstrap.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery.form.js"></script>
  </head>
 
  <body>
<div class="form-group">
      <h2 class="modal-title">找回密码</h2>
       <div class="modal-body">
            <form action="">
            <div class="form-group">
               <label for="description" class="col-sm-1 control-label">手机号</label>
               <div class="col-sm-4">
                <input  class="form-control" placeholder="" id="ids" type="hidden"/>
                  <input  class="form-control" placeholder="请输入手机号" id="phone" type="text"/>
               </div>
            </div>
            <br><br>
            <div class="form-group">
               <label for="description" class="col-sm-1 control-label">姓名</label>
                <div class="col-sm-4">
                  <input class="form-control" placeholder="请输入姓名" id="ygxm" type="text"/><br>
                </div>
            </div>
            <br><br>
            <div class="form-group">
               <label for="description" class="col-sm-1 control-label">身份证号</label>
                <div class="col-sm-4">
                  <input class="form-control" placeholder="请输入身份证号码" id="zjh" type="text"/><br>
                </div>
            </div>
            <br>
                </form>
                </div>
      <a href="login.jsp"><input class="btn btn-primary btn-lg"  type="button" value="返回"/></a>
     <button onclick="queryAll()" class="btn-primary btn-lg" >下一步</button>
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改密码</h4>
            </div>
            <div class="modal-body">
            <form action="" id="form1">
                        <div class="form-group">
								<!-- <label for="description" class="col-sm-2 control-label">旧密码</label>
								<div class="col-sm-4">
									<input type="text" id="pwd" class="form-control" name="pwd"
										placeholder="请输入新密码">
								</div> 
							</div> -->
                          <div class="form-group">
								<label for="description" class="col-sm-2 control-label">新密码</label>
								<div class="col-sm-4">
									<input type="password" id="user_pwd" class="form-control" name="user_pwd"
										placeholder="请输入新密码">
								</div> 
							</div>
							<br><br>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">再次输入密码</label>
								<div class="col-sm-4">
									 <input type="password" id="user_pwd1" class="form-control" name="goodsUnitPrice"
										placeholder="请与新密码保持一致">
										
								</div>
							</div>
							
							 <button id="updatePwd" type="button" class="btn btn-primary">提交更改</button>
            </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
               
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
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
           for(var i=0;i<data.length;i++){
            var obj=data[i];
            $("#ids").val(obj.userId);
            $("#user_pwd").val(obj.user_pwd);
            if(obj.user_phone==phone && obj.ygxm==ygxm){
              if(obj.zjh==zjh){
              alert("请修改密码");
              $('#myModal').modal('show')
              //$("#myModal").show();
            }else{
            alert("信息不正确，请重新输入!");
              $("#myModal").hide();
            }
                 }else{
                   alert("信息不正确，请重新输入!");
               $("#myModal").hide();
                 }
          }
       }
    });
    }
     /*修改前查询  */
    /*  function queryById(){
        var id=$("#ids").val();
      alert(id);
      $.ajax({
         url:"user/queryById",
         type:"post",
         data:{"userId":id},
         dataType:"json",
         success:function(data){
           $("#user_pwd").val(data.user_pwd);
         }
      });
     } */
  //修改密码，密码验证
   $(document).on("click","#updatePwd",function(){
       var id=$("#ids").val();
       var p=$("#user_pwd").val();
       var p1=$("#user_pwd1").val();
       if(p==p1){
     $("#form1").ajaxSubmit({
      url:"user/updatePwd",
      type:"post",
      data:{"userId":id},
      dataType:"text",
      contentType:"application/x-www-form-urlencoded;charset=utf-8",//发送的内容类型utf-8
      success:function(data){
      alert(data)
      }
     })
     }else{
      alert("两次输入密码不一样！");
     }
   });
 </script>