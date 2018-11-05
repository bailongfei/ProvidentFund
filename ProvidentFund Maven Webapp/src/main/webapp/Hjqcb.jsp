<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Hjqcb.jsp' starting page</title>
     
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
         <th>汇缴编号</th>
         <th>公积金年度</th>
         <th>缴至年月</th>
         <th>缴汇月份</th>
         <th>记账日期</th>
         <th>本次增加人数</th>
         <th>操作</th>
         <!-- <th><input type="button"  data-toggle="modal" data-target="#myModal"  class="emptys btn btn-default" value="添加"></th> -->
       </tr>
     </thead>
     <tbody id="tbody">
     
     </tbody>
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
						<h4 class="modal-title" id="modalTitle1">录入</h4>
					</div>
					<div class="modal-body">
					  <!--form提交表单  -->
						<form class="form-horizontal"   id="form1" enctype="multipart/form-data">
							<div class="form-group">
								<label for="roleName" class="col-sm-2 control-label">商品名</label>
								<div class="col-sm-4">

							<input type="hidden" id="goodsId" name="goodsId" class="form-control"  placeholder="请输入">
							<input type="text" id="goodsName" name="goodsName" class="form-control"  placeholder="请输入商品名">
								</div>
							</div>

							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">商品类型</label>
								<div class="col-sm-4">
					
										<select class="sele form-control"  name="typeId">
        	          
        	                            </select>
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">商品Desc</label>
								<div class="col-sm-4">
									<input type="text" id="goodsDesc" class="form-control" name="goodsDesc"
										placeholder="请输入"> 
						
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">商品价格</label>
								<div class="col-sm-4">
									 <input type="text" id="goodsUnitPrice" class="form-control" name="goodsUnitPrice"
										placeholder="请输入"> 
										
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">商品图片</label>
								<div class="col-sm-4">
									 <!-- <input type="text" id="goodsUnitPrice" class="form-control" name="goodsUnitPrice"
										placeholder="请输入">  -->
										<input type="file"   name="goodsImage"/>
                                        <!-- <input type="file"  name="goodsImage"/>
                                        <input type="button" onclick="uploadss()" value="上传"/>
                                        <input type="text" id="a" class="form-control" name="goodsImageName"
										placeholder="请输入">  -->
								</div>
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">数量</label>
								<div class="col-sm-4">
									 <input type="text" id="sellCount" class="form-control" name="sellCount"
										placeholder="请输入"> 
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">日期</label>
								<div class="col-sm-4">
									 <input type="date" id="goodsDate" class="form-control" name="goodsDate"
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
    queryAll();
  });
  /* 查询汇缴清册表 */
  function queryAll(){
    $.ajax({
       url:"hjqcb/queryAll",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          for(var i=0;i<data.length;i++){
            var obj=data[i];
            var tr="<tr>";
                tr+="<td>"+obj.hjbh+"</td>"; 
                tr+="<td>"+obj.gjind+"</td>";
                tr+="<td>"+obj.jnmy+"</td>";
                 tr+="<td>"+obj.nhyf+"</td>";
                 tr+="<td>"+obj.bjjzrq+"</td>";
                 tr+="<td>"+obj.bczjrs+"</td>";
                 tr+="</tr>";
                 $("#tbody").append(tr);
          }
       }
    });
  }
  </script>