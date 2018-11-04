<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shouye.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="/ProvidentFund/resources/layui/css/layui.css"   rel="stylesheet" type="text/css" media="all">
	<link type="text/css" rel="stylesheet" href="/ProvidentFund/resources/jeDate-test.css">
    <link type="text/css" rel="stylesheet" href="/ProvidentFund/resources/jedate.css">
	
	<script type="text/javascript" src="/ProvidentFund/resources/jedate.js"></script>
	
	<script src="/ProvidentFund/resources/jquery-1.11.3.min.js"></script>
	<script src="/ProvidentFund/resources/jqueryExt.js"></script>
	<script src="/ProvidentFund/resources/layui/layui.js"></script>
 <script type="text/javascript"  src="/ProvidentFund/resources/layui/layui.all.js" charset="utf-8"></script>
  </head>
 
	
	<style>
  *{
  		font-family: "微软雅黑";
  		font-weight: 100;
  	}
  	.mydiv{
  		width:100%;height:100%;margin: 0px;position: absolute;top: 0px;left: 0px;
		
		  background-size:100% 100%;
  		
  	}
  	.mytop{
  		background:rgba(255,255,255,0.8);
  		width:100%px;height:14%;
  	}
  
</style> 
<body>
  <div class="mydiv" >
		  <div class="mytop" style="">
		      <div style="left:130px;top:28px;position:absolute;width:30px;height:30px;">
		      	<IMG src=" /ProvidentFund/resources/11/logo.png">
		      </div>
		     
		<div style="left:1000px;top:50px;font-size:14px;position:absolute;">北京住房公积金系统欢迎您！</div>
			<div style="width:120px;height:50px;left:1200px;top:45px;position:absolute;'">
			<IMG src=" /ProvidentFund/resources/imgs/user-blue.png"><span style="font-size:14px;" id="bkname1"></span></div>
		  </div>
		  
		 <div style="width:100%;height:50px;background-color:#0080b8">
		 	<span style="position:absolute;font-size:18px;color:#ffffff;font-weight:bold;left:220px;top:109px;">首                   页</span> 
		  	<span style="position:absolute;font-size:18px;color:#ffffff;font-weight:bold;left:320px;top:109px;">辅助功能</span>
		  </div>
		 <div style="width:100%;height:750px;border:1px solid #000;background-color:#F0F0F0;">
		 
		
		 <div style="width:200px;height:500px;border:1px solid #000;">
		 
            <ul class="layui-nav layui-nav-tree " lay-filter="test">
               <li class="layui-nav-item" id="hide">登记开户</li>
               <li class="layui-nav-item"><a href="">大数据</a></li>
            </ul>
	    </div>
	
		  <div style="width:1100px;height:150px;left:220px;top:170px;position:absolute;" id="p">
		      
		       <div style="width:1100px;height:40px;background-color:#F5F5F5;">
		      	<span style="font-size:16px;color:#1589bc;position:absolute;font-weight:bold;left:13px;top:7px;" >未认证用户信息</span>
		      </div>
		      
		      <div style="width:1100px;height:110px;background-color:#FFFFFF;position:absolute;top:40px;">
		      
 				<p style="left:100px;top:10px;position:absolute;">未认证用户姓名：<span id="bkname"></span></p>
 				<p style="left:380px;top:10px;position:absolute;">未认证用户证件号码：<span id="idnumbers"></span></p>
 				<p style="left:700px;top:10px;position:absolute;">未认证用户手机号码：<span id="phonenum"></span></p>
 				<p style="left:100px;top:60px;position:absolute;">所属单位名称：<span id="unitinfoname"></span></p>
 				<p style="left:520px;top:60px;position:absolute;">所属单位统一社会信用代码：<span id="unitinfocredit"></span></p> 
		      </div>
		   </div>  
		 
		 
		  <div style="width:1200px;height:50px;left:202px;top:142px;position:absolute;"  id="p1">
		 	
		 	<span style="left:15px;top:15px;font-size:19px;position:absolute;color:#1589bc;font-weight:bold;">
		 	          单位登记
		 	</span>
		
		 	<div style="width:1200px;height:190px;background-color:#ffffff;left:10px;top:60px;position:absolute;">
  				<div style="position:absolute;width:1200px;height:40px;background-color:#fafafb;;">
  				    <p style="background-color:#ffffff;width:140px;height:30px;color:#1589bc;top:5px;position:absolute;font-size:15px;font-weight:bold;left:5px">单位核心信息：</p>
    			</div>
   		
   			  <form   id="from22">
			    <div class="layui-form-item" style="left:100px;position:absolute;top:40px;">
			      <label class="layui-form-label" style="color:#1589bc;font-weight:bold;">单位名称:<span style="color:red">*</span></label>
			      <div class="layui-input-block">
			      	<input type="text" name="unitinfoname"  id="unitinfoname1" readonly required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
			      </div>
			   </div>
			   
               <div class="layui-form-item" style="left:480px;position:absolute;top:40px;">
			      <label class="layui-form-label" style="color:#1589bc;font-weight:bold;width:150px;">统一社会信用代码:<span style="color:red">*</span></label>
			      <div class="layui-input-block">
			      <input type="text" name="unitinfocredit"  id="unitinfocredit1"  readonly style="left:65px;top:3px;position:absolute;width:170px"  required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
			      </div>
			   </div>
			   
			   </form>
			   
			   <div style="left:850px;top:45px;width:80px;height:30px;background-color:#000077;position:absolute">
			   		<div  onclick="fomtj()" style="color:#ffffff;left:8px;top:5px;position:absolute; ">质检校验</div>
			   </div>
			   
			  
			   
			   <form id="form2" class="layui-form">
			   
			    <div class="layui-form-item" style="left:100px;position:absolute;top:90px;">
			      <label class="layui-form-label" style="color:#1589bc;font-weight:bold;">单位类型:<span style="color:red">*</span></label>
			      <p style="left:110px;top:5px;position:absolute;width:190px;">
			           <select id="gslxbh" name="gslxbh" lay-verify="required">
                       </select></p>
			      </div>
			      
			   <input type="hidden" name="unitinfoid" id="unitinfoid" >
		       <input type="hidden" name="unitinfoaccount" id="unitinfoaccount" > 
		  
                <div class="layui-form-item" style="left:370px;position:absolute;top:90px;">
			      <label class="layui-form-label" style="color:#1589bc;font-weight:bold;width:150px;">单位证件类型:<span style="color:red">*</span></label>
			          <p style="left:175px;top:5px;position:absolute;width:190px;">
			          <select name="fattype"  id="jbrzjlx" lay-verify="required">
	                    <option value="01">单位注册登记证照</option>
						<option value="02">组织机构代码证</option>
						<option value="03">税务登记证</option>
					 </select></p>
			      </div>
			      
			       <div class="layui-form-item" style="left:740px;position:absolute;top:90px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位隶属关系:<span style="color:red">*</span></label>
				     <p style="left:180px;top:5px;position:absolute;width:190px;">
				      <select name="unitinfosubjection" lay-verify="required"  placeholder="请选择" >
						       
						        <option value="0">中央直属</option>
						        <option value="1">省属</option>
						        <option value="2">市属</option>
						        <option value="3">县属</option>
				      </select>
				      </p>
				  </div>
				  
			      <div class="layui-form-item" style="left:29px;position:absolute;top:140px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位法人代表姓名:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfofader" required lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
                  </div>
			   </div>
			   
			    <div class="layui-form-item" style="left:370px;position:absolute;top:140px;">
			      <label class="layui-form-label" style="color:#1589bc;font-weight:bold;width:150px;">法人代表证件类型:<span style="color:red">*</span></label>
			         <p style="left:175px;top:5px;position:absolute;width:190px;">
			        <select name="unitinfotype"  id="jbrzjlx" lay-verify="required"  style="top:7px;position:absolute;">
	                        <option value="01">身份证</option>
							<option value="02">军官证</option>
							<option value="03">护照</option>
							<option value="04">外国人永久居留证</option>
							<option value="05">港澳居民来往内地通行证</option>
							<option value="06">台湾居民来往通行证</option>
	                        <option value="99">其他</option>
					</select>
					</p>
			      </div>
			      
			      <div class="layui-form-item" style="left:740px;position:absolute;top:140px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位法人证件号码:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfonumber" required lay-verify="required" placeholder="请输入证件号码" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			     
			
   
			  <div style="width:1200px;height:370px;background-color:#ffffff;left:5px;top:220px;position:absolute;">
			   
			   <div style="position:absolute;width:1200px;height:40px;background-color:#fafafb;;">
  				<p style="background-color:#ffffff;width:140px;height:30px;color:#1589bc;top:7px;position:absolute;font-size:15px;font-weight:bold;left:5px">单位辅助信息：</p>
  				</div>
  				 
  				 <div class="layui-form-item" style="left:29px;position:absolute;top:50px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位地址:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfoaddress" style="width:350px;" required lay-verify="required" placeholder="请输入地址" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			     
			      <div class="layui-form-item" style="left:600px;position:absolute;top:50px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位邮编:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfopostcode" required lay-verify="required" placeholder="请输入邮编" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			     
			      <div class="layui-form-item" style="left:29px;position:absolute;top:105px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位电子邮箱:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfoemail" required lay-verify="required" placeholder="请输入电子邮箱" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			     
			      <div class="layui-form-item" style="left:380px;position:absolute;top:105px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位发薪日:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfopayday" id="Wcdj_wcrq" required lay-verify="required" placeholder="请输入单位发薪日" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			   
			       <div class="layui-form-item" style="left:750px;position:absolute;top:105px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位经济类型:<span style="color:red">*</span></label>
				     <p style="left:180px;top:5px;position:absolute;width:190px;">
				    <select id="Jjlxb" name="jjlxbh"  lay-verify="required"  style="top:7px;position:absolute;">
                      </select>
                       </p>
			     </div>
			     
			       <div class="layui-form-item" style="left:29px;position:absolute;top:155px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位所属行业:<span style="color:red">*</span></label>
				    <p style="left:180px;top:5px;position:absolute;width:190px;">
				        <select id="depart" name="gshylxbh"  lay-verify="required">
                       </select>
                   </p>
                  </div>
			     
			     <div class="layui-form-item" style="left:380px;position:absolute;top:155px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位社保账号:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfosocialaccount" required lay-verify="required" placeholder="单位社保账号" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			     
			     <div class="layui-form-item" style="left:750px;position:absolute;top:155px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">单位经办部门:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfosection" required lay-verify="required" placeholder="请输入单位经办部门" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			
			     <div class="layui-form-item" style="left:29px;position:absolute;top:205px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 单位设立日期:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfofoundlusd" id="Wcdj_wcrq1"  required lay-verify="required" placeholder="请输入单位设立日期" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			     
			      <div class="layui-form-item" style="left:380px;position:absolute;top:205px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 经办人姓名:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfooperatorname" required lay-verify="required" placeholder="请输入经办人姓名" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			     
			      <div class="layui-form-item" style="left:750px;position:absolute;top:205px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 经办人电话号码:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfooperatorphone" required lay-verify="required" placeholder="请输入经办人电话号码" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			    
			      <div class="layui-form-item" style="left:29px;position:absolute;top:255px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 经办人证件类型:<span style="color:red">*</span></label>
				       <p style="left:180px;top:5px;position:absolute;width:190px;">
				     <select name="nitinfooperatortype"  id="jbrzjlx" lay-verify="required">
				    
	                        <option value="01">身份证</option>
							<option value="02">军官证</option>
							<option value="03">护照</option>
							<option value="04">外国人永久居留证</option>
							<option value="05">港澳居民来往内地通行证</option>
							<option value="06">台湾居民来往通行证</option>
	                        <option value="99">其他</option>
					</select>
					</p>
			     </div>
			    
			      <div class="layui-form-item" style="left:380px;position:absolute;top:255px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 经办人证件号码:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfooperatornumber" required lay-verify="required" placeholder="请输入经办人证件号码" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			     
			      <div class="layui-form-item" style="left:750px;position:absolute;top:255px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 开户银行名称:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfobankname" required lay-verify="required" placeholder="开户银行名称" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			     
			      <div class="layui-form-item" style="left:29px;position:absolute;top:305px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 开户银行代码:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfoswiftcode" required lay-verify="required" placeholder="开户银行代码" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			</div>
			
		</form>
		
          <div class="layui-form-item" style="top:640px;left:350px;position:absolute;">
          <div class="layui-input-block">
	     
	      <button class="layui-btn" type="button" onclick="updateUnitinfo()" lay-submit lay-filter="formDemo" 
     	style="background-color:#f89000;width:90px;height:40px;color:#FFFFFF," id="hide1" >√提交</button>
         </div>
	    </div>
	  </div>
	
     
  
  
     
   </div>
    </div>
   </div>
 	<div style="width:1200px;height:50px;left:202px;top:142px;position:absolute;"  id="p3">
		 	<span style="left:15px;top:15px;font-size:19px;position:absolute;color:#1589bc;font-weight:bold;">
		 	        公积金单位开户申请
		 	</span>
		 	
		 	<form id="form3" class="layui-form">
		 	<input type="hidden" name="unitinfoid" id="unitinfoid2" >
		 
		<div style="width:1200px;height:190px;background-color:#ffffff;left:10px;top:60px;position:absolute;">
  				<div style="position:absolute;width:1200px;height:40px;background-color:#fafafb;;">
  				<p style="background-color:#ffffff;width:140px;height:30px;color:#1589bc;top:5px;position:absolute;font-size:15px;font-weight:bold;left:5px">
  				单位登记信息：</p>
    			</div>
   		      <div class="layui-form-item" style="left:100px;position:absolute;top:50px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 单位登记号:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitinfoaccount" id="unitinfoaccount2" required lay-verify="required" placeholder="请输入邮编" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			    <div class="layui-form-item" style="left:650px;position:absolute;top:50px;">
			      <label class="layui-form-label" style="color:#1589bc;font-weight:bold;">单位名称:<span style="color:red">*</span></label>
			      <div class="layui-input-block">
			      	<input type="text"  name="unitinfoname"  id="unitinfoname2" readonly required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
			      </div>
			   </div>
               <div class="layui-form-item" style="left:100px;position:absolute;top:110px;">
			      <label class="layui-form-label" style="color:#1589bc;font-weight:bold;width:150px;">统一社会信用代码:<span style="color:red">*</span></label>
			      <div class="layui-input-block">
			      <input type="text" name="unitinfocredit"  id="unitinfocredit2" readonly style="left:70px;top:3px;position:absolute;width:170px"  required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
			      </div>
			   </div>
			 <div class="layui-form-item" style="left:580px;position:absolute;top:110px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 单位类型:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="gslxbh"  id="gslxbh2" required lay-verify="required" placeholder="请输入邮编" autocomplete="off" class="layui-input">
                    </div>
			     </div>  
		</div>	 
		 	
		 	<div style="width:1200px;height:390px;background-color:#ffffff;left:10px;top:280px;position:absolute;">
  				<div style="position:absolute;width:1200px;height:40px;background-color:#fafafb;;">
  				<p style="background-color:#ffffff;width:140px;height:30px;color:#1589bc;top:5px;position:absolute;font-size:15px;font-weight:bold;left:5px">
  				公积金账户信息：</p>
    			</div>
   		      <div class="layui-form-item" style="left:100px;position:absolute;top:50px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 公积金账户名称:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitsname" required lay-verify="required" placeholder="请输入公积金账户名称" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			      <div class="layui-form-item" style="left:580px;position:absolute;top:50px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 单位账户状态:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitesstate" required lay-verify="required" placeholder="请输入单位账户状态" autocomplete="off" class="layui-input">
                    </div>
			     </div>  
			      <div class="layui-form-item" style="left:100px;position:absolute;top:110px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 单位缴存比例:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitsdepositratio" required lay-verify="required" placeholder="请输入单位缴存比例" autocomplete="off" class="layui-input">
                    </div>
			     </div>  
               <div class="layui-form-item" style="left:580px;position:absolute;top:110px;">
			      <label class="layui-form-label" style="color:#1589bc;font-weight:bold;width:150px;">个人缴存比例:<span style="color:red">*</span></label>
			      <div class="layui-input-block">
			      <input type="text"  id="unitsindividua"  style="left:70px;top:3px;position:absolute;width:170px"  required  lay-verify="required" placeholder="请输入个人缴存比例" autocomplete="off" class="layui-input">
			      </div>
			   </div>
			
			     <div class="layui-form-item" style="left:100px;position:absolute;top:160px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 单位开户行户:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitesusername" required lay-verify="required" placeholder="请输入单位开户行户" autocomplete="off" class="layui-input">
                    </div>
			     </div>
			     <div class="layui-form-item" style="left:580px;position:absolute;top:160px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;"> 单位开户行账:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitesaccount" required lay-verify="required" placeholder="请输入单位开户行账" autocomplete="off" class="layui-input">
                    </div>
			     </div>  
               <div class="layui-form-item" style="left:100px;position:absolute;top:210px;">
			      <label class="layui-form-label" style="color:#1589bc;font-weight:bold;width:150px;">受托银行名称:<span style="color:red">*</span></label>
			      <div class="layui-input-block">
			      <input type="text" name="unitesbankname"    style="left:70px;top:3px;position:absolute;width:170px"  required  lay-verify="required" placeholder="请输入受托银行名称" autocomplete="off" class="layui-input">
			      </div>
			   </div>
			 <div class="layui-form-item" style="left:580px;position:absolute;top:210px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">受托银行代码:<span style="color:red">*</span></label>
				    <div class="layui-input-inline">
                          <input type="text" name="unitestrustee" required lay-verify="required" placeholder="请输入受托银行代码" autocomplete="off" class="layui-input">
                    </div>
			     </div>  
			     	 <div class="layui-form-item" style="left:100px;position:absolute;top:260px;">
				    <label class="layui-form-label"  style="color:#1589bc;font-weight:bold;width:150px;">催缴人:<span style="color:red">*</span></label>
				    <div class="layui-input-inline" >
                          <input type="text" name="unitesperson" required lay-verify="required" placeholder="请输入催缴人" autocomplete="off" class="layui-input">
                    </div>
			     </div>  
		</div>	 
		 	
		 	 <button class="layui-btn" type="button"  onclick="insertUnitsaccount()" lay-submit lay-filter="formDemo" 
     	style="background-color:#f89000;width:90px;height:40px;color:#FFFFFF;top:610px;left:530px;position:absolute;" id="hide3" >√提交</button>
		 	</form>
	</div> 	
	
 <div style="width:1200px;height:50px;left:202px;top:142px;position:absolute;"  id="p2">
		 	<span style="left:15px;top:15px;font-size:19px;position:absolute;color:#1589bc;font-weight:bold;">
		 	          流程结束
		 	</span>
		 	
		<div style="width:1200px;height:400px;background-color:#ffffff;position:absolute;top:55px;left:12px;">
		
		<IMG style="width:80px;height:77px;left:400px;top:70px;position:absolute;"  src=" /ProvidentFund/resources/imgs/无标题.png">
		<span style="left:500px;top:75px;position:absolute;color:#21890d;font-size:22px;font-weight:bold;">业务办理完成！</span>
		<span style="left:500px;top:130px;position:absolute;color:#21890d;font-size:18px;font-weight:bold;"> 单位登记号：
		  <p  name="unitinfoaccount" id="unitinfoaccount1" style="left:102px;top:5px;position:absolute;"> </p>
		</span>
		<span style="left:500px;top:180px;position:absolute;color:#ffab5e;font-size:14px;font-weight:bold;">
	 	 为方便单位办理业务，请您牢记单位登记号。 
		
		</span>
		<button class="layui-btn" type="button"  lay-submit  id="hide2" 
     	style="background-color:#2f78b1;width:240px;height:40px;color:#FFFFFF;left:460px;top:290px;position:absolute;">
     	 √点击办理公积金开户申请业务</button>
		</div> 	
     </div>
     
  <div style="width:1200px;height:50px;left:202px;top:142px;position:absolute;"  id="p4">
		 	<span style="left:15px;top:15px;font-size:19px;position:absolute;color:#1589bc;font-weight:bold;">
		 	          流程结束
		 	</span>
		 	
		<div style="width:1200px;height:400px;background-color:#ffffff;position:absolute;top:55px;left:12px;">
		
		<IMG style="width:80px;height:77px;left:400px;top:70px;position:absolute;"  src=" /ProvidentFund/resources/imgs/无标题.png">
		<span style="left:500px;top:75px;position:absolute;color:#21890d;font-size:22px;font-weight:bold;">业务办理完成！</span>
		<!-- <span style="left:500px;top:130px;position:absolute;color:#21890d;font-size:18px;font-weight:bold;"> 单位登记号：
		  <p  name="unitinfoaccount" id="unitinfoaccount1" style="left:102px;top:5px;position:absolute;"> </p>
		</span>
		<span style="left:500px;top:180px;position:absolute;color:#ffab5e;font-size:14px;font-weight:bold;">
	 	 为方便单位办理业务，请您牢记单位登记号。 
		
		</span> -->
		<button class="layui-btn" type="button" onclick="" lay-submit lay-filter="formDemo"  
     	style="background-color:#2f78b1;width:240px;height:40px;color:#FFFFFF;left:460px;top:290px;position:absolute;">
     	 √点击办理公积金开户申请业务</button>
		</div> 	
     </div>
   </body>
</html>
<script type="text/javascript" language="javascript">
$(function(){
	    $("#p1").hide();
	     $("#p").show();
		$("#p2").hide();//隐藏
		$("#p3").hide();
		$("#p4").hide();
			 $("#form2")[0].reset(); 
		
	})
		
		$("#hide").click(function(){
			$("#p1").show();
			 $("#p").hide();
			$("#p2").hide();
			$("#p3").hide();
		});
		 $("#hide1").click(function(){
			$("#p").hide();
			 $("#p1").hide();
			$("#p2").show();
			$("#p3").hide();
				return false;
		}); 
		$("#hide2").click(function(){
		 $("#p1").hide();
		    $("#p").hide();
			$("#p2").hide();
			$("#p3").show();
			$("#p4").hide();
			
		});
		$("#hide3").click(function(){
		 $("#p1").hide();
		    $("#p").hide();
			$("#p2").hide();
			$("#p3").hide();
			$("#p4").show();
			return false;
		}); 
		
function randomPassword(size)
{
  var seed = new Array('1','2','3','4','5','6','7','8','9'
  );//数组
  seedlength = seed.length;//数组长度
  var createPassword = '';
  for (i=0;i<size;i++) {
    j = Math.floor(Math.random()*seedlength);
    createPassword += seed[j];
  }
  return createPassword;
}



layui.use(['form','element'], function(){
  var element = layui.element;
  var form = layui.form;
  
  
});



function updateUnitinfo(){

	        		alert($("#gslxbh").val())
	        $.ajax({
	        	url : "Peraccount/updateUnitinfo",
	        	type : "post",
	        	data : $("#form2").serialize(),
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        		 $("#gslxbh2").val($("#gslxbh  option:selected").text());
	        	
	        		 
	        	
	        	}
	 		});
	 		return false;
	 		
		}
		
	function insertUnitsaccount(){

	        		
			$.ajax({
	        	url : "Peraccount/insertUnitsaccount",
	        	type : "post",
	        	data : $("#form3").serialize(),
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        		
	        		
	        		 
	        	
	        	}
	 		});
	 		return false;
		}	
//单位所属行业查询
function findDepart(){	
		 $.ajax({
	     url:"Peraccount/selectGshylx",
		 data:{},//绑定要给后台提交的数据
		 dataType:'json',
		 type:"post",
		 async:true,
		 success:function(data){
		 for(var i=0;i<data.length;i++){
		  $("#depart").append("<option value='"+data[i].gshylxbh+"'>"+data[i].gshylxmc+"</option>");
		 	}
		 	
		      }
		  });		
	}
//单位类型查询
function findgslxbh(){	
		 $.ajax({
	     url:"Peraccount/selectGslxb",
		 data:{},//绑定要给后台提交的数据
		 dataType:'json',
		 type:"post",
		 async:true,
		 success:function(data){
		 for(var i=0;i<data.length;i++){
		  $("#gslxbh").append("<option value='"+data[i].gslxbh+"'>"+data[i].gslxmc+"</option>");
		 	}
		 	
		      }
		  });		
	}
	//单位经济类型查询
function findJjlxb(){	
		 $.ajax({
	     url:"Peraccount/selectJjlxb",
		 data:{},//绑定要给后台提交的数据
		 dataType:'json',
		 type:"post",
		 async:true,
		 success:function(data){
		 for(var i=0;i<data.length;i++){
		  $("#Jjlxb").append("<option value='"+data[i].jjlxbh+"'>"+data[i].jjlxmc+"</option>");
		 	}
		 	
		      }
		  });		
	}
	
function fomtj(){
 
 	var data=$("#from22").serialize();
 	
 	$.ajax({
 		url:"Peraccount/selectUnitinfot",
 		data:data,
 		type:"post",
 		dataType:"Json",
 		success:function(data){
 		if(data.ustateid==0){
 			alert("单位已登记开户，单位登记号为：XXXXXXXX，不可重复开户！");
 		}if(data.ustateid==1){
 		alert("单位未登记开户，请开户！");
 		}
 			
 		}
 	})
 }
	function test(){
	
		 	$.ajax({
        	url : "Peraccount/selectPeraccount1",
        	type : "post",
        	async : true,
       	 	dataType : 'Json',
        	success : function(data) {
                $("#unitinfoid").val(data.unitinfoid);
                 $("#unitinfoid2").val(data.unitinfoid);
        		$("#unitinfoname").html(data.unitinfoname);
        		$("#unitinfoname").val(data.unitinfoname);
        		$("#unitinfoname1").val(data.unitinfoname);
        		$("#unitinfoname2").val(data.unitinfoname);
        		$("#bkname1").html(data.bkname);
        		$("#bkname").html(data.bkname);
        		$("#idnumbers").html(data.idnumbers);
        		$("#phonenum").html(data.phonenum);
        		$("#unitinfocredit").html(data.unitinfocredit);
        		$("#unitinfocredit").val(data.unitinfocredit);
        		$("#unitinfocredit1").val(data.unitinfocredit);
        		$("#unitinfocredit2").val(data.unitinfocredit);
        		
        
        	}
 		});
		}
		//随机获取单位登记号
		function suiji(){
		var ii=randomPassword(8);
            $("#unitinfoaccount").val(ii); 
             $("#unitinfoaccount").html(ii); 
              $("#unitinfoaccount1").html(ii); 
              $("#unitinfoaccount2").val(ii); 
		}
			$(function(){
				test();
				findDepart();
				findgslxbh();
				findJjlxb();
				suiji();
			})
			
			
var start = {}, end = {};
    jeDate('#Wcdj_wcrq','#Wcdj_wcrq1',{
        format: 'YYYY-MM-DD ',
        minDate: '2014-06-16 ', //设定最小日期为当前日期
        maxDate: function (that) {
            //that 指向实例对象
            return jeDate.valText(that.valCell) == "" ? jeDate.nowDate({DD:0}) : start.maxDate;
        }, //设定最大日期为当前日期
        
    });
var start = {}, end = {};
    jeDate('#Wcdj_wcrq1',{
        format: 'YYYY-MM-DD ',
        minDate: '2014-06-16 ', //设定最小日期为当前日期
        maxDate: function (that) {
            //that 指向实例对象
            return jeDate.valText(that.valCell) == "" ? jeDate.nowDate({DD:0}) : start.maxDate;
        }, //设定最大日期为当前日期
        
    });
    function LinkageEndDate(istg) {
        return {
            trigger : istg || "click",
            format: 'YYYY-MM-DD ',
            minDate: function (that) {
                //that 指向实例对象
                var nowMinDate = jeDate.valText('#Wcdj_wcrq') == "" && jeDate.valText(that.valCell) == "";
                return nowMinDate ? jeDate.nowDate({DD:0}) : end.minDate ;
            }, //设定最小日期为当前日期
            maxDate: '2099-06-16 ', //设定最大日期为当前日期
            donefun: function(obj){
                start.maxDate = obj.val; //将结束日的初始值设定为开始日的最大日期
            }
        };    
    }
      //蓝色主题色
    
    
    
    jeDate("#Wcdj_wcrq",{
        theme:{ bgcolor:"#00A1CB",color:"#ffffff", pnColor:"#00CCFF"},
        format: "YYYY-MM-DD"
    });

</script>