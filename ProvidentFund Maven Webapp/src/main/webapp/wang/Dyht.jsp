<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Dyht.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		 <meta name="renderer" content="webkit">
     <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
     <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
	
	    <link rel="stylesheet" type="text/css" href="styles.css">
 	    <link rel="stylesheet" href="frame/layuiadmin/layui/css/layui.css" media="all">
  		<link rel="stylesheet" href="frame/layuiadmin/style/admin.css" media="all">

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
    	
<div class="layui-fluid" id="box4">
 <div class="layui-card">
			 <div class="layui-card-header">抵押表</div>			 
			   <div class="layui-card-body" style="padding: 15px;">
  	 <form id="type3"  class="form-horizontal" role="form" lay-filter="component-form-group">
   
	 <div class="layui-form-item">
		 <label class="layui-form-label">抵押房屋坐落</label>
              <div class="layui-input-inline">
                <input type="tel" name="dywfwzl"  autocomplete="off" class="layui-input">
              </div>
		<label class="layui-form-label">住房类型</label>
		  <div class="layui-input-inline">
		     <div class="layui-input-inline">
			<select class="dydy form-control"  name="dylxbh">
        	                            </select>
        	               </div>
		</div>
		  
		      <label class="layui-form-label">抵押物评估价值</label>
              <div class="layui-input-inline">
                <input type="tel" name="dywpgjz"  autocomplete="off" class="layui-input">
              </div>
              </div>
           
           
           
          </div>
          <div class="layui-form-item">
              <label class="layui-form-label">抵押人姓名</label>
              <div class="layui-input-inline">
                <input type="tel"  name="dyrxm"  autocomplete="off" class="layui-input">
              </div>
              <label class="layui-form-label">身份证号</label>
              <div class="layui-input-inline">
                <input type="text"  name="sfzh"  autocomplete="off" class="layui-input">
              </div>
          
          </div>
           <div class="layui-form-item">
       
               
              
              
          <div class="layui-form-item layui-layout-admin">
            <div class="layui-input-block">
              <div class="layui-footer" style="left: 0;">
              	<button class="layui-btn" id="prev3"  type="button" lay-filter="component-form-demo1">上一步</button>
                <button class="layui-btn" id="sava4"  type="button" lay-filter="component-form-demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              </div>
            </div>
          </div>
        </form>
</div>
</div>

</div>


    	
    	
  </body>
</html>




	
	
<script>
	   /* 页面加载函数 */
   $(function(){
      queryDyht();
  });
	

	
   
    /*查询房间类型  */
  function queryDyht(){
     $.ajax({
       url:"Dyhtxxx/dylcha",
       type:"post",
       dataType:"json",
       success:function(data){
       	$(".dydy").empty();
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            $(".dydy").append("<option value='"+obj.dylxbh+"'>"+obj.dylxmc+"</option>");
         }
       }
     });
   };
   /* 添加 */
   $(document).on("click","#sava4",function(){
      $("#type3").ajaxSubmit({
        url:"Dyhtxxx/dysave",
        type:"post",
        contentType:"application/x-www-form-urlencoded; charset=utf-8",
        dataType:"text",
        success:function(data){
           alert(data);
        }
      });
   });
  
	</script>
	
	