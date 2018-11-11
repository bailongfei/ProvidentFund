<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <script src="resources/jquery-1.11.3.min.js"></script>
	<script src="resources/jqueryExt.js"></script>
  <body>
  <div style="width:100%;height:90%;">
  <div style="text-align:center;font-size:40px;font-weight:bold;margin-bottom:20px;margin-top:20px;"><span style="color:#000">个人信息</span></div>
<!--            <div id="rt" style="padding-left:5%"> <input type="text" class="name" onkeyup="key1()">点击搜索</div>
 -->   
      <table class="table table-bordered">
     
    		<tr>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">编号</td>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">姓名</td>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">性别</td>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">手机号</td>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">证件类型</td>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">身份证号</td>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">出生年月</td>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">婚姻状态</td>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">学历</td>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">家庭住址</td>
    			<td style="background-color:#6495ED;font-weight:bold;font-size:22px;">操作</td>
    			</tr>
    		<tbody id="tbody">
    		
    		</tbody>
    	</table>
  <div style="text-align:center">
 
   <a id="prepage"><span style="font-size:20px;font-color:#000;font-weight:bold;">上一页</span></a><a id="nextpage"><span style="font-size:20px;font-color:#000;font-weight:bold;">下一页</span></a><span style="font-size:20px;font-color:#000;font-weight:bold;">当前是第<span id="nowPage"></span>页</span>
 </div>
   </div>
   <div id="sch_1" style="display: none">
	  <table>	 	
 		 <tr>
            <td style="padding-right:90px;"><FONT SIZE="4px">充值编号</td>
            <td style="padding-right:90px;"><FONT SIZE="4px">姓名</td>
            <td style="padding-right:90px;"><FONT SIZE="4px">金额</td>
            <td style="padding-right:90px;"><FONT SIZE="4px">手机号</td>
           
            <td style="padding-right:90px;"><FONT SIZE="4px">操作</td>

         </tr>
 	  	<tbody id="drue">
 	  		
 	  	</tbody>
 	  </table>
 	</div>
  <!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color:#6495ED">
<!--                 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
 -->                <h4 class="modal-title" id="myModalLabel"><span style="font-weight:bold;">个人信息</span></h4>
            </div>
            <div class="modal-body">
            	    <form  method="post" id="form2">
            	    <div>
            	   <span style="font-weight:bold;font-size:15px;"> 编号：</span><input  name="grzhbh"   type="text" class="grzhbh"  id="grzhbh" readonly="readonly">
            	    
            	    </div>
            	    <div style="margin-top:-28px;margin-left:50%;">
            	   <span style="font-weight:bold;font-size:15px;">  姓名：</span><input     type="text" class="bkname"  name="bkname" id="bkname"> <br><br>          	    
            	    </div>
            	    <div>
            	   <span style="font-weight:bold;font-size:15px;">  性别：</span><input  name="grsex"   type="text" class="bksex"  id="bksex" readonly="readonly" >
            	    
            	    </div>
              	    <div style="margin-top:-28px;margin-left:50%;">
    				<span style="font-weight:bold;font-size:15px;"> 手机号：</span><input    type="text"  name="phoneNum"class="phoneNum"  id="phoneNum" ><br><br>
    				</div>    
    				<div>
            	   <span style="font-weight:bold;font-size:15px;">  证件类型：</span><input    type="text"  name="IdType"class="IdType"  id="IdType" value="身份证" readonly="readonly">

            	    </div>
            	    <div style="margin-top:-28px;margin-left:50%;">
            	   <span style="font-weight:bold;font-size:15px;">  身份证号：</span><input    type="text"  name="IdNumbers"class="IdNumbers"  id="IdNumbers" readonly="readonly"> <br><br>          	    
            	    </div>
            	    <div>
            	    <span style="font-weight:bold;font-size:15px;"> 出生年月：</span><input    type="text"  name="birthday"class="birthday"  id="birthday" readonly="readonly">

            	    </div>
            	    <div style="margin-top:-28px;margin-left:50%;">
            	   <span style="font-weight:bold;font-size:15px;">  婚姻状态：</span><input    type="text"  name="marital"class="marital"  id="marital" > <br><br>          	    
            	    </div>  
            	    <div>
            	   <span style="font-weight:bold;font-size:15px;">  学历：</span><input    type="text"  name="education"class="education"  id="education" readonly="readonly">

            	    </div>
            	    <div style="margin-top:-28px;margin-left:50%;">
            	   <span style="font-weight:bold;font-size:15px;">  家庭住址：</span><input    type="text"  name="address"class="address"  id="address" > <br><br>          	    
            	    </div>
            	     <div>
            	    <span style="font-weight:bold;font-size:15px;"> 个人缴存基数：</span><input    type="text"  name="personalDepositBase"class="personalDepositBase"  id="personalDepositBase" readonly="readonly">

            	    </div>
            	    <div style="margin-top:-28px;margin-left:50%;">
            	    <span style="font-weight:bold;font-size:15px;"> 单位缴存比例：</span><input    type="text"  name="unitRateDeposit"class="unitRateDeposit"  id="unitRateDeposit" readonly="readonly"> <br><br>          	    
            	    </div>    	    
            	<div>
            	  <span style="font-weight:bold;font-size:15px;">   个人缴存比例：</span><input    type="text"  name="perContributionRate"class="perContributionRate"  id="perContributionRate" readonly="readonly">

            	    </div>
            	    <div style="margin-top:-28px;margin-left:50%;">
            	   <span style="font-weight:bold;font-size:15px;">  个人账户状态：</span><input    type="text"  name="openAccountStatus"class="openAccountStatus"  id="openAccountStatus" readonly="readonly"> <br><br>          	    
            	    </div> 
	<div>
            	   <span style="font-weight:bold;font-size:15px;">  开户日期：</span><input    type="text"  name="openingDate"class="openingDate"  id="openingDate" readonly="readonly">

            	    </div>
            	    <div style="margin-top:-28px;margin-left:50%;">
            	    <span style="font-weight:bold;font-size:15px;"> 个人账户余额：</span><input    type="text"  name="perAccountBalance"class="perAccountBalance"  id="perAccountBalance" readonly="readonly"> <br><br>          	    
            	    </div>
            	    <div>
            	   <span style="font-weight:bold;font-size:15px;">  个人月缴存额：</span><input    type="text"  name="monPayAmount"class="monPayAmount"  id="monPayAmount" readonly="readonly">

            	    </div>
            	    <div style="margin-top:-28px;margin-left:50%;">
            	    <span style="font-weight:bold;font-size:15px;"> 单位月缴存额：</span><input    type="text"  name="unitMonPayAmount"class="unitMonPayAmount"  id="unitMonPayAmount" readonly="readonly"> <br><br>          	    
            	    </div>
            	      <div>
            	    <span style="font-weight:bold;font-size:15px;"> 银行账号：</span><input    type="text"  name="gfbankAccount"class="gfbankAccount"  id=gfbankAccount readonly="readonly">

            	    </div>
            	                 	    <div style="margin-top:-28px;margin-left:50%;">
            	     
            	    <span style="font-weight:bold;font-size:15px;"> 本年提取：</span><input    type="text"  name="extractThisYear"class="extractThisYear"  id="extractThisYear" readonly="readonly"><br><br>  

            	    </div>
            	   
            	     <div>
            	    <span style="font-weight:bold;font-size:15px;"> 上年定期积数：</span><input    type="text"  name="lastYearAccumulationRegularly"class="lastYearAccumulationRegularly"  id="lastYearAccumulationRegularly" readonly="readonly">

            	    </div>
            	    <div style="margin-top:-28px;margin-left:50%;">
            	    <span style="font-weight:bold;font-size:15px;"> 上年活期积数：</span><input    type="text"  name="lastYearcurrentAccumulation"class="lastYearcurrentAccumulation"  id="lastYearcurrentAccumulation" readonly="readonly"> <br><br>          	    
            	    </div> <div>
            	    <span style="font-weight:bold;font-size:15px;"> 上年定期利息：</span><input    type="text"  name="annualInterest"class="annualInterest"  id="annualInterest" readonly="readonly">

            	    </div>
            	    <div style="margin-top:-28px;margin-left:50%;">
            	   <span style="font-weight:bold;font-size:15px;">  上年活期利息：</span><input    type="text"  name="demandInterest"class="demandInterest"  id="demandInterest" readonly="readonly"> <br><br>          	    
            	    </div>
            	   
	</form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary"  onclick="update()">确认</button>
            </div>
        </div>
    </div>
</div> 
   
   
  </body>
</html>
<script>
$(function(){
          getAll(1);
      });
      function getAll(pageNum){
                       
      
         $.ajax({
            url:"peraccountcwh/queryAllcwh",
            type:"post", 
            data:{"pageNum":pageNum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td>"+datalist[i].grzhbh+"</td>";
                    tr+="<td>"+datalist[i].bkname+"</td>";
                   tr+="<td>"+datalist[i].bksex+"</td>";
                   tr+="<td>"+datalist[i].phoneNum+"</td>";
                   tr+="<td>"+datalist[i].IdType+"</td>";
                   tr+="<td>"+datalist[i].IdNumbers+"</td>";
                   tr+="<td>"+datalist[i].birthday+"</td>";
                   tr+="<td>"+datalist[i].marital+"</td>";
                   tr+="<td>"+datalist[i].education+"</td>";
                 
                   tr+="<td>"+datalist[i].address+"</td>";

                tr+="<td><input type='button'  value='详细' class='' onclick='ById("+datalist[i].grzhbh+")'  data-toggle='modal' data-target='#myModal'/></td>";
                    tr+="</tr>";
                   $("#tbody").append(tr);
               }
               $("#nowPage").html(data.pageNum);
               //alert(data.isFirstPage)
               if(data.isFirstPage){$("#prepage").hide()}else{
                 $("#prepage").show()
               }
                if(data.isLastPage){$("#nextpage").hide()}else{
                  $("#nextpage").show()
                }
            }
         
         })
      }
      $("#prepage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage-1);
      })
       $("#nextpage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage+1);
      })
 function ById(obj) {
			alert(obj);
            $.ajax({      
           
                url: "peraccountcwh/getallcwh",
                type: "post",
                data: {"grzhbh":obj},
                dataType: "json",
                success: function (data) {
                $("#grzhbh").val(data[0].grzhbh);
                    $("#bkname").val(data[0].bkname);
                    $("#bksex").val(data[0].bksex);
                    $("#phoneNum").val(data[0].phoneNum);
                    $("#IdType").val(data[0].IdType);
                    $("#IdNumbers").val(data[0].IdNumbers);
                    $("#birthday").val(data[0].birthday);
                    $("#marital").val(data[0].marital);
                    $("#education").val(data[0].education);
                    $("#address").val(data[0].address);
                    $("#personalDepositBase").val(data[0].personalDepositBase);
                    $("#unitRateDeposit").val(data[0].unitRateDeposit);
                    $("#perContributionRate").val(data[0].perContributionRate);
                    $("#openAccountStatus").val(data[0].openAccountStatus);
                    $("#openingDate").val(data[0].openingDate);
                    $("#perAccountBalance").val(data[0].perAccountBalance);
                    $("#monPayAmount").val(data[0].monPayAmount);
                    $("#unitMonPayAmount").val(data[0].unitMonPayAmount);
                                        $("#gfbankAccount").val(data[0].gfbankAccount);

                                        $("#extractThisYear").val(data[0].extractThisYear);
                                        $("#lastYearAccumulationRegularly").val(data[0].lastYearAccumulationRegularly);
                    
                    $("#lastYearcurrentAccumulation").val(data[0].lastYearcurrentAccumulation);
                    $("#annualInterest").val(data[0].annualInterest);
                    $("#demandInterest").val(data[0].demandInterest);
                   
       alert(date);
    }
     })	
    }	
    //修改
    function update(){
    
         var jsonArr=[];
         var grzhbh=$("#grzhbh").val();
         var bkname=$(".bkname").val();
         var bksex=$(".bksex").val();
        var phonenum=$(".phonenum").val();
         var idtype=$(".idtype").val();
         var idnumbers=$(".idnumbers").val();
         var birthday=$(".birthday").val();
         var marital=$(".marital").val();
         var education=$(".education").val();
         var address=$(".address").val(); 

         alert("确认修改？");
         var jsonStr={"grzhbh":grzhbh,"bkname":bkname,"bksex":bksex,"phonenum":phonenum,"idtype":idtype,"idnumbers":idnumbers,"birthday":birthday,"marital":marital,"education":education,"address":address};
    
         jsonArr.push(jsonStr);
          $.ajax({
                url: "peraccountcwh/updatecwh",
                contentType: "application/json",
                type: "post",
                data: JSON.stringify(jsonArr),//将数组转成json字符串
                dataType: "json",
                success: function (data) {
                    window.location.href = "cwhper.jsp";
                }
            })
        }
function key1(){
		
		//判断搜索框是否为空
		var content = $(".name").val();
		if(content==""){
			
			$("#sch_1").css("display","none");
			$("#er").css("display","block");
			return ;
		}
		if(content!=""){
		
			
			$("#sch_1").css("display","block");
			$("#er").css("display","none");
			$.ajax({
			url:"peraccountcwh/querymhcwh",
			type:"post",
			data:{"name":content},
			dataType:"json",
			success:function(data){
				  $("#drue").html('');
                 for(var i=0;i<data.length;i++){
                   var tr="<tr>";
                    tr+="<td>"+data[i].grzhbh+"</td>";
                   tr+="<td>"+data[i].bkname+"</td>";
                   tr+="<td>"+data[i].bksex+"</td>";
                   tr+="<td>"+data[i].phoneNum+"</td>";
                     tr+="<td>"+data[i].IdType+"</td>";
                   tr+="<td>"+data[i].IdNumbers+"</td>";
                   tr+="<td>"+data[i].birthday+"</td>";
                   tr+="<td>"+data[i].marital+"</td>";
                   tr+="<td>"+data[i].education+"</td>";
                 
                   tr+="<td>"+data[i].address+"</td>";
                   tr+="</tr>"; 
              $("#drue").append(tr);
                   
                   }
			}
	})}}
             
</script>
