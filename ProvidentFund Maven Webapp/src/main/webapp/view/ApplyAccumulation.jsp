<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ApplyAccumulation.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
		function findtqyy(){
			$.ajax({
				url:"Accumulation/findtqyy",
				type:"post",
				dataType:'json',
				success:function(data){
					$("#grapprovalstatuss").empty();
					var opt="<option value=''>--请选择提取原因--</option>";
					for(var i=0;i<data.length;i++){
						var obj=data[i];
						opt+="<option value='"+obj.tqyyid+"'>"+obj.cause+"</option>";
					}
					$("#grapprovalstatuss").append(opt);
				}
			})
		}
		$(function(){
			findtqyy();
		});
		$(document).ready(function(){
	    	$("#grapprovalstatuss").change(function(){
	    		var tqyyId=$("#grapprovalstatuss").val();
	    		if(tqyyId=="1"){
	    			$("#zf").hide();
	    			$("#tx").hide();
	    			$("#houseaddress").show();
	    			$("#gf").show();
	    			$("#gf2").show();
	    			$("#gf3").show();
	    		}if(tqyyId=="2"){
	    			$("#zf").show();
	    			$("#tx").hide();
	    			$("#houseaddress").show();
	    			$("#gf").hide();
	    			$("#gf2").hide();
	    			$("#gf3").hide();
	    		}if(tqyyId=="3"){
	    			$("#zf").hide();
	    			$("#tx").show();
	    			$("#houseaddress").hide();
	    			$("#gf").hide();
	    			$("#gf2").hide();
	    			$("#gf3").hide();
	    		}
	    	});
	    });
	</script>
  </head>
  
  <body>
  <form action="" id="fm">
    <table>
    	<tr>
    		<td>个人公积金账户:</td>
    		<td><input type="text" name="grzhbh" id="grzhbh"></td>
    		<td>单位账号:</td>
    		<td><input type="text" name="unitinfoid"></td>
    		<td>单位名称:</td>
    		<td><input type="text" id="unitname"></td>
    	</tr>
    	<tr>
    		<td>提取金额:</td>
    		<td><input type="text" name="extractingamount"></td>
    		<td>提取原因:</td>
    		<td>
    			<select id="grapprovalstatuss" name="grapprovalstatuss"></select>
    		</td>
    	</tr>
    	<tr id="houseaddress" style="display: none;">
    		<td>房屋地址:</td>
    		<td><input type="text" name="fwdz"></td>
    	</tr>
    	<tr id="gf" style="display: none;">
    		<td>购房合同编号:</td>
    		<td><input type="text" name="gfhtxybh"></td>
    		<td>房屋面积:</td>
    		<td><input type="text" name="fwmj"></td>
    	</tr>
    	<tr id="gf2" style="display: none;">
    		<td>房屋单价:</td>
    		<td><input type="text" name="fwdj"></td>
    		<td>房屋总价:</td>
    		<td><input type="text" name="fwzj"></td>
    		<td>贷款总金额</td>
    		<td>
    			<input type="text" name="dkzje">
    		</td>
    	</tr>
    	<tr id="gf3" style="display: none;">
    		<td>贷款合同编号:</td>
    		<td><input type="text" name="fwdj"></td>
    		<td>贷款总金额</td>
    		<td>
    			<input type="text" name="dkzje">
    		</td>
    	</tr>
    	<tr id="zf" style="display: none;">
    		<td>租房合同编号:</td>
    		<td><input type="text" name="zfhth"></td>
    		<td>房租支出</td>
    		<td>
    			<input type="text" name="fzzc">
    		</td>
    	</tr>
    	<tr id="tx" style="display: none;">
    		<td>退休批文文号:</td>
    		<td><input type="text" name="zfhth"></td>
    	</tr>
    </table>
  </form>  
  </body>
</html>
