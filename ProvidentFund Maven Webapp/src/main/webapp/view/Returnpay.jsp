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
         getAll(1);
         
      });
      function getAll(pageNum){
         alert(pageNum);
         var bkname=$("#bkname").val();
         $.ajax({
            url:"Peraccount/findaccountinfo",
            type:"post", 
            data:{"curPage":pageNum,
            },
            dataType:'json',
            success:function(data){
            $("#tab").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
               	   var obj=datalist[i];
                   var tr="<tr>";
                   tr+="<td><input type='checkbox' name='peracId' value='"+obj.peracId+"'></td>";
				   tr+="<td>"+obj.peracId+"</td>";
                   tr+="<td>"+obj.bkname+"</td>";
                   tr+="<td>"+obj.UnitInfoName+"</td>";
                   tr+="<td>"+obj.peracBalance+"</td>";
				   tr+="</tr>";
                   $("#tab").append(tr);
               }
               $("#nowPage").html(data.curPage);
               $("#countPage").html(data.totalPages);
               //alert(data.isFirstPage)
               if(data.curPage==data.first){$("#prepage").hide()}else{
                 $("#prepage").show();
               }
                if(data.curPage==data.last){$("#nextpage").hide()}else{
                  $("#nextpage").show();
                }
            }
         
         });
      }
      function ceshi(){
      	var peracIds =[]; 
	    $('input[name="peracId"]:checked').each(function(){ 
	        peracIds.push($(this).val());
	    }); 
	    $.ajax({
	    	url:"Peraccount/findbperacId",
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
	    		$("#percount").val(data.length-1);
	    	}
	    })
      }
		 //上一页 下一页
	  $(document).ready(function(){
	  	  $("#prepage").click(function(){
             var nowpage=parseInt($("#nowPage").html());
             getAll(nowpage-1);
     	  });
     	  $("#nextpage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage+1);
      	  });
      	  $("#sub").click(function(){
      	  	$.ajax({
      	  		url:"Peraccount/returnpay",
      	  		type:"post",
      	  		data:$("#fm").serialize(),
      	  		dataType:'text',
      	  		success:function(data){
      	  			alert(data);
      	  		}
      	  	})
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
    <div id="box1">
    	<table>
    		<tr>
    			<td><input type="text" id="unitname"></td>
    			<td><input type="button" value="搜索"></td>
    		</tr>
    		<tr>
    			<td></td>
    			<td>个人账号</td>
    			<td>员工姓名</td>
    			<td>所在单位</td>
    			<td>总共缴纳</td>
    		</tr>
    		<tbody id="tab"></tbody>
    	</table>
    	<button id="prepage">上一页</button>
		当前是第<span id="nowPage"></span>页 
    	<button id="nextpage">下一页</button>&nbsp;&nbsp;
    	共<span id="countPage"></span>页
    	<input type="button" value="测试" id="btn" >
    </div>
    <button class="btn btn-primary btn-lg" onclick="ceshi()" data-toggle="modal" data-target="#myModal">开始演示模态框</button>
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
