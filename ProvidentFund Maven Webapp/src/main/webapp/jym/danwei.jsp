<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'danwei.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="/ProvidentFund/resources/jquery-1.11.3.min.js"></script>
	<script src="/ProvidentFund/resources/jqueryExt.js"></script>
	<link href="/ProvidentFund/resources/layui/css/layui.css">
<script type="text/javascript"  src="/ProvidentFund/resources/layui/layui.all.js"></script>
<script type="text/javascript"  src="/ProvidentFund/resources/js/gVerify.js"></script>

  </head>
  
  <style>
  	*{
  		font-family: "微软雅黑";
  		font-weight: 100;
  	}
  	.mydiv{
  		width:100%;height:100%;margin: 0px;position: absolute;top: 0px;left: 0px;
		  background:url("/ProvidentFund/resources/imgs/picjumbo.com_HNCK3558.jpg");
		  background-size:100% 100%;
  		
  	}
  	.mytop{
  		background:rgba(255,255,255,0.8);
  		width:100%px;height:15%;s
  	}
	  .scale{
		  width:100%;
		  height:85%;
		 position:absolute;
		 left:0px;
		 top:15%;
	  }
  .dan{
  background-color:#000000;/* IE6和部分IE7内核的浏览器(如QQ浏览器)下颜色被覆盖 */
  background-color:rgba(0,0,0,0.5);}
  
  </style>
  <body>
	  <div class="mydiv" >
		  <div class="mytop" style="">
		      <div style="left:190px;top:28px;position:absolute;width:30px;height:30px;">
		     
		      	<IMG src=" /ProvidentFund/resources/11/logo.png">
		      </div>
		     <!--  <div style="left:360px;top:38px;position:absolute;width:190px;height:30px;font-size:17px;color:#01AAED;font-weight:bold;">
		      	北京住房公积金管理中心 北京市住房资金管理中心
		      </div>
		      <div style="left:580px;top:46px;position:absolute;width:190px;height:30px;font-size:18px;color:#01AAED;font-weight:bold;">
		      	网上业务平台
		      </div>
		 -->

			  <div style="left:1250px;top:36px;position:absolute;">
			  	公积金服务热线
			  	<div style="font-size:20px;color:#01AAED;font-weight:bold;">12329</div>
			  </div>
		  </div>
	  <div class="scale">
	  <div class="dan" style="position:absolute;width:320px;height:350px;border:1px solid #000;left:950px;top:100px;">
	  <h1 style="font-size:16px;color:#ffffff;position:absolute;top:20px;left:20px">认证用户登录</h1>
	  <form  id="from22">
	  <table>
	  <tr style="width:250px;height:30px;background-color:#ffffff;border:1px solid #000;top:85px;left:30px;position:absolute;">
	  <td >用户名：</td>

	  <td>  <input type="text" name="peracid" required lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">  </td>
	  </tr>
	  <tr style="width:250px;height:30px;background-color:#ffffff;border:1px solid #000;top:135px;left:30px;position:absolute;">
	  <td >登陆密码：</td>
	  <td>  <input type="password" name="peracloginpw" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">  
	  </tr>
	  <tr style="width:266px;height:30px;background-color:#ffffff;border:1px solid #000;top:185px;left:30px;position:absolute;">
	  <td >验证码：</td>
	  <td><input type="text" id="code_input" value="" placeholder="请输入验证码"/>	<!-- <button id="my_button">确定</button> --></td>
	 
	  </tr>
	  </table>
	 </form>
	  <div style="top:232px;position:absolute;left:31px;">		
			<div id="v_container" style="width: 200px;height: 50px; display: inline-block;"></div>
			<div id="changeBtn" style="color: dodgerblue; cursor: pointer; display: inline-block; margin-left: 30px;">看不清</div>	
		</div>
	 
	 
	  <div style="width:130px;height:30px;background-color:#fbb113;border:1px solid #000;top:295px;left:30px;position:absolute;">  
		  	<a href="jym/zhuce.jsp" style="color:#ffffff;position:absolute;top:5px;left:3px;text-decoration : none">未认证用户注册</a>
		  </div>
		  <div style="width:100px;height:30px;background-color:#fbb113;border:1px solid #000;top:295px;left:180px;position:absolute;">  
		  	<a onclick="fomtj()" style="color:#ffffff;position:absolute;top:5px;left:30px">登录</a>
		  </div>
	  </div>
	</div>
</body>
</html>
 <script>
 function fomtj(){
 
 	var data=$("#from22").serialize();
 	
 	$.ajax({
 		url:"Peraccount/selectPeraccount",
 		data:data,
 		type:"post",
 		dataType:"Json",
 		success:function(data){
 		if(data.bkname==0){
 			alert("用户名或密码错误！");
 		}else{
 		 
 			window.location.href="jym/shouye.jsp"; 
 			
 		}
 			
 		}
 	})
 }
 
 var verifyCode = new GVerify("v_container");
		var oInput = document.getElementById("code_input");
		var oButton = document.getElementById("my_button");
		var oDiv = document.getElementById("changeBtn");
 
		
		//input失去焦点时验证
		oInput.onblur = function(){
			var res = verifyCode.validate(oInput.value);			
			if(res){
				
			}else{
				alert("验证码错误");
			}
		}
		
		//看不清，换一张事件
		oDiv.onclick = function(){
			verifyCode.refresh();
		} 



 </script>