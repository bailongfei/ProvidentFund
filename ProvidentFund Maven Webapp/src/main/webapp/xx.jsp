<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'll.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="/ProvidentFund/resources/jquery-1.11.3.min.js"></script>
    <link href="/ProvidentFund/resources/js/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link type="text/css" rel="stylesheet" href="/ProvidentFund/resources/jeDate-test.css">
    <link type="text/css" rel="stylesheet" href="/ProvidentFund/resources/jedate.css">
	<link type="text/css" rel="stylesheet" href="/ProvidentFund/resources/js/bootstrap/css/bootstrapValidator.min.css">
	<script type="text/javascript" src="/ProvidentFund/resources/jedate.js"></script>
	<script type="text/javascript" src="/ProvidentFund/resources/js/bootstrap/js/bootstrapValidator.min.js"></script>
	 <script src="/ProvidentFund/resources/jqueryExt.js"></script>
	 <script src="/ProvidentFund/resources/js/bootstrap/js/bootstrap.min.js"></script> 
  </head>
  
  <body>
     <table border="1">
        <!-- caption元素可以生成表标题，其单元格列跨度为表格的列数 -->
        <caption>学生成绩表</caption>
        <tr>
            <!-- 可以使用rowspan和colspan来合并单元格 -->
            <th rowspan="2">编号</th>
            <th rowspan="2">学号</th>
            <th rowspan="2">姓名</th>
            <th rowspan="2">性别</th>
            <th rowspan="2">年龄</th>
            <th colspan="3">成绩</th>
        </tr>
        <tr>
            <th>语文</th>
            <th>数学</th>
            <th>英语</th>
        </tr>
        <tr>
            <td>1</td>
            <td>2016001</td>
            <td>张三</td>
            <td>男</td>
            <td>13</td>
            <td>85</td>
            <td>94</td>
            <td>77</td>
        </tr>
        <tr>
            <td>2</td>
            <td>2016002</td>
            <td>李四</td>
            <td>女</td>
            <td>12</td>
            <td>96</td>
            <td>84</td>
            <td>89</td>
        </tr>
    </table>

    <a>导出表格</a>
	

</body>
</html>
 
<script>
//表单验证
  // 使用outerHTML属性获取整个table元素的HTML代码（包括<table>标签），然后包装成一个完整的HTML文档，设置charset为urf-8以防止中文乱码
        var html = "<html><head><meta charset='utf-8' /></head><body>" + document.getElementsByTagName("table")[0].outerHTML + "</body></html>";
        // 实例化一个Blob对象，其构造函数的第一个参数是包含文件内容的数组，第二个参数是包含文件类型属性的对象
        var blob = new Blob([html], { type: "application/vnd.ms-excel" });
        var a = document.getElementsByTagName("a")[0];
        // 利用URL.createObjectURL()方法为a元素生成blob URL
        a.href = URL.createObjectURL(blob);
        // 设置文件名
        a.download = "学生成绩表.xls";
</script>