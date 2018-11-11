<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
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
         <th>补缴编号</th>
         <th>单位账号</th>
         <th>个人账号编号</th>
         <th>单位补缴额</th>
         <th>个人补缴额</th>
         <th>补缴人数</th>
         <th>本金金额</th>
         <th>补缴年月</th>
         <th>补缴月数</th>
         <th>补缴实收金额</th>
         <th>缴款方式</th>
         <th>缴款状态</th>
         <th>记账日期</th>   
         <th>补缴备注</th>
         <th>补缴业务类型</th>
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
     queryBjqcb();
  });
  /* 查询补缴清册表 */
  function queryBjqcb(){
    $.ajax({
       url:"bjqcb/queryBjqcb",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          for(var i=0;i<data.length;i++){
            var obj=data[i];
            var tr="<tr>";
                 tr+="<td>"+obj.bjbh+"</td>";
                 tr+="<td>"+obj.UnitInfoAccount+"</td>";
                 tr+="<td>"+obj.userId+"</td>";
                 tr+="<td>"+obj.dwbje+"</td>";
                 tr+="<td>"+obj.grbje+"</td>";
                 tr+="<td>"+obj.bjrs+"</td>";
                 tr+="<td>"+obj.bjje+"</td>";
                 tr+="<td>"+obj.bjny+"</td>";
                 tr+="<td>"+obj.bjys+"</td>";
                 tr+="<td>"+obj.bjssje+"</td>";
                 tr+="<td>"+obj.bjjkfs+"</td>";
                 tr+="<td>"+obj.bjjkzt+"</td>";
                 tr+="<td>"+obj.bjjzrq+"</td>";
                 tr+="<td>"+obj.bjbz+"</td>";
                 tr+="<td>"+obj.bjywllx+"</td>";
                 tr+="</tr>";
                 $("#tbody").append(tr);
          }
       }
    });
  }
</script>