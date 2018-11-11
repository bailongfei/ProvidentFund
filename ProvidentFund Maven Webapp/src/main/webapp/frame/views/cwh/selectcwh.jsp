<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'wk.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  </head>
  
  <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
  <body>
        <div id="yi" style="text-align:center;margin-top:10px;"><FONT SIZE="6px" COLOR="#000">IC卡充值<br><br><br></FONT></div>
        <div id="rt" style="padding-left:5%"> <input type="text" class="name" onkeyup="key1()">点击搜索</div>
      
  <div id="er" style="padding-left:5%;margin-top:20px;height:100%">
    <table class="table table-hover">
	<thead>
         <tr>
            <td style="padding-right:90px;"><FONT SIZE="4px">充值编号</td>
            <td style="padding-right:90px;"><FONT SIZE="4px">姓名</td>
            <td style="padding-right:90px;"><FONT SIZE="4px">金额</td>
            <td style="padding-right:90px;"><FONT SIZE="4px">手机号</td>
    
            <td style="padding-right:90px;"><FONT SIZE="4px">操作</td> 
 
         </tr>
         </thead>
         
         <tbody id="myTab"></tbody>
        
     </table>
     </div>
     
     
     <div id="sch_1" style="display: none">
	  <table>	 	
 		 <tr>
            <td style="padding-right:90px;"><FONT SIZE="4px">充值编号</td>
            <td style="padding-right:90px;"><FONT SIZE="4px">姓名</td>
            <td style="padding-right:90px;"><FONT SIZE="4px">金额</td>
            <td style="padding-right:90px;"><FONT SIZE="4px">手机号</td>
           
            <td style="padding-right:90px;"><FONT SIZE="4px">操作</td>

         </tr>
 	  	<tbody id="drue">
 	  		
 	  	</tbody>
 	  </table>
 	</div>
      
  
  </body>
</html>
<script>
$(function(){

          $.ajax({
             url:"selectsi.action",
             type:"post",
             dataType:"json",
             success:function(data){
             //每次记载之前先清空当前页面的数据
                 $("#myTab").html('');
                 for(var i=0;i<data.length;i++){
                   var tr="<tr>";
                   tr+="<td>"+data[i].icid+"</td>";
                   tr+="<td>"+data[i].name+"</td>";
                   tr+="<td>"+data[i].money+"</td>";
                   tr+="<td>"+data[i].iphone+"</td>";
                   tr+="<td><a onclick='del("+data[i].icid+")'>删除</a></td>"; 
                   tr+="<td><input type='button' data-toggle='modal' data-target='#myModal' value='充值' class='update btn btn-primary'  id="+data[i].icid+" onclick='beforeupdate("+data[i].icid+")'/></td>";
                   tr+="</tr>"; 
                   $("#myTab").append(tr);
                   }
                 
             }
          });
          
})

function beforeupdate(icid){
alert(1);
	$.ajax({
		url:"ICfindById.action",
		data:{"i.icid":icid},
		dataType:"json",
		type:"post",
		success:function(data1){
		alert(data1);
			var i=data1;
			$("#icid").val(i.icid);
			$("#name").val(i.name);
			$("#money").val(i.money);
			$("#phone").val(i.iphone);
			
			
		}
	});
}

function key1(){
		
		//判断搜索框是否为空
		var content = $(".name").val();
		if(content==""){
			
			$("#sch_1").css("display","none");
			$("#er").css("display","block");
			return ;
		}
		if(content!=""){
		
			
			$("#sch_1").css("display","block");
			$("#er").css("display","none");
			$.ajax({
			url:"selectname.action",
			type:"post",
			data:{"name":content},
			dataType:"json",
			success:function(data){
				  $("#drue").html('');
                 for(var i=0;i<data.length;i++){
                   var tr="<tr>";
                    tr+="<td>"+data[i].icid+"</td>";
                   tr+="<td>"+data[i].name+"</td>";
                   tr+="<td>"+data[i].money+"</td>";
                   tr+="<td>"+data[i].iphone+"</td>";
                 tr+="<td><a onclick='del("+data[i].icid+")'>删除</a></td>"; 
                    tr+="<td><input type='button' data-toggle='modal' data-target='#myModal' value='充值' class='update btn btn-primary'  id="+data[i].icid+" onclick='beforeupdate("+data[i].icid+")'/></td>";
                   tr+="</tr>"; 
              $("#drue").append(tr);
                   
                   }
			}
	})}}
             
 
</script>