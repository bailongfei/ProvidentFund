<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'repay.jsp' starting page</title>
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
       	 <th>还款编号</th>
       	  <th>个人姓名</th>
         <th>贷款账号</th>
         <th>贷款总额</th>
         <th>执行利率</th>
         <th>贷款期数信息</th>
         <th>剩余贷款期数</th>
         <th>已还款</th>
         
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
						<h4 class="modal-title" id="modalTitle1">还款信息</h4>
					</div>
					<div class="modal-body">
					  <!--form提交表单  -->
						<form class="form-horizontal"   id="form2" enctype="multipart/form-data">
							<div class="form-group">
								
								<label for="roleName" class="col-sm-2 control-label">个人编号</label>
								<div class="col-sm-4">
								<input type="text" id="dkbh" name="dkbh" class="form-control"  placeholder="请输入">
								</div>
								<label for="roleName" class="col-sm-2 control-label">个人账号</label>
								<div class="col-sm-4">
								<input type="text" id="dkzh" name="dkzh" class="form-control"  placeholder="请输入姓名">
								</div>
								
							</div>
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">贷款发放额</label>
								<div class="col-sm-4">
									<input type="text" id="dkffe" name="dkffe" class="form-control"  placeholder="请输入性别">
								</div>
								<label for="description" class="col-sm-2 control-label">执行利率</label>
								<div class="col-sm-4">
									<input type="text" id="zxll" class="form-control" name="zxll"
										placeholder="请输入"> 
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">贷款期数</label>
								<div class="col-sm-4">
									 <input type="text" id="grdkqs" class="form-control" name="grdkqs"
										placeholder="请输入"> 
										
								</div>
								<label for="description" class="col-sm-2 control-label">贷款剩余期数</label>
								<div class="col-sm-4">
									 <input type="text" id="dksyqs" class="form-control" name="dksyqs"
										placeholder="请输入"> 
										
								</div>
								
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">当前还款总金额</label>
								<div class="col-sm-4">
									 <input type="text" id="dqjhhkje" class="form-control" name="dqjhhkje"
										placeholder="请输入"> 
										
								</div>
								<label for="description" class="col-sm-2 control-label">当前应还金额</label>
								<div class="col-sm-4">
									 <input type="text" id="grdqjhghbj" class="form-control" name="grdqjhghbj"
										placeholder="请输入"> 
										
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">当前应还利息</label>
								<div class="col-sm-4">
									 <input type="text" id="dqjhghlxs" class="form-control" name="dqjhghlxs"
										placeholder="请输入"> 
										
								</div>
								<label for="description" class="col-sm-2 control-label">已还款</label>
								<div class="col-sm-4">
									 <input type="text" id="hsbjze" class="form-control" name="hsbjze"
										placeholder="请输入"> 
										
								</div>
								
								
							</div>
							
							
							<input type="button"   id="abcdef" data-toggle='modal' data-target='#myModal' class="btn btn-primary" value="保存">
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
  		
  		
  		
  		
  			 <!-- 模态框弹出录入内容 -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
			aria-labelledby="modalTitle1" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							&times;
							<!-- 关闭按钮 -->
						</button>
						<h4 class="modal-title" id="modalTitle1">还款信息明细</h4>
					</div>
					<div class="modal-body">
					  <!--form提交表单  -->
						<form class="form-horizontal"  enctype="multipart/form-data">
							<table class="table table-bordered">
								<caption>边框表格布局</caption>
								<thead>
									<tr>
										<th>还款编号</th>
										<th>还款日期</th>
										<th>还款期次</th>
										<th>还款本金</th>
										<th>还款利息</th>
									</tr>
								</thead>
								<tbody id="tbody1">

								</tbody>
							</table>
							
							
							<input type="button"   id="abcdef" data-toggle='modal' data-target='#myModal' class="btn btn-primary" value="保存">
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
     queryTbGoodsType();
  });
  /* 查询 */
  function queryTbGoodsType(){
    $.ajax({
       url:"Grzfbk/Grzquery",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          for(var i=0;i<data.length;i++){
            var obj=data[i];
            var tr="<tr>";
             	 tr+="<td>"+obj.dkbh+"</td>";
             	 tr+="<td>"+obj.name+"</td>";
                 tr+="<td>"+obj.dkzh+"</td>";
                 tr+="<td>"+obj.dkffe+"</td>";
                 tr+="<td>"+obj.zxll+"</td>";
                 tr+="<td>"+obj.grdkqs+"</td>";
                 tr+="<td>"+obj.dksyqs+"</td>";
                 tr+="<td>"+obj.hsbjze+"</td>";
                 tr+="<td><input type='button' value='还款' onclick='findbyid("+obj.dkbh+")' data-toggle='modal' data-target='#myModal' class='person btn btn-default'></td>";
              	 tr+="<td><input type='button' value='还款详情' onclick='findbyi("+obj.dkbh+")' data-toggle='modal' data-target='#myModal1' class='person btn btn-default'></td>";
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
        	 $("#dkbh").val(data.dkbh);
           $("#dkzh").val(data.dkzh);
           $("#name").val(data.name);
           $("#dkffe").val(data.dkffe);
           $("#grdkqs").val(data.grdkqs);
           $("#zxll").val(data.zxll);
           $("#grdqjhghbj").val(data.grdqjhghbj);
           $("#dqjhghlxs").val(data.dqjhghlxs);
           $("#dqjhhkje").val(data.dqjhhkje);
           $("#dksyqs").val(data.dksyqs);
             $("#hsbjze").val(data.hsbjze);
         }
         
      });
  	}
   $(document).on("click","#abcdef",function(){
   	   $.ajax({
   	   	url:"Grzfbk/updatee",
        type:"post",
        data:$("#form2").serialize(),
        success:function(){
        	queryTbGoodsType();
        }
   	   });
  
   });

  function findbyi(obj){
  	var dkbh=obj;
  	alert(dkbh);
   	 $.ajax({
   	     url:"Grzfbk/Repayid",
         type:"post",
         data:{"dkbh":dkbh},
         dataType:"json",
         success:function(data){
         $("#tbody1").empty();
         for(var i=0;i<data.length;i++){
         	var obj=data[i];
         	var tr="<tr>";
         		tr+="<td>"+obj.dkbh+"</td>";
         		tr+="<td>"+obj.hkrq+"</td>";
         		tr+="<td>"+obj.qic+"</td>";
         		tr+="<td>"+obj.yhbj+"</td>";
         		tr+="<td>"+obj.yhlx+"</td>";
         		tr+="</tr>";
                $("#tbody1").append(tr);
         }
			        
         }
         
      });
  	}

 
</script>