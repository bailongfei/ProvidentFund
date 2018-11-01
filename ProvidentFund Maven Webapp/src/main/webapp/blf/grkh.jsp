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
								         style="width: 0%;" id="progress">
								        <!-- <span class="sr-only">40% 完成</span> -->
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
				   <!--单位编号  -->
				    <input type="hidden" id="netinfoid" class="form-control" name="netinfoid" placeholder="请输入">
				     <!--个人登陆账号  -->
				     <input type="hidden" id="peracid" class="form-control" name="peracid" placeholder="请输入">
				     <input type="hidden" id="peracloginpw" class="form-control" name="peracloginpw" placeholder="请输入">
				      <input type="hidden" id="peracTransactionpw" class="form-control" name="peracTransactionpw" placeholder="请输入">
					<input type="text" id="UnitInfoAccount" class="form-control" name="unitinfoaccount" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">单位名称</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" disabled name="" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">员工姓名</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" name="bkname" placeholder="请输入">
				</div>
			<label for="description" class="col-sm-1 control-label">员工性别</label>
				<div class="col-md-2 column">
				    <!-- <input type="text" id="" class="form-control" name="" placeholder="请输入"> -->
				    <select class="form-control" name="bksex">
				      
				      <option value="男">男</option>
				      <option value="女">女</option>
				    </select>
				</div>
				</div>
			</div>
			<div class="row clearfix">
			<div class="form-group">	
				<label for="description" class="col-sm-1 control-label">员工电话</label>
				<div class="col-md-2 column">
					<input type="text" id="" class="form-control" name="phoneNum" placeholder="请输入">	              
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
				    <input type="text" id="" class="form-control" name="IdNumbers" placeholder="请输入">
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
				    <input type="text" id="" class="form-control" name="birthday" placeholder="请输入">
				</div>
				</div>
			</div>
		
			<div class="row clearfix">
			<div class="form-group">
				<label for="description" class="col-sm-1 control-label">婚姻状态</label>
				<div class="col-md-2 column">
					<!-- <input type="text" id="" class="form-control" name="marital" placeholder="请输入"> -->	
					<select class="form-control" id="" name="marital">
					  
				      <option value="未婚">未婚</option>
				      <option value="已婚">已婚</option>
				    </select>              
				</div>
			<label for="description" class="col-sm-1 control-label">缴存基数</label>
				<div class="col-md-2 column">
				   <!-- 个人账户 -->
				    <input type="hidden" id="personalaccount" class="form-control" name="personalaccount" placeholder="请输入">
					<input type="text" id="" class="form-control" name="personaldepositbase" placeholder="请输入">	              
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
				    <input type="text" id="" class="form-control" name="bankNameNum" placeholder="请输入">
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
           $("#progress").css("width","16%");
         }else{
            alert("单位账户不存在,请输入正确的账户编号!");
            $("#progress").css("width","0%");
         }
          
       }
    })
   }); 
   $(function(){
     queryZub();
     queryLmk();
   });
   /*职位  */
   function queryZub(){
      
      $.ajax({
         url:"${pageContext.request.contextPath}/utzw/queryZw",
         type:"post",
         dataType:"json",
         success:function(data){
          
           $("#zhwu").empty();
           $.each(data,function(key,val){
              $("#zhwu").append("<option value='"+val.UnitpositionId+"'>"+val.jobTitle+"</option>");
           });
         }
      });
   }
   /* 联名卡 */
    function queryLmk(){
     
      $.ajax({
         url:"${pageContext.request.contextPath}/utzw/queryLmk",
         type:"post",
         dataType:"json",
         success:function(data){
           
           $("#yhlmk").empty();
           $.each(data,function(key,val){
              $("#yhlmk").append("<option value='"+val.lmkbh+"'>"+val.bankName+"</option>");
           });
         }
      });
   }
   /* 开户 */
   $(document).on("click","#saveKH",function(){
      alert($("#form1").serialize());
      $.ajax({
         url:"${pageContext.request.contextPath}/ipay/saveIpayPer",
         type:"post",
         data:$("#form1").serialize(),
         dataType:"json",
         success:function(data){
            if(data.state>0){
              alert(data.message);
            }
         }
      });
   });
</script>