<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>管理</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="../frame/layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="../frame/layuiadmin/style/admin.css" media="all">
  <link rel="stylesheet" type="text/css"
	href="../resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="../resources/jquery.form.js"></script>
<!-- 日期插件 -->
<script src="../resources/datejscss/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="../resources/datejscss/dateYMPicker.js" ></script>
<link rel="stylesheet" href="../resources/datejscss/dateYMPicker.css" />

<style>
#table tr td{
 height:42px;
}
#table tr td{
  text-align:center;
}
#table tr td input{
   border:0px;
   align:center;
   text-align:center;
   /* font-size:1.5em; */
   color:#f00;
}
#table tr td select{
  border:0px;
}
</style>

</head>
<body>

  <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-form layui-card-header layuiadmin-card-header-auto">
        <div class="layui-form-item">
     
           <div class="layui-inline">
            <label class="layui-form-label">搜索</label>
            <div class="layui-input-block">
             <input type="text" id="ids" name="UnitInfoName" placeholder="请输入" autocomplete="off" class="layui-input">
            </div>
          </div>
          
          <div class="layui-inline">
            <button id="hhcx" onclick="bujiaomx()" class="layui-btn layuiadmin-btn-useradmin" lay-submit lay-filter="LAY-user-front-search">
              <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
            </button>
          </div>
          
        </div>
      </div>
      
      <div class="layui-card-body">
        
        <table class="table table-hover" id="LAY-user-manage"
					lay-filter="LAY-user-manage">
					<thead>
						<tr class="success">
							<th>单位账号</th>
							<th>单位名称</th>
							<th>单位缴存比例</th>
							<th>个人缴存比例</th>
							<th>单位缴存人数</th>
							<th>单位账户余额</th>
							<th>暂存款余额</th>
							<th>单位账户状态</th>
							<th>单位缴至年月</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tbody">

					</tbody>
				</table>
       
      <!-- 模态框弹出录入内容 1111111-->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="modalTitle1" aria-hidden="true" style="relative-left:0px;">
					<div class="modal-dialog">
						<div class="modal-content" id="wh" style="height: 500px; width: 860px;">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									&times;
									<!-- 关闭按钮 -->
								</button>
								<h4 class="modal-title" id="modalTitle1">补缴办理</h4>
							</div>
							<div class="modal-body" >
								<!--form提交表单  -->
								<form class="form-horizontal" id="form1" ><!--enctype="multipart/form-data"  -->
									
							
												
									
	 <table border="1" id="table" >
	
		
			<tr >
				<td >单位账号</td>
				<td  colspan="2"><input type="text" id="UnitInfoAccount"
					name="unitinfoaccount" placeholder="请输入" readonly="readonly"></td>
				<td >单位名称</td>
				<td  colspan="2"><input type="text" id="UnitInfoName"
					  readonly="readonly">
			   </td>
			</tr>
			<tr>
			  <td>记账日期</td>
			  <td><input type="text" size="6" class="" id="jzrq" name="bjjzrq" readonly="readonly"></td>
			  <td>补缴人数</td>
			  <td><input type="text" size="6" value="0" class="bjrs" id="" name="" readonly="readonly"></td>
			  <td>补缴金额</td>
			  <td>
			    <input type="text" size="6" value="0" class="dwgrhj" id="" name="" readonly="readonly">
			    <input type="hidden" size="6" value="补缴" class="" id="" name="bjjkfs" readonly="readonly">
			    <input type="hidden" size="6" value="1" class="" id="" name="bjjkzt" readonly="readonly">
			    <input type="hidden" size="6" value="补缴" class="" id="" name="bjywllx" readonly="readonly">
			  </td>
			</tr>
			<tr>
			  <td>补缴年月</td>
			  <td colspan="3"><input type="month"  id="date1"  value="bjny"  >至<input type="month" onchange="bujiaoyueshu()" id="date2"  value=""  ></td>
			  <td>补缴月数</td>
			  <td><input type="text" value="1" class="" id="" name="bjys" ></td>
			</tr>
			<tr>
			  <td>实收金额</td>
			  <td><input type="text" value="0"  class="dwgrhj" id="" name="bjssje" readonly="readonly"></td>
			  <td >大写金额</td>
			  <td><input type="text"  class="" id="jedxzh" name="bjssjedx" readonly="readonly"></td>
			  <td>备注:</td>
			  <td><input type="text"  class="" id="" name="bjbz" ></td>
			</tr>
			<tr >
			   <td >
			   <div style="width:160px;height:20px;">
			   <input  type="button" value="选择人员" data-toggle='modal' data-target='#myModal2' onclick="bujiaorycx()"  class="btn btn-info btn-xs" id="ryxz"  >  
			   <input  type="button" value="新建"   class="btn btn-info btn-xs" id="addHang"  >
			   <input  type="button" value="删除"   class="btn btn-info btn-xs"  id="scry" >
			  </div>
			 </td>
			   <td  colspan="3"><input type="file"  class="" id="" name="" ></td>
			   <td  colspan="2">操作人:<input type="text"  size="6"  class="" id="" name="" ></td>
			</tr>
			<tr>
			  <td><input type="checkbox"  class="xzjsjesss" id="" name="checkall" ></td>
			  <td >个人账户</td>
			  <td >姓名</td>
			  <td >单位月缴存额</td>
			  <td >个人月缴存额</td>
			  <td >月缴存额合计</td>
			</tr>
			<tbody id="tbodyId">
			
			</tbody>
			
			<tr>
			  <td>合计:</td>
			  <td colspan="2"><input type="text" size="6" value="0" class="bjrs" id="" name="bjrs" readonly="readonly" >人数</td>
			  <td><input type="text" size="6" value="0" class="dwhj" id="" name="dwbje" readonly="readonly"></td>
			  <td><input type="text" size="6" value="0"  class="grhj" id="" name="grbje" readonly="readonly"></td>
			  <td><input type="text" size="6" value="0" class="dwgrhj" id="" name="" readonly="readonly"></td>
			</tr>
	</table> 	
									
									<input type="button" id="saveBujiao"
										data-toggle='modal' data-target='#myModal'
										class="btn btn-primary" value="保存补缴">
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
       
       <!-- 模态框弹出录入内容2222222 -->
				<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
					aria-labelledby="modalTitle1" aria-hidden="true" style="relative-left:0px;">
					<div class="modal-dialog">
						<div class="modal-content" style=" height: 520px; width: 860px;">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									&times;
									<!-- 关闭按钮 -->
								</button>
								<h4 class="modal-title" id="modalTitle1">补缴办理</h4>
							</div>
							 <div class="modal-body">
								
								<table class="table table-bordered">
									<caption>
									<input type="text" id="bkname" name=""  placeholder="请输入姓名" >
										<button id="hhcx" onclick="bujiaorycx()" class="layui-btn layuiadmin-btn-useradmin" lay-submit lay-filter="LAY-user-front-search">
							              <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
							            </button>
									</caption>
									<thead>
										<tr>
										    <th>选择人员</th>
											<th>个人账户</th>
											<th>员工姓名</th>
											<th>单位月缴存额</th>
											<th>个人月缴存额</th>
											<th>账号余额</th>
											<th>账户状态</th>
										</tr>
									</thead>
									<tbody id="tbody2">
										
									</tbody>
								</table>
                                     
							  </div>
					         <div class="modal-footer">
                                
								<button type="button" class="up btn btn-default"
									data-dismiss="modal">关闭</button>
								<input type="button" id="" onclick="checkRy()"
										data-toggle='modal' data-target='#myModal2'
										class="btn btn-primary" value="确认选择"><!--  -->
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
       
       
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
   <input type="text" class="calendar" placeholder="获取时间" value="" readonly="readonly" >
      </div>
    </div>
    
   
    
  </div>
 
</body>
</html>
<script>
  $(function(){
     bujiaomx(1);
  });
  function bujiaomx(page){
   var tj=$('#ids').val();
		$.ajax({
			url : "${pageContext.request.contextPath}/unfo/queryPageUnfo",
			type : "post",
			data:{"UnitInfoName":tj,"pageNum":page},
			dataType : "json",
			success : function(data) {
				$("#tbody").empty();
				var ob=data.list;
				for (var i = 0; i <ob.length; i++) {
					var obj = ob[i];
					var tr = "<tr>";
					tr += "<td>" + obj.UnitInfoAccount + "</td>";
					tr += "<td>" + obj.UnitInfoName + "</td>";
					tr += "<td>" + obj.UnitsDepositRatio + "</td>";
					tr += "<td>" + obj.UnitsIndividua + "</td>";
					tr += "<td>" + obj.UnitsDeposite + "</td>";
					tr += "<td>" + obj.UnitsBalance + "</td>";
					tr += "<td>" + obj.Unitesdeposit + "</td>";
					tr += "<td>" + obj.UnitesState + "</td>";
					tr += "<td>" + obj.UnitesPaiduntil + "</td>";
					tr += "<td><input type='button'    data-toggle='modal' data-target='#myModal'  id=" + obj.UnitInfoAccount + "  class='huijiaoSelect btn btn-info' value='补缴办理'></td>";
					tr += "</tr>";
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
	};
 
  
  //改变页面
function changePage(obj){
    var page=$(obj).attr("data");//取出data属性值
    bujiaomx(page);
}
//跳转到指定页面
	function gotoPage(page){
		var page=$("#txtCurPage").val();
		bujiaomx(page);
	}

var bu;
$(document).on("click",".huijiaoSelect",function(){
  bu=this;
  var id=$(bu).parent().parent().children().eq(0).html();
  $("#UnitInfoAccount").val(id);
  var name=$(bu).parent().parent().children().eq(1).html();
  $("#UnitInfoName").val(name);
  getDate();
});
//获取日期
   function getDate(){
    var d=new Date();
    var day=d.getDate();
    var month=d.getMonth()+1;
    var year=d.getFullYear();
    var rq=(year+"-"+month+"-"+day); 
    $("#jzrq").val(rq);
    };
//缴纳月数
 function bujiaoyueshu(){
   var d1=$("#date1").val();
   var d2=$("#date2").val();
  /* // alert(d2.substring(5,7));
    var months;
    //var mo;
	months = (d2.substring(0,4)-d1.substring(0,4))* 12;
	//mo=(d2.substring(5,7)-d1.substring(5,7))
    months -= d1.substring(5,7) + 1;
	months += d2.substring(5,7);
	alert(months);
	return months <= 0 ? 0 : months;  
   alert(months);   */
   monthDiff(d1, d2)
 }
function monthDiff(d1, d2) {
var months;
months = (d2.getFullYear() - d1.getFullYear()) * 12;
months -= d1.getMonth() + 1;
months += d2.getMonth();
alert(months);
return months <= 0 ? 0 : months;
}
/* monthDiff(
new Date(2008, 10, 4), // November 4th, 2008
new Date(2010, 2, 12) // March 12th, 2010
); */
  
        
        function  bujiaorycx(obj){
             var id=$("#UnitInfoAccount").val();
          var name=$("#bkname").val();
     $.ajax({
        url:"${pageContext.request.contextPath}/ipay/queryIpery",
        type:"post",
        data:{"UnitInfoAccount":id,"bkname":name},
        dataType:"json",
        success:function(data){
           $("#tbody2").empty();
           $.each(data,function(key,val){
              var tr="<tr>";
              tr+="<td><input type='checkbox'  class='checkId' id="+val.personalAccount+" name='peraccid'></td>";
              tr+="<td>"+val.personalAccount+"</td>";
              tr+="<td>"+val.bkname+"</td>";
              /* tr+="<td>"+val.unitMonPayAmount+"</td>"; */
               tr+="<td>"+parseInt(val.personalDepositBase)*parseFloat(val.unitRateDeposit)+"</td>";
              tr+="<td>"+parseInt(val.personalDepositBase)*parseFloat(val.perContributionRate)+"</td>";
              tr+="<td>"+val.perAccountBalance+"</td>";
              if(val.openAccountStatus=='1'){
                tr+="<td>正常</td>";
              }else{
                tr+="<td>"+val.openAccountStatus+"</td>";
              }
              
              tr+="</tr>";
              $("#tbody2").append(tr);
           });
        }
     });
        };
     function checkRy(){
       var checkData=[];
       
        $('input[type="checkbox"]:checked').each(function(){
        checkData.push(this.id);
        
        $.ajax({
           url:"${pageContext.request.contextPath}/ipay/querycheckData",
           type:"post",
           data:{"checkData":checkData},
           dataType:"json",
           success:function(data){
              $("#tbodyId").empty();
              var dwjess=0;
              var grjess=0;
              var zhjje=0;
              for(var i=0;i<data.length;i++){
                 var val=data[i];
                 var tr="<tr class='checkcc'>";
					 tr+="<td><input type='checkbox'  class='xzjsje' id="+val.personalAccount+" name='checkbox' readonly='readonly'></td>";
					 tr+="<td><input type='text'  size='10' value="+val.personalAccount+" class='' id='' name='personalaccount"+i+"' readonly='readonly'><input type='hidden'  size='6' value="+val.grzhbhs+" class='' id='' name='grzhbhs"+i+"' readonly='readonly'></td>";
					 tr+="<td><input type='text'  size='6' value="+val.bkname+" class='' id='' name='' readonly='readonly'></td>";
					 tr+="<td><input type='text'  size='6' value="+parseInt(val.personalDepositBase)*parseFloat(val.unitRateDeposit)+" class='dwyjce' id='' name='' readonly='readonly'></td>";
					 tr+="<td><input type='text'  size='6' value="+parseInt(val.personalDepositBase)*parseFloat(val.perContributionRate)+" class='gryjce' id='' name='' readonly='readonly'></td>";
					 tr+="<td><input type='text'  size='6' value="+(parseInt(val.personalDepositBase)*parseFloat(val.perContributionRate)+parseInt(val.personalDepositBase)*parseFloat(val.unitRateDeposit))+" class='yhje' id='' name='grjczes"+i+"' readonly='readonly'></td>";
					 tr+="</tr>";
					 $("#tbodyId").append(tr);
					/* 动态改变模态框的高度 */
					 var ht=parseInt(500);
					 var gh=(i+1)*parseInt(30);
					 var gd=ht+gh;
					$("#wh").height(gd);
					/* 月缴存额合计 */
					dwjess+=parseInt(val.personalDepositBase)*parseFloat(val.unitRateDeposit);
					grjess+=parseInt(val.personalDepositBase)*parseFloat(val.perContributionRate);
					zhjje+=(parseInt(val.personalDepositBase)*parseFloat(val.perContributionRate)+parseInt(val.personalDepositBase)*parseFloat(val.unitRateDeposit));
              }
             /*  $(document).on("click",".xzjsjesss",function(){
                if($(this).is(':checked')){
                  $(".dwhj").val(dwjess);
                 $(".grhj").val(grjess);
                 $(".dwgrhj").val(zhjje);
                 }else{
                     $(".dwhj").val(0);
	                 $(".grhj").val(0);
	                 $(".dwgrhj").val(0);
                 }
                  Arabia_to_Chinese($(".dwgrhj").val());
              }); */
                 
              
             
             
           }
        });
        });
        /* 补缴人数 */
         var rs=checkData.length;
        $(".bjrs").val(rs); 
        
     };
     <!-- start 全选/全不选 -->
		
	$('input[name="checkall"]').on("click",function(){
		if($(this).is(':checked')){
			$('input[name="checkbox"]').each(function(){
				$(this).prop("checked",true);
			});
		}else{
			$('input[name="checkbox"]').each(function(){
				$(this).prop("checked",false);
			});
		}
	});
		
		<!-- end 全选/全不选 -->
    $(document).on("click","#scry",function(){
         
        $('input[name="checkbox"]:checked').each(function(){
            //alert(this.id);
             //单条删除//提示框
               if(confirm("你确定真的要删除嘛")){
                   $(this).parent("td").parent("tr").remove();
                   var zrs=$(".bjrs").val();
                   if(zrs>0){
                     $(".bjrs").val(parseFloat(zrs-1));
                   }
                   
                     $(".dwhj").val(0);
	                 $(".grhj").val(0);
	                 $(".dwgrhj").val(0);
               }
            
        }); 
    }); 
    var hjje;
     $(document).on("click",".xzjsje",function(){
       hjje=this;
       var dwhjs=$(".dwhj").val();
       var grhjs=$(".grhj").val();
       var dwgrhjs=$(".dwgrhj").val();
      
       var dwjje=$(hjje).parent().parent().children().eq(3).children().val();
       var gejje=$(hjje).parent().parent().children().eq(4).children().val();
       var zzsje=$(hjje).parent().parent().children().eq(5).children().val();
       if($(this).is(':checked')){
        // $(".bjrs").val(parseFloat(bjrsss)+1);
         var hjdwje=parseFloat(dwhjs)+parseFloat(dwjje);
         var hjgrje=parseFloat(grhjs)+parseFloat(gejje);
         var zzdgje=parseFloat(dwgrhjs)+parseFloat(zzsje);
       }else{
         var hjdwje=parseFloat(dwhjs)-parseFloat(dwjje);
         var hjgrje=parseFloat(grhjs)-parseFloat(gejje);
         var zzdgje=parseFloat(dwgrhjs)-parseFloat(zzsje);
       }
       
       $(".dwhj").val(hjdwje);
       $(".grhj").val(hjgrje);
       $(".dwgrhj").val(zzdgje);
       Arabia_to_Chinese($(".dwgrhj").val());
    }); 
   
      $(document).on("click",".xzjsjesss",function(){
          var dwhjs=$(".dwhj").val();
         var grhjs=$(".grhj").val();
         var dwgrhjs=$(".dwgrhj").val();
                var dwss=0;
               var grss=0;
               var zzss=0;
                if($(this).is(':checked')){
               var gs=$("#tbodyId").children().length;  
               
               for(var i=0;i<gs;i++){
                  dwss+=parseFloat($("#tbodyId").children().eq(i).children().eq(3).children().val());
		          grss+=parseFloat($("#tbodyId").children().eq(i).children().eq(4).children().val());
		          zzss+=parseFloat($("#tbodyId").children().eq(i).children().eq(5).children().val());
                     }
              }else{
                  
                     $(".dwhj").val(dwss);
	                 $(".grhj").val(grss);
	                 $(".dwgrhj").val(zzss);
                 }
                     $(".dwhj").val(dwss);
	                 $(".grhj").val(grss);
	                 $(".dwgrhj").val(zzss);
                 
                  Arabia_to_Chinese($(".dwgrhj").val());
              });  
           
//大写转换
    
     function Arabia_to_Chinese(Num) {
            for (i = Num.length - 1; i >= 0; i--) {
                Num = Num.replace(",", "")//替换tomoney()中的“,”
                Num = Num.replace(" ", "")//替换tomoney()中的空格
            }
            Num = Num.replace("￥", "")//替换掉可能出现的￥字符
            if (isNaN(Num)) { //验证输入的字符是否为数字
                alert("请检查小写金额是否正确");
                return;
            }
            //---字符处理完毕，开始转换，转换采用前后两部分分别转换---//
            part = String(Num).split(".");
            newchar = "";
            //小数点前进行转化
            for (i = part[0].length - 1; i >= 0; i--) {
                if (part[0].length > 10) { alert("位数过大，无法计算"); return ""; } //若数量超过拾亿单位，提示
                tmpnewchar = ""
                perchar = part[0].charAt(i);
                switch (perchar) {
                    case "0": tmpnewchar = "零" + tmpnewchar; break;
                    case "1": tmpnewchar = "壹" + tmpnewchar; break;
                    case "2": tmpnewchar = "贰" + tmpnewchar; break;
                    case "3": tmpnewchar = "叁" + tmpnewchar; break;
                    case "4": tmpnewchar = "肆" + tmpnewchar; break;
                    case "5": tmpnewchar = "伍" + tmpnewchar; break;
                    case "6": tmpnewchar = "陆" + tmpnewchar; break;
                    case "7": tmpnewchar = "柒" + tmpnewchar; break;
                    case "8": tmpnewchar = "捌" + tmpnewchar; break;
                    case "9": tmpnewchar = "玖" + tmpnewchar; break;
                }
                switch (part[0].length - i - 1) {
                    case 0: tmpnewchar = tmpnewchar + "元"; break;
                    case 1: if (perchar != 0) tmpnewchar = tmpnewchar + "拾"; break;
                    case 2: if (perchar != 0) tmpnewchar = tmpnewchar + "佰"; break;
                    case 3: if (perchar != 0) tmpnewchar = tmpnewchar + "仟"; break;
                    case 4: tmpnewchar = tmpnewchar + "万"; break;
                    case 5: if (perchar != 0) tmpnewchar = tmpnewchar + "拾"; break;
                    case 6: if (perchar != 0) tmpnewchar = tmpnewchar + "佰"; break;
                    case 7: if (perchar != 0) tmpnewchar = tmpnewchar + "仟"; break;
                    case 8: tmpnewchar = tmpnewchar + "亿"; break;
                    case 9: tmpnewchar = tmpnewchar + "拾"; break;
                }
                newchar = tmpnewchar + newchar;
            }
            
            //小数点之后进行转化
            if (Num.indexOf(".") != -1) {
                if (part[1].length > 2) {
                    alert("小数点之后只能保留两位,系统将自动截段");
                    part[1] = part[1].substr(0, 2)
                }
                for (i = 0; i < part[1].length; i++) {
                    tmpnewchar = ""
                    perchar = part[1].charAt(i)
                    switch (perchar) {
                        case "0": tmpnewchar = "零" + tmpnewchar; break;
                        case "1": tmpnewchar = "壹" + tmpnewchar; break;
                        case "2": tmpnewchar = "贰" + tmpnewchar; break;
                        case "3": tmpnewchar = "叁" + tmpnewchar; break;
                        case "4": tmpnewchar = "肆" + tmpnewchar; break;
                        case "5": tmpnewchar = "伍" + tmpnewchar; break;
                        case "6": tmpnewchar = "陆" + tmpnewchar; break;
                        case "7": tmpnewchar = "柒" + tmpnewchar; break;
                        case "8": tmpnewchar = "捌" + tmpnewchar; break;
                        case "9": tmpnewchar = "玖" + tmpnewchar; break;
                    }
                    if (i == 0) tmpnewchar = tmpnewchar + "角";
                    if (i == 1) tmpnewchar = tmpnewchar + "分";
                    newchar = newchar + tmpnewchar;
                }
            }
            //替换所有无用汉字
            while (newchar.search("零零") != -1)
                newchar = newchar.replace("零零", "零");
            newchar = newchar.replace("零亿", "亿");
            newchar = newchar.replace("亿万", "亿");
            newchar = newchar.replace("零万", "万");
            newchar = newchar.replace("零元", "元");
            newchar = newchar.replace("零角", "");
            newchar = newchar.replace("零分", "");

            if (newchar.charAt(newchar.length - 1) == "元" || newchar.charAt(newchar.length - 1) == "角")
                newchar = newchar + "整"
          //  document.write(newchar);
          $("#jedxzh").val(newchar);
            //return newchar;
          
        };                  
    $(document).on("click","#saveBujiao",function(){
    
         if($(".dwgrhj").val()>0&&$(".bjrs").val()>0){
            var datas=$("#form1").serialize();
            
            $.ajax({
                url:"${pageContext.request.contextPath}/bj/saveBjOrIper",
                type:"post",
                data:$("#form1").serialize(),
                dataType:"json",
                success:function(data){
                   if(data.state>0){
		                alert(data.message);
		            $("#form1 input[type=text],input[text=hidden]").val("");
		            $("#tbodyId").empty();  
		              }else{"提交失败!"}
                }
            });
         }else{
            alert("请选择补缴人员!");
         }
    });
    
    var i=0;
    //var stuId;
    $(document).on("click","#addHang",function(){
    
        var tr="<tr class='tr'>"
        +"<td><input type='checkbox' class='xzjsje'  name='checkbox' readonly='readonly'></td>"
        +"<td><input type='text' class='percc' size='10' placeholder='请输入员工账号' name='personalaccount"+i+"'><input type='hidden' class='grzhbhs' size='6'  name='grzhbhs"+i+"'></td>"
        +"<td><input type='text'  size='6'  class='bkname' id='' name='' readonly='readonly'></td>"
        +"<td><input type='text'  size='6'  class='dwyjce' id='' name='' readonly='readonly'></td>"
        +"<td><input type='text'  size='6'  class='gryjce' id='' name='' readonly='readonly'></td>"
        +"<td><input type='text'  size='6'  class='yhje' id='' name='grjczes"+i+"' readonly='readonly'></td>"
        /* +"<td><input type='text'  size='6'  class='yhje' id='' name='list["+i+"].grjczes' readonly='readonly'></td>" */
        +"</tr>"
        $("#tbodyId").append(tr); 
        /* var id=$(".stuId").val();
        var ids=parseFloat(id)+parseFloat(i);
        stuId=this;
        $(stuId).parent().siblings("#tbody").children().eq(i).children().eq(0).children().val(ids); */
        /* 动态改变模态框的高度 */
			 var ht=parseInt(500);
			 var gh=(i+1)*parseInt(35);
			 var gds=ht+gh;
			$("#wh").height(gds);
        /* 添加人数 */
        //var rs=$(".bjrs").val();
        var rsss=(i+parseInt(1));
        $(".bjrs").val(rsss);
        i++;//行号增加
    });
    
    $("#tbodyId").on("blur",".percc",function(){
       var checkDatass=[];
       var pid=$(this).val();//动态获取input值
           checkDatass.push(pid);
       
         $.ajax({
           url:"${pageContext.request.contextPath}/ipay/querycheckData",
           type:"post",
           data:{"checkData":checkDatass},
           dataType:"json",
           success:function(data){
              //$("#tbodyId").empty();
              
              for(var i=0;i<data.length;i++){
                var val=data[i];
                $(".grzhbhs").val(val.grzhbhs);
                $(".bkname").val(val.bkname);
                $(".dwyjce").val(parseInt(val.personalDepositBase)*parseFloat(val.unitRateDeposit));
                $(".gryjce").val(parseInt(val.personalDepositBase)*parseFloat(val.perContributionRate));
                $(".yhje").val((parseInt(val.personalDepositBase)*parseFloat(val.perContributionRate)+parseInt(val.personalDepositBase)*parseFloat(val.unitRateDeposit)));
              }
             }
         });
    });
</script>
<script>

$('.calendar').dateYMRangPicker({
				onApplyHandler:function(startDate,endDate){
					console.log(startDate,endDate);
					var value = startDate + "至" + endDate;
					console.log(value);
					console.log(this);
					$(this).val(value);
				}
			});			
			
</script> 