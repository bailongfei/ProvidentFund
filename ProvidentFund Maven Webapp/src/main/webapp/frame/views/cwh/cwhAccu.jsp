<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  </head>
  <script src="resources/jquery-1.11.3.min.js"></script>
	<script src="resources/jqueryExt.js"></script>
  <body>
 <div style="font-size:40px;font-weight:bold;">提取审批:</div>
      <table class="table table-striped">
     
    		<tr>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">提取编号</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">提取金额</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">个人账号</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">姓名</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">性别</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">手机号</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">身份证号</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">审核状态</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">地址</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">月收入</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">审核</td>
    			</tr>
    		<tbody id="tbody">
    		
    		</tbody>
    	</table>
  <div style="text-align:center">
 
   <a id="prepage"><span style="font-size:20px;font-color:#000;font-weight:bold;">上一页</span></a><a id="nextpage"><span style="font-size:20px;font-color:#000;font-weight:bold;">下一页</span></a><span style="font-size:20px;font-color:#000;font-weight:bold;">当前是第<span id="nowPage"></span>页</span>
 </div>    
  </body>
</html>
<script>
$(function(){
          getAll(1);
      });
      function getAll(pageNum){
                       
      
         $.ajax({
            url:"accumulationcwh/queryAllcwh",
            type:"post", 
            data:{"pageNum":pageNum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td>"+datalist[i].accumulation+"</td>";
                   tr+="<td>"+datalist[i].ExtractingAmount+"</td>";
                    tr+="<td>"+datalist[i].peracId+"</td>";
                   tr+="<td>"+datalist[i].bkname+"</td>";
                  tr+="<td>"+datalist[i].bksex+"</td>";
                   tr+="<td>"+datalist[i].phoneNum+"</td>";
                   tr+="<td>"+datalist[i].IdNumbers+"</td>";
                   tr+="<td>"+datalist[i].grapprovalStatuss+"</td>";  
                   tr+="<td>"+datalist[i].address+"</td>";  
                   tr+="<td>"+datalist[i].monthlyProfit+"</td>";  
                   tr+="<td><input type='button' value='通过' onclick='update("+datalist[i].accumulation+")'><span class='id' style='display: none;'>"+datalist[i].accumulation+"</span></td>";

                   tr+="</tr>";
                   $("#tbody").append(tr);
               }
               $("#nowPage").html(data.pageNum);
               //alert(data.isFirstPage)
               if(data.isFirstPage){$("#prepage").hide()}else{
                 $("#prepage").show()
               }
                if(data.isLastPage){$("#nextpage").hide()}else{
                  $("#nextpage").show()
                }
            }
         
         })
      }
      $("#prepage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage-1);
      })
       $("#nextpage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage+1);
      })
	//修改		
	function update(obj){
		var id=obj;
	alert(id);
	$.ajax({
                url: "accumulationcwh/updatecwh",
                type: "post",
                data:{"accumulation":id},
                dataType: "json",
                success: function (data) {
                   if(data=='1'){
                   	alert("已通过");
                   	getAll(1);
                   }
                }
            })
	
	}
	 
</script>

