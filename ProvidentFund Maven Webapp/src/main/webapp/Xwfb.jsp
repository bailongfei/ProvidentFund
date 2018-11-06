<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Xwfb.jsp' starting page</title>
    
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
    <table class="table table-hover">
     <thead>
       <tr class="success">
         <th>新闻编号</th>
         <th>新闻标题</th>
         <th>发布时间</th>
         <th>发布内容</th>
         <th>发布人</th>
         <th>发布新闻状态</th>
         <th>操作</th>
         <th><input type="button"  data-toggle="modal" data-target="#myModal"  class="emptys btn btn-default" value="添加"></th>
       </tr>
     </thead>
     <tbody id="tbody">
     
     </tbody>
     
      <!-- 模态框弹出录入内容 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="modalTitle1" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							&times;
							<!-- 关闭按钮 -->
						</button>
						<h4 class="modal-title" id="modalTitle1">添加</h4>
					</div>
					<div class="modal-body">
					  <!--form提交表单  -->
						<form class="form-horizontal"   id="form1" enctype="multipart/form-data">
							<div class="form-group">
								<label for="roleName" class="col-sm-2 control-label">新闻编号</label>
								<div class="col-sm-4">

							<input type="text" id="xwbh" name="xwbh" class="form-control"  placeholder="请输入">
								</div>
							</div>

							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">新闻标题</label>
								<div class="col-sm-4">
					                <input type="text" id="xwbt" name="xwbt" class="form-control" placeholder="请输入"> 
							</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">发布时间</label>
								<div class="col-sm-4">
									<input type="date" id="fbsj" name="fbsj" class="form-control" placeholder="请输入"> 
						
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">发布内容</label>
								<div class="col-sm-4">
									 <input type="text" id="xwnr" name="xwnr" class="form-control" placeholder="请输入">
										
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">发布人</label>
								<div class="col-sm-4">
									 <input type="text" id="fbr" name="fbr" class="form-control" placeholder="请输入">
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">发布新闻状态</label>
								<div class="col-sm-4">
										<select class="form-control" id="xwzt" name="xwzt">
        	                               <option>1</option>
        	                               <option>2</option>
        	                            </select>
								</div>
							</div>
							<input type="button" id="insertXwfb" data-toggle='modal' data-target='#myModal' class="update btn-primary" value="保存">
						</form>
					</div>
					<div class="modal-footer">
						<button type="button"  class="up btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
		
  </body>
</html>

<script>
  /* 页面加载函数 */
   $(function(){
    queryXwfb();
    
  });
  function queryXwfb(){
    $.ajax({
       url:"xwfb/queryXwfb",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          for(var i=0;i<data.length;i++){
            var obj=data[i];
            var status=null;
             if(obj.xwzt=="1"){
                status="已发布"
             }else if(obj.xwzt=="2"){
                status="未发布"
             }
            var tr="<tr>";
                tr+="<td>"+obj.xwbh+"</td>";
                tr+="<td>"+obj.xwbt+"</td>";
                tr+="<td>"+obj.fbsj+"</td>";
                tr+="<td>"+obj.xwnr+"</td>";
                tr+="<td>"+obj.fbr+"</td>";
                tr+="<td>"+status+"</td>";
                 tr+="<td><input type='button' id="+obj.xwbh+"  class='delete btn btn-default' value='删除'><input type='button'  id="+obj.xwbh+" data-toggle='modal' data-target='#myModal' title="+obj.xwbh+"  class='findById btn btn-default' value='修改'></td>";
                 tr+="</tr>";
                 $("#tbody").append(tr);
          }
       }
    });
  }
  /* 添加新闻 */
   $(document).on("click","#insertXwfb",function(){
     $("#form1").ajaxSubmit({
       url:"xwfb/insertXwfb",
       type:"post",
       contentType:"application/x-www-form-urlencoded;charset=utf-8",//发送的内容类型utf-8
       dataType:"text",
       success:function(data){
         alert(data);
         queryXwfb();
       }
     });
  });
   /* 删除 */
   $(document).on("click",".delete",function(){
      var id=this.id;
      $.ajax({
         url:"xwfb/deleteXwfb",
         type:"post",
         data:{"xwbh":id},
         dataType:"text",
         success:function(data){
           alert(data);
           queryXwfb();
         }
      });
   });
    /* 添加之前清空form表单 */
  $(document).on("click",".emptys",function(){
           $("#xwbh").val("");
           $("#xwbt").val("");
           $("#fbsj").val("");
           $("#xwnr").val("");
           $("#fbr").val("");
           $("#xwzt").val("");
  });
  /*修改前查询  */
   $(document).on("click",".findById",function(){
      var id=this.id;
      $.ajax({
         url:"xwfb/queryById",
         type:"post",
         data:{"xwbh":id},
         dataType:"json",
         success:function(data){
           $("#xwbh").val(data.xwbh);
           $("#xwbt").val(data.xwbt);
           $("#fbsj").val(data.fbsj);
           $("#xwnr").val(data.xwnr);
           $("#fbr").val(data.fbr);
           $("#xwzt").val(data.xwzt);
         }
      });
   });
   <!-- 修改 -->
    $(document).on("click",".update",function(){
     $("#form1").ajaxSubmit({
       url:"xwfb/updateXwfb",
       type:"post",
       contentType:"application/x-www-form-urlencoded;charset=utf-8",//发送的内容类型utf-8
       dataType:"text",
       success:function(data){
         alert(data);
         queryXwfb();
       }
     });
  });
  </script>