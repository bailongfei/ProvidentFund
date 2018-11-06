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
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	
	<script type="text/javascript">
	  $(function(){
         getAll(1);
      });
      function getAll(pageNum){
         alert(pageNum);
         var peracId=$("#peracId").val();
         $.ajax({
            url:"Returnpay/findbyPager",
            type:"post", 
            data:{"curPage":pageNum,
            	  "peracId":peracId
            },
            dataType:'json',
            success:function(data){
            $("#tab").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
               	   var obj=datalist[i];
                   var tr="<tr>";
				   tr+="<td>"+obj.peracId+"</td>";
                   tr+="<td>"+obj.bkname+"</td>";
                   tr+="<td>"+obj.UnitInfoName+"</td>";
                   tr+="<td>"+obj.chje+"</td>";
                   tr+="<td>"+obj.chsj+"</td>";
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
      	  $("#grperbuType").change(function(){
      	  	getAll(1);
      	  })
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
    <table class="table">
    	<tr>
    		<td colspan="4">
    			<input type="text" name="peracId" id="peracId" class="form-control" style="width: 20%;float: left;">
    		
    			<input type="button"   class="btn btn-primary"  value="搜索" onclick="getAll(1)">
    		</td>
    		
    	</tr>
    	<tr>
    		<td>个人账号</td>
    		<td>员工姓名</td>
    		<td>所在单位</td>
    		<td>冲回金额</td>
    		<td>创建时间</td>
    	</tr>
    	<tbody id="tab"></tbody>
    </table>
    
    

    	<button id="prepage" class="btn btn-default  btn-sm">&laquo;</button>
		当前是第<span id="nowPage"></span>页 
    	<button id="nextpage"  class="btn btn-default  btn-sm">&raquo;</button>&nbsp;&nbsp;
    	共<span id="countPage"></span>页
  </body>
</html>
