<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pl.jsp' starting page</title>
    
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
	<script src="resources/jqueryExt.js"></script>	<script src="resources/jquery.form.js"></script>
  <body>
  
   
<div style="font-weight:bold;font-size:40px">批量录入职工信息:</div></br><br><br>
    
        <form method="POST"  enctype="multipart/form-data" id="form1" action="uploadExcel/upload.do">  
             <table>  
             <tr>  
                <td>上传职工Excel表:</td>
                <td> <input class="btn btn-default" id="upfile" type="file" name="upfile"></td>  
             </tr>  
            <tr>  
                <!-- <td><input type="submit" value="提交" onclick="return checkData()"></td>   -->
                <td><input type="button" value="批量录入提交" class="btn btn-primary" id="btn" name="btn" ></td>  
             </tr>  
            </table>  
                     
        </form>
</body>
<script type="text/javascript">  
                //ajax 方式上传文件操作  
                 $(document).ready(function(){  
                    $('#btn').click(function(){  
                        if(checkData()){  
                          $("#jdt2").css("width","100%");
                            $('#form1').ajaxSubmit({    
                                url:'uploadExcel/ajaxUpload.do',  
                                dataType: 'text',  
                                success: resutlMsg,  
                                error: errorMsg  
                            });   
                            function resutlMsg(msg){  
                              
                               alert(msg); 
                               $("#jdt2").css("width","0%");     
                                $("#upfile").val("");  
                            }  
                            function errorMsg(){   
                                alert("导入excel出错！");      
                            }  
                        }  
                    });  
                 });  

                 //JS校验form表单信息  
                 function checkData(){  
                    var fileDir = $("#upfile").val();  
                    var suffix = fileDir.substr(fileDir.lastIndexOf("."));  
                    if("" == fileDir){  
                        alert("选择需要导入的Excel文件！");  
                        return false;  
                    }  
                    if(".xls" != suffix && ".xlsx" != suffix ){  
                        alert("选择Excel格式的文件导入！");  
                        return false;  
                    }  
                    return true;  
                 }  
</script> 
<script>
$(function(){
          getAll(1);
      });
      function getAll(pageNum){
                       
      
         $.ajax({
            url:"peraccountcwh/queryAllzgcwh",
            type:"post", 
            data:{"pageNum":pageNum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td>"+datalist[i].grzhbh+"</td>";
                   tr+="<td>"+datalist[i].bkname+"</td>";
                   tr+="<td>"+datalist[i].phoneNum+"</td>";
                   tr+="<td>"+datalist[i].IdNumbers+"</td>";
                   tr+="<td>"+datalist[i].address+"</td>";

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
	        	url : "peraccountcwh/savecwh",
	        	type : "post",
	           data:$("#form1").serialize(),
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        		alert("确认提交");
	        		test();
	        	}
	 		});
		}  
		
</script>
