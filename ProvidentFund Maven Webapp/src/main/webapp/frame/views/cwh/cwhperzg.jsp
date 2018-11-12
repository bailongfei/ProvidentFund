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
  <div style="text-align:center;font-size:40px;font-weight:bold;margin-bottom:20px;margin-top:20px;"><span style="color:#000">职工信息采集</span></div>
  	<div style="margin-left:10%">
  		   <button type="button" class="btn btn-primary btn-lg"><a href="frame/views/cwh/pl.jsp"><span style="font-weight:bold;color:#fff">点击进行批量录入</span></a></button>
  		</div>
  		
  <form  method="post" id="form1">
    	
		<div style="margin-top:30px;margin-left:10%;">
    		<label for="ntame" style="color:#5CACEE;font-weight:bold;font-size:22px;">姓名</label>
		<input type="text"  name="bkname"  placeholder="请输入姓名"></div>
		
		<div style="margin-top:-35px;margin-left:30%;">
    		<label for="nuame" style="font-weight:bold;font-size:22px;color:#5CACEE">手机号</label>
		<input type="text"  name="phonenum"  placeholder="请输入手机号"></div>
		<div style="margin-top:-35px;margin-left:50%;">
    		<label for="naime" style="font-weight:bold;font-size:22px;color:#5CACEE">身份证号</label>
		<input type="text"  name="idnumbers"  placeholder="请输入身份证"></div>
		<div style="margin-top:-35px;margin-left:70%;">
    		<label for="naome" style="font-weight:bold;font-size:22px;color:#5CACEE">家庭住址</label>
<!-- 		<input type="text"  name="graddress"  placeholder="请输入住址">
 -->
   <SELECT id=TPL_prov
onchange=setcity(); name="address">
<OPTION
value="" selected>请选择省份</OPTION>
<OPTION
value=安徽>安徽</OPTION>
<OPTION
value=北京>北京</OPTION>
<OPTION
value=重庆>重庆</OPTION>
<OPTION
value=福建>福建</OPTION>
<OPTION
value=甘肃>甘肃</OPTION>
<OPTION
value=广东>广东</OPTION>
<OPTION
value=广西>广西</OPTION>
<OPTION
value=贵州>贵州</OPTION>
<OPTION
value=海南>海南</OPTION>
<OPTION
value=河北>河北</OPTION>
<OPTION
value=黑龙江>黑龙江</OPTION>
<OPTION
value=河南>河南</OPTION>
<OPTION
value=香港>香港</OPTION>
<OPTION
value=湖北>湖北</OPTION>
<OPTION
value=湖南>湖南</OPTION>
<OPTION
value=江苏>江苏</OPTION>
<OPTION
value=江西>江西</OPTION>
<OPTION
value=吉林>吉林</OPTION>
<OPTION
value=辽宁>辽宁</OPTION>
<OPTION
value=澳门>澳门</OPTION>
<OPTION
value=内蒙古>内蒙古</OPTION>
<OPTION
value=宁夏>宁夏</OPTION>
<OPTION
value=青海>青海</OPTION>
<OPTION
value=山东>山东</OPTION>
<OPTION
value=上海>上海</OPTION>
<OPTION
value=山西>山西</OPTION>
<OPTION
value=陕西>陕西</OPTION>
<OPTION
value=四川>四川</OPTION>
<OPTION
value=台湾>台湾</OPTION>
<OPTION
value=天津>天津</OPTION>
<OPTION
value=新疆>新疆</OPTION>
<OPTION
value=西藏>西藏</OPTION>
<OPTION
value=云南>云南</OPTION>
<OPTION
value=浙江>浙江</OPTION>
</SELECT>
 		
		</div><br><br>
		<div style="margin-left:45%;">
		<input type="button"  class="btn btn-default btn-lg"  value="提交" onclick="test1()"/>
		</div>
    	</table>
    </form>
      <table  class="table table-striped">
     
    		<tr>
    			<td style="font-weight:bold;font-size:22px;">编号</td>
    			<td style="font-weight:bold;font-size:22px;">姓名</td>
    			<td style="font-weight:bold;font-size:22px;">手机号</td>
    			<td style="font-weight:bold;font-size:22px;">身份证号</td>
    			<td style="font-weight:bold;font-size:22px;">家庭住址</td>
    			</tr>
    		<tbody id="tbody">
    		
    		</tbody>
    	</table>
 <div style="text-align:center">
   <a id="prepage"><span style="font-size:20px;font-color:#000;font-weight:bold;">上一页</span></a><a id="nextpage"><span style="font-size:20px;font-color:#000;font-weight:bold;">下一页</span></a><span style="font-size:20px;font-color:#000;font-weight:bold;">当前是第<span id="nowPage"></span>页</span>
   </div>
   

   
</body>

<script>
$(function(){
          getAll(1);
      });
      function getAll(pageNum){
                       
      
         $.ajax({
            url:"peraccountcwh/queryAllzgcwh",
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
                   tr+="<td>"+datalist[i].phoneNum+"</td>";
                   tr+="<td>"+datalist[i].IdNumbers+"</td>";
                   tr+="<td>"+datalist[i].address+"</td>";

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

	/*添加 */
	 	 	 function test1(){
			$.ajax({
	        	url : "peraccountcwh/savecwh",
	        	type : "post",
	           data:$("#form1").serialize(),
	       	 	dataType : 'text',//返回的数据类型
	        	success : function(data) {
	        		alert("确认提交");
	        	
	        	}
	 		});
		}  
		
</script>
