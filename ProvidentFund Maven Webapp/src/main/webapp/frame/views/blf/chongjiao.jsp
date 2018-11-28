<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>管理</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/frame/layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/frame/layuiadmin/style/admin.css" media="all">
  <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery.form.js"></script>
<!-- 日期插件 -->
<script src="${pageContext.request.contextPath}/resources/datejscss/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/datejscss/dateYMPicker.js" ></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/datejscss/dateYMPicker.css" />

<script type="text/javascript">
	 /*  $(function(){
         getAll();
         alert("调用");
      }); */
      function getAll(UnitInfoAccount){   
      alert(UnitInfoAccount);      
         $.ajax({
            url:"${pageContext.request.contextPath}/bj/findaccountinfo2",
            type:"post",
            data:{"UnitInfoAccount":UnitInfoAccount}, 
            dataType:'json',
            success:function(data){
            alert(data);
            $("#tab").html("");
               for(var i=0;i<data.length;i++){
               	   var obj=data[i];
                   var tr="<tr>";
                   tr+="<td><input type='checkbox' name='peracId' value='"+obj.peracId+"'></td>";
				   tr+="<td>"+obj.peracId+"</td>";
                   tr+="<td>"+obj.bkname+"</td>";
                   tr+="<td>"+obj.UnitInfoName+"</td>";
                   tr+="<td>"+obj.peracBalance+"</td>";
				   tr+="</tr>";
                   $("#tab").append(tr);
               }
            }
         
         });
      }
      function returnpay(){
      	var peracIds =[]; 
	    $('input[name="peracId"]:checked').each(function(){ 
	        peracIds.push($(this).val());
	    }); 
	    $.ajax({
	    	url:"Peraccountzhl/findbperacId",
	    	type:"post",
	    	data:{
	    		"peracIds":peracIds
	    	},
	    	dataType:'json',
	    	success:function(data){
	    		$("#tab2").empty();
	    		$("#percount").val(0);
	    		for(var i=0;i<data.length;i++){
	    			var obj=data[i];
	    			var tr="<tr>";
	    			tr+="<td>"+obj.peracId+"</td>";
                    tr+="<td>"+obj.bkname+"</td>";
                    tr+="<td>"+obj.UnitInfoName+"</td>";
                    tr+="<td><input type='hidden' name='grzhbh"+i+"' value='"+obj.grzhbh+"'><input type='text' name='chje"+i+"'></td>";
	    			tr+="</tr>";
	    			$("#tab2").append(tr);
	    		}
	    		$("#percount").val(data.length);
	    	}
	    })
      }
	  $(document).ready(function(){
	      //提交冲缴
      	  $("#sub").click(function(){
      	  	$.ajax({
      	  		url:"Peraccountzhl/returnpay",
      	  		type:"post",
      	  		data:$("#fm").serialize(),
      	  		dataType:'text',
      	  		success:function(data){
      	  			alert(data);
      	  		}
      	  	})
      	  });
      	  //根据员工姓名查询
      	  $("#findbyname").click(function(){
			  var bkname=$("#bkname").val();      	  
      	      $.ajax({
	            url:"${pageContext.request.contextPath}/bj/findaccountinfo2",
	            data:{
	            	"bkname":bkname
	            },
	            type:"post", 
	            dataType:'json',
	            success:function(data){
	            $("#tab").html("");
	               for(var i=0;i<data.length;i++){
	               	   var obj=data[i];
	                   var tr="<tr>";
	                   tr+="<td><input type='checkbox' name='peracId' value='"+obj.peracId+"'></td>";
					   tr+="<td>"+obj.peracId+"</td>";
	                   tr+="<td>"+obj.bkname+"</td>";
	                   tr+="<td>"+obj.UnitInfoName+"</td>";
	                   tr+="<td>"+obj.peracBalance+"</td>";
					   tr+="</tr>";
	                   $("#tab").append(tr);
	               }
	            }
	         
	         });	
      	  })
      	  /* $("#btn").click(function(){
         	var arr = new Array();
         	 $('input[name="peracId"]:[checked]').each(function () {
                    alert($(this).val());
             });
             //alert(arr);
                $.ajax({
             	url:"",
             	type:"post",
             	data:{
             		"arr":arr
             	},
             	dataType:'json',
             	success:function(data){
             		
             	}
             }) 
         }) */
	  });
	</script>

</head>
<body>

  <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-form layui-card-header layuiadmin-card-header-auto">
        <div class="layui-form-item">
     
           <div class="layui-inline">
            <label class="layui-form-label">搜索</label>
            <div class="layui-input-block">
             <input type="text" id="ids" name="UnitInfoName" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
          </div>
          
          <div class="layui-inline">
            <button id="hhcx" onclick="bujiaomx()" class="layui-btn layuiadmin-btn-useradmin" lay-submit lay-filter="LAY-user-front-search">
              <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
            </button>
          </div>
          
        </div>
      </div>
      
      <div class="layui-card-body">
        
        <table class="table table-hover" id="LAY-user-manage"
					lay-filter="LAY-user-manage">
					<thead>
						<tr class="success">
							<th>单位账号</th>
							<th>单位名称</th>
							<th>单位缴存比例</th>
							<th>个人缴存比例</th>
							<th>单位缴存人数</th>
							<th>单位账户余额</th>
							<th>暂存款余额</th>
							<th>单位账户状态</th>
							<th>单位缴至年月</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tbody">

					</tbody>
				</table>
       
      <!-- 模态框弹出录入内容 1111111-->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="modalTitle1" aria-hidden="true" style="relative-left:0px;">
					<div class="modal-dialog">
						<div class="modal-content" id="wh" style="height: 500px; width: 860px;">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									&times;
									<!-- 关闭按钮 -->
								</button>
								<h4 class="modal-title" id="modalTitle1">冲缴办理</h4>
							</div>
							<div class="modal-body" >
								<!--form提交表单  -->
								   <!-- <div id="box1" style="height: 600px;width: 600px;margin: 0px auto;"></div> -->
								    	<table>
								    		<tr>
								    			<td><input type="text" class="form-control" id="bkname" style="width:180px;" placeholder="请输入姓名"></td>
								    			<td><button type="button" class="btn btn-info btn-sm" id="findbyname">搜索</button></td>
								    			<td style="width: 50px;"></td>
								    			<td><button type="button" onclick="returnpay()" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">冲缴</button></td>
								    		</tr>
								    	</table>
								    	<table class="table table-bordered">	
								    		<tr>
								    			<td></td>
								    			<td>个人账号</td>
								    			<td>员工姓名</td>
								    			<td>所在单位</td>
								    			<td>总共缴纳</td>
								    		</tr>
								    		<tbody id="tab"></tbody>
								    	</table>
								    

							</div>
							<div class="modal-footer">

								<button type="button" class="up btn btn-default"
									data-dismiss="modal">关闭</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
       
       <!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
	            </div>
	            <div class="modal-body">
	            	<form action="" id="fm">
	            	<input type="hidden" name="percount" id="percount">
	            	<table>
	            		<tr>
	            			<td>个人账号</td>
	            			<td>员工姓名</td>
	            			<td>所在单位</td>
	            			<td>冲回金额</td>
	            		</tr>
	            		<tbody id="tab2"></tbody>
	            	</table>
	            	</form>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" class="btn btn-primary" id="sub">提交更改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
       
       
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
   <input type="text" class="calendar" placeholder="获取时间" value="" readonly="readonly" >
      </div>
    </div>
    
   
    
  </div>
 
</body>
</html>
<script>
  $(function(){
     bujiaomx(1);
  });
  function bujiaomx(page){
   var tj=$('#ids').val();
		$.ajax({
			url : "${pageContext.request.contextPath}/unfo/queryPageUnfo",
			type : "post",
			data:{"UnitInfoName":tj,"pageNum":page},
			dataType : "json",
			success : function(data) {
				$("#tbody").empty();
				var ob=data.list;
				for (var i = 0; i <ob.length; i++) {
					var obj = ob[i];
					var tr = "<tr>";
					tr += "<td>" + obj.UnitInfoAccount + "</td>";
					tr += "<td>" + obj.UnitInfoName + "</td>";
					tr += "<td>" + obj.UnitsDepositRatio + "</td>";
					tr += "<td>" + obj.UnitsIndividua + "</td>";
					tr += "<td>" + obj.UnitsDeposite + "</td>";
					tr += "<td>" + obj.UnitsBalance + "</td>";
					tr += "<td>" + obj.Unitesdeposit + "</td>";
					tr += "<td>" + obj.UnitesState + "</td>";
					tr += "<td>" + obj.UnitesPaiduntil + "</td>";
					tr += "<td><input type='button'    data-toggle='modal' data-target='#myModal'  id=" + obj.UnitInfoAccount + "  onclick='getAll(" + obj.UnitInfoAccount + ")'  class='huijiaoSelect btn btn-info' value='冲缴办理'></td>";
					tr += "</tr>";
					$("#tbody").append(tr);
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
    bujiaomx(page);
}
//跳转到指定页面
	function gotoPage(page){
		var page=$("#txtCurPage").val();
		bujiaomx(page);
	}

</script>
<script>

$('.calendar').dateYMRangPicker({
				onApplyHandler:function(startDate,endDate){
					console.log(startDate,endDate);
					var value = startDate + "至" + endDate;
					console.log(value);
					console.log(this);
					$(this).val(value);
				}
			});			
			
</script> 