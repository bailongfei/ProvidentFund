<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'credit.jsp' starting page</title>
    
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
  <div class="layui-fluid" >
    <div class="layui-card" id="box">
      <div class="layui-card-header">基本信息表</div>
      <div class="layui-card-body" style="padding: 10px;">
        <form class="layui-form" id="tbody" lay-filter="component-form-group">
          <div class="layui-form-item">
 		<label class="layui-form-label">用户人id</label>
              <div class="layui-input-inline">
                <input type="tel" id="aaa" name="jkhtbh" autocomplete="off" class="layui-input"  >
              </div>
		 <label class="layui-form-label">姓名</label>
              <div class="layui-input-inline">
                <input type="tel" id="grname" name="bkname" readonly="readonly"  autocomplete="off" class="layui-input" readonly unselectable="on" >
              </div>
               <label class="layui-form-label">性别</label>
              <div class="layui-input-inline">
                <input type="tel" id="grsex" name="bksex"  autocomplete="off" class="layui-input" readonly unselectable="on" >
              </div>
	</div>
		  <div class="layui-form-item">
          
           <label class="layui-form-label">证件类型</label>
              <div class="layui-input-inline">
                <input type="text"  id="idtypes" name="zjtype"  autocomplete="off" class="layui-input" readonly unselectable="on">
              </div>
              <label class="layui-form-label">身份证号</label>
              <div class="layui-input-inline">
                <input type="tel" id="idNumber" name="idnumber"  autocomplete="off" class="layui-input" readonly unselectable="on">
              </div>
              <label class="layui-form-label">邮政编码</label>
              <div class="layui-input-inline">
                <input type="text" id="grpostcode" name="eamil"  autocomplete="off" class="layui-input" readonly unselectable="on">
              </div>
          
          </div>
	
		 <div class="layui-form-item">
     
     
              	<label class="layui-form-label">个人账号</label>
              <div class="layui-input-inline">
                <input type="tel"  id="personalaccount" name="dkrgjjzh"  autocomplete="off" class="layui-input" readonly unselectable="on">
              </div>
             
      	<label class="layui-form-label">手机号</label>
              <div class="layui-input-inline">
                <input type="tel"  id="phonenums" name="phone"  autocomplete="off" class="layui-input" readonly unselectable="on">
              </div>
            <label class="layui-form-label">月收入</label>
              	<div class="layui-input-inline">
                <input type="tel" id="incomes"  name="monthlyProfit" autocomplete="off" class="layui-input" readonly unselectable="on">
             	 </div>
               
           
          </div>
          
          <div class="layui-form-item">
            <label class="layui-form-label">单位名称</label>
            <div class="layui-input-block">
              <input type="text" id="unitaa" name="dwzh" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input" readonly unselectable="on">
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
               <div class="layui-inline">
              <label class="layui-form-label">还款方式</label>
              <div class="layui-input-inline">
                <select name="hkfs" lay-verify="required" lay-search="">
               
                 
                <option value="0">等额本金</option>
                <option value="1">等额本息</option>
           
                </select>
              </div>
            </div>
              	</div>
              <div class="layui-form-item">
             
           	
                <label class="layui-form-label">贷款期数</label>
              <div class="layui-input-inline">
              		 <select name="grdkqs" lay-verify="required" lay-search="">
                 		 <option value="">请选择还款期数</option>
               			 <option value="12">12期</option>
               			 <option value="24">24期</option>
               			 <option value="36">36期</option>
               			 <option value="48">48期</option>
               			 <option value="60">60期</option>
               			 <option value="72">72期</option>
               			 <option value="84">84期</option>
               			 
               
           
                </select>
     
              </div>
            <label class="layui-form-label">还款账号</label>
              <div class="layui-input-inline">
                <input type="tel" id="hkkk"  name="hkzh"  autocomplete="off" class="layui-input" readonly unselectable="on">
                    </div>
                  <label class="layui-form-label">申请日期</label>
              <div class="layui-input-inline">
                <input type="text" name="dksqrq" id="LAY-component-form-group-date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
              </div>
            
              </div>
                  
       			  <div class="layui-form-item">
                  
           
          </div>
            
          </div>
       
          <div class="layui-form-item layui-layout-admin">
          
            	       <div class="layui-input-block">
              <div class="layui-footer" style="left: 0;">
                <button class="layui-btn" id="saveUploadOrUpdate" id="prev" type="button" lay-filter="component-form-demo1">下一步</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              </div>
            </div>
          </div>
        </form>
        
        
      </div>
         
        
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
               <label class="layui-form-label">身份证号</label>
            <div class="layui-input-inline">
			 <input type="tel"  id="idNumber1" name="gtjkrzjhm"  autocomplete="off" class="layui-input">
         
            </div>
          </div>
          
          
          <div class="layui-form-item layui-layout-admin">
            	       <div class="layui-input-block">
              <div class="layui-footer" style="left: 0;">
              	<button class="layui-btn" id="prev2"  type="button" lay-filter="component-form-demo1">上一步</button>
                <button class="layui-btn" id="sava2" type="button" lay-filter="component-form-demo1">下一步</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              </div>
            </div>
          </div>
        </form>
 
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
			<select class="sel form-control"  name="fubh">
        	                            </select>
        	               </div>
		</div>
		

		
		      <label class="layui-form-label">坐落</label>
              <div class="layui-input-inline">
                <input type="tel" id="personalaccount" name="belocated"  autocomplete="off" class="layui-input">
              </div>
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
                <input type="text"  name="zjtype" value="身份证"  autocomplete="off" readonly unselectable="on" class="layui-input">
                
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
              	<button class="layui-btn" id="prev3"  type="button" lay-filter="component-form-demo1">上一步</button>
                <button class="layui-btn" id="sava3"  type="button" lay-filter="component-form-demo1">下一步</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
              </div>
            </div>
          </div>
        </form>
</div>
</div>

</div>

</div>
          		
          		
          					 
			 <div class="layui-fluid" id="box4" style="display:none">
    <div class="layui-card">
      <div class="layui-card-header">购房表</div>
      <div class="layui-card-body" style="padding: 15px;">
       <form class="layui-form" id="type3" lay-filter="component-form-group">
         <div class="layui-form-item">
		 <<label class="layui-form-label">抵押房屋坐落</label>
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
          <div class="layui-form-item layui-layout-admin">
            <div class="layui-input-block">
              <div class="layui-footer" style="left: 0;">
            			 <button class="layui-btn" id="prev4"  type="button" lay-filter="component-form-demo1">上一步</button>
                          <button class="layui-btn" id="sava4"  type="button" lay-filter="component-form-demo1">立即提交</button>
           </div>
            </div>
          </div>
        </form>
</div>
</div>

</div>

</div>
          		
          		
          		
          		
          		










</div>
</body>
			 
</html>


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
<script>
	   /* 页面加载函数 */
   $(function(){
     $("#grzhbh").val('');
     
  });
	
	/*查询个人信息表 */
   $("#aaa").keyup(function(){
   	 var pid=$("#aaa").val();
   	 alert(pid);
   	 $.ajax({
   	 	url:"good/queryTById",
         type:"post",
         data:{"grzhbh":pid},
         dataType:"json",
         success:function(data){
          		if(data!=null){
	          		var obj=data;
	          		$("#grname").val(data[0].bkname)
	          		$("#grsex").val(data[0].bksex)
	          		$("#phonenums").val(data[0].phoneNum)
	          		$("#idtypes").val(data[0].IdType)
	          		$("#idNumber").val(data[0].IdNumbers)
	          		$("#grpostcode").val(data[0].postcode)
	          		$("#personalaccount").val(data[0].peracId)
	          		$("#incomes").val(data[0].monthlyProfit)
	          		$("#unitaa").val(data[0].UnitInfoName)
	          		$("#hkkk").val(data[0].peracId)
	          		
          		}
         }
   	 })
   })		
	/* 添加贷款信息 */
     $(document).on("click","#saveUploadOrUpdate",function(){
     	var t = $("#tbody").serializeArray();
        $.each(t,function(i,item){
            if(item['value'] == '') {
               var flag = 1;
                return false
            } else {
            var flag = 0;
        }
        });
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
	
  $(function(){
   
       queryDyht();
  });
	
   	/*查询个人信息表 */
   $("#person2").keyup(function(){
   	 var pid=$("#person2").val();
   	 alert(pid);
   	 $.ajax({
   	 	url:"good/queryTById",
         type:"post",
         data:{"grzhbh":pid},
         dataType:"json",
         success:function(data){
          		if(data!=null){
	          		var obj=data;
	          		$("#grname1").val(data[0].bkname)
	          		$("#grsex1").val(data[0].bksex)
	          		$("#phoneNums1").val(data[0].phoneNum)
	          		$("#personalaccount1").val(data[0].peracId)
	          		$("#idtypes1").val(data[0].monthlyProfit)
	          		$("#UnitInfoName1").val(data[0].UnitInfoName)
	          		$("#UnitInfoAddress1").val(data[0].UnitInfoAddress)
	          		$("#idNumber1").val(data[0].IdNumbers)
	          		
          		}
         }
   	 })
   })		
   
	$(document).ready(function(){
	  $("#prev3").click(function(){
	    $("#box3").hide();
	    $("#box2").show();
	  });
	  $("#prev2").click(function(){
	    $("#box2").hide();
	    $("#box").show();
	  });
	    $("#prev4").click(function(){
	    $("#box4").hide();
	    $("#box3").show();
	  });
	});
   
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
   /* 添加房屋*/
   $(document).on("click","#sava3",function(){
      $("#type2").ajaxSubmit({
        url:"lololo/purchasave",
        type:"post",
        contentType:"application/x-www-form-urlencoded; charset=utf-8",
        dataType:"text",
        success:function(data){
            alert(data);
         	 if(data=='1'){
           	$("#box3").hide();
           	$("#box4").show();
           }
     
             }
         
      });
   });
   
 
    /*查询抵押类型  */
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
   /* 添加抵押信息*/
   $(document).on("click","#sava4",function(){
      $("#type3").ajaxSubmit({
        url:"lololo/dysave",
        type:"post",
        contentType:"application/x-www-form-urlencoded; charset=utf-8",
        dataType:"text",
        success:function(data){
           alert(data);
        }
      });
   });

	</script>
	
	