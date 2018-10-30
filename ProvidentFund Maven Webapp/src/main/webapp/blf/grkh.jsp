<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'grkh.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
      <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <button type="button" class="btn btn-info btn-block active btn-default">个人账户信息</button>
			<!-- <div class="progress">
				<div class="progress-bar progress-success">
				</div>
			</div> -->
			
			<div class="tabbable" id="tabs-951674">
				<ul class="nav nav-tabs">
					<li>
						 <a href="#panel-201345" data-toggle="tab">单个开户</a>
					</li>
					<li class="active">
						 <a href="#panel-933923" data-toggle="tab">导入清册</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane" id="panel-201345">
						
						<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success" role="progressbar"
								         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								         style="width: 40%;">
								        <span class="sr-only">40% 完成</span>
								 </div>
						</div>
						 <!--form提交表单  -->
					<form class="form-horizontal" role="form" id="form1" enctype="multipart/form-data">
					
						<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
			            <!-- <div class="form-group">
							<label for="description" class="col-sm-2 control-label">商品价格</label>
							<div class="col-sm-4">
								<input type="text" id="goodsUnitPrice" class="form-control"
									name="goodsUnitPrice" placeholder="请输入">

							</div>
						</div> -->
			<div class="form-group">			
			<label for="description" class="col-sm-1 control-label">单位账户</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoAccount" class="form-control" name="UnitInfoAccount" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">单位名称</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" disabled name="UnitInfoName" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">员工姓名</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" name="" placeholder="请输入">
				</div>
			<label for="description" class="col-sm-1 control-label">员工性别</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" name="" placeholder="请输入">
				</div>
				</div>
			</div>
			<div class="row clearfix">
			<div class="form-group">	
				<label for="description" class="col-sm-1 control-label">员工电话</label>
				<div class="col-md-2 column">
					<input type="text" id="" class="form-control" name="" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">证件类型</label>
				<div class="col-md-2 column">
					<input type="text" id="" class="form-control" name="" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">证件号码</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" name="" placeholder="请输入">
				</div>
			<label for="description" class="col-sm-1 control-label">员工学历</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" name="" placeholder="请输入">
				</div>
				</div>
			</div>
			<div class="row clearfix">
			<div class="form-group">	
				<label for="description" class="col-sm-1 control-label">员工职位</label>
				<div class="col-md-2 column">
					<input type="text" id="" class="form-control" name="" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">电子邮件</label>
				<div class="col-md-2 column">
					<input type="text" id="" class="form-control" name="" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">家庭住址</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" name="" placeholder="请输入">
				</div>
			<label for="description" class="col-sm-1 control-label">出生日期</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" name="" placeholder="请输入">
				</div>
				</div>
			</div>
		
			<div class="row clearfix">
			<div class="form-group">
				<label for="description" class="col-sm-1 control-label">婚姻状态</label>
				<div class="col-md-2 column">
					<input type="text" id="" class="form-control" name="" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">缴存基数</label>
				<div class="col-md-2 column">
					<input type="text" id="" class="form-control" name="" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">开户银行名称</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" name="" placeholder="请输入">
				</div>
			<label for="description" class="col-sm-1 control-label">开户银行账号</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" name="" placeholder="请输入">
				</div>
			</div>
			</div>
			<div class="row clearfix">
			<div class="form-group">	
				<label for="description" class="col-sm-1 control-label">单位缴存比例</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitsDepositRatio" disabled class="form-control" name="UnitsDepositRatio" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">个人缴存比例</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitsIndividua" disabled class="form-control" name="UnitsIndividua" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">经办人员</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" disabled name="" placeholder="请输入">
				</div>
			
			</div>
			</div>
		</div>
	</div>
</div>
						

						

						<input type="button" id="saveUploadOrUpdate"  class="btn btn-primary" value="保存">
					</form>
						 
						
					</div>
					<div class="tab-pane active" id="panel-933923">
						
							
						<div class="progress progress-striped active">
						    <div class="progress-bar progress-bar-success" role="progressbar"
						         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
						         style="width: 60%;">
						        <span class="sr-only">40% 完成</span>
						    </div>
						 </div>
						 <button type="button"  class="btn btn-info ">按钮</button>
						
					</div>
				</div>
			</div> 
		</div>
	</div>
</div>
  </body>
</html>
<script>
  
   /*  function queryBydwbh(obj){
   //var obj=$("#UnitInfoAccount").val();
      aletr(11+obj);
    $.ajax({
       url:"${pageContext.request.contextPath}/unfo/queryUnfo",
       type:"post",
       data:{"unitsaccount":obj},
       dataType:"json",
       success:function(data){
          alert(data);
       }
    })
   };  */
   
    $(document).on("blur","#UnitInfoAccount",function(){
    var obj=this.value;
       $.ajax({
       url:"${pageContext.request.contextPath}/unfo/queryUnfo",
       type:"post",
       data:{"unitinfoaccount":obj},
       dataType:"json",
       success:function(data){
         if(data.length>0){
           $("#UnitInfoName").val(data[0].UnitInfoName);
           $("#UnitsDepositRatio").val(data[0].UnitsDepositRatio);
           $("#UnitsIndividua").val(data[0].UnitsIndividua);
         }else{
            alert("单位账户不存在!");
         }
          
       }
    })
   }); 
</script>