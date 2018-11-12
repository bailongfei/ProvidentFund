<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
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
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
		//查询提取原因输出到下拉框
		function findtqyy(){
			$.ajax({
				url:"Accumulationzhl/findtqyy",
				type:"post",
				dataType:'json',
				success:function(data){
					$("#tqyyid").empty();
					var opt="<option value=''>--请选择提取原因--</option>";
					for(var i=0;i<data.length;i++){
						var obj=data[i];
						opt+="<option value='"+obj.tqyyid+"'>"+obj.cause+"</option>";
					}
					$("#tqyyid").append(opt);
				}
			})
		}
		//查询单位信息
		function findunitName(pid){
			$.ajax({
				url:"Peraccountzhl/findUnitName",
				type:"post",
				data:{
					"peracId":pid
				},
				dataType:'json',
				success:function(data){
					$("#unitinfoid").val(data.UnitInfoId);
					$("#unitname").val(data.UnitInfoName);
					$("#pname").val(data.bkname);
					$("#grzhbh").val(data.grzhbh);
				}
			})
		}
		$(function(){
			findtqyy();
			$(":text").val('');
		});
		$(document).ready(function(){
	    	$("#tqyyid").change(function(){
	    		var tqyyId=$("#tqyyid").val();
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
	    	//失去焦点去查询
	    	$("#peracid").blur(function(){
	    		var pid=$("#peracid").val();
	    		findunitName(pid);
	    	});
	    	//根据贷款编号查询贷款信息和购房信息
	    	$("#dkxxbh").blur(function(){
	    		alert(111);
	    		$.ajax({
	    			url:"Peraccountzhl/finddkInfo",
	    			type:"post",
	    			data:{
	    				"dkxxbh":$("#dkxxbh").val()
	    			},
	    			dataType:'json',
	    			success:function(data){
	    				$("#fwdz").val(data.belocated);
	    				$("#gfhtxybh").val(data.gfxxbh);
	    				$("#fwmj").val(data.acreage);
	    				$("#fwzj").val(data.housePrice);
	    				$("#dkzje").val(data.dkje);
	    				$("#bkname").val(data.bkname);
	    				$("#idNumber").val(data.idNumber);
	    			}
	    		});
	    	});
	    	$("#apply").click(function(){
	    		$.ajax({
	    			url:"Accumulationzhl/ApplyAccumulation",
	    			type:"post",
	    			data:$("#fm").serialize(),
	    			dataType:'json',
	    			success:function(data){
	    				alert(data);
	    			}
	    		})
	    	})
	    });
	</script>
  </head>
  
  <body>
  <form action="" id="fm">
    <table class="table">
    	<tr>
    		<td>个人公积金账户:</td>
    		<td>
    			<input type="hidden" name="grzhbh" id="grzhbh">
    			<input type="text" class="form-control input-sm" id="peracid">
    		</td>
    		<td>姓名:</td>
    		<td><input type="text" id="pname" class="form-control input-sm" readonly="readonly"></td>
    		<input type="hidden" name="unitinfoid" id="unitinfoid">
    		<td>单位名称:</td>
    		<td><input type="text" id="unitname" class="form-control input-sm" readonly="readonly"></td>
    	</tr>
    	<tr>
    		<td>提取金额:</td>
    		<td><input type="text" class="form-control input-sm" name="extractingamount"></td>
    		<td>提取原因:</td>
    		<td>
    			<select id="tqyyid" name="tqyyid" class="form-control input-sm"></select>
    		</td>
    	</tr>
    	<tr id="houseaddress" style="display: none;">
    		<td>房屋地址:</td>
    		<td><input type="text" class="form-control input-sm" name="fwdz" id="fwdz"></td>
    	</tr>
    	<tr id="gf" style="display: none;">
    		<td>购房合同编号:</td>
    		<td><input type="text" class="form-control input-sm" name="gfhtxybh" id="gfhtxybh"></td>
    		<td>房屋面积:</td>
    		<td><input type="text" class="form-control input-sm" name="fwmj" id="fwmj"></td>
    	</tr>
    	<tr id="gf2" style="display: none;">
    		<!-- <td>房屋单价:</td>
    		<td><input type="text" name="fwdj"></td> -->
    		<td>房屋总价:</td>
    		<td><input type="text" class="form-control input-sm" name="fwzj" id="fwzj"></td>
    		<td>贷款总金额</td>
    		<td>
    			<input type="text" class="form-control input-sm" name="dkzje" id="dkzje">
    		</td>
    	</tr>
    	<tr id="gf3" style="display: none;">
    		<td>贷款合同编号:</td>
    		<td><input type="text" class="form-control input-sm" name="dkxxbh" id="dkxxbh"></td>
    		<td>贷款人姓名</td>
    		<td><input type="text" class="form-control input-sm" id="bkname"></td>
    		<td>贷款人身份证号</td>
    		<td><input type="text" class="form-control input-sm" id="idNumber"></td>
    	</tr>
    	<tr id="zf" style="display: none;">
    		<td>租房合同编号:</td>
    		<td><input type="text" class="form-control input-sm" name="zfhth"></td>
    		<td>房租支出</td>
    		<td>
    			<input type="text" class="form-control input-sm" name="fzzc">
    		</td>
    	</tr>
    	<tr id="tx" style="display: none;">
    		<td>退休批文文号:</td>
    		<td><input type="text" class="form-control input-sm" name="zfhth"></td>
    	</tr>
    	<tr>
    		<td><button type="button" id="apply">申请</button></td>
    	</tr>
    </table>
  </form>  
  </body>
</html>
