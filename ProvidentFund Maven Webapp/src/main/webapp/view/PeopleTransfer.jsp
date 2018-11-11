<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Perbusiness.jsp' starting page</title>
    
    
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
	<script type="text/javascript">
	  $(function(){
	  	queryUnitinfos();
      });
      function queryUnitinfos(){
      	$.ajax({
            url:"Peraccount/queryUnitinfos",
            type:"post", 
            dataType:'json',
            success:function(data){
            	$("#unit").empty();
            	var lastunitinfoid=$("#lastunitinfoid").val();
            	var opt="<option value=''>--请选择新单位--</option>";
            	for(var i=0;i<data.length;i++){
            		var obj=data[i];
            		if(obj.unitinfoid !=lastunitinfoid){
            			opt+="<option value='"+obj.unitinfoid+"'>"+obj.unitinfoname+"</option>";
            		}
            	}
            	$("#unit").append(opt);
            }
        });     
      }
      //上一页 下一页
	  $(document).ready(function(){
      	  $("#transfer").click(function(){
      	  	$.ajax({
      	  		url:"Peraccount/PeopleTransfer",
      	  		type:"post",
      	  		data:$("#fm").serialize(),
      	  		dataType:'text',
      	  		success:function(data){
      	  			if(data=='1'){
      	  				alert("转移成功!");
      	  			}
      	  		}
      	  	});
      	  });
      	  $("#peracId").blur(function(){
      	  	var peracId=$("#peracId").val();
      	  	$.ajax({
      	  		url:"Peraccount/findUnitName",
      	  		type:"post",
      	  		data:{
      	  			"peracId":peracId
      	  		},
      	  		dataType:'json',
      	  		success:function(data){
      	  			$("#grzhbh").val(data.grzhbh);
      	  			$("#lastunitinfoid").val(data.UnitInfoId);
      	  			$("#lastunitname").val(data.UnitInfoName);
      	  			$("#bkname").val(data.bkname);
      	  			queryUnitinfos();
      	  		}
      	  	});
      	  });
	  });
	  /* function UpdateStates(obj1,obj2){
	  	$.ajax({
	  		url:"Peraccount/UpdateStates",
	  		type:"post",
	  		data:{
	  			"grzhbh":obj1,
	  			"zhztbh":obj2
	  		},
	  		dataType:'text',
	  		success:function(data){
	  			if(data=='1'){
		  			alert("申请已提交 请等待审批");
		  			getAll(1);	  				
	  			}
	  		}
	  	})
	  } */
	</script>
	<style type="text/css">
		#box{
			font-size: 18px;
		}
	</style>
  </head>
  <body>
  	<form role="form" id="fm">
  	<div id="box" style="width:500px;height: 500px;float: left;">
  		<table>
  			<tr>
  				<td>个人账户:</td>
  				<td>
		    		<input class="form-control" style="width: 200px;"  type="text" name="peracId" id="peracId" placeholder="个人账号">
  				</td>
  			</tr>
  			<tr>
  				<td>证件号码:</td>
  				<td>
		    		<input class="form-control" style="width: 200px;"  type="text" id="IdNumbers" placeholder="证件号码">
  				</td>
  			</tr>
  			<tr>
  				<td>个人账户余额:</td>
  				<td>
		    		<input class="form-control" style="width: 200px;"  type="text" id="peracBalance" placeholder="个人账户余额">
  				</td>
  			</tr>
  		</table>
  			<!-- 个人账号主键 -->
	    	<input type="hidden" name="grzhbh" id="grzhbh">
	    	<!-- 原单位主键 -->
	    	<input type="hidden" id="lastunitinfoid">
	    	<h4>原单位：<input type="text" id="lastunitname"></h4>
	    	<h4>姓名：<input type="text" id="bkname"></h4>
	    	</tr>
	    	<tr>
	    		<td><button id="transfer" type="button">提交</button></td>
	    	</tr>
	    
  	</div>
  	<div id="box2" style="width:500px;height: 500px;float: left;">
  		<h3>新单位:<select id="unit" name="unitinfoid"></select></h3>
  	</div>
  	</form>
    
    
  </body>
</html>
