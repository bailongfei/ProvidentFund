<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Individualpay.jsp' starting page</title>
    
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
	href="resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="resources/js/jquery.min.js"></script>
<script src="resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="resources/jquery.form.js"></script>
  </head>
  
  <body>
    <table class="table table-hover">
     <thead>
       <tr class="success">
         <th>个人账号</th>
         <th>证件类型</th>
         <th>证件号码</th>
         <th>开户日期</th>
         <th>个人缴存基数</th>
         <th>单位月缴存额</th>
         <th>个人月缴存额</th>
         <th>月缴存额</th>
         <th>操作</th>
         <th><input type="button"  data-toggle="modal" data-target="#myModal"  class="emptys btn btn-default" value="导出"></th>
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
     queryIndividualpay();
  });
  /* 查询职工账户信息清册表 */
  function queryIndividualpay(){
    $.ajax({
       url:"Individualpay/queryIndividualpay",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          for(var i=0;i<data.length;i++){
            var obj=data[i];
            var a=obj.monPayAmount+obj.unitMonPayAmount;
            var tr="<tr>";
                 tr+="<td>"+obj.personalAccount+"</td>";
                 tr+="<td>"+obj.certificateTypet+"</td>";
                 tr+="<td>"+obj.IdNo+"</td>";
                 tr+="<td>"+obj.openingDate+"</td>";
                 tr+="<td>"+obj.personalDepositBase+"</td>";
                 tr+="<td>"+obj.monPayAmount+"</td>";
                 tr+="<td>"+obj.unitMonPayAmount+"</td>";
                 tr+="<td>"+a+"</td>";
                 tr+="</tr>";
                 $("#tbody").append(tr);
          }
       }
    });
  }
</script>