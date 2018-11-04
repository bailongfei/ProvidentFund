function setTab(name,cursel,n){
 for(i=0;i<=n;i++){
  var menu=document.getElementById(name+i);
  var con=document.getElementById("con_"+name+"_"+i);
  menu.className=i==cursel?"hover":"";
  con.style.display=i==cursel?"block":"none";
 }
}

/*列表悬停事件*/
$(function(){
  $(".infoList li").hover(function () {
     $(this).children().css("color","#005BB2");
  },
  function () {
     $(this).children().css("color","#000");
  }
)
});
/*列表悬停事件*/
$(function(){
  $(".news2 ul li").css("color","#000");
  $(".news2 ul li").hover(function () {
     $(this).children().css("color","#005BB2");
  },
  function () {
    $(this).children().css("color","#000");
  }
)
});

/*删除返回顶端*/
$(function(){

$(".style1").parent().remove();
});

$(function(){

//$(".class_A a").css("color","#fff");
});

/*获取下一篇文章*/
$(document).ready(function(){
//	console.log($(".xzzx li").length);
	$(".xzzx li").click(function(){
	   // alert("come in yes");
//	    console.log($(".prev_s").html());
	    $(".prev_s").empty();
//	    console.log($(".prev_s").html());
	    $(".next_s").empty();
	
	    $(this).prev().children().clone(true).appendTo($(".prev_s"));
	    $(this).next().children().clone(true).appendTo($(".next_s"));
       });
});


//中心业务表格
$(function(){
   $(".sanJiContent table tr td").css("borderWidth","1px");



  
 
});
//域名跳转
  
  if (location.href.indexOf("http://www.bjgjj.gov.cn/")>=0) location.href=location.href.replace("http://www.bjgjj.gov.cn/","http://gjj.beijing.gov.cn/")