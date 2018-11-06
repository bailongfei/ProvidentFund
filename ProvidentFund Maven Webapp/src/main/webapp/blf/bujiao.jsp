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
  <link rel="stylesheet" href="../frame/layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="../frame/layuiadmin/style/admin.css" media="all">
  <link rel="stylesheet" type="text/css"
	href="../resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="../resources/jquery.form.js"></script>
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
       
      <!-- 模态框弹出录入内容 -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="modalTitle1" aria-hidden="true" style="relative-left:0px;">
					<div class="modal-dialog">
						<div class="modal-content" style=" height: 520px; width: 730px;">
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
								<form class="form-horizontal" id="form1" ><!--enctype="multipart/form-data"  -->
									
							
												
									
	 <table border="1" id="table" >
	
		
			<tr >
				<td >单位账号</td>
				<td  colspan="2"><input type="text" id="UnitInfoAccount"
					name="unitinfoaccount" placeholder="请输入" readonly="readonly"></td>
				<td >单位名称</td>
				<td  colspan="2"><input type="text" id="UnitInfoName"
					  readonly="readonly">
			   </td>
			</tr>
			<tr>
			  <td>记账日期</td>
			  <td><input type="text" size="6" class="" id="" name="" readonly="readonly"></td>
			  <td>补缴人数</td>
			  <td><input type="text" size="6" class="" id="" name="" readonly="readonly"></td>
			  <td>补缴金额</td>
			  <td><input type="text" size="6" class="" id="" name="" ></td>
			</tr>
			<tr>
			  <td>补缴年月</td>
			  <td><input type="date"  class="" id="" name="" >至<input type="date"  class="" id="" name="" ></td>
			  <td>补缴月份</td>
			  <td><input type="text"  class="" id="" name="" ></td>
			</tr>
			<tr>
			  <td>实收金额</td>
			  <td><input type="text"  class="" id="" name="" ></td>
			  <td>大写金额</td>
			  <td><input type="text"  class="" id="" name="" ></td>
			</tr>
			<tr>
			   <td>选择人员新建删除</td>
			   <td><input type="file"  class="" id="" name="" ></td>
			   <td>操作人:<input type="text" size="6" class="" id="" name="" ></td>
			</tr>
			<tr>
			  <td><input type="checkbox"  class="" id="" name="" ></td>
			  <td >个人账户</td>
			  <td >姓名</td>
			  <td >单位月缴存额</td>
			  <td >个人月缴存额</td>
			  <td >月缴存额合计</td>
			</tr>
			<tr>
			  <td><input type="checkbox"  class="" id="" name="" ></td>
			  <td><input type="text" size="6" class="" id="" name="" ></td>
			  <td><input type="text" size="6" class="" id="" name="" ></td>
			  <td><input type="text" size="6" class="" id="" name="" ></td>
			  <td><input type="text" size="6" class="" id="" name="" ></td>
			  <td><input type="text" size="6" class="" id="" name="" ></td>
			</tr>
			<tr>
			  <td>合计:</td>
			  <td><input type="text" size="6" class="" id="" name="" ></td>
			  <td><input type="text" size="6" class="" id="" name="" ></td>
			  <td><input type="text" size="6"  class="" id="" name="" ></td>
			  <td><input type="text" size="6"  class="" id="" name="" ></td>
			</tr>
	</table> 	
									
									<input type="button" id="saveUploadOrUpdate"
										data-toggle='modal' data-target='#myModal'
										class="btn btn-primary" value="保存汇缴">
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
    
   
    
  </div>
  <script src="../frame/layuiadmin/layui/layui.js"></script>
  
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
					tr += "<td><input type='button'    data-toggle='modal' data-target='#myModal'  id=" + obj.UnitInfoAccount + "  class='huijiaoSelect btn btn-info' value='补缴办理'></td>";
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