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
	<script type="text/javascript" src="resources/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
		/* $(function(){
			$.ajax({
				url:"Perbusiness/findbycondition",
				type:"post",
				data:$("#condition").serialize(),
				dataType:'json',
				success:function(data){
					if(data!=null){
						for(var i=0;i<data.length;i++){
							var obj=data[i];
							var tr="<tr>";
							tr+="<td>"+obj.grperbutype+"</td>";
							tr+="<td>"+obj.grperbutime+"</td>";
							tr+="<td>"+obj.perbulimit+"</td>";
							tr+="<td>"+obj.unitadvancep+"</td>";
							tr+="<td>"+obj.personadvancep+"</td>";
					}	
					}
				}
			})
		}); */
		
	  $(function(){
         getAll(1);
      });
      function getAll(pageNum){
         var date1=$("#date1").val();
         var date2=$("#date2").val();  
         var grperbuType=$("#grperbuType").val();
         var bkname=$("#bkname").val();
         $.ajax({
            url:"Perbusiness/findbycondition",
            type:"post", 
            data:{"pageNum":pageNum,
            	  "grperbuType":grperbuType,
            	  "date1":date1,
            	  "date2":date2,
            	  "bkname":bkname	
            },
            dataType:'json',
            success:function(data){
            $("#tab").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td>"+datalist[i].peracId+"</td>";
                   tr+="<td>"+datalist[i].bkname+"</td>";
                   tr+="<td>"+datalist[i].UnitInfoName+"</td>";
				   tr+="<td>"+datalist[i].grperbuType+"</td>";
                   tr+="<td>"+datalist[i].grperbuTime+"</td>";
                   tr+="<td>"+datalist[i].perbuLimit+"</td>";
                   tr+="<td>"+datalist[i].unitAdvancep+"</td>";
                   tr+="<td>"+datalist[i].personAdvancep+"</td>";
				   tr+="</tr>";
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
      	  $("#bkname").keyup(function(){
      	  	getAll(1);
      	  })
	  });
	      
      
       
	</script>
  </head>
  
  <body>
    <table>
    	<tr>
    		<td>
    			<input type="text" name="bkname" id="bkname">
    			<select name="grperbuType" id="grperbuType">
    				<option value="">--请选择--</option>
    				<option value="汇缴">汇缴</option>
    			</select>
    		</td>
    		<td>
    			<input type="date" name="date1" id="date1">
    		</td>
    		<td>
    			<input type="date" name="date2" id="date2">
    		</td>
    	</tr>
    	<tr>
    		<td>个人账号</td>
    		<td>员工姓名</td>
    		<td>所在单位</td>
    		<td>业务类型</td>
    		<td>创建时间</td>
    		<td>发生额度</td>
    		<td>单位缴纳</td>
    		<td>个人缴纳</td>
    	</tr>
    	<tbody id="tab"></tbody>
    </table>
    	<button id="prepage">上一页</button>
		当前是第<span id="nowPage"></span>页 
    	<button id="nextpage">下一页</button>&nbsp;&nbsp;
    	共<span id="countPage"></span>页
  </body>
</html>
