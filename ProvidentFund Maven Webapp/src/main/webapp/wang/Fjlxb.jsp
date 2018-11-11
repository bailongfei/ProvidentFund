<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Fjlxb.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
   <input type="button"  data-toggle="modal" data-target="#myModal"  class="emptys btn btn-default" value="添加"></th>
    </table>
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
						<h4 class="modal-title" id="modalTitle1">住房信息</h4>
					</div>
					<div class="modal-body">
					  <!--form提交表单  -->
						<form class="form-horizontal"   id="form1" enctype="multipart/form-data">
							<div class="form-group">
								<label for="roleName" class="col-sm-2 control-label">商品名</label>
								<div class="col-sm-4">
								
							<input type="hidden" id="goodsId" name="goodsId" class="form-control"  placeholder="请输入">
							<input type="text"  name="gfxxid" class="form-control"  placeholder="购房信息Id">
								</div>
							</div>

							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">房屋类型</label>
								<div class="col-sm-4">
										<select class="sele form-control"  name="fubh">
        	                            </select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">坐落</label>
								<div class="col-sm-4">
									<input type="text"  class="form-control" name="belocated"
										placeholder="请输入"> 
						
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">面积</label>
								<div class="col-sm-4">
									 <input type="text" class="form-control" name="acreage"
										placeholder="请输入"> 
										
								</div>
							</div>
							
							
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">购房人姓名</label>
								<div class="col-sm-4">
									 <input type="text"  class="form-control" name="namehouse"
										placeholder="请输入"> 
										
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">证件类型</label>
								<div class="col-sm-4">
									 <input type="text" class="form-control" name="zjtype"
										placeholder="请输入"> 
										
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">银行账号</label>
								<div class="col-sm-4">
									 <input type="text"  class="form-control" name="gfbankaccount"
										placeholder="请输入"> 
										
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">房屋总价</label>
								<div class="col-sm-4">
									 <input type="text"  class="form-control" name="houseprice"
										placeholder="请输入"> 
										
								</div>
							</div>
							
							<input type="button" id="saveUploadOrUpdate" data-toggle='modal' data-target='#myModal' class="btn btn-primary" value="保存">
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
     
     queryFjlx();
  });

  /*查询商品类型  */
  function queryFjlx(){
     $.ajax({
       url:"purchase/fjlxlist",
       type:"post",
       dataType:"json",
       success:function(data){
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            $(".sele").append("<option value='"+obj.fubh+"'>"+obj.TypeHouse+"</option>");
         }
       }
     });
   };

   /* 添加 */
   $(document).on("click","#saveUploadOrUpdate",function(){
      $("#form1").ajaxSubmit({
        url:"purchase/purchasave",
        type:"post",
        contentType:"application/x-www-form-urlencoded; charset=utf-8",
        dataType:"text",
        success:function(data){
           alert(data);
        }
      });
   });
 
</script>
