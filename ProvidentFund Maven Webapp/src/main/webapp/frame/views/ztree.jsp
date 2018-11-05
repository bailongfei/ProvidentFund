<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'yonghu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script
	src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
	<script
	src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/zTree_v3/css/zTreeStyle/zTreeStyle.css">
<script
	src="${pageContext.request.contextPath}/resources/zTree_v3/js/jquery.ztree.all.min.js"></script>



<style type="text/css">
#tableDiv {
	border: 1px solid #000;
	height: 250px;
	background-color: #EBEBEB;
}
</style>
</head>

<body>
	<div id="tableDiv">
		<table class="table table-hover">
			<caption>角色管理</caption>
			<thead>
				<tr>
					<th>角色编号</th>
					<th>角色名称</th>
					<th>角色描述</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="tbody">

			</tbody>
		</table>
	</div>
	<ul class="pager">
		<li><button type="button" class="btn btn-default" id="shouye">首页</button></li>
		<li><button type="button" class="btn btn-default" id="syy">上一页</button></li>
		<li><button type="button" class="btn btn-default" id="xyy">下一页</button></li>
		<li><button type="button" class="btn btn-default" id="weiye">尾页</button></li>
		<li style="font-weight: lighter;">当前第<input type="text"
			id="currPage"
			style="height:35px;width:50px;border-radius:10px;text-align: center;" />页
		</li>
	</ul>
	<!-- ******************************************************************** -->


	<!-- 模态框 -->
	<div class="modal fade" id="perModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">权限分配</h4>
				</div>
				<div class="modal-body" id="roleList">
					<ul id="tree" class="ztree"></ul>
					<input type="hidden" id="hidRoleId" readonly="readonly" />
				</div>
				<div class="modal-footer">
					<button class="btn btn-default" data-dismiss="modal">关闭</button>
					<button class="btn btn-primary" id="saveRight">保存</button>
				</div>
			</div>
		</div>
	</div>
	</div>
	<input type="button" value="为该角色添加功能" onclick="addFunction()">
      <ul id="areaTree4" class="ztree"></ul>
</div>
</body>
<script type="text/javascript">
	$(function() {
		queryAllRoles(1);
	})

	function queryAllRoles(startPage) {
		$.ajax({
			url : "${pageContext.request.contextPath}/login/queryAllRoles",
			type : "post",
			data : {
				"startPage" : startPage
			},
			dataType : "json",
			success : function(data) {
				$("#tbody").html("");
				var ary = data.list;
				for (var i = 0; i < ary.length; i++) {
					var obj = ary[i];
					var tr = "<tr>";
					tr += "<td>" + obj.rolesId + "</td>";
					tr += "<td>" + obj.rolesName + "</td>";
					tr += "<td>" + obj.rolesdescribe + "</td>";
					tr += "<td><input data-toggle='modal' data-target='#perModal'  type='button' value='分配权限' id=" + obj.rolesId + " class='grant btn btn-default'/></td></td>"

					tr += "</tr>";
					//#tbody为模态框的div
					$("#tbody").append(tr); //追加行

				}
				//当前页的值
				$("#currPage").val(data.pageNum);
				$("#weiye").click(function() {
					var last = Math.ceil(data.total / data.pageSize);
					queryAllRoles(last);
				})
				$("#currPage").blur(function() {
					var last = Math.ceil(data.total / data.pageSize);
					var curr = $("#currPage").val();
					if (last < curr) {
						$("#currPage").val(last);
						queryAllRoles(last);
					}
					if (curr <= 0) {
						$("#currPage").val(1);
						queryAllRoles(1);
					}
					queryAllRoles(curr);
				});

				if (data.isFirstPage) {
					$("#syy").attr("disabled", "disabled");
					$("#shouye").attr("disabled", "disabled");
				} else {
					$("#syy").removeAttr("disabled", "disabled");
					$("#shouye").removeAttr("disabled", "disabled");
				}
				if (data.isLastPage) {
					$("#xyy").attr("disabled", "disabled");
					$("#weiye").attr("disabled", "disabled");
				} else {
					$("#xyy").removeAttr("disabled", "disabled");
					$("#weiye").removeAttr("disabled", "disabled");
				}

			}
		})

	}
	/* 按钮的赋值 */
	$("#syy").click(function() {
		var currPage = parseInt($("#currPage").val());
		queryAllRoles(currPage - 1);
	})
	$("#xyy").click(function() {
		var currPage = parseInt($("#currPage").val());
		queryAllRoles(currPage + 1);
	})
	$("#shouye").click(function() {
		queryAllRoles(1);
	})




	
 <script type="text/javascript">
 var setting2 = {
         check: {
                enable: true
            },
         //异步加载
			async : {
				enable : true, //设置是否异步加载
				url : "${pageContext.request.contextPath}/login/findAllModules", //设置异步获取节点的 URL 地址
				otherParam : [ "rolesId", roleId ]
			},
			data : {
				simpleData : {
					enable : true,
					pIdKey : "parentid",
					idKey : "modulesId"
				},
				key : {
					checked : "checked",
					name : "modulesText"
				}
			},
           callback: {    //回调函数，实现展开功能
                beforeAsync: beforeAsync,
                onAsyncSuccess: onAsyncSuccess,
                onAsyncError: onAsyncError
            }
           
 }
     function getUrl(treeId, treeNode){  //默认注入两个参数，第一个是当前树的名字，第二个是选中的节点
         return "/roleProject/FunctionServlet?dir=getFunctionTree&functionId="+treeNode.functionId+"&roleNo="+key;
     }
     
     function filter(treeId, parentNode, childNodes) {
            if (!childNodes) return null;
            for (var i=0, l=childNodes.length; i<l; i++) {
                childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
            }
            return childNodes;
        }
        function beforeAsync() {
            curAsyncCount++;
        }
        
        function onAsyncSuccess(event, treeId, treeNode, msg) {
            curAsyncCount--;
            if (curStatus == "expand") {
                expandNodes(treeNode.children);
            } else if (curStatus == "async") {
                asyncNodes(treeNode.children);
            }
            if (curAsyncCount <= 0) {
                if (curStatus != "init" && curStatus != "") {
                    asyncForAll = true;
                }
                curStatus = "";
            }
        }
        function onAsyncError(event, treeId, treeNode, XMLHttpRequest, textStatus, errorThrown) {
            curAsyncCount--;
            if (curAsyncCount <= 0) {
                curStatus = "";
                if (treeNode!=null) asyncForAll = true;
            }
        }
        var curStatus = "init", curAsyncCount = 0, asyncForAll = false,
        goAsync = false;
        function expandAll() {
        
            var zTree = $.fn.zTree.getZTreeObj("areaTree4");
            if (asyncForAll) {
                
                zTree.expandAll(true);
            } else {
                expandNodes(zTree.getNodes());
                if (!goAsync) {
    
                    curStatus = "";
                }
            }
        }
        function expandNodes(nodes) {
            if (!nodes) return;
            curStatus = "expand";
            var zTree = $.fn.zTree.getZTreeObj("areaTree4");  
            for (var i=0, l=nodes.length; i<l; i++) {
                zTree.expandNode(nodes[i], true, false, false);
                if (nodes[i].isParent && nodes[i].zAsync) {    
                    expandNodes(nodes[i].children);
                } else {
                    goAsync = true;
                }
            }
        }
        
        
     
     var zNodes2=[{functionId:0,functionName:"功能",pid:-1,isParent:true,checked:true}];  
    $(document).ready(function(){
              $.fn.zTree.init($("#areaTree4"), setting2, zNodes2);
             expandAll();  //调用写好的展开全部节点方法
        });

</script>