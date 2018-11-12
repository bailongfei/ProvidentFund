<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Ryzy.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap-theme.min.css">
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	  $(function(){
	  	$(":text").val('');
	  	queryUnitinfos();
	  	getAll(1);
	  	queryapply(1);
      });
      function getAll(pageNum){
         alert(pageNum);
         var bkname=$("#serachbyname").val();
         $.ajax({
            url:"Peraccountzhl/findbyname",
            type:"post", 
            data:{"curPage":pageNum,
            	  "bkname":bkname
            },
            dataType:'json',
            success:function(data){
            $("#ltbody").empty();
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
               	   var obj=datalist[i];
				   var tr="<tr>";
      				tr+="<td>"+obj.bkname+"</td>";
      				tr+="<td>"+obj.IdNumbers+"</td>";
      				tr+="<td>"+obj.peracBalance+"</td>";
      				tr+="<td>正常</td>";
      				tr+="</tr>";
                   $("#ltbody").append(tr);
               }
               $("#nowPage").html(data.curPage);
               $("#countPage").html(data.totalPages);
               //alert(data.isFirstPage)
               if(data.curPage==data.first){$("#prepage").hide()}else{
                 $("#prepage").show();
               }
                if(data.curPage==data.last){$("#nextpage").hide()}else{
                  $("#nextpage").show();
                }
            }
         
         });
      }
      function queryapply(curPage){
      	$.ajax({
            url:"Ryzyzhl/queryapply",
            type:"post", 
            data:{
            	"curPage":curPage
            },
            dataType:'json',
            success:function(data){
            $("#rtbody").empty();
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
               	   var obj=datalist[i];
				   var tr="<tr>";
      				tr+="<td>"+obj.bkname+"</td>";
      				tr+="<td>"+obj.IdNumbers+"</td>";
      				tr+="<td>"+obj.peracBalance+"</td>";
      				tr+="<td>正常</td>";
      				tr+="</tr>";
                   $("#rtbody").append(tr);
               }
               $("#nowPage2").html(data.curPage);
               $("#countPage2").html(data.totalPages);
               //alert(data.isFirstPage)
               if(data.curPage==data.first){$("#prepage2").hide()}else{
                 $("#prepage2").show();
               }
                if(data.curPage==data.last){$("#nextpage2").hide()}else{
                  $("#nextpage2").show();
                }
            }
         
         });
      }
      function queryUnitinfos(){
      	$.ajax({
            url:"Peraccountzhl/queryUnitinfos",
            type:"post", 
            dataType:'json',
            success:function(data){
            	$("#xdw").empty();
            	var ydw=$("#ydw").val();
            	var opt="<option value=''>请选择新单位</option>";
            	for(var i=0;i<data.length;i++){
            		var obj=data[i];
            		if(obj.unitinfoid !=ydw){
            			opt+="<option value='"+obj.unitinfoid+"'>"+obj.unitinfoname+"</option>";
            		}
            	}
            	$("#xdw").append(opt);
            }
        });     
      }
      //上一页 下一页
	  $(document).ready(function(){
	  	  $("#prepage").click(function(){
             var nowpage=parseInt($("#nowPage").html());
             getAll(nowpage-1);
     	  });
     	  $("#nextpage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage+1);
      	  });
      	  $("#prepage2").click(function(){
             var nowpage=parseInt($("#nowPage2").html());
             getAll(nowpage-1);
     	  });
     	  $("#nextpage2").click(function(){
           var nowpage=parseInt($("#nowPage2").html());
           getAll(nowpage+1);
      	  });
      	  $("#transfer").click(function(){
      	  	$.ajax({
      	  		url:"Ryzyzhl/SaveApply",
      	  		type:"post",
      	  		data:$("#fm").serialize(),
      	  		dataType:'text',
      	  		success:function(data){
      	  			if(data=='1'){
      	  				alert("申请已提交!");
      	  			}
      	  		}
      	  	});
      	  });
      	  $("#peracId").blur(function(){
      	  	var peracId=$("#peracId").val();
      	  	$.ajax({
      	  		url:"Peraccountzhl/findUnitName",
      	  		type:"post",
      	  		data:{
      	  			"peracId":peracId
      	  		},
      	  		dataType:'json',
      	  		success:function(data){
      	  			$("#grzhbh").val(data.grzhbh);
      	  			$("#lastunitinfoid").val(data.UnitInfoId);
      	  			$("#lastunitname").val(data.UnitInfoName);
      	  			$("#bkname").val(data.bkname);
      	  			queryUnitinfos();
      	  		}
      	  	});
      	  });
      	  $("#search1").click(function(){
      	  	var IdNumber=$("#IdNumber").val();
      	  	alert(IdNumber);
      	  	$.ajax({
      	  		url:"Peraccountzhl/findbyIdnumber",
      	  		data:{
      	  			"IdNumber":IdNumber
      	  		},
      	  		dataType:'json',
      	  		success:function(data){
      	  			$("#sqr").val(data.grzhbh);
      	  			$("#bkname").html(data.bkname);
      	  			$("#fromunitname").val(data.UnitInfoName);
      	  			$("#ydw").val(data.UnitInfoId);
      	  			$("#frombankname").val(data.UnitesBankname);
      	  			queryUnitinfos();
      	  		}
      	  	})
      	  });
      	  $("#xdw").change(function(){
      	  	var UnitInfoId=$("#xdw").val();
      	  	$.ajax({
      	  		url:"Peraccountzhl/findbanknamebyid",
      	  		type:"post",
      	  		data:{
      	  			"UnitInfoId":UnitInfoId
      	  		},
      	  		dataType:'json',
      	  		success:function(data){
      	  			$("#tobankname").val(data.UnitesBankname);
      	  		}
      	  	})
      	  });
	  });
	</script>	
  </head>
  <body>
  	<div style="height: 50px;">
  		<table>
  			<tr>
  				<td style="width: 50px;"></td>
  				<td style="width:100px;height: 50px;">
  					<h3><span id="bkname"></span></h3>
  				</td>
  				<td style="width: 700px;"></td>
  				<td>
  					<input type="text" class="form-control input-sm" style="width:200px;" id="IdNumber" placeholder="请输入身份证号码">
  				</td>
  				<td>
  					<button type="button" class="btn btn-info btn-sm" id="search1">查询</button> 
  				</td>
  			</tr>
  		</table>
  	</div>
    <div style="margin:0px auto;height: 200px;width: 600px;margin-top: 20px;border: 2px dashed #000;border-radius: 15px;">
    	<form action="" id="fm">
    	<table class="table" cellspacing="30" style="border: 0px">
    		<tr>
    			<td>
    				<div class="form-group">
    				  <input type="hidden" name="sqr" id="sqr">
    				  <input type="hidden" name="ydw" id="ydw">
				      <center><label for="name">转出单位名称</label></center>
				      <input type="text" class="form-control input-sm" style="width:130px;" id="fromunitname" placeholder="转出单位名称">
				    </div>
    			</td>
    			<td>
    				<div class="form-group">
				      <center><label for="name">转出受托银行名称</label></center>
				      <input type="text" class="form-control input-sm" style="width:130px;" name="zcstyh" id="frombankname"  placeholder="转出受托银行名称">
				    </div>
    			</td>
    			<td>
    				<div class="form-group">
				      <center><label for="name">转入单位名称</label></center>
				      <select class="form-control input-sm" style="width:130px;" name="xdw" id="xdw" placeholder="转入单位名称"></select>
				    </div>
    			</td>
    			<td>
    				<div class="form-group">
				      <center><label for="name">转入受托银行名称</label></center>
				      <input type="text" class="form-control input-sm" style="width:130px;" name="zrstyh" id="tobankname" placeholder="转入受托银行名称">
				    </div>
    			</td>
    		</tr>
    		<tr>
    			<td>
    				<div class="form-group">
				      <center><label for="name">会计凭证日期</label></center>
				      <input type="date" class="form-control input-sm" style="width:130px;" name="sqsj" id="sqsj">
				    </div>
    			</td>
    			<td>
    				<div class="form-group">
				      <center><label for="name">转移原因</label></center>
				      <input type="text" class="form-control input-sm" style="width:130px;" name="zyyy"  placeholder="转出单位名称">
				    </div>
    			</td>
    			<td>
    				<div class="form-group">
    				  <center><label for="name"></label></center>
				      <center><button type="button" class="btn btn-info btn-sm" id="transfer">申请转移</button></center>
				    </div>
    			</td>
    		</tr>
    	</table>
    	</form>
    </div>
    <div id="content" style="width: 1000px;height:350px;margin: 0px auto;">
    <div id="left" style="width: 450px;float:left;border: 0.5px solid #000;border-radius: 10px;margin-top: 20px;margin-left: 20px;">
    	
    	<center><h5>全部人员列表</h5></center>
    	<table style="margin-left: 150px;">
    		<tr>
    			<td>
    				<input type="text" class="form-control input-sm" style="width:130px;" id="serachbyname" placeholder="输入名字查询">
    			</td>
    			<td>
  					<button type="button" class="btn btn-info btn-sm">查询</button> 
  				</td>
    			<center>
    			</center>
    			</th>
    		</tr>
    	</table>	
    		<table class="table table-bordered">
    		<tr>
    			<th>姓名</th>
    			<th>证件号码</th>
    			<th>个人账号余额</th>
    			<th>个人账号状态</th>
    		</tr>
    		<tbody id="ltbody"></tbody>
    		<tr>
    			<td>第<span id="nowPage"></span>页 </td>
				<td><button id="prepage">上一页</button></td>
				<td><button id="nextpage">下一页</button>&nbsp;&nbsp;</td>
    			<td>共<span id="countPage"></span>页</td>
    		</tr>
    	</table>
    </div>
    <div id="right" style="width: 450px;float:left;border: 0.5px solid #000;border-radius: 10px;margin-top: 20px;margin-left: 50px;">
    	<table class="table table-bordered">
    	<center><h5>待转移人员列表</h5></center>
    		<tr>
    			<th>姓名</th>
    			<th>证件号码</th>
    			<th>个人账号余额</th>
    			<th>个人账号状态</th>
    		</tr>
    		<tbody id="rtbody"></tbody>
    		<tr>
    			<td>第<span id="nowPage2"></span>页 </td>
				<td><button id="prepage2">上一页</button></td>
				<td><button id="nextpage2">下一页</button>&nbsp;&nbsp;</td>
    			<td>共<span id="countPage2"></span>页</td>
    		</tr>
    	</table>
    </div>
    </div>
  </body>
</html>
