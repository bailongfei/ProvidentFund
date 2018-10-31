<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'findOrderDetailsById.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style>
  	.hidden1{
  		visibility:hidden;
  	}
	table th{
		text-align: center;
	}
	#tab2 tr{
		height:50px;
	}
  </style>
  <script type="text/javascript">
  	$(document).ready(function(){
  		$(":input").attr("readonly","readonly");
  		$.ajax({
  			url:"${path}/order/order_selectOutletRecord.action",
  			data:{"orderDetailsId":${orderMap.order_details_id}},
  			dataType:"json",
  			type:"post",
  			success:function(data){
  				var outletRecordList=data.pageList;
  				if(outletRecordList.length!=0){
	  				for(var i=0;i<outletRecordList.length;i++){
	  					var outletRecord=outletRecordList[i];
						var tr=$("<tr></tr>");
						tr.html("<td>"+(i+1)+"</td><td>"+outletRecord.outlet_name+"</td><td>"+outletRecord.emp_name+"</td><td>"+outletRecord.outlet_record_time+"</td><td>"+outletRecord.outlet_record_state+"</td>");
						$("#findBatch").append(tr);
	  				}
	  				var page=$("<tr></tr>");		  				
	  				var ul=$("<ul class=\"pagination\"></ul>");
	  				var td=$("<td colspan=\"10\"></td>");
	  				var li="<li><a>总共"+data.countPage+"页</a></li><li><a>每页"+data.pageRows+"条</a></li><li><a>当前第"+data.nowPage+"页</a></li><li><a>共"+data.countRows+"条</a></li>";
	  				if(data.nowPage!=1){
	  					li=li+"<li><a href=\"javascript:goTo1('"+1+"')\">首页</a></li>"
	  				}
	  				if(data.nowPage!=1){
	  					li=li+"<li><a href=\"javascript:goTo1('"+(data.nowPage-1)+"')\">上一页</a></li>"
	  				}
	  				if(data.nowPage!=data.countPage){
	  					li=li+"<li><a href=\"javascript:goTo1('"+(data.nowPage+1)+"')\">下一页</a></li>";
	  				}
	  				if(data.nowPage!=0&&data.countPage!=1){
	  					li=li+"<li><a href=\"javascript:goTo1('"+data.countPage+"')\">尾页</a></li>";
	  				}
	  				li=$(li);
	  				ul.append(li);
	  				td.append(ul);
	  				page.append(td);
	  				$("#findBatch").append(page);
	  			}
	  		}
  		})
  		
  	})
  	function goTo1(page){
  		$.ajax({
  			url:"${path}/order/order_selectOutletRecord.action",
  			data:{"orderDetailsId":${orderMap.order_details_id},"pageNow":page},
  			dataType:"json",
  			type:"post",
  			success:function(data){
  				$("#findBatch").html("");
  				var outletRecordList=data.pageList;
  				if(outletRecordList.length!=0){
	  				for(var i=0;i<outletRecordList.length;i++){
	  					var outletRecord=outletRecordList[i];
						var tr=$("<tr></tr>");
						tr.html("<td>"+(i+1)+"</td><td>"+outletRecord.outlet_name+"</td><td>"+outletRecord.emp_name+"</td><td>"+outletRecord.outlet_record_time+"</td><td>"+outletRecord.outlet_record_state+"</td>");
						$("#findBatch").append(tr);
	  				}
	  				var page=$("<tr></tr>");		  				
	  				var ul=$("<ul class=\"pagination\"></ul>");
	  				var td=$("<td colspan=\"5\"></td>");
	  				var li="<li><a>总共"+data.countPage+"页</a></li><li><a>每页"+data.pageRows+"条</a></li><li><a>当前"+data.nowPage+"页</a></li><li><a>共"+data.countRows+"条</a></li>";
	  				if(data.nowPage!=1){
	  					li=li+"<li><a href=\"javascript:goTo1('"+1+"')\">首页</a></li>"
	  				}
	  				if(data.nowPage!=1){
	  					li=li+"<li><a href=\"javascript:goTo1('"+(data.nowPage-1)+"')\">上一页</a></li>"
	  				}
	  				if(data.nowPage!=data.countPage){
	  					li=li+"<li><a href=\"javascript:goTo1('"+(data.nowPage+1)+"')\">下一页</a></li>";
	  				}
	  				if(data.nowPage!=0&&data.countPage!=1){
	  					li=li+"<li><a href=\"javascript:goTo1('"+data.countPage+"')\">尾页</a></li>";
	  				}
	  				li=$(li);
	  				ul.append(li);
	  				td.append(ul);
	  				page.append(td);
	  				$("#findBatch").append(page);
	  			}
	  		}
  		})
  	}
  </script>
  <body>
  <ul class="pagination"  style="margin-top: 10px; float:left;margin-left:20px;">
	<li>
		<a class="btn" onClick="javascript :history.back(-1);">返回</a>
	</li>
  </ul>
 <form id="fromInfo" style="width:95%;margin:0px auto;">
  <fieldset id="fiel">
  	<table style="height:130px;width:90%;text-align: center;margin:0px auto;" id="tab">
	    <tbody>
	    	<tr>
	    		<input type="hidden"  id="orderDetailsId"  value="${orderMap.order_details_id}" />
	    		<th style="width:8%;">发货人</th>
	    		<td><input type="text" class="form-control" value="${orderMap.order_person}"></td>
	    		<th style="width:8%;">发货人电话</th>
	    		<td><input type="text" class="form-control" value="${orderMap.order_person_phone}"></td>
	    		<th style="width:8%;">发货人地址</th>
	    		<td><input type="text" class="form-control" value="${orderMap.order_ship_address}"></td>
	    		<th style="width:8%;">订单号</th>
	    		<td><input type="text" class="form-control" value="${orderMap.mail_number}"></td>
	    	</tr>
	    	<tr id="carDetails">
    			<th style="width:8%;">收货人</th>
	    		<td><input type="text" class="form-control" value="${orderMap.order_accept_person}"></td>
	    		<th style="width:8%;">收货人电话</th>
	    		<td><input type="text" class="form-control" value="${orderMap.order_accept_phone}"></td>
	    		<th style="width:8%;">收货人地址</th>
	    		<td><input type="text" class="form-control" value="${orderMap.order_accept_address}"></td>
	    		<th style="width:8%;">下单时间</th>
	    		<td><input type="text" class="form-control" value="${orderMap.order_time}"></td>
	    	</tr>
	    </tbody>
    </table> 
  </fieldset>
  <div class="panel-group" id="appendContainer" style="width:80%;margin:0px auto;margin-top:20px;">
		 <table class="table table-hover" style="text-align:center;" id="tab2">
			 <thead>
				<tr>
					<th style="width:5%">序号</th>
				    <th style="width:18%">所在门店</th>
				    <th style="width:8%">操作人</th>
				    <th style="width:18%">操作时间</th>
				    <th style="width:50%">操作详情</th>
				</tr>
			</thead>
			<tbody id="findBatch">
				
			</tbody>
		 </table>
	</div>
 </form>
  </body>
</html>
