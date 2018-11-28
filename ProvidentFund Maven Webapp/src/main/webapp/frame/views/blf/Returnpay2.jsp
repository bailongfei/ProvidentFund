<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Returnpay.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="resources/js/bootstrap/css/bootstrap.min.css">  
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
	  $(function(){
         getAll();
         alert("调用");
      });
      function getAll(){         
         $.ajax({
            url:"Peraccountzhl/findaccountinfo2",
            type:"post", 
            dataType:'json',
            success:function(data){
            $("#tab").html("");
               for(var i=0;i<data.length;i++){
               	   var obj=data[i];
                   var tr="<tr>";
                   tr+="<td><input type='checkbox' name='peracId' value='"+obj.peracId+"'></td>";
				   tr+="<td>"+obj.peracId+"</td>";
                   tr+="<td>"+obj.bkname+"</td>";
                   tr+="<td>"+obj.UnitInfoName+"</td>";
                   tr+="<td>"+obj.peracBalance+"</td>";
				   tr+="</tr>";
                   $("#tab").append(tr);
               }
            }
         
         });
      }
      function returnpay(){
      	var peracIds =[]; 
	    $('input[name="peracId"]:checked').each(function(){ 
	        peracIds.push($(this).val());
	    }); 
	    $.ajax({
	    	url:"Peraccountzhl/findbperacId",
	    	type:"post",
	    	data:{
	    		"peracIds":peracIds
	    	},
	    	dataType:'json',
	    	success:function(data){
	    		$("#tab2").empty();
	    		$("#percount").val(0);
	    		for(var i=0;i<data.length;i++){
	    			var obj=data[i];
	    			var tr="<tr>";
	    			tr+="<td>"+obj.peracId+"</td>";
                    tr+="<td>"+obj.bkname+"</td>";
                    tr+="<td>"+obj.UnitInfoName+"</td>";
                    tr+="<td><input type='hidden' name='grzhbh"+i+"' value='"+obj.grzhbh+"'><input type='text' name='chje"+i+"'></td>";
	    			tr+="</tr>";
	    			$("#tab2").append(tr);
	    		}
	    		$("#percount").val(data.length);
	    	}
	    })
      }
	  $(document).ready(function(){
	      //提交冲缴
      	  $("#sub").click(function(){
      	  	$.ajax({
      	  		url:"Peraccountzhl/returnpay",
      	  		type:"post",
      	  		data:$("#fm").serialize(),
      	  		dataType:'text',
      	  		success:function(data){
      	  			alert(data);
      	  		}
      	  	})
      	  });
      	  //根据员工姓名查询
      	  $("#findbyname").click(function(){
			  var bkname=$("#bkname").val();      	  
      	      $.ajax({
	            url:"Peraccountzhl/findaccountinfo2",
	            data:{
	            	"bkname":bkname
	            },
	            type:"post", 
	            dataType:'json',
	            success:function(data){
	            $("#tab").html("");
	               for(var i=0;i<data.length;i++){
	               	   var obj=data[i];
	                   var tr="<tr>";
	                   tr+="<td><input type='checkbox' name='peracId' value='"+obj.peracId+"'></td>";
					   tr+="<td>"+obj.peracId+"</td>";
	                   tr+="<td>"+obj.bkname+"</td>";
	                   tr+="<td>"+obj.UnitInfoName+"</td>";
	                   tr+="<td>"+obj.peracBalance+"</td>";
					   tr+="</tr>";
	                   $("#tab").append(tr);
	               }
	            }
	         
	         });	
      	  })
      	  /* $("#btn").click(function(){
         	var arr = new Array();
         	 $('input[name="peracId"]:[checked]').each(function () {
                    alert($(this).val());
             });
             //alert(arr);
                $.ajax({
             	url:"",
             	type:"post",
             	data:{
             		"arr":arr
             	},
             	dataType:'json',
             	success:function(data){
             		
             	}
             }) 
         }) */
	  });
	</script>
	<style type="text/css">
		#box1{
			width: 600px;
			height: 600px;
			margin:0px auto;
			border: 1px solid #000; 
		}
	</style>
  </head>
  
  <body>
    <div id="box1" style="height: 600px;width: 600px;margin: 0px auto;">
    	<table>
    		<tr>
    			<td><input type="text" class="form-control" id="bkname" style="width:180px;" placeholder="请输入姓名"></td>
    			<td><button type="button" class="btn btn-info btn-sm" id="findbyname">搜索</button></td>
    			<td style="width: 50px;"></td>
    			<td><button type="button" onclick="returnpay()" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">冲缴</button></td>
    		</tr>
    	</table>
    	<table class="table table-bordered">	
    		<tr>
    			<td></td>
    			<td>个人账号</td>
    			<td>员工姓名</td>
    			<td>所在单位</td>
    			<td>总共缴纳</td>
    		</tr>
    		<tbody id="tab"></tbody>
    	</table>
    </div>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
	            </div>
	            <div class="modal-body">
	            	<form action="" id="fm">
	            	<input type="hidden" name="percount" id="percount">
	            	<table>
	            		<tr>
	            			<td>个人账号</td>
	            			<td>员工姓名</td>
	            			<td>所在单位</td>
	            			<td>冲回金额</td>
	            		</tr>
	            		<tbody id="tab2"></tbody>
	            	</table>
	            	</form>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" class="btn btn-primary" id="sub">提交更改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
  </body>
</html>
