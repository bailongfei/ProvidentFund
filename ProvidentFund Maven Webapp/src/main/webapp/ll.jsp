<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'll.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="/ProvidentFund/resources/js/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">

    <script src="/ProvidentFund/resources/jquery-1.11.3.min.js"></script>
  <script src="/ProvidentFund/resources/js/bootstrap/js/bootstrap.min.js"></script> 
  </head>
  
  <body>
    <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <button type="button" class="btn btn-info btn-block active btn-default">单位开户信息</button>
	<ul id="myTab" class="nav nav-tabs">
	<li class="active">
		<a href="#home" data-toggle="tab">缴存单位信息</a>
	</li>
	
	<li>
	    <a href="#ios"  data-toggle="tab">单位账户信息</a></li>
    </ul>

   <div id="myTabContent" class="tab-content">
		 <div class="tab-pane fade in active" id="home">
		    <form class="form-horizontal" role="form" id="form1" enctype="multipart/form-data">
			  
		<div class="container" >
	    <div class="col-md-22 column">
		     
		<div class="row clearfix">
			<div class="form-group">
			    <label for="description" class="col-sm-1 control-label">单位名称:</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    <label for="description" class="col-sm-2 control-label">社会信用代码：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				<label for="description" class="col-sm-2 control-label">单位地址：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				
			</div>
		</div>
				
	     <div class="row clearfix">
			  <div class="form-group">
			    <label for="description" class="col-sm-1 control-label">单位类型:</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    <label for="description" class="col-sm-2 control-label">所属行业：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				<label for="description" class="col-sm-2 control-label">经济类型：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
		 </div>
		 
		
		<div class="row clearfix">
			  <div class="form-group">
			    <label for="description" class="col-sm-1 control-label">隶属关系:</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    <label for="description" class="col-sm-2 control-label">单位邮编：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				<label for="description" class="col-sm-2 control-label">电子邮箱：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
		 </div>	
		  <div class="row clearfix">
			  <div class="form-group">
			    <label for="description" class="col-sm-1 control-label">单位发薪日</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    <label for="description" class="col-sm-2 control-label">单位设立日期：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				<label for="description" class="col-sm-2 control-label">单位开户日期：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
		 </div>
		  <div class="row clearfix">
			  <div class="form-group">
			    <label for="description" class="col-sm-1 control-label">经办人姓名</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    <label for="description" class="col-sm-2 control-label">经办人号码：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				<label for="description" class="col-sm-2 control-label">经办人证件号码：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
		 </div>
		  <div class="row clearfix">
			  <div class="form-group">
			    <label for="description" class="col-sm-1 control-label">法人代表姓名</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    <label for="description" class="col-sm-2 control-label">法人证件类型：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				<label for="description" class="col-sm-2 control-label">法人证件号码：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
		 </div>	 <div class="row clearfix">
			  <div class="form-group">
			    <label for="description" class="col-sm-1 control-label">单位社保账号:</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    <label for="description" class="col-sm-2 control-label">单位经办部门：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				<label for="description" class="col-sm-2 control-label">法人证件号码：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
		 </div>
				</div>	
				</div>
			  </form>
				<p>菜鸟教程是一个提大。</p>
			<button onclick="test()">切换</button>
	    </div>
	
		<div class="tab-pane fade" id="ios">
			 <p>iOS 是一个由</p>
		</div>
   </div>
             </div>
           </div>
</div>
	

</body>
</html>
 
<script>
  
function test(){
 $('#myTab li:eq(1) a').tab('show');
}

</script>