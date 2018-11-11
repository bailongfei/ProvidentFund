<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <script src="resources/jquery-1.11.3.min.js"></script>
	<script src="resources/jqueryExt.js"></script>
  <body>
  <div style="width:100%;height:90%;">
  <div style="text-align:center;font-size:40px;font-weight:bold;margin-bottom:20px;margin-top:20px;"><span style="color:#000">账户状态</span></div>
      <table  class="table table-striped">
      
     
    		<tr>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">编号</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">姓名</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">性别</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">手机号</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">证件类型</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">身份证号</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">出生年月</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">婚姻状态</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">学历</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">家庭住址</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">账号状态</td>

    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">操作</td>
    			</tr>
    		<tbody id="tbody">
    		
    		</tbody>
    	</table>
  <div style="text-align:center">
 
   <a id="prepage"><span style="font-size:20px;font-color:#000;font-weight:bold;">上一页</span></a><a id="nextpage"><span style="font-size:20px;font-color:#000;font-weight:bold;">下一页</span></a><span style="font-size:20px;font-color:#000;font-weight:bold;">当前是第<span id="nowPage"></span>页</span>
 </div>
   </div>
   
  <!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">审核信息</h4>
            </div>
            <div class="modal-body">
            	    <form  method="post" id="form2">
            	<div class="form-group">
		<label for="fourname" class="col-sm-2 control-label">编号</label>
		<div class="col-sm-10">
			<input  name="grzhbh"   type="text" class="grzhbh"  id="grzhbh" ><br><br>
		</div>
		<div class="form-group">
		<label for="therename" class="col-sm-2 control-label">姓名</label>
		<div class="col-sm-10">
			<input     type="text" class="bkname"  name="bkname" id="bkname"><br><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fourname" class="col-sm-2 control-label">性别</label>
		<div class="col-sm-10">
			<input  name="grsex"   type="text" class="bksex"  id="bksex" readonly="readonly" ><br><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fivename" class="col-sm-2 control-label">手机号</label>
		<div class="col-sm-10">
			<input    type="text"  name="phonenum"class="phonenum"  id="phonenum" ><br><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fuvename" class="col-sm-2 control-label">证件类型</label>
		<div class="col-sm-10">
			<input    type="text"  name="idtype"class="idtype"  id="idtype" value="身份证" readonly="readonly"><br><br>
		</div>
	</div>
	<div class="form-group">
		<label for="ftvename" class="col-sm-2 control-label">身份证号</label>
		<div class="col-sm-10">
			<input    type="text"  name="idnumbers"class="idnumbers"  id="idnumbers" ><br><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">出生年月</label>
		<div class="col-sm-10">
			<input    type="text"  name="birthday"class="birthday"  id="birthday" ><br><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">婚姻状态</label>
		<div class="col-sm-10">
			<input    type="text"  name="marital"class="marital"  id="marital" ><br><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">学历</label>
		<div class="col-sm-10">
			<input    type="text"  name="education"class="education"  id="education" ><br><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">家庭住址</label>
		<div class="col-sm-10">
			<input    type="text"  name="address"class="address"  id="address" ><br><br>
		</div>
	</div>
	
	</form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary"  onclick="update()">同意</button>
            </div>
        </div>
    </div>
</div> 
   
   
  </body>
</html>
<script>
$(function(){
          getAll(1);
      });
      function getAll(pageNum){
                       
      
         $.ajax({
            url:"peraccountcwh/queryAlltycwh",
            type:"post", 
            data:{"pageNum":pageNum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td>"+datalist[i].grzhbh+"</td>";
                    tr+="<td>"+datalist[i].bkname+"</td>";
                   tr+="<td>"+datalist[i].bksex+"</td>";
                   tr+="<td>"+datalist[i].phoneNum+"</td>";
                   tr+="<td>"+datalist[i].IdType+"</td>";
                   tr+="<td>"+datalist[i].IdNumbers+"</td>";
                   tr+="<td>"+datalist[i].birthday+"</td>";
                   tr+="<td>"+datalist[i].marital+"</td>";
                   tr+="<td>"+datalist[i].education+"</td>";
                   tr+="<td>"+datalist[i].address+"</td>";
                   tr+="<td>"+datalist[i].zhzt+"</td>";

                tr+="<td><input type='button'  value='通过' class='' onclick='UpdateByIdcwh("+datalist[i].grzhbh+","+datalist[i].zhztbh+",true)'  /></td>";
                tr+="<td><input type='button'  value='驳回' class='' onclick='UpdateByIdcwh("+datalist[i].grzhbh+","+datalist[i].zhztbh+",false)'  /></td>";
                tr+="</tr>";
                   $("#tbody").append(tr);
               }
               $("#nowPage").html(data.pageNum);
               //alert(data.isFirstPage)
               if(data.isFirstPage){$("#prepage").hide()}else{
                 $("#prepage").show()
               }
                if(data.isLastPage){$("#nextpage").hide()}else{
                  $("#nextpage").show()
                }
            }
         
         })
      }
      $("#prepage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage-1);
      })
       $("#nextpage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage+1);
      })
 function UpdateByIdcwh(obj,obj2,b) {
			alert(obj);
			alert(obj2);
			alert(b);
            $.ajax({      
                url: "peraccountcwh/updateztcwh",
                type: "post",
                data: {"grzhbh":obj,
                		  "zhztbh":obj2,
                		  "b":b
                },
                dataType: "json",
                success: function (data) {
                	 var nowpage=parseInt($("#nowPage").html());
                	getAll(nowpage);
                /* $("#grzhbh").val(data[0].grzhbh);
                    $("#bkname").val(data[0].bkname);
                    $("#bksex").val(data[0].bksex);
                    $("#phonenum").val(data[0].phonenum);
                    $("#idtype").val(data[0].idtype);
                    $("#idnumbers").val(data[0].idnumbers);
                    $("#birthday").val(data[0].birthday);
                    $("#marital").val(data[0].marital);
                    $("#education").val(data[0].education);
                    $("#address").val(data[0].address);
       alert(date); */
    }
     })	
    }	
    //修改
    function update(){
    
         var jsonArr=[];
         var grzhbh=$("#grzhbh").val();
         var bkname=$(".bkname").val();
         var bksex=$(".bksex").val();
        var phonenum=$(".phonenum").val();
         var idtype=$(".idtype").val();
         var idnumbers=$(".idnumbers").val();
         var birthday=$(".birthday").val();
         var marital=$(".marital").val();
         var education=$(".education").val();
         var address=$(".address").val(); 

         alert("确认修改？");
         var jsonStr={"grzhbh":grzhbh,"bkname":bkname,"bksex":bksex,"phonenum":phonenum,"idtype":idtype,"idnumbers":idnumbers,"birthday":birthday,"marital":marital,"education":education,"address":address};
    
         jsonArr.push(jsonStr);
          $.ajax({
                url: "peraccountcwh/updatecwh",
                contentType: "application/json",
                type: "post",
                data: JSON.stringify(jsonArr),//将数组转成json字符串
                dataType: "json",
                success: function (data) {
                    window.location.href = "cwhper.jsp";
                }
            })
        }
	
</script>
