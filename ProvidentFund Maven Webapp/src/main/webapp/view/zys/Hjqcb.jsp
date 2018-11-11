<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Hjqcb.jsp' starting page</title>
     
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 使用模态窗口引入bootstrap ${pageContext.request.contextPath}-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery.form.js"></script>
  </head>
  
  <body>
    <table class="table table-hover">
     <thead>
       <tr class="success">
         <th>汇缴编号</th>
         <th>公积金年度</th>
         <th>缴至年月</th>
         <th>缴汇月份</th>
         <th>记账日期</th>
         <th>本次增加人数</th>
         <th>操作</th>
         <!-- <th><input type="button"  data-toggle="modal" data-target="#myModal"  class="emptys btn btn-default" value="添加"></th> -->
       </tr>
     </thead>
     <tbody id="tbody">
     
     </tbody>
     </table>
  </body>
</html>

<script>
  /* 页面加载函数 */
   $(function(){
    queryAll();
  });
  /* 查询汇缴清册表 */
  function queryAll(){
    $.ajax({
       url:"hjqcb/queryAll",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          for(var i=0;i<data.length;i++){
            var obj=data[i];
            var tr="<tr>";
                tr+="<td>"+obj.hjbh+"</td>"; 
                tr+="<td>"+obj.gjind+"</td>";
                tr+="<td>"+obj.jnmy+"</td>";
                tr+="<td>"+obj.nhyf+"</td>";
                tr+="<td>"+obj.bjjzrq+"</td>";
                tr+="<td>"+obj.bczjrs+"</td>";
                tr+="</tr>";
                $("#tbody").append(tr);
          }
       }
    });
  }
  </script>