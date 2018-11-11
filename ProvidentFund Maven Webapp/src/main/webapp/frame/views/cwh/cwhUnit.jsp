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
    <div style="margin-top:20px;font-weight:bold;font-size:30px">办理委托收款：</div>
  
 <form  method="post" id="form1" name="myForm" onsubmit="return validateForm()"method="post">
    	<div style="margin-top:25px;margin-left:10%;">
    		<label for="ntame" style="color:#5CACEE;font-weight:bold;font-size:22px;">单位名称：</label>
		<input type="text"  name="unitsname"  placeholder="请输入名称"><span class="required" id="sp1">*</span></div>
		 <div style="margin-top:-38px;margin-left:35%;">
		 <label for="nyame" style="font-weight:bold;font-size:22px;color:#5CACEE">单位开户行户名：</label>
		<input type="text"  name="unitesusername"  placeholder="请输入名称"></div>
		<div style="margin-top:-38px;margin-left:60%;">
    		<label for="nuame" style="font-weight:bold;font-size:22px;color:#5CACEE">单位开户行账号：</label>
		<input type="text"  name="unitesaccount"  placeholder="请输入账号"></div><br><br><br><br>
		<div style="margin-top:15px;margin-left:10%;">
    		<label for="naime" style="font-weight:bold;font-size:22px;color:#5CACEE">受托银行代码：</label>
		<input type="text"  name="unitestrustee"  placeholder="请输入代码"></div>
		<div style="margin-top:-38px;margin-left:35%;">
    		<label for="naome" style="font-weight:bold;font-size:22px;color:#5CACEE">受托银行名称：</label>
		<input type="text"  name="unitesbankname"  placeholder="请输入名称"></div>
    	<div style="margin-top:-38px;margin-left:60%;">
    		<label for="naome" style="font-weight:bold;font-size:22px;color:#5CACEE">催缴人：</label>
		<input type="text"  name="unitesperson"  placeholder="请输入名称"></div><br><br>
    	
    	<div style="margin-left:45%;">
		<input type="submit"  class="btn btn-default btn-lg"  value="提交" onclick="test1()"/>
		</div>
    </form>
    <div style="margin-top:25px">
      <table class="table table-bordered">
     
    		<tr>
    			<td style="font-weight:bold;font-size:22px;">编号</td>
    			<td style="font-weight:bold;font-size:22px;">单位名称</td>
    			<td style="font-weight:bold;font-size:22px;">单位开户行户名</td>
    			<td style="font-weight:bold;font-size:22px;">单位开户行账号</td>
    			<td style="font-weight:bold;font-size:22px;">受托银行代码</td>
    			<td style="font-weight:bold;font-size:22px;">受托银行名称</td>
    			<td style="font-weight:bold;font-size:22px;">催缴人</td>
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
            url:"unitcwh/queryAllcwh",
            type:"post", 
            data:{"pageNum":pageNum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td>"+datalist[i].UnitInfoAccount+"</td>";
                    tr+="<td>"+datalist[i].UnitsName+"</td>";
                   tr+="<td>"+datalist[i].UnitesUsername+"</td>";
                  tr+="<td>"+datalist[i].UnitesAccount+"</td>";
                   tr+="<td>"+datalist[i].UnitesTrustee+"</td>";
                   tr+="<td>"+datalist[i].UnitesBankname+"</td>";
                   tr+="<td>"+datalist[i].UnitesPerson+"</td>";  
                
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
		/*添加 */
			 function test1(){
			$.ajax({
	        	url : "unitcwh/savecwh",
	        	type : "post",
	           data:$("#form1").serialize(),
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        		alert(data);
	        		test();
	        	}
	 		});
		}
		//表单验证
	function validateForm(){
var x=document.forms["myForm"]["unitsname"].value;
if (x==null || x==""){
  alert("姓必须填写");
  return false;
  }
}
</script>

