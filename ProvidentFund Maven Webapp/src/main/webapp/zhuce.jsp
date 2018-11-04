<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhuce.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- <link rel="stylesheet" href="/ProvidentFund/resources/js/bootstrap/css/bootstrap.min.css">
	<script src="/ProvidentFund/resources/js/jsjquery.min.js"></script>
	<script src="/ProvidentFund/resources/js/bootstrap/js/bootstrap.min.js"></script> -->
	
	<link href="/ProvidentFund/resources/layui/css/layui.css" rel="stylesheet">
    <script src="/ProvidentFund/resources/jquery-1.11.3.min.js"></script>
    <script src="/ProvidentFund/resources/jqueryExt.js"></script>
    <script type="text/javascript"  src="/ProvidentFund/resources/layui/layui.all.js" charset="utf-8"></script>
 

  </head>
  
  <body>
 <div style="width:100%px;height:700px;background-color:#E0E0E0;">
  <div style="width:100%px;height:90px;background-color:#ffffff">
      <div style="left:190px;top:28px;position:absolute;width:30px;height:30px;"><IMG src="/ProvidentFund/resources/11/logo.png"></div>
      
      
  <div style="left:1250px;top:36px;position:absolute;">公积金服务热线
  <div style="font-size:20px;color:#1589bc;font-weight:bold;">12329</div>
  </div>
  </div>
  <div id="p">
  <div style="width:1100px;height:60px;background-color:#F0F0F0;left:230px;top:110px;position:absolute;">
  <p style="color:#1589bc;top:8px;position:absolute;left:5px;font-size:22px;">单位未认证用户注册->录入注册信息</p>
  </div>
  
  <form class="layui-form" id="form1" >
  <div style="width:1100px;height:110px;background-color:#ffffff;left:230px;top:180px;position:absolute;">
  <p style="color:#1589bc   ;top:15px;position:absolute;font-weight:bold;left:5px">用户基本信息：</p>
  	<div class="layui-form-item" style="left:90px;position:absolute;top:30px;">
	    <label class="layui-form-label" style="color:#1589bc;font-weight:bold;">个人姓名： <span style="color:red">*</span></label>
	    <input type="text" name="bkname" lay-verify="required" style="left:100px;width:200px;top:5px;position:absolute;"   class="layui-input">
    </div>
   
    <div class="layui-form-item" style="left:410px;position:absolute;top:30px;">
	    <label class="layui-form-label" style="color:#1589bc;font-weight:bold;">证件类型： <span style="color:red">*</span></label>
	     <div class="layui-input-block">
	    <select name="idtype"  lay-verify="required" >
       <option value=""></option>
       <option value="01">身份证</option>
	<option value="02">军官证</option>
	<option value="03">护照</option>
	<option value="04">外国人永久居留证</option>
	<option value="05">港澳居民来往内地通行证</option>
	<option value="06">台湾居民来往通行证</option>
	<option value="99">其他</option>
      </select>
      </div>
    </div>
   
   
    <div class="layui-form-item" style="left:760px;position:absolute;top:30px;">
	    <label class="layui-form-label" style="color:#1589bc   ;font-weight:bold;">证件号码： <span style="color:red">*</span></label>
	    <input type="text" name="idnumbers"style="left:100px;width:200px;top:5px;position:absolute;"   lay-verify="required|identity" autocomplete="off" class="layui-input">
    </div>
 </div>
 <div style="width:1100px;height:110px;background-color:#ffffff;left:230px;top:310px;position:absolute;">
  <p style="color:#1589bc   ;top:15px;position:absolute;font-weight:bold;left:5px">单位基本信息：</p>
    <div class="layui-form-item" style="left:90px;position:absolute;top:35px;">
	    <label class="layui-form-label" style="color:#1589bc   ;font-weight:bold;">单位名称： <span style="color:red">*</span></label>
	    <input type="text" name="unitinfoname"style="left:100px;width:200px;top:5px;position:absolute;" required  lay-verify="required" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-item" style="left:520px;position:absolute;top:35px;">
	    <label class="layui-form-label" style="color:#1589bc;font-weight:bold;width:140px;">统一社会信用代码： <span style="color:red">*</span></label>
	    <input type="text" name="unitinfocredit" style="left:160px;width:200px;top:5px;position:absolute;" required  lay-verify="required" autocomplete="off" class="layui-input">
    </div>
 </div>
 <div style="width:1100px;height:200px;background-color:#ffffff;left:230px;top:440px;position:absolute;">
  <p style="color:#1589bc   ;top:15px;position:absolute;font-weight:bold;left:5px">用户注册信息：</p>
   <div class="layui-form-item" style="left:90px;position:absolute;top:40px;">
	    <label class="layui-form-label" style="color:#1589bc   ;font-weight:bold;">手机号码： <span style="color:red">*</span></label>
	    <input type="text" name="phonenum" required style="left:100px;width:200px;top:5px;position:absolute;" lay-verify="required|phone" autocomplete="off" class="layui-input">
    </div>
    <div class="layui-form-item" style="left:620px;position:absolute;top:40px;">
	    <label class="layui-form-label" style="color:#1589bc   ;font-weight:bold;">邮箱： <span style="color:red">*</span></label>
	    <input type="text" name="email" required style="left:110px;width:200px;top:5px;position:absolute;"  lay-verify="required|email" autocomplete="off" class="layui-input">
    </div>
    
    
   <div class="layui-form-item" style="left:90px;position:absolute;top:90px;">
	    <label class="layui-form-label" style="color:#1589bc   ;font-weight:bold;">用户名： <span style="color:red">*</span></label>
	    <input type="text" name="peracid" id="peracid1"style="left:100px;width:200px;top:5px;position:absolute;" 
	    lay-verify="username" required lay-verify="required" autocomplete="off" minlength="3" class="layui-input">
	    <span style="color:red;font-size:15px;left:320px;width:330px;top:8px;position:absolute;">长度不能超过20个字符或数字，注册后不可修改</span>
    </div>
    
    
    
    <div class="layui-form-item" style="left:90px;position:absolute;top:130px;">
	    <label class="layui-form-label" style="color:#1589bc ;font-weight:bold;">登录密码： <span style="color:red">*</span></label>
	    <input type="password" name="peracloginpw"style="left:100px;width:200px;top:5px;position:absolute;"    lay-verify="pass" id="pwd1" class="layui-input">
	     <span style="font-size:15px;left:320px;width:200px;top:8px;position:absolute;">6-12的字母或数字组成</span>
    </div>
     <div class="layui-form-item" style="left:620px;position:absolute;top:130px;">
	    <label class="layui-form-label" style="color:#1589bc   ;font-weight:bold;">确认密码： <span style="color:red">*</span></label>
	    <input type="password" name="title" style="left:100px;width:200px;top:5px;position:absolute;" lay-verify="repass"  id="pwd2" class="layui-input">
    </div> 
 </div>
 
  <div class="layui-form-item" style="top:660px;left:550px;position:absolute;">
    <div class="layui-input-block">
      <button type="reset" class="layui-btn layui-btn-primary" style="background-color:#0000AA;width:70px;height:40px;color:#FFFFFF">重置</button>
      <button class="layui-btn"  lay-submit  style="background-color:#FFBB00;width:70px;height:40px;color:#FFFFFF" id="hide">下一步</button>
	  </div>
  </div>
</form>
   </div>
   

     <div style="width:1200px;height:400px;background-color:#ffffff;position:absolute;top:155px;left:152px;" id="p1">
		
		<IMG style="width:80px;height:77px;left:400px;top:70px;position:absolute;"  src=" /ProvidentFund/resources/imgs/无标题.png">
		<span style="left:500px;top:75px;position:absolute;color:#21890d;font-size:22px;font-weight:bold;">业务办理完成！</span>
		<span style="left:500px;top:130px;position:absolute;color:#21890d;font-size:18px;font-weight:bold;"> 用户名：
		 <p style name="peracid" id="peracid2" style="left:262px;top:20px;position:absolute;"> </p>
		</span>
		
		<span style="left:400px;top:210px;position:absolute;color:#ffab5e;font-size:12px;font-weight:bold;">
	 	恭喜您，单位未认证用户注册成功，请使用用户名密码登录北京住房公积金单位网上平台。
		
		</span>
		<div style="background-color:#2f78b1;width:120px;height:40px;color:#FFFFFF;left:460px;top:290px;position:absolute;">
     	<a href="/ProvidentFund/danwei.jsp" style="color:#ffffff;position:absolute;top:5px;left:17px;text-decoration:none">√点击登录</a>
     	</div>
		</div> 	
  

  
  
</div>

  </body>
</html>
<script>
	
	$(function(){
		$("#p1").hide();
	    $("#p").show();
	 	$("#form1")[0].reset();
	})
	
	layui.use('form', function(){
	  var form = layui.form;
	  
	  
	  form.verify({
		  username: function(value){
		      if(value.length < 5){
		        return '标题至少得5个字符啊';
		      }
	      }
		 ,pass: [/(.+){6,12}$/, '密码必须6到12位']
		 ,repass: function(value){
			var repassvalue = $('#pwd1').val();
			if(value != repassvalue){
			return '两次输入的密码不一致!';
			}
		 }
		});    
	
	});
	
	$("#form1").submit(function(){
	alert("555")
				$.ajax({
			        url : "Peraccount/save",
			        type : "post",
			        data : $("#form1").serialize(),
			       	 dataType : 'text',//返回的数据类型
			        success : function(data) {
			        	
			        	 $("#peracid2").html($("#peracid1").val()); 
			        	/* window.location.href="danwei.jsp";  */
		 $("#p1").show();
		    $("#p").hide();
			return false;
			        }
			 	})
			 		return false;
	});
	
	
	
 
</script>