·<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'gtjkr.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
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
      <div class="layui-card-header">共同借款人表</div>
      <div class="layui-card-body" style="padding: 15px;">
        <form class="layui-form" action="" lay-filter="component-form-group">
          <div class="layui-form-item">
             <label class="layui-form-label">个人账户</label>
              <div class="layui-input-inline">
                <input type="tel" id="person1"  autocomplete="off" class="layui-input">
              </div>
        		  <label class="layui-form-label">姓名</label>
              <div class="layui-input-inline">
                <input type="tel" id="grname" name="gtjkrxm"  autocomplete="off" class="layui-input">
              </div>
               <label class="layui-form-label">共同借款人公积金账号</label>
              <div class="layui-input-inline">
                <input type="tel" id="personalaccount" name="gtjkrgjjzh"  autocomplete="off" class="layui-input">
              </div>
           
           
          </div>
          <div class="layui-form-item">
          
           <label class="layui-form-label">月收入</label>
              <div class="layui-input-inline">
                <input type="text"  id="shou" name="incomes"  autocomplete="off" class="layui-input">
              </div>
              <label class="layui-form-label">性别</label>
              <div class="layui-input-inline">
                <input type="tel" id="grsex" name="gtjkrxb"  autocomplete="off" class="layui-input">
              </div>
              <label class="layui-form-label">手机号</label>
              <div class="layui-input-inline">
                <input type="text" id="phoneNums" name="gtjkrsjhm"  autocomplete="off" class="layui-input">
              </div>
          
          </div>
          
          <div class="layui-form-item">
           <label class="layui-form-label">单位名称</label>
              	<div class="layui-input-inline">
                <input type="tel" id="UnitInfoName"  name="gtjkrdwmc" autocomplete="off" class="layui-input">
             	 </div>
               
              
              	<label class="layui-form-label">单位地址</label>
              <div class="layui-input-inline">
                <input type="tel"  id="UnitInfoAddress" name="gtjkrdwdz"  autocomplete="off" class="layui-input">
              </div>
             
      
           
          </div>
           <div class="layui-form-item">
            <label class="layui-form-label">身份证号</label>
            <div class="layui-input-inline">
			 <input type="tel"  id="idNumber" name="gtjkrzjhm"  autocomplete="off" class="layui-input">
         
            </div>
          </div>
          
          <div class="layui-form-item layui-layout-admin">
            <div class="layui-input-block">
              <div class="layui-footer" style="left: 0;">
                <button class="layui-btn" lay-submit="" lay-filter="component-form-demo1">立即提交</button>
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
     $("#person1").val('');
      queryFjlx()
  });
	
		/*查询个人信息表 */
   $("#person1").keyup(function(){
   	 var pid=$("#person1").val();
   	 alert(pid);
   	 $.ajax({
   	 	url:"good/queryTById",
         type:"post",
         data:{"personNo":pid},
         dataType:"json",
         success:function(data){
          		if(data!=null){
	          		var obj=data;
	          		$("#grname").val(data[0].grname)
	          		$("#personalaccount").val(data[0].personalAccount)
	          		$("#grsex").val(data[0].grsex)
	          		$("#phoneNums").val(data[0].phoneNums)
	          		$("#UnitInfoName").val(data[0].UnitInfoName)
	          		$("#UnitInfoAddress").val(data[0].UnitInfoAddress)
	          		$("#idNumber").val(data[0].idNumber)
	          	
	          			$("#shou").val(data[0].monthlyProfit)
          		}
         }
   	 })
   })		
   
	</script>
	
	
