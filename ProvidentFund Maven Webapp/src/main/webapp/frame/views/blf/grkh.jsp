<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'grkh.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery.form.js"></script>
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/frame/layuiadmin/layui/css/layui.css">
  
<%-- <script src="${pageContext.request.contextPath}/frame/layuiadmin/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/frame/layuiadmin/layui/layui.all.js"></script> --%>
 
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	
	
</head>
  
  <body>
      <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <button type="button" class="btn btn-info btn-block active btn-default">个人账户信息</button>
			<!-- <div class="progress">
				<div class="progress-bar progress-success">
				</div>
			</div> -->
			
			<div class="tabbable" id="tabs-951674">
				<ul class="nav nav-tabs">
					<li>
						 <a href="#panel-201345" data-toggle="tab">单个开户</a>
					</li>
					<li class="active">
						 <a href="#panel-933923" data-toggle="tab">导入清册</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane" id="panel-201345">
						
						<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success" role="progressbar"
								         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								         style="width: 0%;" id="progress">
								        <!-- <span class="sr-only">40% 完成</span> -->
								 </div>
						</div>
						 <!--form提交表单  -->
					<form class="form-horizontal" role="form" id="form1" enctype="multipart/form-data">
					
						<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<div class="row clearfix">
			            <!-- <div class="form-group">
							<label for="description" class="col-sm-2 control-label">商品价格</label>
							<div class="col-sm-4">
								<input type="text" id="goodsUnitPrice" class="form-control"
									name="goodsUnitPrice" placeholder="请输入">

							</div>
						</div> -->
			<div class="form-group">			
			<label for="description" class="col-sm-1 control-label">单位账户</label>
				<div class="col-md-2 column">
				   <!--单位编号  -->
				    <input type="hidden" id="UnitInfoId" class="form-control" name="unitinfoid" placeholder="请输入">
				     <!--个人登陆账号  -->
				     <input type="hidden" id="peracid" class="form-control" name="peracid" placeholder="请输入">
				     <!-- 登录密码 -->
				     <input type="hidden" id="peracloginpw" class="peracloginpw form-control" name="peracloginpw" placeholder="请输入">
				     <!--交易密码  -->
				      <input type="hidden" id="peracTransactionpw" class="peracloginpw form-control" name="peractransactionpw" placeholder="请输入">
				      <!--网点信息表(主键)  -->
				      <input type="hidden" id="" class="form-control" name="netinfoid" placeholder="请输入">
					<input type="text" id="UnitInfoAccount" onblur="dwgrkh(1)" class="form-control" data-toggle="modal" data-target="#myModal"  name="unitinfoaccount" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">单位名称</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitInfoName" class="form-control" disabled name="" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">员工姓名</label>
				<div class="col-md-2 column">
				    <input type="text" id="bkname" class="form-control" data-toggle="popover" data-placement="right" data-content="" name="bkname" >
				     <span class="required" id="sp1">*</span>
				</div>
			<label for="description" class="col-sm-1 control-label">员工性别</label>
				<div class="col-md-2 column">
				    <!-- <input type="text" id="" class="form-control" name="" placeholder="请输入"> -->
				    <select class="form-control" name="bksex">
				      
				      <option value="男">男</option>
				      <option value="女">女</option>
				    </select>
				</div>
				</div>
			</div>
			<div class="row clearfix">
			<div class="form-group">	
				<label for="description" class="col-sm-1 control-label">员工电话</label>
				<div class="col-md-2 column">
					<input type="text" id="phoneNum" class="form-control" name="phonenum" placeholder="请输入">	              
				    <span class="required" id="sp3">*</span>
				</div>
			<label for="description" class="col-sm-1 control-label">证件类型</label>
				<div class="col-md-2 column">
					<!-- <input type="text" id="" class="form-control" name="" placeholder="请输入"> -->
					<select class="form-control" name="idtype">
					  
					  <option value="身份证">身份证</option>
					  <option value="军人证">军人证</option>
					  <option value="驾驶证">驾驶证</option>
					</select>	              
				</div>
			<label for="description" class="col-sm-1 control-label">证件号码</label>
				<div class="col-md-2 column">
				    <input type="text" id="IdNumbers" onblur="getAge()" class="form-control" name="idnumbers" placeholder="请输入">
				    <input type="hidden" id="idno"  class="form-control" name="idno" placeholder="请输入">
				   <span class="required" id="sp2">*</span>
				</div>
			<label for="description" class="col-sm-1 control-label">员工学历</label>
				<div class="col-md-2 column">
				    <!-- <input type="text" id="" class="form-control" name="" placeholder="请输入"> -->
				    <select class="form-control" name="education">
				      
				      <option value="本科">本科</option>
				      <option value="本科以上">本科以上</option>
				      <option value="大专">大专</option>
				      <option value="大专以下">大专以下</option>
				      
				    </select>
				</div>
				</div>
			</div>
			<div class="row clearfix">
			<div class="form-group">	
				<label for="description" class="col-sm-1 control-label">员工职位</label>
				<div class="col-md-2 column">
					<select class="form-control" id="zhwu" name="unitpositionid">
					   
					</select>	              
				</div>
			<label for="description" class="col-sm-1 control-label">电子邮件</label>
				<div class="col-md-2 column">
					<input type="text" id="" class="form-control" name="email" placeholder="请输入">	              
				</div>
			<label for="description" class="col-sm-1 control-label">家庭住址</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" name="address" placeholder="请输入">
				</div>
			<label for="description" class="col-sm-1 control-label">出生日期</label>
				<div class="col-md-2 column">
				    <input type="text" id="birthday" readonly="readonly" class="form-control" name="birthday" placeholder="请输入">
				</div>
				</div>
			</div>
		
			<div class="row clearfix">
			<div class="form-group">
				<label for="description" class="col-sm-1 control-label">婚姻状态</label>
				<div class="col-md-2 column">
					<!-- <input type="text" id="" class="form-control" name="marital" placeholder="请输入"> -->	
					<select class="form-control" id="maritals" name="marital">
					  
				      <option value="未婚">未婚</option>
				      <option  value="已婚">已婚</option>
				    </select>              
				</div>
			<label for="description" class="col-sm-1 control-label">缴存基数</label>
				<div class="col-md-2 column">
				   <!-- 个人账户 -->
				    <input type="hidden" id="personalaccount" class="form-control" name="personalaccount" placeholder="请输入">
				    <!--开户日期  -->
				    <input type="hidden" id="openingdate" class="form-control" name="openingdate" placeholder="请输入">
				    <!-- 贷款状态 -->
				    <input type="hidden"  class="form-control" name="dkzt" value="0" >
				   <!-- 余额 -->
				    <input type="hidden" value="0" class="form-control" name="peraccountbalance" placeholder="请输入">
					<input type="text" id="personaldepositbase" class="form-control" name="personaldepositbase" placeholder="请输入">	              
				   <span class="required" id="sp4">*</span>
				</div>
			<label for="description" class="col-sm-1 control-label">开户银行名称</label>
				<div class="col-md-2 column">
				    <!-- <select class="form-control" id="" name="lmkbh">
				      
				    </select> -->
				    
				    <select class="form-control" id="yhlmk" name="lmkbh">
				      
				    </select>
				</div>
			<label for="description" class="col-sm-1 control-label">开户银行账号</label>
				<div class="col-md-2 column">
				   <!--  <input type="text" id="" class="form-control" name="brandedId" placeholder="请输入"> -->
				    <input type="text" id="yhzh" class="form-control" name="bankNameNum" placeholder="请输入">
				    <span class="required" id="sp5">*</span>
				</div>
			</div>
			</div>
			<div class="row clearfix">
			<div class="form-group">	
				<label for="description" class="col-sm-1 control-label">单位缴存比例</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitsDepositRatio" readonly="readonly" class="form-control" name="unitratedeposit" >	              
				</div>
			<label for="description" class="col-sm-1 control-label">个人缴存比例</label>
				<div class="col-md-2 column">
					<input type="text" id="UnitsIndividua" readonly="readonly" class="form-control" name="percontributionrate" >	              
				</div>
			<label for="description" class="col-sm-1 control-label">经办人员</label>
				<div class="col-md-2 column">
				    <input type="text" id="" class="form-control" readonly="readonly"  name="" placeholder="请输入"><!-- disabled -->
				</div>
			
			</div>
			</div>
		</div>
	</div>
</div>
						

						

						<input type="button" id="saveKH"  class="btn btn-primary" value="保存">
					</form>
						 
						
					</div>
					<div class="tab-pane active" id="panel-933923">
						
							
						<div class="progress progress-striped active">
						    <div id="jdt2" class="progress-bar progress-bar-success" role="progressbar"
						         aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
						         style="width:0%;">
						        <span class="sr-only">40% 完成</span>
						    </div>
						 </div>
						 <!-- <div>1.通过简单的form表单提交方式，进行文件的上</br> 2.通过jquery.form.js插件提供的form表单一步提交功能 </div></br>  --> 
        <form method="POST"  enctype="multipart/form-data" id="form2" action="uploadExcel/uploadblf.do">  
             <table>  
             <tr>  
                <td>上传文件:</td>  
                <td> <input class="btn btn-default" id="upfile" type="file" name="upfile"></td>  
             </tr>  
            <tr>  
                <!-- <td><input type="submit" value="提交" onclick="return checkData()"></td>   -->
                <td><input type="button" value="批量开户提交" class="btn btn-primary" id="btn" name="btn" ></td>  
             </tr>  
            </table>  
                      <!-- <div class="form-group">
							<label for="description" class="col-sm-2 control-label">上传文件:</label>
							<div class="col-sm-4">
								
                               <input  id="upfile" type="file" name="upfile">
							</div>
						</div>
						<input type="button" value="批量开户提交" class="btn btn-primary" id="btn" name="btn" > -->
        </form> 
						 <!-- <button type="button"  class="btn btn-info ">按钮</button> -->
						
					</div>
				</div>
			</div> 
		</div>
	</div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel" >
					单位信息:<input  type="text" onblur="dwgrkh(1)"   id="ids" name="UnitInfoName" placeholder="请输入单位名称"  >检索<input style="text-align:right;"  type="text" onblur="dwgrkh(1)"   id="unfoId" name="" placeholder="请输入单位账号"  >
				</h4>
			</div>
			<div class="modal-body">
			
			<div id="sch_1" ><!-- style="display: none" -->
	  <table class="table table-hover">	 	
 		 <tr class="success">
            <td >单位账号</td>
            <td >单位名称</td>
            <td >单位缴存比例</td>
            <td >个人缴存比例</td>
         </tr>
 	  	<tbody id="tbody3">
 	  		
 	  	</tbody>
 	  </table>
 <ul class="pager" >
 	<li>
 	当前页:<span id="curPage"></span>总页数:<span id="totalPages"></span>
 	</li>
 	<li><a  id="first" onclick="changePage(this)">首页</a></li>
 	<li><a  id="prev" onclick="changePage(this)">上一页</a></li>
 	<li><a  id="next" onclick="changePage(this)">下一页</a></li>
 	<li><a  id="last"  onclick="changePage(this)">尾页</a></li>
 	<li><input type="number"  id="txtCurPage"   min="1" max="10"></input><input type="button" class="btn btn-default" value="go" onclick="gotoPage()"/></li>
  </ul>
 	</div>
			
			
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>

  </body>
</html>
<script>
  
   /* 页面加载函数 */
	/* $(function() {
	   
		dwgrkh(1);
	}); */
	
	/* 查询表 */
	function dwgrkh(page) {
	var dwcx=$('#ids').val();
	var foname=$("#unfoId").val();
		$.ajax({
			url : "${pageContext.request.contextPath}/unfo/queryUnfoAndUncc",
			type : "post",
			data:{"UnitInfoName":dwcx,"pageNum":page,"unfoId":foname},
			dataType : "json",
			success : function(data) {
			   suiji();
				$("#tbody3").empty();
				var ob=data.list;
				for (var i = 0; i <ob.length; i++) {
					var obj = ob[i];
					var tr = "<tr class='onclicks' data-dismiss='modal'>";
					tr += "<td>" + obj.UnitInfoAccount + "</td>";
					tr += "<td>" + obj.UnitInfoName + "</td>";
					tr += "<td>" + obj.UnitsDepositRatio + "</td>";
					tr += "<td>" + obj.UnitsIndividua + "</td>";
					tr += "</tr>";
					$("#tbody3").append(tr);
				}
				 //重新初始化分页链接
        $("#curPage").html(data.curPage);
		$("#totalPages").html(data.totalPages);
        $("#first").attr("data",data.first);
		$("#prev").attr("data",data.prev);
		$("#next").attr("data",data.next);
		$("#last").attr("data",data.last);
		$("#txtCurPage").val(data.curPage).attr("max",data.last);
			}
			
		});
	};
	
	//改变页面
function changePage(obj){
    var page=$(obj).attr("data");//取出data属性值
    dwgrkh(page);
}
//跳转到指定页面
	function gotoPage(page){
		var page=$("#txtCurPage").val();
		dwgrkh(page);
	} 
	
  $(document).on("click",".onclicks",function(){
     var vals=[];
      for(var i=0;i<4;i++){
        var val=$(this).children().eq(i).html();
          vals.push(val);
      }
           $("#UnitInfoAccount").val(vals[0]);
           $("#UnitInfoName").val(vals[1]);
           $("#UnitsDepositRatio").val(vals[2]);
           $("#UnitsIndividua").val(vals[3]);
           $("#progress").css("width","16%");
      
  }); 
    $(document).on("change","#UnitInfoAccount",function(){
    var obj=this.value;
       $.ajax({
       url:"${pageContext.request.contextPath}/unfo/queryUnfo",
       type:"post",
       data:{"unitinfoaccount":obj},
       dataType:"json",
       success:function(data){
         if(data.length>0){
           $("#UnitInfoName").val(data[0].UnitInfoName);
           $("#UnitInfoId").val(data[0].UnitInfoId);
           $("#UnitsDepositRatio").val(data[0].UnitsDepositRatio);
           $("#UnitsIndividua").val(data[0].UnitsIndividua);
           $("#progress").css("width","16%");
           suiji();
           
         }else{
            alert("单位账户不存在,请输入正确的账户编号!");
            $("#progress").css("width","0%");
         }
          
       }
    })
   });  
   $(function(){
     queryZub();
     queryLmk();
     getDate();
   });
   /*职位  */
   function queryZub(){
      
      $.ajax({
         url:"${pageContext.request.contextPath}/utzw/queryZw",
         type:"post",
         dataType:"json",
         success:function(data){
          
           $("#zhwu").empty();
           $.each(data,function(key,val){
              $("#zhwu").append("<option value='"+val.UnitpositionId+"'>"+val.jobTitle+"</option>");
           });
         }
      });
   }
   /* 联名卡 */
    function queryLmk(){
     
      $.ajax({
         url:"${pageContext.request.contextPath}/utzw/queryLmk",
         type:"post",
         dataType:"json",
         success:function(data){
           
           $("#yhlmk").empty();
           $.each(data,function(key,val){
              $("#yhlmk").append("<option value='"+val.lmkbh+"'>"+val.bankName+"</option>");
           });
         }
      });
   }
   /* 开户 */
   $(document).on("click","#saveKH",function(){
     var check=aaa()&&bbb()&&ddd()&&eee()&&fff();
     if(check){
     $("#progress").css("width","100%");
          $.ajax({
         url:"${pageContext.request.contextPath}/ipay/saveIpayPer",
         type:"post",
         data:$("#form1").serialize(),
         dataType:"json",
         success:function(data){
            if(data.state>0){
             alert(data.message);
             $("#form1 input[type=text],input[text=hidden]").val("");
             $("#progress").css("width","0%");
            }
            
         }
      });
     }else{
        alert("提交失败!");
     }
      
      
   });
//随机获取登记号
		function suiji(){
		var t=randomPassword(9);
            $("#peracid").val(t); 
             $("#personalaccount").val(t);
		}
		
   function randomPassword(size){
  var seed = new Array('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E');//数组
  seedlength = seed.length;//数组长度
  var createPassword = '';
  for (i=0;i<size;i++) {
    j = Math.floor(Math.random()*seedlength);
    createPassword += seed[j];
  }
  return createPassword;
}
//计算生日年龄
 function getAge(){
    var card=$("#IdNumbers").val();
    var peracloginpw=parseFloat(card.substring(12,18));
    
    $(".peracloginpw").val(peracloginpw);
    $("#idno").val(card);
    /* if(card==""||card.length!=18){
      alert('请输入18位正确身份证号');
      return false;
    }  */
    var date=new Date();
    var year=date.getFullYear();
    /* var birthday_year=parseInt(card.substr(6,4));
    var userage=(year-birthday_year); */
     var birthday_year=parseInt(card.substr(6,8));
     $("#birthday").val(birthday_year);
     
     
    return false;
    
 };
 //表单验证

 $("#bkname").blur(function(){
    aaa();
 });
 function aaa(){
    var name=$("#bkname").val();
    var reg=/^[\u4E00-\u9FA5A-Za-z0-9_]+$/;
    if(reg.test(name)){
    $("#progress").css("width","25%");
      $("#sp1").html("√").css("color","green");
      return true;
    }else{
      $("#progress").css("width","16%");
      $("#sp1").html("必须填写!").css("color","red");
      return false;
    }
 }
 $("#IdNumbers").blur(function(){
    bbb();
 });
 function bbb(){
   var card=$("#IdNumbers").val();
    var sp=/^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
    if(sp.test(card)){
    $("#progress").css("width","65%");
       $("#sp2").html("√").css("color","green");
       return true;
    }else{
    $("#progress").css("width","35%");
      $("#sp2").html("证件格式错误").css("color","red");
       return false;
    }
 }
 $("#phoneNum").blur(function(){
    ddd();
 });
 function ddd(){
     var phone=$("#phoneNum").val();
    /* var sp=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/; */
    var sp=/^1[3|4|5|7|8][0-9]{9}$/;
    if(sp.test(phone)){
    $("#progress").css("width","35%");
       $("#sp3").html("√").css("color","green");
       return true;
    }else{
    $("#progress").css("width","25%");
       $("#sp3").html("手机号必须为11位").css("color","red");
       return false;
    }
 }
 $("#personaldepositbase").blur(function(){
    eee();
 });
 function eee(){
    var age=$("#personaldepositbase").val();
    var sp=/^[1-9]{1}[\d]*$/;
    if(sp.test(age)){
    $("#progress").css("width","95%");
       $("#sp4").html("√").css("color","green");
       return true;
    }else{
    $("#progress").css("width","65%");
       $("#sp4").html("请输入数字").css("color","red");
       return false;
    }
 }
 
 $("#yhzh").blur(function(){
    fff();
 });
 function fff(){
    var age=$("#yhzh").val();
    var sp=/^([1-9]{1})(\d{14}|\d{18})$/;
    if(sp.test(age)){
    $("#progress").css("width","100%");
       $("#sp5").html("√").css("color","green");
       return true;
    }else{
    $("#progress").css("width","95%");
       $("#sp5").html("请输入银行卡号!").css("color","red");
       return false;
    }
 }
 $("#yhzh").change(function(){
    $("#progress").css("width","100%");
 });
   $("#maritals").change(function(){
      $("#progress").css("width","85%");
   }
   );
   //获取日期
   function getDate(){
    var d=new Date();
    var day=d.getDate();
    var month=d.getMonth()+1;
    var year=d.getFullYear();
    var rq=(year+"-"+month+"-"+day); 
    $("#openingdate").val(rq);
    };
   
</script>
<script type="text/javascript">  
                //ajax 方式上传文件操作  
                 $(document).ready(function(){  
                    $('#btn').click(function(){  
                        if(checkData()){  
                          $("#jdt2").css("width","100%");
                            $('#form2').ajaxSubmit({    
                                url:'uploadExcelblf/ajaxUploadblf.do',  
                                dataType: 'text',  
                                success: resutlMsg,  
                                error: errorMsg  
                            });   
                            function resutlMsg(msg){  
                              
                               alert(msg); 
                               $("#jdt2").css("width","0%");     
                                $("#upfile").val("");  
                            }  
                            function errorMsg(){   
                                alert("导入excel出错！");      
                            }  
                        }  
                    });  
                 });  

                 //JS校验form表单信息  
                 function checkData(){  
                    var fileDir = $("#upfile").val();  
                    var suffix = fileDir.substr(fileDir.lastIndexOf("."));  
                    if("" == fileDir){  
                        alert("选择需要导入的Excel文件！");  
                        return false;  
                    }  
                    if(".xls" != suffix && ".xlsx" != suffix ){  
                        alert("选择Excel格式的文件导入！");  
                        return false;  
                    }  
                    return true;  
                 }  
</script> 