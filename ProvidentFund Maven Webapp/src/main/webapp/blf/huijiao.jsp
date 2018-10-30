<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>汇缴管理</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link rel="stylesheet" href="../frame/layuiadmin/layui/css/layui.css"
	media="all">
<link rel="stylesheet" href="../frame/layuiadmin/style/admin.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="../resources/js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/js/bootstrap/css/bootstrap-theme.min.css">
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/bootstrap/js/bootstrap.min.js"></script>
<!--最基础jQuery.js都是基于这个  -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jquery-1.11.3.min.js"></script>
<!-- 异步转换参数js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jqueryExt.js"></script>
<!-- 上传文件js -->
<script type="text/javascript" src="../resources/jquery.form.js"></script>
<style>
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
							<input type="text" name="id" placeholder="请输入" autocomplete="off"
								class="layui-input">
						</div>
					</div>

					<div class="layui-inline">
						<button class="layui-btn layuiadmin-btn-useradmin" lay-submit
							lay-filter="LAY-user-front-search">
							<i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
						</button>
					</div>

				</div>
			</div>

			<div class="layui-card-body">
				<!-- <div style="padding-bottom: 10px;">
          <button class="layui-btn layuiadmin-btn-useradmin" data-type="batchdel">删除</button>
          <button class="layui-btn layuiadmin-btn-useradmin" data-type="add">添加</button>
        </div> -->

				<!-- <table id="LAY-user-manage" lay-filter="LAY-user-manage">
        
        </table> -->
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
							<!-- <th colspan="6">
				搜索:<input type="text" class="goodsName" id="goodsNames" placeholder="请输入名称" name="goodsName"> 
				</th> -->
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tbody">

					</tbody>
				</table>


				<!-- 模态框弹出录入内容 -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="modalTitle1" aria-hidden="true" style="relative-left:0px;">
					<div class="modal-dialog">
						<div class="modal-content" style=" height: 520px; width: 730px;">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									&times;
									<!-- 关闭按钮 -->
								</button>
								<h4 class="modal-title" id="modalTitle1">汇缴办理</h4>
							</div>
							<div class="modal-body">
								<!--form提交表单  -->
								<form class="form-horizontal" id="form1" ><!--enctype="multipart/form-data"  -->
									
							
												
									
									 <table border="1" id="table" >

										
											<tr >
												<td >单位账号</td>
												<td colspan="2"><input type="text" id="UnitInfoAccount"
													name="unitinfoaccount" placeholder="请输入" readonly="readonly"></td>
												<td >单位名称</td>
												<td colspan="2"><input type="text" id="UnitInfoName"
													  readonly="readonly"></td>
												<td colspan="2">
												  <input type="hidden" value="成功" id="" name="bjjkzt" readonly="readonly">
												</td>
												
											</tr>
											<tr >
												<td >缴至年月</td>
												<td colspan="2"><input type="text" id="jnmy"
													name="jnmy"  readonly="readonly"></td>
												<td >汇缴月数</td>
												<td >
												   <input type="number" onclick="hijiaoyuee(this.value)" max="12" min="1" value="1" id="nhyf" name="nhyf" > 
												   
												</td>
												<td colspan="2">汇缴日期</td>
												<td ><input type="date" id="dates"
													name="bjjzrq" ></td>
											</tr>
											<tr >
												<td colspan="2">上次汇缴</td>
												<td colspan="2">本次增加</td>
												<td colspan="2">本次减少</td>
												<td colspan="2">本次汇缴</td>
											</tr>
											<tr >
												<td >人数</td>
												<td >金额</td>
												<td >人数</td>
												<td >金额</td>
												<td >人数</td>
												<td >金额</td>
												<td >人数</td>
												<td >金额</td>
											</tr>
										  <tr >
												<td ><input type="text" size="1" id="scrs" name="scjnrs"  readonly="readonly"></td>
												<td ><input type="text" size="4" id="srje" name="scjnje"  readonly="readonly"></td>
												<td><input type="text" size="4" id="bczjrs" name="bczjrs" value="0"  readonly="readonly"></td>
												<td><input type="text" size="1" id="bczjje" name="bczjje"  value="0"   readonly="readonly"></td>
												<td><input type="text" size="4" id="bcjsrs" name="bcjsrs"   value="0"   readonly="readonly"></td>
												<td><input type="text" size="1" id="bcjsje" name="bcjsje"  value="0"    readonly="readonly"></td>
												<td><input type="text" size="1" class="coumtRs" name="bchnrs" readonly="readonly"></td>
												<td><input type="text" size="4" class="jcze"  name="bchnje" readonly="readonly"></td>
											</tr>
											<tr>
											   <td>实收金额</td>
											   <td colspan="2"><input type="text" class="jcze"   name="ssje" readonly="readonly"></td>
											   <td colspan="4">大写:<input type="text"  id="jedxzh" name="jedxzh" readonly="readonly"></td>
											   <td colspan="1"><input type="test" value="汇缴" id="" name="hjywlx" readonly="readonly"></td>
											</tr>
											<tr>
											  <td>缴纳方式</td>
											  <td colspan="2">
											     <select name="bjjkfs">
											       <option value="均缴">均缴</option>
											     </select>
											  </td>
											  <td colspan="4">备注:<input type="text"  id="hjbz" name="hjbz" ></td>
											  <td colspan="1">操作员:
											     <select id="seleUser" name="userid">
											       
											     </select>
											  </td>
											</tr>
											<tr>
											 <td colspan="2">缴纳年月</td>
											 <td >缴存人数</td>
											 <td colspan="1">个人缴存总基数</td>
											 <td >单位月缴存额</td>
											 <td colspan="1">个人月缴存额</td>
											 <td colspan="2">月缴存合计</td>
											</tr>
											<tr>
											 <td colspan="2"><input type="text" size="6" id="gjind" name="gjind" readonly="readonly"></td>
											 <td ><input type="text" size="5" class="coumtRs" name="" ></td>
											 <td colspan="1"><input type="text" size="6" id="grjnjszh" name="" readonly="readonly"></td>
											 <td ><input type="text" size="6" class="" id="grce" name="" readonly="readonly"></td>
											 <td colspan="1"><input type="text" size="6"  id="dwce" name="" readonly="readonly"></td>
											 <td colspan="2"><input type="text" size="6"  class="jcze" name="" readonly="readonly"></td>
											  <td><input type="hidden" size="1"  class="gr"  readonly="readonly"></td>
											  <td><input type="hidden" size="1"  class="dw"  readonly="readonly"></td>
											</tr>
									</table> 
									
									<input type="button" id="saveUploadOrUpdate"
										data-toggle='modal' data-target='#myModal'
										class="btn btn-primary" value="保存汇缴">
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

				<script type="text/html" id="table-useradmin-webuser">
          <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit"><i class="layui-icon layui-icon-edit"></i>编辑</a>
         
        </script>
			</div>
		</div>
		<div class="layui-fluid">
			<div class="layui-row layui-col-space15">
				<div class="layui-col-md12">
					<div class="layui-card">
						<!--  <div class="layui-card-header">显示完整功能</div> -->
						<div class="layui-card-body">
							<div id="test-laypage-demo7"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="${pageContext.request.contextPath}/frame/layuiadmin/layui/layui.js"></script>
	<script>
		 layui.config({
			base : '${pageContext.request.contextPath}/frame/layuiadmin/' //静态资源所在路径
		}).extend({
			index : 'lib/index' //主入口模块
		}).use([ 'index', 'laypage' ], function() {
			var laypage = layui.laypage;
	
			//完整功能
			laypage.render({
				elem : 'test-laypage-demo7',
				count : 100,
				layout : [ 'count', 'prev', 'page', 'next', 'limit', 'skip' ],
				jump : function(obj) {
					console.log(obj)
				}
			});
	
		}); 
	</script>
</body>
</html>
<script>
	/* 页面加载函数 */
	$(function() {
	   getDate();
		dwxxAnddwzh();
	});
	/* 查询商品表 */
	function dwxxAnddwzh() {
		$.ajax({
			url : "${pageContext.request.contextPath}/unfo/queryUnfoAndUncc",
			type : "post",
			dataType : "json",
			success : function(data) {
				$("#tbody").empty();
				for (var i = 0; i < data.length; i++) {
					var obj = data[i];
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
					/*  tr+="<td><input type='button'   data-toggle='modal' data-target='#myModal' title="+obj.goodsId+"  class='findById btn btn-default' value='修改'></td>"; */
					tr += "<td><input type='button'    data-toggle='modal' data-target='#myModal'  id=" + obj.UnitInfoAccount + "  class='huijiaoSelect btn btn-info' value='汇缴办理'></td>";
					tr += "</tr>";
					$("#tbody").append(tr);
				}
			}
		});
	}
	$(document).on("click",".huijiaoSelect",function(){
	 var id=this.id
	    
	     $.ajax({
	       url:"${pageContext.request.contextPath}/hjqcb/selectSum",
	       type:"post",
	       data:{"unitinfoaccount":id},
	       dataType:"json",
	       success:function(data){
	          $(".coumtRs").val(data);
	          }
	    }); 
	     $.ajax({
	       url:"${pageContext.request.contextPath}/hjqcb/selectBGjce",
	       type:"post",
	       data:{"unitinfoaccount":id},
	       dataType:"json",
	       success:function(data){
	           var grzjs=0;
	           var grce=0;
	           var dwce=0;
	            for (var i = 0; i < data.length; i++) {
					var obj = data[i];
					 var js=obj.personalDepositBase;
					 var grbl=obj.perContributionRate;
					 var dwbl=obj.unitRateDeposit;
					  grzjs+=parseFloat(js);
					  grce+=parseFloat(js)*parseFloat(grbl);
					   dwce+=parseFloat(js)*parseFloat(dwbl);
					}
					var jcze=grce+dwce;
					$("#grjnjszh").val(grzjs);
					$("#grce").val(grce);
					$("#dwce").val(dwce);
					$(".gr").val(grce);
					$(".dw").val(dwce);
					$(".jcze").val(jcze);
					
	          }
	          
	    });
	    $.ajax({
	       url:"${pageContext.request.contextPath}/hjqcb/queryHjqcb",
	       type:"post",
	       data:{"unitinfoaccount":id},
	       dataType:"json",
	       success:function(data){
	          $("#UnitInfoAccount").val(data[0].UnitInfoAccount);
	          $("#UnitInfoName").val(data[0].UnitInfoName);
	          $("#jnmy").val(data[0].jnmy);
	          $("#scrs").val(data[0].bchnrs);
	          $("#srje").val(data[0].bchnje);
	          $("#hjbz").val(data[0].hjbz);
	          hjzjrsje();
	       }
	    });
	    queryUser();
	});
	             //汇缴月数
	              
					  function hijiaoyuee(obj){
					 
					  var gr=parseFloat($(".gr").val())*obj;
					   var dw=parseFloat($(".dw").val())*obj;
					   var ze=gr+dw;
					    $("#grce").val(gr);
						$("#dwce").val(dw);
						$(".jcze").val(ze);
						hjzjrsje();
					} ;   
	//获取日期
   function getDate(){
    var d=new Date();
    var day=d.getDate();
    var month=d.getMonth()+1;
    var year=d.getFullYear();
    var rq=(year+"-"+month+"-"+day); 
    $("#dates").val(rq);
    $("#gjind").val(rq);
    };
    //汇缴增减人数金额
    
    function hjzjrsje(){
         var sr=$("#scrs").val();
       var sj=$("#srje").val();
       var rs=$(".coumtRs").val();
       var je=$(".jcze").val();
     
       if(parseFloat(sr-rs)>0){
          $("#bcjsrs").val(parseFloat(sr-rs));
          $("#bcjsje").val(parseFloat(sj-je));
       }else{
          $("#bczjrs").val(parseFloat(rs-sr));
           $("#bczjje").val(parseFloat(je-sj));
       }
       Arabia_to_Chinese($(".jcze").val());
    }
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
    //操做员
    function queryUser(){
       $.ajax({
         url:"${pageContext.request.contextPath}/hjqcb/queryUser",
         type:"post",
         data:{},
         dataType:"json",
         success:function(data){
           $("#seleUser").empty(); 
          $.each(data,function(key,val){
            /* alert(key+"潇洒"+val.userId+"这是"+val.user_account); */
            $("#seleUser").append("<option value='"+val.userId+"'>"+val.user_account+"</option>");
          });
         }
       });
    };
    //汇缴
    $(document).on("click","#saveUploadOrUpdate",function(){
        /* var obj=$("#form1").serializeObject();//将表单数据转换json对象
       alert(JSON.stringify(obj)); 
        $.ajax({
          url:"${pageContext.request.contextPath}/hjqcb/saveHjqcb",
          type:"post",
          contentType:"application/json;charset=utf-8",//发送的内容类型utf-8
          data:JSON.stringify(obj),//将json对象转换成json字符串
          dataType:"json",
          success:function(data){
           if(data.state>0){
             alert(data.message);
           }
          }
       });    */
         
       $.ajax({
       	 url:"${pageContext.request.contextPath}/hjqcb/saveHjqcb",
       	 type:"post",
       	 data:$("#form1").serialize(),
       	 dataType:"json",
       	 success:function(data){
           if(data.state>0){
             alert(data.message);
            }
      //window.location.href="${pageContext.request.contextPath}/blf/mingxicx.jsp";
            
         }
       });   
    });
 
</script>