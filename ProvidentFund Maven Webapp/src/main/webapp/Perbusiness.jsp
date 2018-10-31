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
		$(function(){
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
		});
		
		$(function(){
          getAll(1);
      });
      function getAll(pageNum){
                       
      
         $.ajax({
            url:"Perbusiness/findbycondition",
            type:"post", 
            data:{"pageNum":pageNum},
            dataType:"json",
            success:function(data){
            $("#tab").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
                   var tr="<tr>";
                   tr+="<td>"+datalist[i].grperbutype+"</td>";
                   tr+="<td>"+datalist[i].grperbutime+"</td>";
                    tr+="<td>"+datalist[i].perbulimit+"</td>";
                   tr+="<td>"+datalist[i].unitadvancep+"</td>";
                  tr+="<td>"+datalist[i].personadvancep+"</td>";
                   
                   tr+="</tr>";
                   $("#tab").append(tr);
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
	</script>
  </head>
  
  <body>
  	<form action="" id="condition">
    <table>
    	<tr>
    		<td>
    			<input type="hidden" name="grzhbhs" id="grzhbhs">
    			<select name="grperbuType">
    				<option value="">--请选择--</option>
    				<option value="汇缴">汇缴</option>
    			</select>
    		</td>
    		<td>
    			<input type="date" name="date1">
    		</td>
    		<td>
    			<input type="date" name="date2">
    		</td>
    	</tr>
    	<tr>
    		<td>业务类型</td>
    		<td>发生时间</td>
    		<td>发生额度</td>
    		<td>单位缴纳</td>
    		<td>个人缴纳</td>
    	</tr>
    	<tbody id="tab"></tbody>
    </table>
       <a id="prepage">上一页</a><a id="nextpage">下一页</a>当前是第<span id="nowPage"></span>页
    
    </form>
  </body>
</html>
