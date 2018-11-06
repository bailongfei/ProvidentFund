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
  </head>
  <body>
  	<form action="" id="fm">
    <table>
    	<tr>
    		<td>		<!-- 个人账户主键 -->
    				    <input type="hidden" name="grzhbh" id="grzhbh">
    			个人账户：<input type="text" name="peracId" id="peracId">
    		</td>
    		<td>	  
    				  <!-- 原单位主键 -->
    				  <input type="hidden" id="lastunitinfoid">
    			原单位：<input type="text" id="lastunitname">
    		</td>
    	</tr>
    	<tr>
    		<td>姓名：<input type="text" id="bkname"></td>
    		<td>新单位:<select id="unit" name="unitinfoid"></select></td>
    	</tr>
    	<tr>
    		<td><button id="transfer" type="button">提交</button></td>
    	</tr>
    </table>
    </form>
  </body>
</html>
