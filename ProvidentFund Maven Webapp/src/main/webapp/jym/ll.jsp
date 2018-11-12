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
    <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <button type="button" class="btn btn-info btn-block active btn-default">单位开户信息</button>
	<ul id="myTab" class="nav nav-tabs">
	<li class="active">
		<a href="#home" data-toggle="tab">登记信息</a>
	</li>
	
	<li>
	    <a href="#ios"  data-toggle="tab">单位开户</a></li>
   
     
    </ul>
   <div id="myTabContent" class="tab-content">
   <!-- 登记信息 -->
		 <div class="tab-pane fade in active" id="home">
		    <form class="form-horizontal"  id="form1" >
			  
		<div class="container" >
	    <div class="col-md-22 column">
		     <div class="row clearfix">
			<div class="form-group">
			</div></div>
			<div class="row clearfix">
			<div class="form-group">
			 <input type="hidden" name="unitinfoaccount" id="unitinfoaccount" > 
			</div></div>
		<div class="row clearfix">
		
			<div class="form-group">
			    <label for="description" class="col-sm-1 control-label">单位名称:</label>
				<div class="col-md-2 column">
					<input type="text" id="unitinfoname" name="unitinfoname"class="form-control" data-toggle="popover" placeholder="请输入" >	              
				</div>
				</div>
				
			    <div class="form-group">
			     <label for="description" class="col-sm-1 control-label">单位邮编：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" name="unitinfopostcode"class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			    
				</div>
				
				<div class="form-group">
				<label for="description" class="col-sm-1 control-label">单位地址：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" name="unitinfoaddress"class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
			
				<div class="form-group">
				<label for="description" class="col-sm-1 control-label">单位类型:</label>
				<div class="col-md-2 column">
				 <select class="form-control"  id="gslxbh" name="gslxbh">
				   </select></div>
				   </div>
				<div class="form-group">
				 <label for="description" class="col-sm-1 control-label">所属行业：</label>
				<div class="col-md-2 column">
					<select   id="depart" name="gshylxbh" class="form-control" >
				    </select></div>
				    </div>
				    
				<div class="form-group">
				<label for="description" class="col-sm-1 control-label">经济类型：</label>
				<div class="col-md-2 column">
				    <select   id="Jjlxb" name="jjlxbh" class="form-control" >
				    </select>
				</div></div>
				
				<div class="form-group">
				<label for="description" class="col-sm-1 control-label">隶属关系:</label>
				<div class="col-md-2 column">
					<select name="unitinfosubjection" class="form-control" >
						       
						        <option value="0">中央直属</option>
						        <option value="1">省属</option>
						        <option value="2">市属</option>
						        <option value="3">县属</option>
				      </select>
				</div>
				</div>
				
		</div>
				
	     
		 
		
		<div class="row clearfix" style="width:1300px;height:600px;position:absolute;top:100px;left:300px;">
		
			  
				<div class="form-group">
			   <label for="description" class="col-sm-2 control-label">社会信用代码：</label>
				<div class="col-md-2 column">
				    <input type="text" id="unitinfocredit"  name="unitinfocredit" class="form-control" data-toggle="popover" placeholder="请输入" >
				    <span id="accountText"></span>
				</div>
				</div>
				<div class="form-group">
				<label for="description" class="col-sm-2 control-label">电子邮箱：</label>
				<div class="col-md-2 column">
				    <input type="text"  name="unitinfoemail" class="form-control" data-toggle="popover" placeholder="请输入"  >
				</div>
			</div>
			<div class="form-group">
			<label for="description" class="col-sm-2 control-label">单位发薪日:</label>
				<div class="col-md-2 column">
					<input type="text" id="Wcdj_wcrq" name="unitinfopayday" class="form-control" data-toggle="popover" placeholder="请输入" >	              
				</div>
			</div>
			<div class="form-group">
			<label for="description" class="col-sm-2 control-label">单位设立日期：</label>
				<div class="col-md-2 column">
				    <input type="text" id="Wcdj_wcrq1"  name="unitinfofoundlusd"class="form-control" data-toggle="popover" placeholder="请输入">
				</div>
			</div>
			<div class="form-group">
			<label for="description" class="col-sm-2 control-label">单位开户日期：</label>
				<div class="col-md-2 column">
				    <input type="text" id="Wcdj_wcrq2"  name="unitinfoaccountlusd"class="form-control" data-toggle="popover" placeholder="请输入"  >
				</div>
			</div>
			<div class="form-group">
			 <label for="description" class="col-sm-2 control-label">经办人姓名:</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" name="unitinfooperatorname" class="form-control" data-toggle="popover" placeholder="请输入" >	              
				</div>
			</div>
			<div class="form-group">
			<label for="description" class="col-sm-2 control-label">经办人号码：</label>
				<div class="col-md-2 column">
				    <input type="text"   name="unitinfooperatorphone" class="form-control" data-toggle="popover" placeholder="请输入" >
				</div>
			</div>
			
		 </div>	
		 
		  <div class="row clearfix" style="width:1300px;height:600px;position:absolute;top:100px;left:700px;">
		  
			  <div class="form-group">
			    <label for="description" class="col-sm-2 control-label">经办人证件号码：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname"  name="unitinfooperatornumber" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
			<div class="form-group">
			<label for="description" class="col-sm-2 control-label">法人代表姓名:</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" name="unitinfofader" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div></div>
			<div class="form-group">
			<label for="description" class="col-sm-2 control-label">法人证件类型：</label>
				<div class="col-md-2 column">
				   <select name="unitinfotype"  class="form-control">
	                        <option value="01">身份证</option>
							<option value="02">军官证</option>
							<option value="03">护照</option>
							<option value="04">外国人永久居留证</option>
							<option value="05">港澳居民来往内地通行证</option>
							<option value="06">台湾居民来往通行证</option>
	                        <option value="99">其他</option>
					</select>
				</div></div>
				<div class="form-group">
				<label for="description" class="col-sm-2 control-label">法人证件号码：</label>
				<div class="col-md-2 column">
				    <input type="text"  name="unitinfonumber" class="form-control" data-toggle="popover" placeholder="请输入"  >
				</div>
			</div>
			
			<div class="form-group">
			 <label for="description" class="col-sm-2 control-label">单位社保账号:</label>
				<div class="col-md-2 column">
				<select name="unitinfosocialaccount"  class="form-control">
	                    <option value="20181111">20181111</option>
						<option value="20181112">20181112</option>
						<option value="20181113">20181113</option>
					 </select>
					             
				</div></div>
			<div class="form-group">
			 <label for="description" class="col-sm-2 control-label">单位经办部门：</label>
				<div class="col-md-2 column">
				<select name="unitinfosection"  class="form-control">
	                    <option value="人事部门">人事部门</option>
						<option value="财务部">财务部</option>
						
					 </select>
				   
				</div></div>
			<div class="form-group">
			<label for="description" class="col-sm-2 control-label">单位证件类型：</label>
				<div class="col-md-2 column">
				    <select name="fattype"  class="form-control">
	                    <option value="单位注册登记证照">单位注册登记证照</option>
						<option value="组织机构代码证">组织机构代码证</option>
						<option value="税务登记证">税务登记证</option>
					 </select>
				</div></div>
			
		 </div>
		  
		 
		 
				</div>	
				</div>
			 
				
                <button id="btn-test" class="btn btn-primary">保存</button>
          
			  </form>
			
				<!-- <input type="button" onclick="insertUnitinfo2()" type="submit" name="submit" class="btn btn-primary" value="保存"> -->

			<!-- <button onclick="test()">切换</button> -->
	    </div>
	<!-- 单位开户 -->
		<div class="tab-pane fade" id="ios">
		    <form class="form-horizontal" role="form"  id="form2" enctype="multipart/form-data">
			  
		<div class="container" >
	    <div class="col-md-22 column">
		     <div class="row clearfix">
			<div class="form-group">
			</div></div>
			<div class="row clearfix">
			<div class="form-group">
			<input type="hidden" name="unitinfoid" id="unitinfoid1" >
			</div></div>
			<div class="row clearfix">
			  <div class="form-group">
			    <label for="description" class="col-sm-1 control-label">单位登记号</label>
				<div class="col-md-2 column">
					<input type="text" id="unitinfoaccount1" name="unitinfoaccount" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    <label for="description" class="col-sm-2 control-label">单位名称：</label>
				<div class="col-md-2 column">
				    <input type="text" name="unitinfoname"  id="unitinfoname1" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				<label for="description" class="col-sm-2 control-label">社会信用代码：</label>
				<div class="col-md-2 column">
				    <input type="text" name="unitinfocredit"  id="unitinfocredit1" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
		 </div>
			<div class="row clearfix">
			  <div class="form-group">
			   <label for="description" class="col-sm-1 control-label">公积金账户名称</label>
				<div class="col-md-2 column">
					<input type="text"  name="unitsname"class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    <label for="description" class="col-sm-2 control-label">单位缴存比例:</label>
				<div class="col-md-2 column">
					
					<input type="text" id="unitsdepositratio" name="unitsdepositratio"class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				    <span id="account"></span>
				</div>
			    <label for="description" class="col-sm-2 control-label">个人缴存比例：</label>
				<div class="col-md-2 column">
				    <input type="text" id="unitsindividua" name="unitsindividua"class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				
			</div>
		 </div>
		  <div class="row clearfix">
			  <div class="form-group">
			  <label for="description" class="col-sm-1 control-label">单位缴存人数：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" name="unitsdeposite"class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			    <label for="description" class="col-sm-2 control-label">单位封存人数:</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName"name="unitsarchive" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    <label for="description" class="col-sm-2 control-label">单位账户余额：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname"name="unitsbalance" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				
			</div>
		 </div>
		 <div class="row clearfix">
			  <div class="form-group">
			  <label for="description" class="col-sm-1 control-label">单位账户状态：</label>
				<div class="col-md-2 column">
				<select name="unitesstate"  class="form-control">
	                    <option value="正常">正常</option>
						<option value="销户">销户</option>
						<option value="封存">封存</option>
					 </select>
				   
				</div>
			    
			    <label for="description" class="col-sm-2 control-label">单位开户行户名：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" name="unitesusername"class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				<label for="description" class="col-sm-2 control-label">单位开户行账号：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" name="unitesaccount"class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
		 </div>
		 <div class="row clearfix">
			  <div class="form-group">
			  <label for="description" class="col-sm-1 control-label">缴至年月:</label>
				<div class="col-md-2 column">
					<input type="text" id="Wcdj_wcrq3"name="unitespaiduntil" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    
			    <label for="description" class="col-sm-2 control-label">受托银行名称：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname"name="unitesbankname" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
				<label for="description" class="col-sm-2 control-label">受托银行代码：</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname"name="unitestrustee" class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >
				</div>
			</div>
		 </div>
			<div class="row clearfix">
			  <div class="form-group">
			  
			    <label for="description" class="col-sm-1 control-label">催缴人:</label>
				<div class="col-md-2 column">
					<input type="text"  name="unitesperson"class="form-control" data-toggle="popover" placeholder="请输入" data-placement="right" data-content="" name="bkname" >	              
				</div>
			    
			</div>
		 </div>
			</div></div></form>
			<input type="button" onclick="insertUnitsaccount1()" class="btn btn-primary" value="保存">
		</div>
		
	
		
             </div>
             </div>
           </div>
       </div>
	

</body>
</html>
 
<script>
//表单验证
 $(function () {
            $("#form1").bootstrapValidator({
                live: 'disabled',//验证时机，enabled是内容有变化就验证（默认），disabled和submitted是提交再验证
                excluded: [':disabled', ':hidden', ':not(:visible)'],//排除无需验证的控件，比如被禁用的或者被隐藏的
                submitButtons: '#form1',//指定提交按钮，如果验证失败则变成disabled，但我没试成功，反而加了这句话非submit按钮也会提交到action指定页面
                message: '通用的验证失败消息',//好像从来没出现过
                feedbackIcons: {//根据验证结果显示的各种图标
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                  

                unitinfoname: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                         stringLength: {
			              min: 3,
			              max: 8,
			              message: '用户名长度必须在3到8位之间'
                       },
			            regexp: {
			              regexp: /^[a-zA-Z0-9_]+$/,
			              message: '用户名只能包含大写、小写、数字和下划线'
			            }
                    }
                },
                unitinfoemail: {
                    validators: {
                        notEmpty: {
                            message: '邮箱地址不能为空'
                        },
                        emailAddress: {
                             message: '邮箱地址格式有误'
            }
                    }},
                    
                   unitinfonumber:{
                    validators:{
                    notEmpty: {
                            message : '身份证号码不能为空！'
                        },
                        regexp: {
                            regexp: /^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/,
                            message: '身份证号码格式不正确，为15位和18位身份证号码！'
                        },

                    }
                    },
                    unitinfooperatornumber:{
                    validators:{
                    notEmpty: {
                            message : '身份证号码不能为空！'
                        },
                        regexp: {
                            regexp: /^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/,
                            message: '身份证号码格式不正确，为15位和18位身份证号码！'
                        },

                    }
                    },
              unitinfooperatorphone:{
                    
                 validators: {
                     notEmpty: {
                         message: '手机号码不能为空'
                     },
                     stringLength: {
                         min: 11,
                         max: 11,
                         message: '请输入11位手机号码'
                     },
                     regexp: {
                         regexp: /^1[3|5|8]{1}[0-9]{9}$/,
                         message: '请输入正确的手机号码'
                     }
                 }
                },
                unitinfocredit:{
                 validators: {
                     notEmpty: {
                         message: '信用代码不能为空'
                     },}
                }
                    
                }
            
            });
            $("#unitinfoname").blur(function(){
              $("#form1").bootstrapValidator('validate');//提交验证
            })
            $("#unitinfoemail").blur(function(){
              $("#form1").bootstrapValidator('validate');//提交验证
            })
          
             $("#unitinfonumber").blur(function(){
              $("#form1").bootstrapValidator('validate');//提交验证
            })
            $("#unitinfooperatorphone").blur(function(){
              $("#form1").bootstrapValidator('validate');//提交验证
            })
           
             $("#unitinfooperatornumber").blur(function(){
              $("#form1").bootstrapValidator('validate');//提交验证
            })
            $("#btn-test").click(function () {//非submit按钮点击后进行验证，如果是submit则无需此句直接验证
                $("#form1").bootstrapValidator('validate');//提交验证
                if ($("#form1").data('bootstrapValidator').isValid()) {//获取验证结果，如果成功，执行下面代码
                    alert("yes");//验证成功后的操作，如ajax
                     $.ajax({
	        	url : "Peraccount/insertUnitinfo2",
	        	type : "post",
	        	data : $("#form1").serialize(),
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        		   alert(data);
	        		   $('#myTab li:eq(1) a').tab('show');
	        		   $("#unitinfoid1").val(data);
	        		   $("#unitinfoname1").val($("#unitinfoname").val());
	        		   $("#unitinfoaccount1").val($("#unitinfoaccount").val());
	        	       $("#unitinfocredit1").val($("#unitinfocredit").val());
	        	}
	 		});
                }
            });

  });
  //离开验证 函数 
   $("#unitinfocredit").blur(function(){
    //获取账号后的提示信息文本

      var accountText = document.getElementById("accountText");
        var unitinfocredit=$("#unitinfocredit").val();
        if(unitinfocredit!=""){
            $.ajax({
                url: 'Peraccount/selectunitinfocredit',
                data:{"unitinfocredit":unitinfocredit},
                type: 'POST',
                dataType:"text",
                success: function (data) {
                    if(data==0){
                    // 账号已经存在
                       accountText.innerHTML = "<font color='red'>抱歉，"+unitinfocredit+"已存在，请更换！</font>"
                        $("#unitinfocredit").val("");
                    }else{
                       // 账号不存在
                      accountText.innerHTML = "<font color='green'>恭喜，"+unitinfocredit+"信用代码可用！</font>"
                    }
                }
            })
        }
    })
    $("#unitsdepositratio").blur(function(){
    
     var account = document.getElementById("account");
     var unitsdepositratio=$("#unitsdepositratio").val();
     if(unitsdepositratio>=5 && unitsdepositratio<=12){
        account.innerHTML = "<font color='green'>恭喜,符合规定！</font>"
        $("#unitsindividua").val( $("#unitsdepositratio").val())
     }else{
     account.innerHTML = "<font color='green'>不符合规定！</font>"
     $("#unitsdepositratio").val("")
     }
   
    })

function insertUnitsaccount1(){
                  $.ajax({
	        	url : "Peraccount/insertUnitsaccount1",
	        	type : "post",
	        	data : $("#form2").serialize(),
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        	alert("添加完成")
	        	 window.location.href="jym/dwxx.jsp";  
	        }
	 		});
	 		
		}	
		
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
//随机获取单位登记号
		function suiji(){
		var ii=randomPassword(8);
            $("#unitinfoaccount").val(ii);
            
            
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
	$(function(){
			
				findDepart();
				findgslxbh();
				findJjlxb();
				suiji();
				
			})
	var start = {}, end = {};
    jeDate('#Wcdj_wcrq',{
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
     var start = {}, end = {};
    jeDate('#Wcdj_wcrq2',{
        format: 'YYYY-MM-DD ',
        minDate: '2014-06-16 ', //设定最小日期为当前日期
        maxDate: function (that) {
            //that 指向实例对象
            return jeDate.valText(that.valCell) == "" ? jeDate.nowDate({DD:0}) : start.maxDate;
        }, //设定最大日期为当前日期
        
    });	
     var start = {}, end = {};
    jeDate('#Wcdj_wcrq3',{
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