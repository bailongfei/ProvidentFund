<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zong.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="frame/layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="frame/layuiadmin/style/admin.css" media="all">

<!-- 使用模态窗口引入bootstrap ${pageContext.request.contextPath}-->
<!-- <link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap-theme.min.css">
	 -->
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
   
  <div class="layui-fluid" >
    <div class="layui-card" id="box">
      <div class="layui-card-header">基本信息表</div>
      <div class="layui-card-body" style="padding: 15px;">
        <form class="layui-form" id="tbody" lay-filter="component-form-group">
          <div class="layui-form-item">
             <label class="layui-form-label">用户人id</label>
              <div class="layui-input-inline">
                <input type="tel" id="person1" name="jkhtbh" autocomplete="off" class="layui-input">
              </div>
        		  <label class="layui-form-label">姓名</label>
              <div class="layui-input-inline">
                <input type="tel" id="grname" name="bkname"  autocomplete="off" class="layui-input">
              </div>
               <label class="layui-form-label">性别</label>
              <div class="layui-input-inline">
                <input type="tel" id="grsex" name="bksex"  autocomplete="off" class="layui-input">
              </div>
           
           
          </div>
          <div class="layui-form-item">
          
           <label class="layui-form-label">证件类型</label>
              <div class="layui-input-inline">
                <input type="text"  id="idtypes" name="zjtype"  autocomplete="off" class="layui-input">
              </div>
              <label class="layui-form-label">身份证号</label>
              <div class="layui-input-inline">
                <input type="tel" id="idNumber" name="idnumber"  autocomplete="off" class="layui-input">
              </div>
              <label class="layui-form-label">邮政编码</label>
              <div class="layui-input-inline">
                <input type="text" id="grpostcode" name="eamil"  autocomplete="off" class="layui-input">
              </div>
          
          
          
          
          </div>
          
          <div class="layui-form-item">
           
           <label class="layui-form-label">月收入</label>
              	<div class="layui-input-inline">
                <input type="tel"  name="incomes" autocomplete="off" class="layui-input">
             	 </div>
               
              
              	<label class="layui-form-label">个人账号</label>
              <div class="layui-input-inline">
                <input type="tel"  id="personalaccount" name="dkrgjjzh"  autocomplete="off" class="layui-input">
              </div>
             
      	<label class="layui-form-label">手机号</label>
              <div class="layui-input-inline">
                <input type="tel"  id="phonenums" name="phone"  autocomplete="off" class="layui-input">
              </div>
           
          </div>
           <div class="layui-form-item">
            <label class="layui-form-label">单位名称</label>
            <div class="layui-input-block">
              <input type="text" id="UnitsName" name="dwzh" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
            </div>
          </div>
        
    
         <div class="layui-card-header">贷款信息</div>
         
          	   <div class="layui-form-item">
           
            
               <div class="layui-inline">
                  <label class="layui-form-label">贷款金额</label>
              <div class="layui-input-inline">
                <input type="text"  name="dkje"  autocomplete="off" class="layui-input">
              </div>
               
             <label class="layui-form-label">贷款利率</label>
              <div class="layui-input-inline">
                <input type="text"  name="jkhtll"  autocomplete="off" class="layui-input">
              </div>
              	</div>
              <div class="layui-form-item">
             
           	
                <label class="layui-form-label">贷款期数</label>
              <div class="layui-input-inline">
                <input type="text"  name="grdkqs"  autocomplete="off" class="layui-input">
              </div>
            <label class="layui-form-label">还款账号</label>
              <div class="layui-input-inline">
                <input type="tel"  name="hkzh"  autocomplete="off" class="layui-input">
                    </div>
              </div>
          </div>
          
          <div class="layui-form-item layui-layout-admin">
            
          </div>
        </form>
        
        
        <div class="layui-input-block">
              <div class="layui-footer" style="padding:120;">
                <button id="saveUploadOrUpdate" type="button" class="layui-btn" style="right:120;" lay-submit="" lay-filter="component-form-demo1">立即提交</button>
                  <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              </div>
            </div>
        
      </div>
    </div>
  </div>


  
   
  <div class="layui-fluid" id="box2" style="display:none">
    <div class="layui-card">
      <div class="layui-card-header">共同借款人表</div>
      <div class="layui-card-body" style="padding: 15px;">
        <form class="layui-form" id="type1" lay-filter="component-form-group">
          <div class="layui-form-item">
             <label class="layui-form-label">个人账户</label>
              <div class="layui-input-inline">
                <input type="tel" id="person2"  autocomplete="off" class="layui-input">
              </div>
        		  <label class="layui-form-label">姓名</label>
              <div class="layui-input-inline">
                <input type="tel" id="grname1" name="gtjkrxm"  autocomplete="off" class="layui-input">
              </div>
               <label class="layui-form-label">共同借款人公积金账号</label>
              <div class="layui-input-inline">
                <input type="tel" id="personalaccount1" name="gtjkrgjjzh"  autocomplete="off" class="layui-input">
              </div>
           
           
          </div>
          <div class="layui-form-item">
          
           <label class="layui-form-label">月收入</label>
              <div class="layui-input-inline">
                <input type="text"  id="idtypes1" name="incomes"  autocomplete="off" class="layui-input">
              </div>
              <label class="layui-form-label">性别</label>
              <div class="layui-input-inline">
                <input type="tel" id="grsex1" name="gtjkrxb"  autocomplete="off" class="layui-input">
              </div>
              <label class="layui-form-label">手机号</label>
              <div class="layui-input-inline">
                <input type="text" id="phoneNums1" name="gtjkrsjhm"  autocomplete="off" class="layui-input">
              </div>
          
          </div>
          
          <div class="layui-form-item">
           <label class="layui-form-label">单位名称</label>
              	<div class="layui-input-inline">
                <input type="tel" id="UnitInfoName1"  name="gtjkrdwmc" autocomplete="off" class="layui-input">
             	 </div>
               
              
              	<label class="layui-form-label">单位地址</label>
              <div class="layui-input-inline">
                <input type="tel"  id="UnitInfoAddress1" name="gtjkrdwdz"  autocomplete="off" class="layui-input">
              </div>
             
      
           
          </div>
           <div class="layui-form-item">
            <label class="layui-form-label">身份证号</label>
            <div class="layui-input-inline">
			 <input type="tel"  id="idNumber1" name="gtjkrzjhm"  autocomplete="off" class="layui-input">
         
            </div>
          </div>
          
          <div class="layui-form-item layui-layout-admin">
            
          </div>
        </form>
        <div class="layui-input-block">
              <div class="layui-footer" style="left: 0;">
                <button class="layui-btn" id="sava2" lay-submit="" lay-filter="component-form-demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              </div>
            </div>
      </div>
    </div>
  </div>
          
  
  <div class="layui-fluid" id="box3" style="display:none">
    <div class="layui-card">
      <div class="layui-card-header">购房表</div>
      <div class="layui-card-body" style="padding: 15px;">
          <form class="layui-form" id="type2" lay-filter="component-form-group">
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
                <input type="text"  name="zjtype"  autocomplete="off" class="layui-input">
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
          <div class="layui-form-item layui-layout-admin">
            <div class="layui-input-block">
              <div class="layui-footer" style="left: 0;">
              	 <button class="layui-btn" id="prev3" lay-filter="component-form-demo1">上一步</button>
 
                <button class="layui-btn" id="sava3" type="button" lay-submit="" lay-filter="component-form-demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              </div>
            </div>
          </div>
      </div>
    </div>
  </div>
  
        
        
        
  
  
  
  
  
</body>
</html>


<script>
	   /* 页面加载函数 */
   $(function(){
     $("#person1").val('');
     
  });
	
	/*查询个人信息表 */
   $("#person1").keyup(function(){
   	 var pid=$("#person1").val();
   	 alert(pid);3
   	 $.ajax({
   	 	url:"good/queryTById",
         type:"post",
         data:{"personNo":pid},
         dataType:"json",
         success:function(data){
          		if(data!=null){
	          		var obj=data;
	          		$("#grname").val(data[0].grname)
	          		$("#grsex").val(data[0].grsex)
	          		$("#phonenums").val(data[0].phoneNums)
	          		$("#idtypes").val(data[0].IdTypes)
	          		$("#idNumber").val(data[0].idNumber)
	          		$("#grpostcode").val(data[0].grpostcode)
	          		$("#UnitsName").val(data[0].UnitsName)
	          		$("#personalaccount").val(data[0].personalAccount)
          		}
         }
   	 })
   })		
	/* 添加贷款信息 */
     $(document).on("click","#saveUploadOrUpdate",function(){
      $("#tbody").ajaxSubmit({
        url:"lololo/losave",
        type:"post",
        contentType:"application/x-www-form-urlencoded; charset=utf-8",
        dataType:"text",
        success:function(data){
           alert(data);
           if(data=='1'){
           	$("#box2").show();
           	$("#box").hide();
           
           }
           //window.location.replace("wang/gtjkr.jsp");
        }
      });
   }); 
	

   
	</script>
	
	
<script>
	   /* 页面加载函数 */
   $(function(){
     $("#person2").val('');
      queryFjl();
  });
	
		/*查询个人信息表 */
   $("#person2").keyup(function(){
   	 var pid=$("#person2").val();
   	 alert(pid);
   	 $.ajax({
   	 	url:"good/queryTById",
         type:"post",
         data:{"personNo":pid},
         dataType:"json",
         success:function(data){
          		if(data!=null){
	          		var obj=data;
	          		$("#grname1").val(data[0].grname)
	          		$("#personalaccount1").val(data[0].personalAccount)
	          		$("#grsex1").val(data[0].grsex)
	          		$("#phoneNums1").val(data[0].phoneNums)
	          		$("#UnitInfoName1").val(data[0].UnitInfoName)
	          		$("#UnitInfoAddress1").val(data[0].UnitInfoAddress)
	          		$("#idNumber1").val(data[0].idNumber)
          		}
         }
   	 })
   })		
   
   
   
    /* 添加共同信息 */
     $(document).on("click","#sava2",function(){
      $("#type1").ajaxSubmit({
        url:"lololo/saveJoin",
        type:"post",
        contentType:"application/x-www-form-urlencoded; charset=utf-8",
        dataType:"text",
        success:function(data){
           alert(data);
           if(data=='1'){
           	$("#box2").hide();
           	$("#box3").show();
           }
           //window.location.replace("wang/gtjkr.jsp");
        }
      });
   }); 
    
   
    /*查询房间类型  */
  function queryFjl(){
     $.ajax({
       url:"purchase/fjlxlist",
       type:"post",
       dataType:"json",
       success:function(data){
       	$(".sel").empty();
         for(var i=0;i<data.length;i++){
            var obj=data[i];
            $(".sel").append("<option value='"+obj.fubh+"'>"+obj.TypeHouse+"</option>");
         }
       }
     });
   };
   
   /* 添加 */
   $(document).on("click","#sava3",function(){
      $("#type2").ajaxSubmit({
        url:"lololo/purchasave",
        type:"post",
        contentType:"application/x-www-form-urlencoded; charset=utf-8",
        dataType:"text",
        success:function(data){
           alert(data);
        }
      });
   });
   $(document).on("click","#prev3",function(){
   		$("#box3").hide();
      	$("#box1").show();
   });
	</script>
	
	
	
