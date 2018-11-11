<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
  		<link rel="stylesheet" type="text/css" href="styles.css">

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
    			<table class="table table-bordered">
     <thead>
       <tr class="success">
       	 <th>单位名称</th>
       	 <th>个人姓名</th>
         <th>个人账号</th>
         <th>身份证号</th>
         <th></th>
         <th></th>
         
        
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
						<h4 class="modal-title" id="modalTitle1">个人信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal"   id="form2" enctype="multipart/form-data">
							<div class="form-group">
								
									<label for="roleName" class="col-sm-2 control-label">贷款账户</label>
							
									<div class="col-sm-4">
								<input type="text" id="dkzh" name="dkzh" class="form-control"  readonly unselectable="on" placeholder="请输入姓名">
								</div>
									<label for="roleName" class="col-sm-2 control-label">姓名</label>
								<div class="col-sm-4">
								<input type="text" id="name" name="name" class="form-control" readonly unselectable="on"  placeholder="请输入姓名">
								</div>
								
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">贷款发放额</label>
								<div class="col-sm-4">
									<input type="text" id="dkffe" name="dkffe" class="form-control" readonly unselectable="on"  placeholder="请输入性别">
								</div>
								<label for="description" class="col-sm-2 control-label">还款方式</label>
								<div class="col-sm-4">
									<input type="text" id="zxll" class="form-control" name="hkfs" readonly unselectable="on"
										placeholder="请输入"> 
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">身份证号</label>
								<div class="col-sm-4">
									 <input type="text" id="grdkqs" class="form-control" name="idNumber" readonly unselectable="on"
										placeholder="请输入"> 
										
								</div>
							
							</div>
							
						
							</div>
												</form>

					</div>
					<div class="modal-footer">
						
						<button type="button"  class="up btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
			</div>
		</div> 
    
	 
			
  </body>
</html>

<script>
  /* 页面加载函数 */
   $(function(){
     queryTbGoodsType();
  });
  
  /* 查询 */
  function queryTbGoodsType(){
    $.ajax({
       url:"Grzfbk/Grzquerytwo",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          for(var i=0;i<data.length;i++){
            var obj=data[i];
            var tr="<tr>";
            	 tr+="<td>"+obj.dwzh+"</td>";
             	 tr+="<td>"+obj.name+"</td>";
                 tr+="<td>"+obj.dkzh+"</td>";
                 tr+="<td>"+obj.idNumber+"</td>";
                 tr+="<td><input type='button' value='查看贷款信息' onclick='findbyid("+obj.dkbh+")' data-toggle='modal' data-target='#myModal' class='person btn btn-default'></td>";
              	 tr+="<td><input type='button' value='销户' onclick='findbyi("+obj.dkbh+")' data-toggle='modal' data-target='#myModal1' class='person btn btn-default'></td>";
               	 tr+="</tr>";
                 $("#tbody").append(tr);
          }
       }
    });
  }
  	function findbyid(obj){
  		var dkbh=obj;
  		alert(dkbh);
  		$.ajax({
         url:"Grzfbk/queryGrzg",
         type:"post",
         data:{"dkbh":dkbh},
         dataType:"json",
         success:function(data){
           $("#dkzh").val(data.dkzh);
           $("#name").val(data.name);
           $("#dkffe").val(data.dkffe);
            $("#zxll").val(data.hkfs);
           $("#grdkqs").val(data.idNumber);
		
         }
      });
  	} 
  
  		function findbyi(obj){
  		var dkbh=obj;
  		alert(dkbh);
  		$.ajax({
         url:"Grzfbk/updatestatic",
         type:"post",
         data:{"dkbh":dkbh},
         dataType:"text",
         success:function(data){
          queryTbGoodsType();
         }
      });
  	} 
</script>