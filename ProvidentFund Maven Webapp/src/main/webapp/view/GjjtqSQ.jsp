<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'GjjtqSQ.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap-theme.min.css">
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap/js/bootstrap.min.js"></script>
  </head>
  
  <body>
  	<form action="" id="fm">
  	<div style="width: 650px;margin: 0px auto;height: 300px;margin-top: 30px;" id="box">
    <table>
    	<tr>
    		<td>个人账号：</td>
    		<td>	
    			 <input type="hidden" name="grzhbh" id="grzhbh">
			     <input type="text" class="form-control" id="peracid" style="width:180px;  placeholder="请输入名字">
    		</td>
    		<td width="50px;"></td>
    		<td>姓名：</td>
    		<td>
    			<input type="text" class="form-control" id="pname" style="width:180px; placeholder="请输入名字">
    		</td>
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td>身份证号码：</td>
    		<td>
			      <input type="text" class="form-control" id="firstname" style="width:180px; placeholder="请输入名字">
    		</td>
    		<td width="50px;"></td>
    		<td>所在单位名称：</td>
    		<td>
    			<input type="hidden" name="unitinfoid" id="unitinfoid">
    			<input type="text" class="form-control" id="unitname" style="width:180px; placeholder="请输入名字">
    		</td>
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td>公积金账户余额：</td>
    		<td>
			      <input type="text" class="form-control" id="peracBalance" style="width:180px; placeholder="请输入名字">
    		</td>
    		<td width="50px;"></td>
    		<td>申请提取金额：</td>
    		<td>
			      <input type="text" class="form-control" name="extractingamount" style="width:180px; placeholder="请输入名字">
    		</td>
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td>账户状态：</td><!-- 待改 -->
    		<td>
			      <input type="text" class="form-control" id="" style="width:180px; placeholder="请输入名字">
    		</td>
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td colspan="5">
			      <center><button type="button" class="btn btn-primary">下一步</button></center>
    		</td>
    	</tr>
    </table>
    </div>
    <div id="box2" style="width: 650px;margin: 0px auto;height: 300px;margin-top: 30px;">
    	<table>
    	<tr>
    		<td>提取原因：</td>
    		<td>
			      <select id="tqyyid" name="tqyyid" class="form-control" style="width: 180px;"></select>
    		</td>
    		
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td>房屋地址：</td>
    		<td>
			      <input type="text" class="form-control" name="fwdz" id="fwdz" style="width:180px;" placeholder="请输入名字">
    		</td>
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td>购房合同编号：</td>
    		<td>
			      <input type="text" class="form-control" name="gfhtxybh" id="gfhtxybh" style="width:180px;" placeholder="请输入名字">
    		</td>
    		<td width="50px;"></td>
    		<td>房屋面积:：</td>
    		<td>
    			<input type="text" class="form-control" name="fwmj" id="fwmj" style="width:180px;" placeholder="请输入名字">
    		</td>
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td>房屋总价：</td>
    		<td>
			      <input type="text" class="form-control" name="fwzj" id="fwzj" style="width:180px;" placeholder="请输入名字">
    		</td>
    		<td width="50px;"></td>
    		<td>贷款总金额：</td>
    		<td>
    			<input type="text" class="form-control" name="dkzje" id="dkzje" style="width:180px;" placeholder="请输入名字">
    		</td>
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td>贷款合同编号：</td>
    		<td>
			      <input type="text" class="form-control" name="dkxxbh" id="dkxxbh" style="width:180px;" placeholder="请输入名字">
    		</td>
    		<td width="50px;"></td>
    		<td>贷款人姓名：</td>
    		<td>
    			<input type="text" class="form-control" id="bkname" style="width:180px;" placeholder="请输入名字">
    		</td>
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td>贷款人身份证号：</td>
    		<td>
			      <input type="text" class="form-control" id="idNumber" style="width:180px;" placeholder="请输入名字">
    		</td>
    		
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td>租房合同编号：</td>
    		<td>
			      <input type="text" class="form-control" name="zfhth" style="width:180px;" placeholder="请输入名字">
    		</td>
    		<td width="50px;"></td>
    		<td>房租支出：</td>
    		<td>
    			<input type="text" class="form-control" name="fzzc" style="width:180px;" placeholder="请输入名字">
    		</td>
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td>退休批文文号:</td>
    		<td>
			      <input type="text" class="form-control" name="zfhth" style="width:180px;" placeholder="请输入名字">
    		</td>
    		
    	</tr>
    	<tr height="15px;"></tr>
    	<tr>
    		<td colspan="5">
			      <center><button type="button" class="btn btn-primary">下一步</button></center>
    		</td>
    	</tr>
    </table>
    </div>
    </form>
  </body>
</html>
