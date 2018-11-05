<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'kaihu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <link rel="stylesheet" type="text/css"
	href="/ProvidentFund/resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/ProvidentFund/resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="/ProvidentFund/resources/js/jquery.min.js"></script>
<script src="/ProvidentFund/resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="/ProvidentFund/resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="/ProvidentFund/resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="/ProvidentFund/resources/jquery.form.js"></script>
  
  <link rel="stylesheet" href="/ProvidentFund/frame/layuiadmin/layui/css/layui.css">
  

 
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	
	
</head>
  
  <body>
      <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <button type="button" class="btn btn-info btn-block active btn-default">单位开户信息</button>
			
			
			<div class="tabbable" id="tabs-951674">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-201345" data-toggle="tab">单位开户</a>
					</li>
					<li >
						 <a href="#panel-933923" data-toggle="tab">导入清册</a>
					</li>
				</ul>
				
				<div class="tab-content">
					<div class="tab-pane" id="panel-201345">
						
						
						 <!--form提交表单  -->
					<form class="form-horizontal" role="form" id="form1" enctype="multipart/form-data">
					
						<div class="container"  id="home">
	<div class="row clearfix">
		<div class="col-md-12 column">
		
			<div class="row clearfix">
			          
			<div class="form-group">			
			<label for="description" class="col-sm-1 control-label">单位账户:</label>
				<div class="col-md-2 column">
				   <!--单位编号  -->
				    <input type="hidden" id="UnitInfoId" class="form-control" name="unitinfoid" placeholder="请输入">
				     <!--个人登陆账号  -->
				     <input type="hidden" id="peracid" class="form-control" name="peracid" placeholder="请输入">
				     <!-- 登录密码 -->
				     <input type="hidden" id="peracloginpw" class="form-control" name="peracloginpw" placeholder="请输入">
				     <!--交易密码  -->
				      <input type="hidden" id="peracTransactionpw" class="form-control" name="peracTransactionpw" placeholder="请输入">
				      <!--网点信息表(主键)  -->
				      <input type="hidden" id="" class="form-control" name="netinfoid" placeholder="请输入">
					<input type="text" id="UnitInfoAccount" class="form-control" name="unitinfoaccount" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-2 control-label">单位名称：</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" disabled name="" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-2 control-label">员工姓名：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" data-placement="right" data-content="" name="bkname" >
				     <span class="required" id="sp1">*</span>
				</div>
			
				</div>
			</div>
			<div class="row clearfix">
			<div class="form-group">	
				<label for="description" class="col-sm-1 control-label">员工电话</label>
				<div class="col-md-2 column">
					<input type="text" id="phoneNum" class="form-control" name="phoneNum" placeholder="请输入">	              
				    <span class="required" id="sp3">*</span>
				</div>
			<label for="description" class="col-sm-1 control-label">证件类型</label>
				<div class="col-md-2 column">
					<!-- <input type="text" id="" class="form-control" name="" placeholder="请输入"> -->
					<select class="form-control" name="IdType">
					  
					  <option value="身份证">身份证</option>
					  <option value="军人证">军人证</option>
					  <option value="驾驶证">驾驶证</option>
					</select>	              
				</div>
			<label for="description" class="col-sm-1 control-label">证件号码</label>
				<div class="col-md-2 column">
				    <input type="text" id="IdNumbers" onblur="getAge()" class="form-control" name="IdNumbers" placeholder="请输入">
				    <input type="text" id="idno"  class="form-control" name="idno" placeholder="请输入">
				   <span class="required" id="sp2">*</span>
				</div>
			<label for="description" class="col-sm-1 control-label">员工学历</label>
				<div class="col-md-2 column">
				    <!-- <input type="text" id="" class="form-control" name="" placeholder="请输入"> -->
				    <select class="form-control" name="education">
				      
				      <option value="本科">本科</option>
				      <option value="本科以上">本科以上</option>
				      <option value="大专">大专</option>
				      <option value="大专以下">大专以下</option>
				      
				    </select>
				</div>
				</div>
			</div>
			<div class="row clearfix">
			<div class="form-group">	
				<label for="description" class="col-sm-1 control-label">员工职位</label>
				<div class="col-md-2 column">
					<select class="form-control" id="zhwu" name="unitpositionid">
					   
					</select>	              
				</div>
			<label for="description" class="col-sm-1 control-label">电子邮件</label>
				<div class="col-md-2 column">
					<input type="text" id="" class="form-control" name="email" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">家庭住址</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" name="address" placeholder="请输入">
				</div>
			<label for="description" class="col-sm-1 control-label">出生日期</label>
				<div class="col-md-2 column">
				    <input type="text" id="birthday" readonly="readonly" class="form-control" name="birthday" placeholder="请输入">
				</div>
				</div>
			</div>
		
			<div class="row clearfix">
			<div class="form-group">
				<label for="description" class="col-sm-1 control-label">婚姻状态</label>
				<div class="col-md-2 column">
					<!-- <input type="text" id="" class="form-control" name="marital" placeholder="请输入"> -->	
					<select class="form-control" id="maritals" name="marital">
					  
				      <option value="未婚">未婚</option>
				      <option  value="已婚">已婚</option>
				    </select>              
				</div>
			<label for="description" class="col-sm-1 control-label">缴存基数</label>
				<div class="col-md-2 column">
				   <!-- 个人账户 -->
				    <input type="hidden" id="personalaccount" class="form-control" name="personalaccount" placeholder="请输入">
					<input type="text" id="personaldepositbase" class="form-control" name="personaldepositbase" placeholder="请输入">	              
				   <span class="required" id="sp4">*</span>
				</div>
			<label for="description" class="col-sm-1 control-label">开户银行名称</label>
				<div class="col-md-2 column">
				    <!-- <select class="form-control" id="" name="lmkbh">
				      
				    </select> -->
				    
				    <select class="form-control" id="yhlmk" name="bankName">
				      
				    </select>
				</div>
			<label for="description" class="col-sm-1 control-label">开户银行账号</label>
				<div class="col-md-2 column">
				   <!--  <input type="text" id="" class="form-control" name="brandedId" placeholder="请输入"> -->
				    <input type="text" id="yhzh" class="form-control" name="bankNameNum" placeholder="请输入">
				</div>
			</div>
			</div>
			<div class="row clearfix">
			<div class="form-group">	
				<label for="description" class="col-sm-1 control-label">单位缴存比例</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitsDepositRatio" disabled class="form-control" name="unitratedeposit" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">个人缴存比例</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitsIndividua" disabled class="form-control" name="percontributionrate" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">经办人员</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" disabled name="" placeholder="请输入">
				    <button onclick="test()">切换</button>
				</div>
			
			</div>
			</div>
		</div>
	</div>
</div>
						

						

						<input type="button" id="saveKH"  class="btn btn-primary" value="保存">
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
  
  
   function test(){
 $('#myTab li:eq(1) a').tab('show');
}
    
   
</script>