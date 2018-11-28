<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>会叫管理</title>
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
             <input type="text" name="id" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
          </div>
          
          <div class="layui-inline">
            <button class="layui-btn layuiadmin-btn-useradmin" lay-submit lay-filter="LAY-user-front-search">
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
        <table class="table table-hover" id="LAY-user-manage" lay-filter="LAY-user-manage">
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
  <script src="../frame/layuiadmin/layui/layui.js"></script>
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
  
</script>