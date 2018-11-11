<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhufang.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
 
         
     
  
  <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-card-header">购房表</div>
      <div class="layui-card-body" style="padding: 15px;">
        <form class="layui-form" id="type1" lay-filter="component-form-group">
          <div class="layui-form-item">
             <label class="layui-form-label">商品名</label>
              <div class="layui-input-inline">
                <input type="tel" name="gfxxid"  autocomplete="off" class="layui-input">
              </div>
        		  <label class="layui-form-label">住房类型</label>
              <div class="layui-input-inline">
                 <div class="layui-input-inline">
                	<select class="sele form-control"  name="fubh">
        	                            </select>
              </div>
                
              </div>
               <label class="layui-form-label">坐落</label>
              <div class="layui-input-inline">
                <input type="tel" id="personalaccount" name="belocated"  autocomplete="off" class="layui-input">
              </div>
           
           
          </div>
          <div class="layui-form-item">
          
           <label class="layui-form-label">面积</label>
              <div class="layui-input-inline">
                <input type="text"  name="acreage"  autocomplete="off" class="layui-input">
              </div>
              <label class="layui-form-label">购房人姓名</label>
              <div class="layui-input-inline">
                <input type="tel" id="grsex1" name="namehouse"  autocomplete="off" class="layui-input">
              </div>
              <label class="layui-form-label">证件类型</label>
              <div class="layui-input-inline">
                <input type="text" id="phoneNums1" name="zjtype"  autocomplete="off" class="layui-input">
              </div>
          
          </div>
           <div class="layui-form-item">
           <label class="layui-form-label">银行账号</label>
              	<div class="layui-input-inline">
                <input type="tel" id="UnitInfoName1"  name="gfbankaccount" autocomplete="off" class="layui-input">
             	 </div>
               
              
              	<label class="layui-form-label">房屋总价</label>
              <div class="layui-input-inline">
                <input type="tel"  name="houseprice"  autocomplete="off" class="layui-input">
     
          <div class="layui-form-item layui-layout-admin">
            <div class="layui-input-block">
              <div class="layui-footer" style="left: 0;">
                <button class="layui-btn" id="sava3" lay-submit="" lay-filter="component-form-demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  
  
  
	
<script src="frame/layuiadmin/layui/layui.js"></script>  
  <script>
  layui.config({
    base: 'frame/layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'form', 'laydate'], function(){
    var $ = layui.$
    ,admin = layui.admin
    ,element = layui.element
    ,layer = layui.layer
    ,laydate = layui.laydate
    ,form = layui.form;
    
    form.render(null, 'component-form-group');

    laydate.render({
      elem: '#LAY-component-form-group-date'
    });
    
    /* 自定义验证规则 */
    form.verify({
      title: function(value){
        if(value.length < 5){
          return '标题至少得5个字符啊';
        }
      }
      ,pass: [/(.+){6,12}$/, '密码必须6到12位']
      ,content: function(value){
        layedit.sync(editIndex);
      }
    });
    
    /* 监听指定开关 */
    form.on('switch(component-form-switchTest)', function(data){
      layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
        offset: '6px'
      });
      layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
    });
    
    /* 监听提交 */
    form.on('submit(component-form-demo1)', function(data){
      parent.layer.alert(JSON.stringify(data.field), {
        title: '最终的提交信息'
      })
      return false;
    });
  });
  </script>

  </body>
</html>




<script>
  /* 页面加载函数 */
   $(function(){
     
     queryFjl();
  });

  /*查询商品类型  */
  function queryFjl(){
     $.ajax({
       url:"purchase/fjlxlist",
       type:"post",
       dataType:"json",
       success:function(data){
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            $(".sele").append("<option value='"+obj.fubh+"'>"+obj.TypeHouse+"</option>");
         }
       }
     });
   };
   /* 添加 */
   $(document).on("click","#sava3",function(){
      $("#type1").ajaxSubmit({
        url:"purchase/purchasave",
        type:"post",
        contentType:"application/x-www-form-urlencoded; charset=utf-8",
        dataType:"text",
        success:function(data){
           alert(data);
        }
      });
   });
 
</script>
