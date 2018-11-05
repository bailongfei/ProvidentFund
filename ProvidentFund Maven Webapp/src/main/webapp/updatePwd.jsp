<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatePws.jsp' starting page</title>
    
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
  <form action="" id="form1">
  <input type="hidden" id=" name="/><br>
    请输入新密码：<input type="password" id="n" /><br>
    再次输入新密码：<input type="password" id="o" /><br>
    <a href="selectPwd.jsp"><input class="btn btn-primary btn-lg"  type="button" value="返回" /></a><br>
   <!--  <input type="button" onclick="updatePwd()" id="queryAll" class="updatePwd" value="下一步" /><br> -->
  </form>         
    
         <!-- 按钮触发模态框 -->
<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">下一步</button>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改密码</h4>
            </div>
            <div class="modal-body">
            
            <div class="form-group">
								<label for="description" class="col-sm-2 control-label">新密码</label>
								<div class="col-sm-4">
									<input type="text" id="user_pwd" class="form-control" name="goodsDesc"
										placeholder="请输入新密码"> 
						
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">再次输入密码</label>
								<div class="col-sm-4">
									 <input type="text" id="user_pwd1" class="form-control" name="goodsUnitPrice"
										placeholder="请与密码保持一致"> 
										
								</div>
							</div>
            
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
                                         
  </body>
</html>
<script>
 function updatePwd(){
  var n=$("#n").val();
  var o=$("#o").val();
    $.ajax({
       url:"user/queryAll",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
           for(var i=0;i<data.length;i++){
            var obj=data[i];
            
          }
       }
    });
    }
    /* 修改前查询 */
    $(document).on("click",".queryAll",function(){
    alert("111");
     $.ajax({
        url:"user/queryAll",
       type:"post",
       dataType:"json",
       success:function(data){
         $("#user_pwd").val(data.user_pwd);
       }
     })
   });
   /* $(document).on("click","#updatePwd",function(){
     var obj=$("#form1").serializeObject;
     $ajax({
      url:"user/updatePwd",
      async: true,
      contentType:"application/json;charser=utf-8",
      data:JSON.stringify(obj),
      dataType:"text",
      success:function(data){
      alert("修改成功，请牢记密码！")
      }
     })
   }); */
</script>