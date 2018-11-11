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
  
      
  <div style="margin-top:20px;color:#5CACEE;font-weight:bold;font-size:30px">经办人信息：</div>
     

 <form  method="post" id="form1">
    	
		<div style="margin-top:25px;margin-left:15%;">
    		<label for="ntame" style="color:#5CACEE;font-weight:bold;font-size:22px;">单位名称：</label>
		<input type="text"  name="unitinfoname"  placeholder="请输入名称"></div>
		 <div style="margin-top:-38px;margin-left:35%;">
		 <label for="nyame" style="font-weight:bold;font-size:22px;color:#5CACEE">经办人姓名：</label>
		<input type="text"  name="unitinfooperatorname"  placeholder="请输入名称"></div><br><br><br><br>
		<div style="margin-top:-25px;margin-left:15%;">
    		<label for="nuame" style="font-weight:bold;font-size:22px;color:#5CACEE">经办人电话：</label>
		<input type="text"  name="unitinfooperatorphone"  placeholder="请输入名称"></div>
		<div style="margin-top:-38px;margin-left:35%;">
    		<label for="naime" style="font-weight:bold;font-size:22px;color:#5CACEE">证件类型：</label>
		<input type="text"  name="nitinfooperatortype"  value="身份证" readonly="readonly"></div>
		<div style="margin-top:-38px;margin-left:55%;">
    		<label for="naome" style="font-weight:bold;font-size:22px;color:#5CACEE">经办人证件号：</label>
		<input type="text"  name="unitinfooperatornumber"  placeholder="请输入名称"></div><br><br>
		<div style="margin-left:45%;">
		<input type="button"  class="btn btn-default btn-lg"  value="提交" onclick="test1()"/>
		</div>
    	</table>
    </form>
    </div>
    
  <table class="table table-bordered">
     
    		<tr>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">编号</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">单位名称</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">经办人姓名</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">手机号</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">证件类型</td>
    			<td style="background-color:#5CACEE;font-weight:bold;font-size:22px;">身份证号</td>
    			</tr>
    		<tbody id="tbody">
    		
    		</tbody>
    	</table>
  <div style="text-align:center">
 
   <a id="prepage"><span style="font-size:20px;font-color:#000;font-weight:bold;">上一页</span></a><a id="nextpage"><span style="font-size:20px;font-color:#000;font-weight:bold;">下一页</span></a><span style="font-size:20px;font-color:#000;font-weight:bold;">当前是第<span id="nowPage"></span>页</span>
 </div>  
     </div>
   
   </body>
</html>
<script>
$(function(){
          getAll(1);
      });
      function getAll(pageNum){
                       
      
         $.ajax({
            url:"unitinfocwh/queryAllcwh",
            type:"post", 
            data:{"pageNum":pageNum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td>"+datalist[i].UnitInfoId+"</td>";
        			tr+="<td>"+datalist[i].UnitInfoName+"</td>";
        			tr+="<td>"+datalist[i].UnitInfoOperatorName+"</td>";
        			tr+="<td>"+datalist[i].UnitInfoOperatorPhone+"</td>";
        			tr+="<td>"+datalist[i].nitInfoOperatorType+"</td>";
        			tr+="<td>"+datalist[i].UnitInfoOperatorNumber+"</td>";
/*               tr+="<td><input type='button'  value='删除' class='' onclick='delete("+datalist[i].UnitInfoId+")'/></td>";
 */        			
/*         			tr+="<td><input type='button' id='"+obj.UnitInfoId+"' value='删除' class='delete'/></td>";
 */                  tr+="</tr>";
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

			 
		/*添加 */
	 	 	 function test1(){
			$.ajax({
	        	url : "unitinfocwh/savecwh",
	        	type : "post",
	           data:$("#form1").serialize(),
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        		alert("确认提交");
	        		test();
	        	}
	 		});
		}  
		
   /* 删除 */
           $(function(){
	        $("#tbody").on("click",".delete",function(){
						var id=this.id;
					 	
					 	if(confirm("确认删除？")){
					 		$.ajax({
					 		url : "unitinfocwh/deletecwh",
					 		type : "post",
				 		contentType: "application/json; charset=utf-8",
					 		data : JSON.stringify(id),
					 		dataType : 'text',
					 		success:function(data){
					 			alert("已注销");
					 			test();
					 		}
					 	});
					 	}else{
					 		alert("取消了删除！");
					 	}
					 	
					})
			}) 
		 
</script>
