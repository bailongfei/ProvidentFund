<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
         alert(pageNum);
         var peracId=$("#peracId").val();
         $.ajax({
            url:"Peraccount/findbyPager",
            type:"post", 
            data:{"curPage":pageNum,
            	  "peracId":peracId
            },
            dataType:'json',
            success:function(data){
            $("#tab").html("");
            var datalist=data.list;
               for(var i=0;i<datalist.length;i++){
               	   var obj=datalist[i];
                   var tr="<tr>";
				   tr+="<td>"+obj.peracId+"</td>";
                   tr+="<td>"+obj.bkname+"</td>";
                   tr+="<td>"+obj.unitRateDeposit+"</td>";
                   tr+="<td>"+obj.perContributionRate+"</td>";
                   tr+="<td>"+obj.personalDepositBase+"</td>";
                   tr+="<td>"+obj.peracBalance+"</td>";
                   tr+="<td>"+obj.zhzt+"</td>";
                   tr+="<td><button onclick='UpdateStates("+obj.grzhbh+",5)'>申请封存</button></td>";
                   tr+="<td><button onclick='UpdateStates("+obj.grzhbh+",6)'>申请销户</button></td>";
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
	  });
	  function UpdateStates(obj1,obj2){
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
	  }
	</script>
  </head>
  <body>
    <table>
    	<tr>
    		<td>个人账号</td>
    		<td>个人姓名</td>
    		<td>所在单位名称</td>
    		<td>申请金额</td>
    		<td>申请原因</td>
    		<td>申请时间</td>
    		<td>申请状态</td>
    		<td>审批时间</td>
    	</tr>
    	<tbody id="tab">
    		<c:forEach items="${list}" var="l">
    			<tr>
    				<td>${l.peracId }</td>
    				<td>${l.bkname }</td>
    				<td>${l.UnitInfoName }</td>
    				<td>${l.ExtractingAmount }</td>
    				<td>${l.UnitInfoName }</td>
    				<td>${l.UnitInfoName }</td>
    				<td>${l.UnitInfoName }</td>
    				<td>${l.UnitInfoName }</td>
    			</tr>
    		</c:forEach>
    	</tbody>
    </table>
    	<button id="prepage">上一页</button>
		当前是第<span id="nowPage"></span>页 
    	<button id="nextpage">下一页</button>&nbsp;&nbsp;
    	共<span id="countPage"></span>页
  </body>
</html>
