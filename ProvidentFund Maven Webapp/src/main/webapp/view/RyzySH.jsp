<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Perbusiness.jsp' starting page</title>
    
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
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	  $(function(){
         getAll(1);
      });
      function getAll(pageNum){
         alert(pageNum);
         $.ajax({
            url:"Ryzyzhl/queryryzysh",
            type:"post", 
            data:{
            	"curPage":pageNum
            },
            dataType:'json',
            success:function(data){
            $("#tab").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
               	   var obj=datalist[i];
                   var tr="<tr>";
                   tr+="<td>"+obj.zyid+"</td>";
                   tr+="<td>"+obj.UnitInfoName+"</td>";	
                   tr+="<td>"+obj.toUnitinfoNamme+"</td>";
                   tr+="<td>"+obj.bkname+"</td>";			
				   tr+="<td>"+obj.peracId+"</td>";
                   tr+="<td>"+obj.zyyy+"</td>";
                   tr+="<td>"+obj.sqsj+"</td>";
                   tr+="<td>"+obj.shxq+"</td>";
                   tr+="<td><button onclick='Check("+obj.zyid+","+obj.xdw+","+obj.sqr+")' type='button' class='btn btn-success'>通过</button>&nbsp;&nbsp;<button type='button' class='btn btn-danger' data-toggle='modal' data-target='#myModal' onclick='beforebh("+obj.zyid+")'>驳回</button></td>";
				   tr+="</tr>";
				   alert(tr);
                   $("#tab").append(tr);
               }
               $("#nowPage").html(data.curPage);
               $("#countPage").html(data.totalPages);
               //alert(data.isFirstPage)
               if(data.curPage==data.first){$("#prepage").hide()}else{
                 $("#prepage").show();
               }
                if(data.curPage==data.last){$("#nextpage").hide()}else{
                  $("#nextpage").show();
                }
            }
         
         });
      }
      //通过审核
      function Check(zyid,xdw,sqr){
      	$.ajax({
      		url:"Ryzyzhl/CheckRyzy",
      		type:"post",
      		data:{
      			"zyid":zyid,
      			"xdw":xdw,
      			"sqr":sqr
      		},
      		dataType:'text',
      		success:function(data){
      			if(data=='1'){
      				alert("审核完成");
      			}
      		}
      	})
      }
      function beforebh(zyid){
      	$("#zyid").val(zyid);
      }
      //未通过审核
      function Check2(){
      	var zyid=$("#zyid").val();
      	var bhyy=$("#bhyy").val();
      	$.ajax({
      		url:"Ryzyzhl/CheckRyzy2",
      		type:"post",
      		data:{
      			"zyid":zyid,
      			"bhyy":bhyy
      		},
      		dataType:'text',
      		success:function(data){
      			if(data=='1'){
      				alert("操作成功！");
      				$("#myModal").modal('hide');
      			}
      		}
      	})
      }
      //上一页 下一页
	  $(document).ready(function(){
	  	  $("#prepage").click(function(){
             var nowpage=parseInt($("#nowPage").html());
             getAll(nowpage-1);
     	  });
     	  $("#nextpage").click(function(){
           var nowpage=parseInt($("#nowPage").html());
           getAll(nowpage+1);
      	  });
      	  $("#grperbuType").change(function(){
      	  	getAll(1);
      	  })
	  });
	  /* function UpdateStates(obj1,obj2){
	  	$.ajax({
	  		url:"Peraccount/UpdateStates",
	  		type:"post",
	  		data:{
	  			"grzhbh":obj1,
	  			"zhztbh":obj2
	  		},
	  		dataType:'text',
	  		success:function(data){
	  			if(data=='1'){
		  			alert("申请已提交 请等待审批");
		  			getAll(1);	  				
	  			}
	  		}
	  	})
	  } */
	</script>
  </head>
  <body>
    <table class="table">
    	<tr>
    		<td>编号</td>
    		<td>转出单位</td>
    		<td>转入单位</td>
    		<td>申请人</td>
    		<td>个人账号</td>
    		<td>转移原因</td>
    		<td>申请时间</td>
    		<td>状态</td>
    		<td>操作</td>
    	</tr>
    	<tbody id="tab"></tbody>
    </table>
    	<button id="prepage" class="btn btn-default  btn-sm">&laquo;</button>
		当前是第<span id="nowPage"></span>页 
    	<button id="nextpage"  class="btn btn-default  btn-sm">&raquo;</button>&nbsp;&nbsp;
    	共<span id="countPage"></span>页
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">驳回</h4>
	            </div>
	            <div class="modal-body">
					<input type="hidden" name="zyid" id="zyid">
					<div class="form-group">
				       <label for="name">请填写驳回原因</label>
				       <textarea class="form-control" rows="3" name="bhyy" id="bhyy"></textarea>
				    </div>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" class="btn btn-primary" onclick="Check2()">提交更改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>    	
  </body>
</html>
