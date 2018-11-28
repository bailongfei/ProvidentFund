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

<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <button type="button" class="btn btn-info btn-default btn-block active">单位缴纳记录</button>
			<div class="tabbable" id="tabs-319054">
				<ul class="nav nav-tabs">
					<li class="active">
						 <a href="#panel-561798"  data-toggle="tab">单位汇缴记录</a>
					</li>
					<li >
						 <a href="#panel-347018" data-toggle="tab">单位补缴记录</a>
					</li>
					<!-- <li >
						 <a href="#panel-985737" data-toggle="tab">单位冲缴记录</a>
					</li> -->
				</ul>
				<div class="tab-content">
					<div class="tab-pane" id="panel-561798">
						
 <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-form layui-card-header layuiadmin-card-header-auto">
        <div class="layui-form-item">
     
          <div class="layui-inline">
            <label class="layui-form-label">搜索</label>
            <div class="layui-input-block">
             <input type="text" id="ids" name="UnitInfoName" placeholder="请输入单位名称"  >
             <!-- <input  type="text"    id="bjType" name="" placeholder="请输入业务类型"  > -->
             
             <input   type="date"    id="date1" name=""  >至<input   type="date"    id="date2" name=""  >
            </div>
          </div>
          
          <div class="layui-inline">
            <button id="hhcx" onclick="queryDWxx(1)" class="layui-btn layuiadmin-btn-useradmin" lay-submit lay-filter="LAY-user-front-search">
              <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
            </button>
          </div>
          
        </div>
      </div>
      
      <div class="layui-card-body">
        
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
				<!-- <th colspan="6">
				搜索:<input type="text" class="goodsName" id="goodsNames" placeholder="请输入名称" name="goodsName"> 
				</th> -->
				<!-- <th>操作</th> -->
			</tr>
		</thead>
		<tbody id="tbodyhj">

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
    
   
    
  </div>
						
					</div>
					<!-- 补缴明细 -->
					<div class="tab-pane active" id="panel-347018">
						  
  <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-form layui-card-header layuiadmin-card-header-auto">
        <div class="layui-form-item">
     
          <div class="layui-inline">
            <label class="layui-form-label">搜索</label>
            <div class="layui-input-block">
             <input type="text" id="idss" name="UnitInfoName" placeholder="请输入单位名称" >
             <!-- <input  type="text"    id="bjType" name="" placeholder="请输入业务类型"  > -->
             
             <input style="text-align:right;"  type="date"    id="date1s" name=""  >至<input style="text-align:right;"  type="date"    id="date2s" name=""  >
            </div>
          </div>
          
          <div class="layui-inline">
            <button id="hhcx" onclick="queryDWxxss(1)" class="layui-btn layuiadmin-btn-useradmin" lay-submit lay-filter="LAY-user-front-search">
              <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
            </button>
          </div>
          
        </div>
      </div>
      
      <div class="layui-card-body">
        
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
				<!-- <th>创建人</th> -->
				<!-- <th colspan="6">
				搜索:<input type="text" class="goodsName" id="goodsNames" placeholder="请输入名称" name="goodsName"> 
				</th> -->
				<!-- <th>操作</th> -->
			</tr>
		</thead>
		<tbody id="tbodybj">

		</tbody>
	</table>
	
  <ul class="pager" >
 	<li>
 	当前页:<span id="curPagebj"></span>总页数:<span id="totalPagesbj"></span>
 	</li>
 	<li><a  id="firstbj" onclick="changePagebj(this)">首页</a></li>
 	<li><a  id="prevbj" onclick="changePagebj(this)">上一页</a></li>
 	<li><a  id="nextbj" onclick="changePagebj(this)">下一页</a></li>
 	<li><a  id="lastbj"  onclick="changePagebj(this)">尾页</a></li>
 	<li><input type="number"  id="txtCurPagebj"   min="1" max="10"></input><input type="button" class="btn btn-default" value="go" onclick="gotoPagebj()"/></li>
  </ul>
	
       
      </div>
    </div>
    
   
    
  </div>
						  
					</div>
					<!-- 冲缴 -->
					<div class="tab-pane" id="panel-985737">
 <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-form layui-card-header layuiadmin-card-header-auto">
        <div class="layui-form-item">
     
          <div class="layui-inline">
            <label class="layui-form-label">搜索</label>
            <div class="layui-input-block">
             <input type="text" id="idcj" name="UnitInfoName" placeholder="请输入单位名称"  >
             <!-- <input  type="text"    id="bjType" name="" placeholder="请输入业务类型"  > -->
             
             <input   type="date"    id="datecj" name=""  >至<input   type="date"    id="datecj" name=""  >
            </div>
          </div>
          
          <div class="layui-inline">
            <button id="hhcx" onclick="queryDWxxcj(1)" class="layui-btn layuiadmin-btn-useradmin" lay-submit lay-filter="LAY-user-front-search">
              <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
            </button>
          </div>
          
        </div>
      </div>
      
      <div class="layui-card-body">
        
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
				<!-- <th colspan="6">
				搜索:<input type="text" class="goodsName" id="goodsNames" placeholder="请输入名称" name="goodsName"> 
				</th> -->
				<!-- <th>操作</th> -->
			</tr>
		</thead>
		<tbody id="tbodycj">

		</tbody>
	</table>
	
  <ul class="pager" >
 	<li>
 	当前页:<span id="curPagecj"></span>总页数:<span id="totalPagescj"></span>
 	</li>
 	<li><a  id="firstcj" onclick="changePagecj(this)">首页</a></li>
 	<li><a  id="prevcj" onclick="changePagecj(this)">上一页</a></li>
 	<li><a  id="nextcj" onclick="changePagecj(this)">下一页</a></li>
 	<li><a  id="lastcj"  onclick="changePagecj(this)">尾页</a></li>
 	<li><input type="number"  id="txtCurPagecj"   min="1" max="10"></input><input type="button" class="btn btn-default" value="go" onclick="gotoPagecj()"/></li>
  </ul>
	
       
      </div>
    </div>
    
   
    
  </div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</div>

  
  
	
	<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content" style="width: 800px;">
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
                <th>个人账号</th>
				<th>员工姓名</th>
				<th>缴纳月数</th>
				<th>单位缴纳</th>
				<th>个人缴纳</th>
				<th>总共缴纳</th>
				<th>业务类型</th>
				<th>创建人</th>
				<th>业务日期</th>
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
  $(function(){
    
     queryDWxx(1);
  });
  function queryDWxx(page){
   var tj=$('#ids').val();
   var bjType=$("#bjType").val();
   var date1=$("#date1").val();
   var date2=$("#date2").val();
     $.ajax({
       url:"${pageContext.request.contextPath}/hjqcb/queryHj",
       type:"post",
       data:{
       "UnitInfoName":tj,"pageNum":page,"bjywllx":bjType,"date1":date1,"date2":date2
       
       },
       dataType:"json",
       success:function(data){
         var obj=data.list;
         $("#tbodyhj").empty();
         $.each(obj,function(key,val){
            var tr="<tr>";
            tr+="<td>"+val.UnitInfoAccount+"</td>";
            tr+="<td>"+val.UnitInfoName+"</td>";
            tr+="<td>"+val.bchnrs+"</td>";
            tr+="<td>"+val.bchnje+"</td>";
            tr+="<td>"+val.hjywlx+"</td>";
            tr+="<td>"+val.gjind+"</td>";
            tr+="<td>"+val.bjjkzt+"</td>";
            tr+="<td>"+val.user_account+"</td>";
           /*  tr += "<td><input type='button'    data-toggle='modal' data-target='#myModal'  id=" +val.UnitInfoAccount+ "  class='selectMx btn btn-info' value='明细查询'></td>"; */
            tr+="</tr>";
            $("#tbodyhj").append(tr);
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
  
 //补缴dw明细
   $(function(){
     queryDWxxss(1);
  });
  function queryDWxxss(page){
   var tj=$('#idss').val();
   var bjType=$("#bjType").val();
   var date1=$("#date1s").val();
   var date2=$("#date2s").val();
     $.ajax({
       url:"${pageContext.request.contextPath}/bj/querydwbj",
       type:"post",
       data:{
       "UnitInfoName":tj,"pageNum":page,"bjywllx":bjType,"date1":date1,"date2":date2
       
       },
       dataType:"json",
       success:function(data){
         var objs=data.list;
         $("#tbodybj").empty();
         $.each(objs,function(key,vals){
            var tr="<tr>";
            tr+="<td>"+vals.UnitInfoAccount+"</td>";
            tr+="<td>"+vals.UnitInfoName+"</td>";
            tr+="<td>"+vals.bjrs+"</td>";
            tr+="<td>"+vals.bjssje+"</td>";
            tr+="<td>"+vals.bjywllx+"</td>";
            tr+="<td>"+vals.bjjzrq+"</td>";
            if(vals.bjjkzt==1){
              tr+="<td>"+'成功'+"</td>";
            }
           
            /* tr+="<td>"+vals.user_account+"</td>"; */
           /*  tr += "<td><input type='button'    data-toggle='modal' data-target='#myModal'  id=" +val.UnitInfoAccount+ "  class='selectMx btn btn-info' value='明细查询'></td>"; */
            tr+="</tr>";
            $("#tbodybj").append(tr);
         });
         
         //重新初始化分页链接
        $("#curPagebj").html(data.curPage);
		$("#totalPagesbj").html(data.totalPages);
        $("#firstbj").attr("data",data.first);
		$("#prevbj").attr("data",data.prev);
		$("#nextbj").attr("data",data.next);
		$("#lastbj").attr("data",data.last);
		$("#txtCurPagebj").val(data.curPage).attr("max",data.last);
       }
     });
  };
  
  //改变页面
function changePagebj(obj){
    var page=$(obj).attr("data");//取出data属性值
    queryDWxxss(page);
}
//跳转到指定页面
	function gotoPagebj(page){
		var page=$("#txtCurPagebj").val();
		queryDWxxss(page);
	}
  
</script>