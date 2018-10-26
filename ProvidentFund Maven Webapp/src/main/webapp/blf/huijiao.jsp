<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>汇缴管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link rel="stylesheet" href="../frame/layuiadmin/layui/css/layui.css"
	media="all">
<link rel="stylesheet" href="../frame/layuiadmin/style/admin.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="../resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="../resources/jquery.form.js"></script>
<style>
#table tr td{
  text-align:center;
}
#table tr td input{
   border:0px;
   align:center;
   text-align:center;
   /* font-size:1.5em; */
   color:#f00;
}
</style>
</head>
<body>



	<div class="layui-fluid">
		<div class="layui-card">
			<div class="layui-form layui-card-header layuiadmin-card-header-auto">
				<div class="layui-form-item">

					<div class="layui-inline">
						<label class="layui-form-label">搜索</label>
						<div class="layui-input-block">
							<input type="text" name="id" placeholder="请输入" autocomplete="off"
								class="layui-input">
						</div>
					</div>

					<div class="layui-inline">
						<button class="layui-btn layuiadmin-btn-useradmin" lay-submit
							lay-filter="LAY-user-front-search">
							<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
						</button>
					</div>

				</div>
			</div>

			<div class="layui-card-body">
				<!-- <div style="padding-bottom: 10px;">
          <button class="layui-btn layuiadmin-btn-useradmin" data-type="batchdel">删除</button>
          <button class="layui-btn layuiadmin-btn-useradmin" data-type="add">添加</button>
        </div> -->

				<!-- <table id="LAY-user-manage" lay-filter="LAY-user-manage">
        
        </table> -->
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
							<!-- <th colspan="6">
				搜索:<input type="text" class="goodsName" id="goodsNames" placeholder="请输入名称" name="goodsName"> 
				</th> -->
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tbody">

					</tbody>
				</table>


				<!-- 模态框弹出录入内容 -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="modalTitle1" aria-hidden="true" style="relative-left:0px;">
					<div class="modal-dialog">
						<div class="modal-content" style=" height: 600px; width: 730px;">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									&times;
									<!-- 关闭按钮 -->
								</button>
								<h4 class="modal-title" id="modalTitle1">汇缴办理</h4>
							</div>
							<div class="modal-body">
								<!--form提交表单  -->
								<form class="form-horizontal" id="form1" enctype="multipart/form-data">
									
									
									 <table border="1" id="table" >

										
											<tr >
												<td >单位账号</td>
												<td colspan="2"><input type="text" id="UnitInfoAccount"
													name="unitinfoaccount" placeholder="请输入" readonly="readonly"></td>
												<td >单位名称</td>
												<td colspan="2"><input type="text" id="UnitInfoName"
													name="unitinfoname" placeholder="请输入" readonly="readonly"></td>
												<td colspan="2"></td>
												
											</tr>
											<tr >
												<td >缴至年月</td>
												<td colspan="2"><input type="text" id="jnmy"
													name="jnmy" placeholder="请输入" readonly="readonly"></td>
												<td >汇缴月数</td>
												<td >
												   <input type="number" max="10" min="1" value="1" id="nhyf" name="nhyf" > 
												   <!--   <select name="nhyf">
												      <option value="1">1个月</option>
												      <option value="2">2个月</option>
												   </select> -->
												</td>
												<td colspan="2">汇缴日期</td>
												<td ><input type="date" id="dates"
													name="bjjzrq" ></td>
											</tr>
											<tr >
												<td colspan="2">上次汇缴</td>
												<td colspan="2">本次增加</td>
												<td colspan="2">本次减少</td>
												<td colspan="2">本次汇缴</td>
											</tr>
											<tr >
												<td >人数</td>
												<td >金额</td>
												<td >人数</td>
												<td >金额</td>
												<td >人数</td>
												<td >金额</td>
												<td >人数</td>
												<td >金额</td>
											</tr>
										  <tr >
												<td ><input type="text" size="1" id="scjnrs" name="scjnrs" readonly="readonly"></td>
												<td ><input type="text" size="4" id="scjnje" name="scjnje" readonly="readonly"></td>
												<td><input type="text" size="4" id="bczjrs" name="bczjrs" readonly="readonly"></td>
												<td><input type="text" size="1" id="bczjje" name="bczjje" readonly="readonly"></td>
												<td><input type="text" size="4" id="bcjsrs" name="bcjsrs" readonly="readonly"></td>
												<td><input type="text" size="1" id="bcjsje" name="bcjsje" readonly="readonly"></td>
												<td><input type="text" size="1" id="bchnrs" name="bchnrs" readonly="readonly"></td>
												<td><input type="text" size="4" id="bchnje" name="bchnje" readonly="readonly"></td>
											</tr>
											<tr>
											   <td>实收金额</td>
											   <td colspan="2"><input type="text"  id="ssje" name="ssje" readonly="readonly"></td>
											   <td colspan="4">大写:<input type="text"  id="" name="" readonly="readonly"></td>
											   <td colspan="1"></td>
											</tr>
											<tr>
											  <td>缴纳方式</td>
											  <td colspan="2"><input type="text"  id="bjjkfs" name="bjjkfs" ></td>
											  <td colspan="4">备注:<input type="text"  id="hjbz" name="hjbz" ></td>
											  <td colspan="1">操作员:<input type="text"  id="user_account" name="user_account" readonly="readonly"></td>
											</tr>
											<tr>
											 <td colspan="2">缴纳年月</td>
											 <td >缴存人数</td>
											 <td colspan="1">个人缴存总基数</td>
											 <td >单位月缴存额</td>
											 <td colspan="1">个人月缴存额</td>
											 <td colspan="2">月缴存合计</td>
											</tr>
											<tr>
											 <td colspan="2"><input type="text" size="6" id="gjind" name="gjind" readonly="readonly"></td>
											 <td ><input type="text" size="1" id="bchnrs2" name="bchnrs" ></td>
											 <td colspan="1"><input type="text" size="1" id="grjnjszh" name="" readonly="readonly"></td>
											 <td ><input type="text" size="1" class="personalDepositBase" id="" name="monPayAmount" readonly="readonly"></td>
											 <td colspan="1"><input type="text" size="1" class="personalDepositBase" id="personalDepositBase" name="unitMonPayAmount" readonly="readonly"></td>
											 <td colspan="2"><input type="text" size="1"  id="" name="" readonly="readonly"></td>
											</tr>
									</table> 
									<!-- <div class="form-group">
											<label for="roleName" class="col-sm-2 control-label">单位账号</label>
											<div class="col-sm-4">
											
										<input type="hidden" id="goodsId" name="goodsId" class="form-control"  placeholder="请输入">
										<input type="text" id="goodsName" name="goodsName" class="form-control"  placeholder="请输入">
											</div>
										</div> 
										-->
									<input type="button" id="saveUploadOrUpdate"
										data-toggle='modal' data-target='#myModal'
										class="btn btn-primary" value="保存">
								</form>

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

				<script type="text/html" id="table-useradmin-webuser">
          <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>编辑</a>
         
        </script>
			</div>
		</div>
		<div class="layui-fluid">
			<div class="layui-row layui-col-space15">
				<div class="layui-col-md12">
					<div class="layui-card">
						<!--  <div class="layui-card-header">显示完整功能</div> -->
						<div class="layui-card-body">
							<div id="test-laypage-demo7"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="${pageContext.request.contextPath}/frame/layuiadmin/layui/layui.js"></script>
	<script>
		layui.config({
			base : '${pageContext.request.contextPath}/frame/layuiadmin/' //静态资源所在路径
		}).extend({
			index : 'lib/index' //主入口模块
		}).use([ 'index', 'laypage' ], function() {
			var laypage = layui.laypage;
	
			//完整功能
			laypage.render({
				elem : 'test-laypage-demo7',
				count : 100,
				layout : [ 'count', 'prev', 'page', 'next', 'limit', 'skip' ],
				jump : function(obj) {
					console.log(obj)
				}
			});
	
		});
	</script>
</body>
</html>
<script>
	/* 页面加载函数 */
	$(function() {
	   getDate();
		dwxxAnddwzh();
	});
	/* 查询商品表 */
	function dwxxAnddwzh() {
		$.ajax({
			url : "${pageContext.request.contextPath}/unfo/queryUnfoAndUncc",
			type : "post",
			dataType : "json",
			success : function(data) {
				$("#tbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
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
					/*  tr+="<td><input type='button'   data-toggle='modal' data-target='#myModal' title="+obj.goodsId+"  class='findById btn btn-default' value='修改'></td>"; */
					tr += "<td><input type='button'    data-toggle='modal' data-target='#myModal'  id=" + obj.UnitInfoAccount + "  class='huijiaoSelect btn btn-info' value='汇缴办理'></td>";
					tr += "</tr>";
					$("#tbody").append(tr);
				}
			}
		});
	}
	$(document).on("click",".huijiaoSelect",function(){
	 var id=this.id
	    $.ajax({
	       url:"${pageContext.request.contextPath}/hjqcb/queryHjqcb",
	       type:"post",
	       data:{"unitinfoaccount":id},
	       dataType:"json",
	       success:function(data){
	         
				/* for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					 $(".personalDepositBase").val(data[0].personalDepositBase);
					} */
	          $("#UnitInfoAccount").val(data[0].UnitInfoAccount);
	          $("#UnitInfoName").val(data[0].UnitInfoName);
	          $("#jnmy").val(data[0].jnmy);
	          //$("#nhyf").val(data[0].nhyf);
	          //$("#bjjzrq").val(data[0].bjjzrq);
	          $("#scjnrs").val(data[0].scjnrs);
	          $("#scjnje").val(data[0].scjnje);
	          $("#bczjrs").val(data[0].bczjrs);
	          $("#bczjje").val(data[0].bczjje);
	          $("#bcjsrs").val(data[0].bcjsrs);
	          $("#bcjsje").val(data[0].bcjsje);
	          $("#bchnrs").val(data[0].bchnrs);
	          $("#bchnje").val(data[0].bchnje);
	          $("#ssje").val(data[0].ssje);
	          $("#bjjkfs").val(data[0].bjjkfs);
	         
	          //$("#gjind").val(data[0].gjind);
	          $("#bchnrs2").val(data[0].bchnrs);
	          $("#user_account").val(data[0].user_account);
	          //$("#").val(data[0].);
	          $("#hjbz").val(data[0].hjbz);
	       }
	    });
	    $.ajax({
	       url:"${pageContext.request.contextPath}/hjqcb/selectSum",
	       type:"post",
	       data:{"unitinfoaccount":id},
	       dataType:"json",
	       success:function(data){
	          $("#grjnjszh").val(data);
	          }
	    });
	});
	
	//获取日期
   function getDate(){
    var d=new Date();
    var day=d.getDate();
    var month=d.getMonth()+1;
    var year=d.getFullYear();
    var rq=(year+"-"+month+"-"+day); 
    $("#dates").val(rq);
    $("#gjind").val(rq);
    };
    $(document).on("click","#saveUploadOrUpdate",function(){
       //alert($("#nhyf").val());
    });
</script>