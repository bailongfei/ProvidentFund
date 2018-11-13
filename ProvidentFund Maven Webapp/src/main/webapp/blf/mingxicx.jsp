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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/frame/layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/frame/layuiadmin/style/admin.css" media="all">
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
            <button id="hhcx" onclick="queryDWxx()" class="layui-btn layuiadmin-btn-useradmin" lay-submit lay-filter="LAY-user-front-search">
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
				<th>缴纳人数</th>
				<th>缴纳金额</th>
				<th>业务类型</th>
				<th>业务日期</th>
				<th>结算状态</th>
				<th>创建人</th>
				<th>创建日期</th>
				<!-- <th colspan="6">
				搜索:<input type="text" class="goodsName" id="goodsNames" placeholder="请输入名称" name="goodsName"> 
				</th> -->
				<th>操作</th>
			</tr>
		</thead>
		<tbody id="tbody">

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
    
   <!--  <div class="layui-fluid">
			<div class="layui-row layui-col-space15">
				<div class="layui-col-md12">
					<div class="layui-card">
						 <div class="layui-card-header">显示完整功能</div>
						<div class="layui-card-body">
							<div id="test-laypage-demo7"></div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
    
  </div>
  <!-- <script src="../frame/layuiadmin/layui/layui.js"></script>
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
	</script>   -->
</body>
</html>
<script>
  $(function(){
     queryDWxx(1);
  });
  function queryDWxx(page){
   var tj=$('#ids').val();
     $.ajax({
       url:"${pageContext.request.contextPath}/hjqcb/queryHj",
       type:"post",
       data:{"UnitInfoName":tj,"pageNum":page},
       dataType:"json",
       success:function(data){
         var obj=data.list;
         $("#tbody").empty();
         $.each(obj,function(key,val){
            var tr="<tr>";
            tr+="<td>"+val.UnitInfoAccount+"</td>";
            tr+="<td>"+val.UnitInfoName+"</td>";
            tr+="<td>"+val.bchnrs+"</td>";
            tr+="<td>"+val.bchnje+"</td>";
            tr+="<td>"+val.hjywlx+"</td>";
            tr+="<td>"+val.gjind+"</td>";
            tr+="<td>"+val.bjjkfs+"</td>";
            tr+="<td>"+val.bjjkzt+"</td>";
            tr+="<td>"+val.user_account+"</td>";
            tr+="<td>"+val.bjjzrq+"</td>";
            tr+="</tr>";
            $("#tbody").append(tr);
         });
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
    queryDWxx(page);
}
//跳转到指定页面
	function gotoPage(page){
		var page=$("#txtCurPage").val();
		queryDWxx(page);
	}
  /* $(document).on("click","#hhcx",function(){
    var ids=$("#ids").val();
     alert($("#ids").val());
     $.ajax({
        url:"${pageContext.request.contextPath}/",
        type:"post",
        data:{"UnitInfoName":ids},
        dataType:"json",
        success:function(data){
         alert(data);
        }
     });
  }); */
</script>