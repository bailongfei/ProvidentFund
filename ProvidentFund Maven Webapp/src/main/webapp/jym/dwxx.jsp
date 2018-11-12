<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dwxx.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="/ProvidentFund/resources/js/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
     <link type="text/css" rel="stylesheet" href="/ProvidentFund/resources/jeDate-test.css">
    <link type="text/css" rel="stylesheet" href="/ProvidentFund/resources/jedate.css">
	
	<script type="text/javascript" src="/ProvidentFund/resources/jedate.js"></script>
	
	<script src="/ProvidentFund/resources/jquery-1.11.3.min.js"></script>
	<script src="/ProvidentFund/resources/jqueryExt.js"></script>
	 <script src="/ProvidentFund/resources/js/bootstrap/js/bootstrap.min.js"></script> 
	 
	 <link rel="stylesheet" href="/ProvidentFund//frame/layuiadmin/layui/css/layui.css" media="all">
     <link rel="stylesheet" href="/ProvidentFund//frame/layuiadmin/style/admin.css" media="all">
 
	<link rel="stylesheet" type="text/css" href="/ProvidentFund/resources/js/bootstrap/css/bootstrap-theme.min.css">
	<script src="/ProvidentFund/resources/js/jquery.min.js"></script>
	<script src="/ProvidentFund/resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->

<!-- 异步转换参数js -->

<!-- 上传文件js -->
<script type="text/javascript" src="/ProvidentFund/resources/jquery.form.js"></script>
  </head>
 <style type="text/css">
tr {font-family:sans-serif;}

</style>
  <body>
  <div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			 <button type="button" class="btn btn-info btn-block active btn-default">单位账户信息</button>
			 
		
    <div class="layui-card">
      <div class="layui-form layui-card-header layuiadmin-card-header-auto">
        <div class="layui-form-item">
     
           <div class="layui-inline">
            <label class="layui-form-label">搜索：</label>
            <div class="layui-input-block">
             <input type="text" id="ids" name="UnitsName" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
          </div>
          
          <div class="layui-inline">
            <button  id="hhcx" onclick="test()" class="layui-btn layuiadmin-btn-useradmin" lay-submit lay-filter="LAY-user-front-search">
              <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
            </button>
          </div>
          <div class="layui-inline">
          <a href="jym/ll.jsp" class="layui-btn layui-btn-radius">新增</a>
          
          </div>
           <div class="layui-inline">
         <a class="layui-btn layui-btn-radius" download="学生成绩表.xls">导出表格</a>
          
          </div>
          </div>
        </div>
      </div>
      
		<table class="table table-hover">
	<caption>单位账户信息</caption>
	
		<tr>
			<th rowspan="3">单位账号</th>
			<th rowspan="3">账户名称</th>
			<th rowspan="3">单位缴存比例</th>
			<th rowspan="3">个人缴存比例</th>
			<th rowspan="3">单位缴存人数</th>
			<th rowspan="3">单位账户余额</th>
			<th rowspan="3">单位账户状态</th>
			<th rowspan="3">缴至年月</th>
			<th></th>
			<th>操作</th>
			<th></th>
		</tr>
		
	
	<tbody id="tbody">  </tbody> 
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
<!-- 模态框弹出录入内容 -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="modalTitle1" aria-hidden="true" style="relative-left:0px;">
					<div class="modal-dialog">
						<div class="modal-content" style=" left:-10px;height: 520px; width: 830px;">
							<div class="modal-header" style="background-color:#2aabd2">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									&times;
									<!-- 关闭按钮 -->
								</button>
								<h4 class="modal-title" id="modalTitle1" style="color:#ffffff">单位详细资料</h4>
							</div>
							<div class="modal-body">
								<!--form提交表单  -->
		<form class="form-horizontal" id="form2" ><!--enctype="multipart/form-data"  -->
			<table border="1" id="table" style="border-collapse:separate; border-spacing:5px;">				  
              <tr >
				<td >单位名称</td>
				<td  colspan="2"><input type="text"  name="UnitInfoName"  id="UnitInfoName" placeholder="请输入" ></td>
				<td >信用代码</td>
				<td  colspan="2"><input type="text" id="UnitInfoCredit" name="UnitInfoCredit">
			   </td>
			   <td >单位地址</td>
				<td  colspan="2"><input type="text" id="UnitInfoAddress" name="UnitInfoAddress">
			   </td>
			</tr>
			 <tr >
				<td >单位类型</td>
				<td  colspan="2"><input type="text" id="gslxbh" name="gslxbh" placeholder="请输入" ></td>
				<td >所属行业</td>
				<td  colspan="2"><input type="text" id="gshylxbh" name="gshylxbh">
			   </td>
			   <td >经济类型</td>
				<td  colspan="2"><input type="text" id="jjlxbh" name="jjlxbh">
			   </td>
			</tr>
			 <tr >
				<td >隶属关系</td>
				<td  colspan="2"><input type="text" id="UnitInfoSubjection" name="UnitInfoSubjection" placeholder="请输入" ></td>
				<td >发薪日</td>
				<td  colspan="2"><input type="text" id="UnitInfoPayday" name="UnitInfoPayday">
			   </td>
			   <td >设立日期</td>
				<td  colspan="2"><input type="text" id="UnitInfoFoundLusd" name="UnitInfoFoundLusd">
			   </td>
			</tr>
			 <tr >
				<td >开户日期</td>
				<td  colspan="2"><input type="text" id="UnitInfoAccountLusd" name="UnitInfoAccountLusd" placeholder="请输入" ></td>
				<td >经办人姓名</td>
				<td  colspan="2"><input type="text" id="UnitInfoOperatorName" name="UnitInfoOperatorName">
			   </td>
			   <td >经办人号码</td>
				<td  colspan="2"><input type="text" id="UnitInfoOperatorPhone" name="UnitInfoOperatorPhone">
			   </td>
			</tr>
			 <tr >
				<td >法人代表姓名</td>
				<td  colspan="2"><input type="text" id="UnitInfoFader" name="UnitInfoFader" placeholder="请输入" ></td>
				<td >法人证件类型：</td>
				<td  colspan="2"><input type="text" id="UnitInfoType" name="UnitInfoType">
			   </td>
			   <td >法人证件号码</td>
				<td  colspan="2"><input type="text" id="UnitInfoNumber" name="UnitInfoNumber">
			   </td>
			</tr>
			 <tr >
				<td >单位缴存比例</td>
				<td  colspan="2"><input type="text" id="UnitsDepositRatio" name="UnitsDepositRatio" placeholder="请输入" ></td>
				<td >个人缴存比例</td>
				<td  colspan="2"><input type="text" id="UnitsIndividua" name="UnitsIndividua">
			   </td>
			   <td >单位缴存人数</td>
				<td  colspan="2"><input type="text" id="UnitsDeposite" name="UnitsDeposite">
			   </td>
			</tr>
			 <tr >
				<td >单位账户余额</td>
				<td  colspan="2"><input type="text" id="UnitsBalance" name="UnitsBalance" placeholder="请输入" ></td>
				<td >单位账户状态</td>
				<td  colspan="2"><input type="text" id="UnitesState" name="UnitesState">
			   </td>
			   <td >开户行户名</td>
				<td  colspan="2"><input type="text" id="UnitesUsername" name="UnitesUsername">
			   </td>
			</tr>
			 <tr >
				<td >开户行账号</td>
				<td  colspan="2"><input type="text" id="UnitesAccount" name="UnitesAccount" placeholder="请输入" ></td>
				<td >受托银行名称</td>
				<td  colspan="2"><input type="text" id="UnitesBankname" name="UnitesBankname">
			   </td>
			   <td >受托银行代码</td>
				<td  colspan="2"><input type="text" id="UnitesTrustee" name="UnitesTrustee">
			   </td>
			</tr>
			
          </table>
	
									
									<input type="button" onclick="updateUnitsaccount()"
										data-toggle='modal' data-target='#myModal'
										class="btn btn-primary" value="提交更改">
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
  </body>
</html>
<script>

// 使用outerHTML属性获取整个table元素的HTML代码（包括<table>标签），然后包装成一个完整的HTML文档，设置charset为urf-8以防止中文乱码
        var html = "<html><head><meta charset='utf-8' /></head><body>" + document.getElementsByTagName("table")[0].outerHTML + "</body></html>";
        // 实例化一个Blob对象，其构造函数的第一个参数是包含文件内容的数组，第二个参数是包含文件类型属性的对象
        var blob = new Blob([html], { type: "application/vnd.ms-excel" });
        var a = document.getElementsByTagName("a")[0];
        // 利用URL.createObjectURL()方法为a元素生成blob URL
        a.href = URL.createObjectURL(blob);
        // 设置文件名
        a.download = "单位账户信息表.xls";
        
$(function(){
         test(1);
         
      });
 
      function test(page){
	 var tj=$('#ids').val();
		 	$.ajax({
        	url : "Peraccount/queryPageUnfo",
        	type : "post",
        	async : true,
        	data:{"UnitsName":tj,"pageNum":page},
       	 	dataType : 'Json',
        	success : function(data) {
        	$("#tbody").empty();
        		var ob=data.list;
        		
        		for(var i=0;i<ob.length;i++){
        			var obj=ob[i];
        			
        		  var tr="<tr>";
        		   tr+="<td style='display:none'>"+obj.UnitInfoId+"</td>";
        		   
        		   tr+="<td>"+obj.UnitInfoAccount+"</td>";
                   tr+="<td>"+obj.UnitsName+"</td>";
                   tr+="<td>"+obj.UnitsDepositRatio+"</td>";
                   tr+="<td>"+obj.UnitsIndividua+"</td>";
                   tr+="<td>"+obj.UnitsDeposite+"</td>";
                   tr+="<td>"+obj.UnitsBalance+"</td>";
                   tr+="<td>"+obj.UnitesState+"</td>";
                   tr+="<td>"+obj.UnitesPaiduntil+"</td>";
        		   tr+="<td><input type='button'  data-toggle='modal' data-target='#myModal' onclick='selectUnitsaccountid("+obj.UnitInfoId+")'  value='修改'></td>";
        		   tr+="<td><input type='button'  onclick='updateUaccount("+obj.UnitInfoId+")'    value='销户'></td>";  
        		    tr+="<td><input type='button'   onclick='updateUaccount1("+obj.UnitInfoId+")'   value='封存'></td>";  
        		   tr+="</tr>";
        		  
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
		}
  //改变页面
function changePage(obj){
    var page=$(obj).attr("data");//取出data属性值
    test(page);
}
//跳转到指定页面
	function gotoPage(page){
		var page=$("#txtCurPage").val();
		test(page);
	}
	

		function updateUnitsaccount(obj){
               var sb=obj;
	        alert($("#form2").serialize())
	        $.ajax({
	        	url : "Peraccount/updateUnitsaccount",
	        	type : "post",
	        	data : $("#form2").serialize(),
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        	}
	 		});
	 	
	 		
		}
		
		/* 销户 */
		function updateUaccount(obj){
		var id=obj;
		alert(id)
		$.ajax({
		    url:"Peraccount/updateUaccount",
		    type : "post",
        	data:{"unitinfoid":id},
            dataType : 'Json',
            success:function(data){
           if(data=='1'){
           alert("已销户")
            test(1);
           }
            }
		})}
		/* 封存 */
		function updateUaccount1(obj){
		var id=obj;
		alert(id)
		$.ajax({
		    url:"Peraccount/updateUaccount1",
		    type : "post",
        	data:{"unitinfoid":id},
            dataType : 'Json',
            success:function(data){
           if(data=='2'){
           alert("已封存")
            test(1);
           }
            }
		})
		
		
		
		}
		function deleteUnitsaccount(obj){
		alert("555")
		var sb=obj;
		$.ajax({
		    url:"Peraccount/deleteUnitsaccount",
		    type : "post",
        	data:{"unitinfoid":sb},
            dataType : 'Json',
            success:function(data){
            alert(data)
            alert("删除成功")
             test(1);
            }
		})
		
		}
function selectUnitsaccountid(obj){
	     var  ssb=obj;
   $.ajax({
        	url : "Peraccount/selectUnitsaccountid",
        	type : "post",
        	data:{"UnitInfoId":ssb},
            dataType : 'Json',
        	success : function(data) {
        	alert(data.UnitInfoId)
        	$("#UnitInfoName").val(data.UnitInfoName);
        	$("#UnitInfoCredit").val(data.UnitInfoCredit);
        	$("#UnitInfoAddress").val(data.UnitInfoAddress);
        	$("#gslxbh").val(data.gslxbh);
        	$("#gshylxbh").val(data.gshylxbh);
        	$("#jjlxbh").val(data.jjlxbh);
        	$("#UnitInfoSubjection").val(data.UnitInfoSubjection);
        	$("#UnitInfoPayday").val(data.UnitInfoPayday);
        	$("#UnitInfoFoundLusd").val(data.UnitInfoFoundLusd);
        	$("#UnitInfoAccountLusd").val(data.UnitInfoAccountLusd);
        	$("#UnitInfoOperatorName").val(data.UnitInfoOperatorName);
        	$("#UnitInfoOperatorPhone").val(data.UnitInfoOperatorPhone);
        	$("#UnitInfoFader").val(data.UnitInfoFader);
        	$("#UnitInfoType").val(data.UnitInfoType);
        	$("#UnitInfoNumber").val(data.UnitInfoNumber);
        	$("#UnitsDepositRatio").val(data.UnitsDepositRatio);
        	$("#UnitsIndividua").val(data.UnitsIndividua);
        	$("#UnitsDeposite").val(data.UnitsDeposite);
        	$("#UnitsBalance").val(data.UnitsBalance);
        	$("#UnitesState").val(data.UnitesState);
        	$("#UnitesUsername").val(data.UnitesUsername);
        	$("#UnitesAccount").val(data.UnitesAccount);
        	$("#UnitesBankname").val(data.UnitesBankname);
        	$("#UnitesTrustee").val(data.UnitesTrustee);
               
        		
        
        	}
 		});
		}
 

</script>