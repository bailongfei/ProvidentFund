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
  <div style="text-align:center;font-size:40px;font-weight:bold;margin-bottom:20px;margin-top:20px;"><span style="color:#5CACEE">贷款初次审核</span></div>
      <table class="table table-bordered">
     
    		<tr>
    		
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">贷款编号</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">姓名</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">性别</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">手机号</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">证件类型</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">身份证号</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">贷款金额</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">审核状态</td>
    			<td style="color:#5CACEE;font-weight:bold;font-size:22px;">操作</td>
    			</tr>
    		<tbody id="tbody">
    		
    		</tbody>
    	</table>
 
   <a id="prepage"><span style="font-size:20px;font-color:#000;font-weight:bold;">上一页</span></a><a id="nextpage"><span style="font-size:20px;font-color:#000;font-weight:bold;">下一页</span></a><span style="font-size:20px;font-color:#000;font-weight:bold;">当前是第<span id="nowPage"></span>页</span>
   
   
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
			<input  name="unitinfoname"   type="text" class="form-control"  id="dkxxbh" ><br>
		</div>
		<div class="form-group">
		<label for="therename" class="col-sm-2 control-label">姓名</label>
		<div class="col-sm-10">
			<input     type="text" class="form-control"  name="bkname" id="bkname"><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fourname" class="col-sm-2 control-label">性别</label>
		<div class="col-sm-10">
			<input  name="unitinfoname"   type="text" class="form-control"  id="bksex" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fivename" class="col-sm-2 control-label">手机号</label>
		<div class="col-sm-10">
			<input    type="text"  name="phone"class="form-control"  id="phone" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fuvename" class="col-sm-2 control-label">证件类型</label>
		<div class="col-sm-10">
			<input    type="text"  name="unitinfooperatorphone"class="form-control"  id="zjtype" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="ftvename" class="col-sm-2 control-label">身份证号</label>
		<div class="col-sm-10">
			<input    type="text"  name="nitinfooperatortype"class="form-control"  id="idNumber" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">贷款金额</label>
		<div class="col-sm-10">
			<input    type="text"  name="unitinfooperatornumber"class="form-control"  id="dkje" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">单位账号</label>
		<div class="col-sm-10">
			<input    type="text"  name="unitinfooperatornumber"class="form-control"  id="dwzh" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">购房类型</label>
		<div class="col-sm-10">
			<input    type="text"  name="unitinfooperatornumber"class="form-control"  id="gfxxId" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">房屋位置</label>
		<div class="col-sm-10">
			<input    type="text"  name="unitinfooperatornumber"class="form-control"  id="belocated" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">房屋面积</label>
		<div class="col-sm-10">
			<input    type="text"  name="unitinfooperatornumber"class="form-control"  id="acreage" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">房主姓名</label>
		<div class="col-sm-10">
			<input    type="text"  name="unitinfooperatornumber"class="form-control"  id="nameHouse" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">银行账户</label>
		<div class="col-sm-10">
			<input    type="text"  name="unitinfooperatornumber"class="form-control"  id="gfbankAccount" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">房屋总价</label>
		<div class="col-sm-10">
			<input    type="text"  name="unitinfooperatornumber"class="form-control"  id="housePrice" ><br>
		</div>
	</div>
	<div class="form-group">
		<label for="fiename" class="col-sm-2 control-label">审核状态</label>
		<div class="col-sm-10">
			<select name='shbh' class='shbh' ></select><br>
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
          selshbh();
      });
      function getAll(pageNum){
                       
      
         $.ajax({
            url:"loaninfocwh/queryAllcwh",
            type:"post", 
            data:{"pageNum":pageNum},
            dataType:"json",
            success:function(data){
            $("#tbody").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td class='dkxxbh'>"+datalist[i].dkxxbh+"</td>";
                   tr+="<td>"+datalist[i].bkname+"</td>";
                   tr+="<td>"+datalist[i].bksex+"</td>";
                   tr+="<td>"+datalist[i].phone+"</td>";
                   tr+="<td>"+datalist[i].zjtype+"</td>";
                   tr+="<td>"+datalist[i].idNumber+"</td>";
                   tr+="<td>"+datalist[i].dkje+"</td>";
                   tr+="<td>"+datalist[i].shtype+"</td>";
                  tr+="<td><input type='button'  value='详细' class='' onclick='getall("+datalist[i].dkxxbh+")'  data-toggle='modal' data-target='#myModal'/></td>";
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
			
	
	 function getall(obj) {

            $.ajax({      
           
                url: "loaninfocwh/getallcwh",
                type: "post",
                data: {"dkxxbh":obj},
                dataType: "json",
                success: function (data) {
                $("#dkxxbh").val(data[0].dkxxbh);
                    $("#bkname").val(data[0].bkname);
                    $("#bksex").val(data[0].bksex);
                    $("#phone").val(data[0].phone);
                    $("#zjtype").val(data[0].zjtype);
                    $("#idNumber").val(data[0].idNumber);
                    $("#dkje").val(data[0].dkje);
                    $("#dwzh").val(data[0].dwzh);
                    $("#gfxxId").val(data[0].gfxxId);
                    $("#belocated").val(data[0].belocated);
                    $("#acreage").val(data[0].acreage);
                    $("#nameHouse").val(data[0].nameHouse);
                    $("#gfbankAccount").val(data[0].gfbankAccount);
                    $("#housePrice").val(data[0].housePrice);
                    $("#shtype").val(data[0].shtype);
                   

       alert(date);
    }
     })	
    }	
    
    function selshbh(){
            $.ajax({
                url:"loaninfocwh/getshbhcwh",
                type:"post",
                dataType:"json",
                success:function(data){

                    for(var i=0;i<data.length;i++){
                        var option="<option  value='"+data[i].shbh+"'>"+data[i].shtype+"</option>";
                        $(".shbh").append(option);
                    }
                }


            })
        }
        
        function update(){
    
         var jsonArr=[];
         var dkxxbh=$("#dkxxbh").val();
         var shbh=$(".shbh").val();
         alert(dkxxbh);
         alert(shbh);
         var jsonStr={"dkxxbh":dkxxbh,"shbh":shbh};
    
         jsonArr.push(jsonStr);
          $.ajax({
                url: "loaninfocwh/updatecwh",
                contentType: "application/json",
                type: "post",
                data: JSON.stringify(jsonArr),//将数组转成json字符串
                dataType: "json",
                success: function (data) {
                    window.location.href = "cwhloanin.jsp";
                }
            })
        }
</script>
