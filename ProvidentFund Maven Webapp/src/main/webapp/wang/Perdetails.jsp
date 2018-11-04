<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Perdetails.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 使用模态窗口引入bootstrap ${pageContext.request.contextPath}-->
	<link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap.min.css">
       <link rel="stylesheet" type="text/css"
	href="resources/js/bootstrap/css/bootstrap-theme.min.css">
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap/js/bootstrap.min.js"></script>
	<!--最基础jQuery.js都是基于这个  -->
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	<!-- 异步转换参数js -->
	<script type="text/javascript" src="resources/jqueryExt.js"></script>
	<!-- 上传文件js -->
	<script type="text/javascript" src="resources/jquery.form.js"></script>

  </head>
  
  <body>
  	<table class="table table-hover">
     <thead>
       <tr class="success">
         <th>个人编号</th>
         <th>姓名</th>
         <th>性别</th>
         <th>手机号</th>
         <th>证件类型</th>
         <th>身份证号</th>
         <th>出生年月</th>
         <th>婚姻状况</th>
         <th>学历</th>
         <th>电子邮箱</th>
         <th>邮政编码</th>
         <th>家庭住址</th>
         <th colspan="6">id查询
           <input type="text" id="person1" placeholder="请输入id">
           </th>
         <th><input type="button"  data-toggle="modal" data-target="#myModal"  class="emptys btn btn-default" value="添加"></th>
           </tr>	
     </thead>
     <tbody id="tbody">
     
     </tbody>
    </table>
    	 <!-- 模态框弹出录入内容 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="modalTitle1" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							&times;
							<!-- 关闭按钮 -->
						</button>
						<h4 class="modal-title" id="modalTitle1">录入个人信息</h4>
					</div>
					<div class="modal-body">
					  <!--form提交表单  -->
						<form class="form-horizontal"   id="form1" enctype="multipart/form-data">
							<div class="form-group">
								<label for="roleName" class="col-sm-2 control-label">个人信息</label>
								<div class="col-sm-4">
								
								<input type="text" id="grname" name="grname" class="form-control"  placeholder="请输入姓名">
								</div>
							</div>
							
						
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">性别</label>
								<div class="col-sm-4">
									<input type="text" id="grsex" name="grsex" class="form-control"  placeholder="请输入性别">
						
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">电话</label>
								<div class="col-sm-4">
									<input type="text" id="phonenums" class="form-control" name="phonenums"
										placeholder="请输入"> 
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">身份证类型</label>
								<div class="col-sm-4">
									 <input type="text" id="idtypes" class="form-control" name="idtypes"
										placeholder="请输入"> 
										
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">身份证号码</label>
								<div class="col-sm-4">
									 <input type="text" id="idnumber" class="form-control" name="idnumber"
										placeholder="请输入"> 
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">学历</label>
								<div class="col-sm-4">
									 <input type="text" id="educations" class="form-control" name="educations"
										placeholder="请输入"> 
										
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">邮箱</label>
								<div class="col-sm-4">
									 <input type="text" id="gremail" class="form-control" name="gremail"
										placeholder="请输入"> 
										
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">编码</label>
								<div class="col-sm-4">
									 <input type="text" id="grpostcode" class="form-control" name="grpostcode"
										placeholder="请输入"> 
										
								</div>
							</div>
							<div class="form-group">
								<label for="description" class="col-sm-2 control-label">住址</label>
								<div class="col-sm-4">
									 <input type="text" id="graddress" class="form-control" name="graddress"
										placeholder="请输入"> 
										
								</div>
							</div>
							
							<input type="button"   id="saveUploadOrUpdate" data-toggle='modal' data-target='#myModal' class="btn btn-primary" value="保存">
						</form>

					</div>
					<div class="modal-footer">
						
						<button type="button"  class="up btn btn-default" data-dismiss="modal">关闭
						</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
  </body>
</html>
<script>
  /* 页面加载函数 */
   $(function(){
     queryTbGoodsType();
     $("#person1").val('');
  });
  /* 查询商品表 */
  function queryTbGoodsType(){
    $.ajax({
       url:"good/queryT",
       type:"post",
       dataType:"json",
       success:function(data){
          $("#tbody").empty();
          for(var i=0;i<data.length;i++){
            var obj=data[i];
            var tr="<tr>";
                 tr+="<td>"+obj.personNO+"</td>";
                 tr+="<td>"+obj.grname+"</td>";
                 tr+="<td>"+obj.grsex+"</td>";
                 tr+="<td>"+obj.phoneNums+"</td>";
                 tr+="<td>"+obj.IdTypes+"</td>";
                 tr+="<td>"+obj.idNumber+"</td>";
                 tr+="<td>"+obj.birthdays+"</td>";
                 tr+="<td>"+obj.maritals+"</td>";
                 tr+="<td>"+obj.educations+"</td>";
                 tr+="<td>"+obj.gremail+"</td>";
                 tr+="<td>"+obj.grpostcode+"</td>";
                 tr+="<td>"+obj.graddress+"</td>";
                 tr+="<td><input type='button' value='修改' onclick='findbyid("+obj.personNO+")' data-toggle='modal' data-target='#myModal' class='person btn btn-default'></td>";
               	 tr+="</tr>";
                 $("#tbody").append(tr);
          }
       }
    });
  }
  /* //添加15236915594
    $(document).on("click","#saveUploadOrUpdate",function(){
      $("#form1").ajaxSubmit({
        url:"good/saveUploadOrUpdate",
        type:"post",
        contentType:"application/x-www-form-urlencoded; charset=utf-8",
        dataType:"text",
        success:function(data){
           alert(data);
           queryTbGoodsType();
        }
      });
   });  */
    function findbyid(obj){
  	var personNO=obj;
  	alert(personNO);
  	$.ajax({
  		url:"good/queryById",
         type:"post",
         data:{"personNo":personNO},
         dataType:"json",
         success:function(data){
          			$("#personNO").val(data.personNo);
					$("#grname").val(data.grname);
					$("#grsex").val(data.grsex);
					$("#phoneNums").val(data.phoneNums);
					$("#goodsName").val(data.goodsName);
					$("#IdTypes").val(data.IdTypes);
					$("#idNumber").val(data.idNumber);
					$("#maritals").val(data.maritals);
					$("#gremail").val(data.gremail);
					$("#grpostcode").val(data.grpostcode);
					$("#graddress").val(data.graddress);
         }
  	})
  } 
  /*  $("#person1").keyup(function(){
   	 var pid=$("#person1").val();
   	 alert(pid);
   	 $.ajax({
   	 	url:"good/queryById",
         type:"post",
         data:{"personNo":pid},
         dataType:"json",
         success:function(data){
          		if(data!=null){
	          		$("#tbody").empty();
	          		var obj=data;
	            	var tr="<tr>";
	                 tr+="<td>"+obj.personno+"</td>";
	                 tr+="<td>"+obj.grname+"</td>";
	                 tr+="<td>"+obj.grsex+"</td>";
	                 tr+="<td>"+obj.phoneNums+"</td>";
	                 tr+="<td>"+obj.IdTypes+"</td>";
	                 tr+="<td>"+obj.idNumber+"</td>";
	                 tr+="<td>"+obj.birthdays+"</td>";
	                 tr+="<td>"+obj.maritals+"</td>";
	                 tr+="<td>"+obj.educations+"</td>";
	                 tr+="<td>"+obj.gremail+"</td>";
	                 tr+="<td>"+obj.grpostcode+"</td>";
	                 tr+="<td>"+obj.graddress+"</td>";
	                 tr+="<td><input type='button' value='添加' onclick='findbyid("+obj.personno+")' data-toggle='modal' data-target='#myModal' class='person btn btn-default'></td>";
	               	 tr+="</tr>";
	                 $("#tbody").append(tr);
          		}
         }
   	 })
   })		 */

</script>