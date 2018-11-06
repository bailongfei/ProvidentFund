<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <META http-equiv="Content-Type" 
content="text/html; charset=utf-8"><TITLE>gjjre</TITLE> 
<META name="version" content="7.9.10.1"> 
<META name="createDate" content="2018-10-08 17:26:00"> 
<META name="cacheclearDate" content="2018-09-15 20:07:13"> 
<META http-equiv="X-UA-Compatible" content="IE=edge"> 
<META name="keywords" content=""> 
<META name="description" content="北京公积金默认频道"> <LINK href="/ProvidentFund/resources/gjjre_files/huilan-jquery-ui.css" 
rel="stylesheet" type="text/css"> 
<SCRIPT src="/ProvidentFund/resources/gjjre_files/huilan-jquery-ui.js" type="text/javascript"></SCRIPT>
  <LINK href="http://www.bjgjj.gov.cn/fileDir/web/resource/cms/img_pc_site/2018/01/2018010915255240762.ico" 
rel="shortcut icon" type="image/x-icon">   <LINK href="/ProvidentFund/resources/gjjre_files/web.css" 
rel="stylesheet" type="text/css">   
<SCRIPT src="/ProvidentFund/resources/gjjre_files/web.js" type="text/javascript"></SCRIPT>
  
<META name="GENERATOR" content="MSHTML 11.00.10570.1001"></HEAD>  
<BODY><LINK href="/ProvidentFund/resources/gjjre_files/style_s.css" rel="stylesheet" type="text/css">  
 <LINK href="/ProvidentFund/resources/gjjre_files/skin.css" rel="stylesheet" type="text/css">
<DIV style="display: none;" easysite="easysiteHiddenDiv">	 <INPUT id="contextPath" type="hidden" value="/eportal">
	 <INPUT id="isOnlyUseCkeditorSourceMode" type="hidden" value="$isOnlyUseCkeditorSourceMode">
	 <INPUT id="eprotalCurrentPageId" type="hidden" value="300449">	 <INPUT id="eprotalCurrentSiteId" type="hidden" value="300448">
	 <INPUT id="eprotalCurrentSiteType" type="hidden" value="WEB">	 <INPUT id="eprotalCurrentSiteHideMaskLayer" type="hidden" value="no">
	 <INPUT id="eprotalCurrentArticleKey" type="hidden">	 <INPUT id="eprotalCurrentColumnId" type="hidden">
	 <INPUT id="isStaticRequest" type="hidden" value="yes">	 <INPUT id="isOpenStaticPageList" type="hidden" value="no">
	 <INPUT id="defaultPublishPage" type="hidden" value="10">	 <INPUT id="eportalappPortletId" type="hidden" value="3">
	 <INPUT id="epsPortletId" type="hidden" value="1">	 <INPUT id="portaltoolsPortletId" type="hidden" value="2">
	 
<SCRIPT src="/ProvidentFund/resources/gjjre_files/chanelCounting.js" type="text/javascript"></SCRIPT>
	 <INPUT id="currentLoginMemberId" type="hidden">	 <INPUT id="currentLoginMemberName" type="hidden">
	 <INPUT id="behaviourAnalysisSiteId" type="hidden"> 			<INPUT id="portalLastRequestUrl" type="hidden"> 
</DIV>
<STYLE type="text/css">
.date{width:1000px;margin:8px auto;+padding-top:10px;overflow:hidden;font-family: "宋体";font-size: 12px;}
.dateLeft{float: left;}
.dateRight{float: right;}
//首都之窗
.bgBox{}
.bjwindowLink{
    position: absolute;
    right: 6%;
    top: 27%;
}
.kjtnav_curr{ width: 152px !important;background-color: #016ec5;}
.bjwindowLink a{display:block; width:100%; height:100%; cursor: pointer;}
.da_bg{witth:100%;background-color:#318CD4;}
.ewgn{height:25px;float: right;padding-top: 6px;}
.ewgn ul li{float:left;}
//.shu{ border-right:1px solid #fff;}
.ewgn ul li a{color:#fff; font-size:12px;padding-right: 8px;padding-left: 8px;}

.bg_main{width:1200px; margin:0 auto;}
.gjj_logo{float:left;}
.gjj_logo img{width:80%;padding-top:20px;}
.ewgn ul li.wx{border:none;}
#sjz{
 position:relative;
}
#sjz a{ 
cursor:pointer;
}
#wap{
   z-index:999;
  position:absolute;
  top:34px;
  left:-20px;
}
#wap img{
  height:115px;
  width:115px;
}
#sjz01{
 position:relative;
}
#sjz01 a{ 
cursor:pointer;
}
#wap01{
   z-index:999;
  position:absolute;
  top:34px;
  left:-20px;
}
#wap01 img{
  height:115px;
  width:115px;
}

.search-input{width:160px;vertical-align:middle;height:30px;padding-left:5px;+margin-right:5px;line-height:30px;color:#898989;font-family:"微软雅黑";
     border:none;borer-radius:2px;}

</STYLE>
 <!--顶部日期--> <!--<div class="date clearfix">
	<div class="dateLeft">
	<p align="center"><script language="JavaScript" type="text/javascript"> 
		var enabled = 0; 
		today = new Date(); 
		var day; 
		var date; 
		if(today.getDay()==0) {
			day = "星期日" ;
		}else if(today.getDay()==1) {
			day = "星期一" ;
		}else if(today.getDay()==2) {
			day = "星期二" ;
		}else if(today.getDay()==3) {
			day = "星期三" ;
		}else if(today.getDay()==4) {
			day = "星期四" ;
		}else if(today.getDay()==5){
			day = "星期五" ;
		}else if(today.getDay()==6){
		 	day = "星期六";
		}
		document.fgColor = "000000";
		date = "今天是:"+today.getFullYear()+ "年" + (today.getMonth() + 1 ) + "月" + today.getDate() + "日" + " "+day +"";
		document.write("<CENTER>" + date + "</CENTER>");
	 </script></p> 
	</div>
	<div class="dateRight">
	 <a href="#" onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.bjgjj.gov.cn/');"><span>设为首页</span></a>
         <span style="color:#ccc;margin:0 5px;">|</span>
         <a href="javascript:window.external.AddFavorite('http://www.bjgjj.gov.cn/','gjjre')"><span>加入收藏</span></a>
	</div>
</div>--> 
 <!--大背景--> 
<DIV class="bgBox"> 

<DIV class="bg_main">

<DIV class="gjj_logo"><IMG src="/ProvidentFund/resources/gjjre_files/2017051910060584649.png"></DIV><!--首都之窗--> 
	 
<DIV class="bjwindowLink"><!--<a href="http://www.beijing.gov.cn/" target="_blank"><img src="/web/uiFramework/commonResource/image/2016070610481459472.png" title="http://www.beijing.gov.cn"/></a>--> 
                <A href="http://www.beijing.gov.cn/" target="_blank"><IMG title="http://www.beijing.gov.cn" 
src="/ProvidentFund/resources/gjjre_files/2018011116393648076.png"></A></DIV>
<DIV class="ewgn">
<UL>
  <LI class="shu"><A class="fanti" id="StranLink" 
  href="javascript:StranBody()">繁体</A></LI>
  <LI class="shu" style="display: none;"><A 
  href="http://gjj.beijing.gov.cn/">无障碍</A></LI><!--<li><a href="http://old.bjgjj.gov.cn/">旧版回顾</a></li>--> 
<!--<li id="sjz"><a href="">手机APP</a><div id="wap" style="display:none;"><img src="/web/uiFramework/commonResource/image/2017052217193289890.png"></div></li><li class="wx" id="sjz01"><a href="">微信</a><div id="wap01" style="display:none;"><img src="/web/uiFramework/commonResource/image/2017052217194276906.png"></div></li></ul>--> 
          </UL></DIV></DIV></DIV><!--导航--> 
<DIV class="da_bg">
<DIV class="nav">
<UL class="jz_nav_ul fl">
  <LI class="kjtnav_curr"><A href="http://gjj.beijing.gov.cn/web/index/index.html" 
  target="_parent"><!--在有需要的情况下将此标签解封（频道大largeIconFile小图标）<img src=" /web/resource/cms/img_pc_site/2016/11/2016112415212547633.ico " >-->首页</A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/zwgk/index.html" target="_parent"><!--在有需要的情况下将此标签解封（频道大largeIconFile小图标）<img src=" " >-->政务信息</A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/354307/index.html" 
target="_parent"><!--在有需要的情况下将此标签解封（频道大largeIconFile小图标）<img src=" " >-->办事指南</A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/djzx/index.html" target="_parent"><!--在有需要的情况下将此标签解封（频道大largeIconFile小图标）<img src=" " >-->党建园地</A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/_300587/index.html" target="_parent"><!--在有需要的情况下将此标签解封（频道大largeIconFile小图标）<img src=" " >-->政策法规</A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/zmhd/index.html" target="_parent"><!--在有需要的情况下将此标签解封（频道大largeIconFile小图标）<img src=" " >-->政民互动</A></LI></UL>
<DIV class="search fr"><!--<form action="/eportal/ui?pageId=302089&currentPage=1&moduleId=f16e1d5d5ccd476eab8876d15833dba7" method="post" class="search clearfix">
        <input onclick="if(this.value=='请输入关键字')this.value=''" onblur="if(this.value=='')this.value='请输入关键字';" value="请输入关键字" onkeypress="if(event.keyCode==13) {return globSearch()}" name="filter_LIKE_TITLE" value="" type="text" id="textfield" class="hbinput ui-autocomplete-input" autocomplete="off">
        <button class="btn" id="btn" type="submit" name="button" value="" style="display:inline-block;border:none;cursor:pointer"> 搜索</button>
      </form> --> 
<FORM name="form1" class="search clearfix" id="mySearchFormAction" action="http://www.bjgjj.gov.cn/search/pcRender?pageId=f5261418ddc74f03b27e3590c531102b" 
method="post" target="_blank"><INPUT name="ty" id="ty" type="hidden">      
<INPUT name="dr" id="dr" type="hidden" value="true">      <INPUT name="w" id="true" type="hidden"> 
     <INPUT name="f" id="f" type="hidden">      <INPUT name="rp" id="rp" type="hidden"> 
     <INPUT name="sr" id="sr" type="hidden" value="score desc">     <INPUT name="q" class="search-input" id="q" type="text" placeholder="请输入搜索关键字" value=""> 
     <INPUT class="search-submit btn" onclick="document.getElementById('mySearchFormAction').submit();" type="submit" value="搜索"> 
    </FORM></DIV></DIV></DIV>
<SCRIPT type="text/javascript">
 //设为首页
 function SetHome(obj,url){
       ;
     try{
         obj.style.behavior='url(#default#homepage)';
         obj.setHomePage(url);
     }catch(e){
         if(window.netscape){
             try{
                 netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
             }catch(e){
                 ;
             }
         }else{
             ;
         }
     }
 }
 //收藏本站
 function AddFavorite(title, url) {
     ;
     try {
         window.external.addFavorite(url, title);
     }
     catch (e) {
         try {
             window.sidebar.addPanel(title, url, "");
         }
         catch (e) {
             ;
         }
     }
 }
 //保存到桌面
 function toDesktop(sUrl,sName){
 try {
     var WshShell = new ActiveXObject("WScript.Shell");
     var oUrlLink =          WshShell.CreateShortcut(WshShell.SpecialFolders("Desktop")     + "\\" + sName + ".url");
     oUrlLink.TargetPath = sUrl;
     oUrlLink.Save();
     }  
 catch(e)  {  
           ;  
 }
 }    
 </SCRIPT>
  
<SCRIPT type="text/javascript">
$(function(){

    $("#sjz a").hover(function(){
    $("#wap").fadeIn("slow").end();
},function(){
     $("#wap").fadeOut("slow").end();
})
})

</SCRIPT>
  
<SCRIPT type="text/javascript">
$(function(){

    $("#sjz01 a").hover(function(){
    $("#wap01").fadeIn("slow").end();
},function(){
     $("#wap01").fadeOut("slow").end();
})
})

</SCRIPT>
  
<DIV class="wrapper1">
<DIV class="adv_slider_06 column" id="adv_slider_06" name="通栏" runat="server">
<DIV class="portlet" id="8c550f0c23c34354ac47f02f0264fc95" pagemoduleid="8c59a90143f7471ab22cb926625e82c5">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu8c550f0c23c34354ac47f02f0264fc95">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="tonglan"><A href="http://gjj.beijing.gov.cn/web/djzx/zxzt87/xxxcgcddsjdjs/gcsy22/index.html"><IMG 
src="/ProvidentFund/resources/gjjre_files/2018042317261663771.png"></A></DIV>
<STYLE type="text/css">
.tonglan img{
  width:99.3%;
  margin:0 auto;
}</STYLE>
   </DIV></DIV></DIV><!--轮播图-->    
<DIV class="gjj_firm clearfix">
<DIV class="gjj_ser fl column" id="gjj_ser" name="轮播图" runat="server">
<DIV class="portlet" id="8b73a81f7bd04b018608bfb62b4d2dbb" pagemoduleid="434785d0f0834f40b66e18bed52377ca">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu8b73a81f7bd04b018608bfb62b4d2dbb">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="txtScroll-left" opentype="page">
<DIV class="anounce_title"><IMG src="/ProvidentFund/resources/gjjre_files/2017051715514690586.png">   
<A href="javascript:void(0)">&nbsp;:</A>  </DIV>
<DIV class="anounce_bd">
<UL class="infoList0">
  <LI><A title="关于公示报名住房公积金个人贷款二手房评估机构核验合格名单的公告" onclick="recordLinkArticleHits('361724')" 
  href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/361724/2018100814564181382.pdf" 
  target="_blank">关于公示报名住房公积金个人贷...</A> <SPAN>2018-10-08</SPAN></LI>
  <LI><A title="关于落实放管服、优化营商环境提升住房公积金归集服务水平的通知" onclick="recordLinkArticleHits('361068')" 
  href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/361068/2018091319473970304.pdf" 
  target="_blank">关于落实放管服、优化营商环境...</A> <SPAN>2018-09-13</SPAN></LI>
  <LI><A title="关于调整住房公积金个人住房贷款政策的通知" onclick="recordLinkArticleHits('361065')" 
  href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/361065/2018091319434649638.pdf" 
  target="_blank">关于调整住房公积金个人住房贷...</A> <SPAN>2018-09-13</SPAN></LI>
  <LI><A title="关于公布北京住房公积金管理中心2018年度接收安置军队转业干部面试成绩及总成绩的通知" onclick="void(0)" 
  href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300666/360944/index.html" 
  target="_blank">关于公布北京住房公积金管理中...</A> <SPAN>2018-09-06</SPAN></LI>
  <LI><A title="关于北京市2018年最低工资标准和基本生活费涉及住房公积金有关事项的通知" onclick="recordLinkArticleHits('360400')" 
  href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/360400/2018082414434856016.pdf" 
  target="_blank">关于北京市2018年最低工资标准...</A> <SPAN>2018-08-24</SPAN></LI>
  <LI><A title="关于进一步维护住房公积金缴存职工购房贷款权益的通知" onclick="recordLinkArticleHits('359693')" 
  href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/359693/2018081717292767286.pdf" 
  target="_blank">关于进一步维护住房公积金缴存...</A> <SPAN>2018-08-17</SPAN></LI>
  <LI><A title="关于公布从事住房公积金个人贷款二手房评估机构名单的通知" onclick="recordLinkArticleHits('359574')" 
  href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/359574/2018081316273998106.pdf" 
  target="_blank">关于公布从事住房公积金个人贷...</A> <SPAN>2018-08-13</SPAN></LI>
  <LI><A title="关于公布2018年上半年公开招聘结果的通知" onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300666/359474/index.html" 
  target="_blank">关于公布2018年上半年公开招聘...</A> <SPAN>2018-08-02</SPAN></LI>
  <LI><A title="住房公积金贷款中心丰台网点迁址公告" onclick="recordLinkArticleHits('359392')" 
  href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/359392/2018073111113512320.pdf" 
  target="_blank">住房公积金贷款中心丰台网点迁...</A> <SPAN>2018-07-31</SPAN></LI>
  <LI><A title="住房公积金结息对账公告" onclick="recordLinkArticleHits('359240')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/359240/2018070914531532864.pdf" 
  target="_blank">住房公积金结息对账公告</A> <SPAN>2018-07-09</SPAN></LI></UL></DIV></DIV>
<STYLE>
	.txtScroll-left{
            position: absolute;
            /*top: 511px;*/
            bottom:16px;
            z-index: 1;
		height: 35px;
	    line-height: 35px;
	    overflow: hidden;
            background:url(/web/uiFramework/commonResource/image/2017051817053761634.png) no-repeat;opacity:0.7;filter:"alpha(opacity=70)";-ms-filter:"alpha(opacity=70)";
	}
	.anounce_title,.anounce_bd,.anounce_more{
		display: inline-block;
		height: 35px;
		line-height: 35px;
	}
	.anounce_title{
		float:left;
		padding-left: 10px;
		padding-right: 10px;
		overflow: hidden;
	}
		.anounce_title img{
			/*display: inline-block;*/
			float: left;
                        /*+margin-top:3px;*/
			padding-top: 9px;
			padding-right: 5px;
		}
		.anounce_title a{
			/*display: inline-block;*/
			float: left;
                        +margin-top:-1px;
			font-size: 14px;
			color: #fff;
		}
	.anounce_bd{
		float: left;
	}
	.anounce_bd .tempWrap{
                width:530px !important;
        }
	.anounce_bd .tempWrap  ul li{
		margin-right: 25px;
                width:auto !important;
	}
	.anounce_bd .tempWrap  ul li a{
		font-size: 14px;
		margin-right: 15px;
                +margin-right: 15px;
                color:#fff;
	}
	.anounce_bd .tempWrap  ul li span{
		font-size: 14px;
                color:#fff;
	}
	.anounce_more{
		float: right;
	}
	.anounce_more a{
		font-size: 14px;
		margin-right: 10px;
                color: #fff;
	}
</STYLE>
 
<SCRIPT src="/ProvidentFund/resources/gjjre_files/jquery.SuperSlide.2.1.1.js" type="text/javascript"></SCRIPT>
 
<SCRIPT type="text/javascript">
jQuery(".txtScroll-left").slide({mainCell:".anounce_bd ul",autoPlay:true,effect:"leftMarquee",vis:2,interTime:20});
</SCRIPT>
  </DIV></DIV>
<DIV class="portlet" id="75066c53247448f4adb4538ac325700f" pagemoduleid="91e47a8bed25494c816a4f3520448cc9">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu75066c53247448f4adb4538ac325700f">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="slideBox2" id="slideBox2" opentype="page">
<DIV class="hd">
<UL>
  <LI></LI>
  <LI></LI>
  <LI></LI>
  <LI></LI></UL></DIV>
<DIV class="bd">
<UL>
  <LI><A href="http://gjj.beijing.gov.cn/web/zwgk/_300583/351198/index.html" 
  target="_blank"><IMG src="/ProvidentFund/resources/gjjre_files/2018051313532842263.jpg" 
  border="0"></A> </LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/354307/index.html" 
  target="_blank"><IMG src="/ProvidentFund/resources/gjjre_files/2018042319071764434.png" 
  border="0"></A> </LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/bmfw/ywwdfb/index.html" target="_blank"><IMG 
  src="/ProvidentFund/resources/gjjre_files/2018051410191457026.jpg" border="0"></A> </LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/zwgk/_300583/zxtc/index.html" 
  target="_blank"><IMG src="/ProvidentFund/resources/gjjre_files/2017090610231385786.jpg" 
  border="0"></A> </LI></UL></DIV><A class="prev" href="javascript:void(0)"></A><A 
class="next" href="javascript:void(0)"></A></DIV>
<SCRIPT src="/ProvidentFund/resources/gjjre_files/jquery.SuperSlide.2.1.1.js" type="text/javascript"></SCRIPT>
 
<SCRIPT type="text/javascript">
  
		jQuery(".slideBox2").slide({mainCell:".bd ul",autoPlay:true});
</SCRIPT>
 
<STYLE type="text/css">
  .slideBox2{ width:100%; height:300px; overflow:hidden; position:relative; margin-bottom:16px;}
.slideBox2 .hd {
    bottom:6px;
    height: 15px;
    overflow: hidden;
    position: absolute;
    left:670px;
    z-index: 10;
}
.slideBox2 .hd ul{ overflow:hidden; zoom:1; float:left;}
.slideBox2 .hd ul li{
                border-top-left-radius:4px;
                border-top-right-radius:4px;
                border-bottom-right-radius:4px;
                border-bottom-left-radius:4px;
                float:left; 
                margin-right:16px; 
                width:9px; 
                height:9px; 
                line-height:10px; 
                text-align:center; 
                background:#fff;
                cursor:pointer;
                list-style:none;
               }
.slideBox2 .hd ul li.on{
               border-top-left-radius:4px;
               border-top-right-radius:4px;
               border-bottom-right-radius:4px;
               border-bottom-left-radius:4px; 
               background:#fea244; 
               color:#fff; }
.slideBox2.bd{ position:relative; height:100%; z-index:0;}
.slideBox2 .bd li{ zoom:1; vertical-align:middle;position:relative; }
.slideBox2 .bd img {
    display: block;
    height: 300px;
    width:100%;
}
.slideBox2 .prev {
  //background: rgba(0, 0, 0, 0) url(/web/uiFramework/commonResource/image/2017042711130562830.png) no-repeat scroll 0 0;
    display: block;
    height: 83px;
    left: 1%;
    margin-top: -45px;
    position: absolute;
    top: 50%;
    width: 46px;}
.slideBox2 .next {
  //background: rgba(0, 0, 0, 0) url(/web/uiFramework/commonResource/image/2017042711131377934.png) no-repeat scroll 0 0;
    display: block;
    height: 83px;
    left: 96%;
    margin-top: -25px;
    position: absolute;
    top: 47%;
    width: 46px;
}
 </STYLE>
  </DIV></DIV></DIV>
<DIV class="firm_sys fr column" id="firm_sys" name="业务系统功能" runat="server">
<DIV class="portlet" id="146251215e1142ffb9b0a5511c3125fd" pagemoduleid="5316bd65fe1d41a698d5c85557ebc6f3">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu146251215e1142ffb9b0a5511c3125fd">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="rig">
<DIV class="rig_big">
<DIV class="rig_up"><A href="http://gjj.beijing.gov.cn/web/index/grxxcx/index.html" 
target="_blank">个人网上业务平台</A></DIV><!--<div class="rig_wz01"><ul>
<li><a href="">&gt;演示</a></li>
<li><a href="">&gt;指南</a></li>
<li><a href="">&gt;注册</a></li>
</ul>
</div>-->
<DIV class="rig_center wh"><A href="http://gjj.beijing.gov.cn/web/index/dwywbl/index.html" 
target="_blank">单位网上业务平台</A></DIV><!--<div class="rig_wz02"><ul>
<li><a href="">&gt;演示</a></li>
<li><a href="">&gt;指南</a></li>
</ul>
</div>--><!--<div class="rig_down"><a href="">其他业务系统</a></div>--></DIV></DIV>
<STYLE type="text/css">.rig_big{width:230px; height:245px; padding-top:25px; margin:0 auto;}
.rig_up,.rig_center,.rig_down,.rig_wz01,.rig_wz02{width:230px; /**height:45px;**/height:115px;}
.rig_up a,.rig_center a,.rig_down a{color:#ffffff;font-size:16px;font-family:"微软雅黑";text-align:center; display:block; line-height:42px;text-decoration:none;}
.rig_up a,.rig_center a{padding-top:30px;}
.rig_wz01 a,.rig_wz02 a{color:#318cd4;font-size:16px;font-family:"微软雅黑";text-decoration:none;}
.rig_wz01 ul li,.rig_wz02 ul li{float:left; list-style:none;line-height:42px; padding-left:10px; }
.rig_up{background: url(/web/uiFramework/commonResource/image/2017112711180357414.png) no-repeat; margin-top:26px;}
.rig_center{background: url(/web/uiFramework/commonResource/image/2017112711181595227.png) no-repeat;}
.rig_down{background: url(/web/uiFramework/commonResource/image/2017051814123174258.png) no-repeat;}</STYLE>
    </DIV></DIV></DIV></DIV><!--通知公告-->    <!--<div class="adv_anounce" id="adv_anounce" runat="server" name="通知公告"></div>--> 
   <!--最新公告-->    
<DIV class="adv_slider_04 column" id="adv_slider_04" name="最新公告" runat="server">
<DIV class="portlet" id="8a0bed50b3b54b8e8a7c59386fe8255e" pagemoduleid="203dc3b1e2b44b708428a4694b3497b3">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu8a0bed50b3b54b8e8a7c59386fe8255e">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV><A style="display: none;" href="http://gjj.beijing.gov.cn/web/resource/cms/article/351719/357305/2018051609182057736.pdf"><IMG 
style="left: 0px; top: 200px; position: fixed;" src="/ProvidentFund/resources/gjjre_files/2018051517550952239.jpg"></A> 
  </DIV></DIV>
<DIV class="portlet" id="693562fd8312404290148a833914b59d" pagemoduleid="339a1a2fdfda4cca9f6af421e1c0f2fc">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu693562fd8312404290148a833914b59d">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV><A href="http://gjj.beijing.gov.cn/web/resource/cms/article/351719/358583/2018060818211381394.pdf" 
opentype="page"><IMG style="left: 0px; top: 200px; width: 4.5%; position: fixed;" 
src="/ProvidentFund/resources/gjjre_files/2018061110303339202.jpg"></A>  </DIV></DIV>
<DIV class="portlet" id="c93fbd2fd08f42aa9068406f595816e2" pagemoduleid="95e41021fe9043c8939ec01ef2c9cedd">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenuc93fbd2fd08f42aa9068406f595816e2">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV><A href="http://gjj.beijing.gov.cn/web/bmfw/358199/358329/index.html" 
opentype="page"><IMG style="top: 200px; width: 4.5%; right: 0px; position: fixed;" 
src="/ProvidentFund/resources/gjjre_files/2018051720313152026.jpg"></A>  </DIV></DIV></DIV><!--公积金指南--> 
   
<DIV class="adv_slider column" id="adv_slider" name="公积金指南" runat="server">
<DIV class="portlet" id="169be97d330744c5a2cd63ec6884a3fe" pagemoduleid="87267582834b4222a1110a020054860e">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu169be97d330744c5a2cd63ec6884a3fe">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV><!--<div class="gd_au"><a href="/web/zxyw/index.html" target="_blank">更多&gt;&gt;</a></div>-->
<DIV class="gjj">
<UL class="lef"> <!--<li><p><a href="/eportal/ui?pageId=305961&amp;articleKey=306384&amp;columnId=306086" target="_blank"><b class="pic4">&nbsp;</b><span>公积金开户</span></a></p>
</li>
<li><p><a href="/eportal/ui?pageId=305961&amp;articleKey=306372&amp;columnId=306086" target="_blank"><b class="pic5">&nbsp;</b><span>公积金缴存</span></a></p>
</li>-->
  <LI>
  <P><A href="http://gjj.beijing.gov.cn/web/cjwt/360952/index.html"  src="/ProvidentFund/resources/gjjre_files/2018051720313152026.jpg"target="_blank"><B 
  class="pic4">&nbsp;</B><SPAN>公积金开户缴存</SPAN></A></P></LI>
  <LI>
  <P><A href="http://gjj.beijing.gov.cn/web/zxyw/wytqhz/index.html" target="_blank"><B 
  class="pic2">&nbsp;</B><SPAN>我要提取</SPAN></A></P></LI>
  <LI>
  <P><A href="http://gjj.beijing.gov.cn/web/354307/359937/index.html" target="_blank"><B 
  class="pic3">&nbsp;</B><SPAN>我要贷款</SPAN></A></P></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/354307/354320/index.html" target="_blank"><B 
  class="pic1">&nbsp;</B><SPAN>我要查询</SPAN></A></LI>
  <LI>
  <P><A href="http://gjj.beijing.gov.cn/web/354307/354310/354469/index.html" 
  target="_blank"><B class="pic6">&nbsp;</B><SPAN>公积金转移</SPAN></A></P></LI><!--<li><p><a href="/web/zmhd/_300505/index.html" target="_blank"><b class="pic7">&nbsp;</b><span>常见问题</span></a></p>
</li>-->
  <LI>
  <P><A href="http://gjj.beijing.gov.cn/web/bmfw/ywwdfb/index.html" target="_blank"><B 
  class="pic8">&nbsp;</B><SPAN>经办网点</SPAN></A></P></LI></UL>
<DIV style="clear: both;"></DIV><!--<div class="gd"><a href="/web/zxyw/index.html" target="_blank">更多&gt;&gt;</a></div>--></DIV><BR>
<STYLE type="text/css">.gd_au{
    width: 50px;
    float:right;
    position: relative;
    top:-28px;
    right:5px;
    }
.gd_au a{font-size:14px; color:#53B6D6;}
.gd{
    width: 43px;
    float: right;
    overflow: hidden;
    margin-top: -22px;
    margin-right: 2px;}
.lef img{
  width:50px;
  height:50px;
}</STYLE>
   </DIV></DIV></DIV></DIV><!--新闻轮播-->   
<DIV class="news clearfix">
<DIV class="slider fl column" id="slider" name="新闻轮播" runat="server">
<DIV class="portlet" id="b72a555946e04a8bb54607b7999de481" pagemoduleid="bc28d7bbd8db49eabb0005d6390150e6">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenub72a555946e04a8bb54607b7999de481">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news3" opentype="more"><!--	<div id="xwlunbo" class="lf">
				<div id="xwimg">
					<ul>
						<li><a href="/web/zwgk/_300583/zxzysx/361223/index.html" onclick="void(0)" target="_blank" title="北京住房公积金管理中心关于对刘爽等三人违规提取住房公积金的通报">北京住房公积金管理中心关于对刘爽等三人违规...</a><img src="/web/uiFramework/commonResource/image/2017020810512921456.gif" /></li><li><a href="/web/resource/cms/article/351719/361097/2018091320021746007.pdf" onclick="recordLinkArticleHits('361097')" target="_blank" title="关于落实放管服、优化营商环境提升住房公积金归集服务水平的通知">关于落实放管服、优化营商环境提升住房公积金...</a><img src="/web/uiFramework/commonResource/image/2017020810512921456.gif" /></li><li><a href="/web/zwgk/_300583/zxzysx/361155/index.html" onclick="void(0)" target="_blank" title="《北京住房公积金管理中心关于落实放管服、优化营商环境提升住房公积金归集服务水平的通知》政策解读">《北京住房公积金管理中心关于落实放管服、优...</a><img src="/web/uiFramework/commonResource/image/2017020810512921456.gif" /></li><li><a href="/web/resource/cms/article/351719/361093/2018091320013130476.pdf" onclick="recordLinkArticleHits('361093')" target="_blank" title="关于调整住房公积金个人住房贷款政策的通知">关于调整住房公积金个人住房贷款政策的通知</a><img src="/web/uiFramework/commonResource/image/2017020810512921456.gif" /></li><li><a href="/web/zwgk/_300583/zxzysx/361150/index.html" onclick="void(0)" target="_blank" title="《北京住房公积金管理中心关于调整住房公积金个人住房贷款政策的通知》政策解读">《北京住房公积金管理中心关于调整住房公积金...</a><img src="/web/uiFramework/commonResource/image/2017020810512921456.gif" /></li><li><a href="/web/resource/cms/article/351719/360404/2018082414444083280.pdf" onclick="recordLinkArticleHits('360404')" target="_blank" title="关于北京市2018年最低工资标准和基本生活费涉及住房公积金有关事项的通知">关于北京市2018年最低工资标准和基本生活费涉...</a></li>
					</ul>
				</div>
				<div id="xwxinxi">
					<ul>
						<li class="cur"></li>
						<li></li>
						<li></li>
						
					</ul>
				</div>
			</div>--> 
 
<DIV class="txtMarquee-top1 zxzysx">
<DIV class="titleDiv">
<DIV class="titleZh">最新重要事项     </DIV><A style="float: right;" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/zxzysx/index.html">更多&gt;&gt;</A> 
  </DIV>
<DIV class="newfile">
<UL>
  <LI><A title="北京住房公积金管理中心关于对刘爽等三人违规提取住房公积金的通报" onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/zxzysx/361223/index.html" 
  target="_blank">北京住房公积金管理中心关于对刘爽等三人违规...</A><IMG src="/ProvidentFund/resources/gjjre_files/2017020810512921456.gif"></LI>
  <LI><A title="关于落实放管服、优化营商环境提升住房公积金归集服务水平的通知" onclick="recordLinkArticleHits('361097')" 
  href="http://gjj.beijing.gov.cn/web/resource/cms/article/351719/361097/2018091320021746007.pdf" 
  target="_blank">关于落实放管服、优化营商环境提升住房公积金...</A><IMG src="/ProvidentFund/resources/gjjre_files/2017020810512921456.gif"></LI>
  <LI><A title="《北京住房公积金管理中心关于落实放管服、优化营商环境提升住房公积金归集服务水平的通知》政策解读" onclick="void(0)" 
  href="http://gjj.beijing.gov.cn/web/zwgk/_300583/zxzysx/361155/index.html" 
  target="_blank">《北京住房公积金管理中心关于落实放管服、优...</A><IMG src="/ProvidentFund/resources/gjjre_files/2017020810512921456.gif"></LI>
  <LI><A title="关于调整住房公积金个人住房贷款政策的通知" onclick="recordLinkArticleHits('361093')" 
  href="http://gjj.beijing.gov.cn/web/resource/cms/article/351719/361093/2018091320013130476.pdf" 
  target="_blank">关于调整住房公积金个人住房贷款政策的通知</A><IMG src="/ProvidentFund/resources/gjjre_files/2017020810512921456.gif"></LI>
  <LI><A title="《北京住房公积金管理中心关于调整住房公积金个人住房贷款政策的通知》政策解读" onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/zxzysx/361150/index.html" 
  target="_blank">《北京住房公积金管理中心关于调整住房公积金...</A><IMG src="/ProvidentFund/resources/gjjre_files/2017020810512921456.gif"></LI>
  <LI><A title="关于北京市2018年最低工资标准和基本生活费涉及住房公积金有关事项的通知" onclick="recordLinkArticleHits('360404')" 
  href="http://gjj.beijing.gov.cn/web/resource/cms/article/351719/360404/2018082414444083280.pdf" 
  target="_blank">关于北京市2018年最低工资标准和基本生活费涉...</A></LI></UL></DIV></DIV></DIV>
<STYLE>
.zxzysx .titleZh {
    width: 120px;
    padding-left: 14px;
    background: #efefef url(/web/uiFramework/commonResource/image/2017051711342597367.png) 0px center no-repeat;
}
.newfile {
    padding-top: 15px;
    height: 190px;
    overflow: hidden;
}
.newfile li a{
  line-height:30px;
  white-space:nowrap;
  text-overflow:ellipsis;
  overflow:hidden;
  font-size:13px;
}
</STYLE>
 
<STYLE>
               .news3{overflow:hidden;clear:both;/*margin:0 auto;*/width:335px;float:right;}
                img{ border: none;}
		#xwlunbo{ /*width: 490px;*/width: 350px; height: 230px; position: relative;overflow:hidden; }
	        #xwimg ul{ list-style: none; width: 9999px; position: absolute; top:0; left: 0; }
		#xwimg ul li{ float: left; position:relative;overflow:hidden;}
		
                
                #xwimg ul li a img{/*width: 490px;*/width: 350px; height: 230px;}

                #xwimg ul li span {
			position:absolute;display:inline-block;bottom:0;left:0;/*width: 490px;*/width: 100%;height:40px;line-height:40px;background:#211F1C;
			opacity:0.7;/*padding-left:15px;*/text-indent:1em;
			}
                #xwimg ul li span a {position:absolute;display:inline-block;/*width: 490px;*/width: 100%;height:30px;color:#fff;font-size: 15px;font-family: "微软雅黑"; } 
		#xwxinxi{ position: absolute; bottom: -15px; right: 0; width:100px; height: 40px;
                            opacity:0.7; filter:alpha(opacity=70);color: white; }
		#xwxinxi ul{ height: 20px; width: 80px; float: right; list-style: none; }
		#xwxinxi ul li{ float: left; width: 15px; height: 15px;overflow:hidden; background:url(/web/uiFramework/commonResource/image/2016061214315932005.png) no-repeat ;  cursor: pointer; margin-right: 10px; }
		#xwxinxi ul li.cur{ background-position: -10px -124px;overflow:hidden; background:url(/web/uiFramework/commonResource/image/2016061214315932005.png) no-repeat -25px 0;}
</STYLE>
 <!--   <script type="text/javascript">
		 /*新闻轮播*/
		 $(document).ready(
			function(){
				var kuandu = 350; 	//这个数字是每张图片的宽度，记得按需更改
				var shijian = 1000; //这个数字是动画时间
				var jiangeshijian = 2000; //这个数字是间隔时间
				
				//============================================================
				//				          不用更改下面
				//============================================================
				var nowimg = 0; 	//信号量
				var mytimer = null;

				//将图片列表中的第一个节点复制，然后追加到队列的最后。
				$("#xwimg ul li:first").clone().appendTo("#xwimg ul");

				var mytimer = window.setInterval(
					function(){
						youanniu();
					}
				,jiangeshijian);

				$("#xwlunbo").mouseenter(
					function(){
						window.clearInterval(mytimer);
					}
				);

				$("#xwlunbo").mouseleave(
					function(){
						window.clearInterval(mytimer);
						mytimer = window.setInterval(
							function(){
								youanniu();
							}
						,jiangeshijian);
					}
				);

				$("#czrightbut").click(youanniu);
				function youanniu(){
						if(!$("#xwimg ul").is(":animated")){
							//折腾信号量
							if(nowimg < $("#xwimg li").length - 2){
								nowimg = nowimg + 1;
								dongzuo();
							}else{
								nowimg = 0;
								$("#xwimg ul").animate(
									{
										"left":-kuandu*($("#xwimg li").length-1)
									},shijian,function(){
										$("#xwimg ul").css("left",0);
									}
								);
								$("#xwxinxi ul li").eq(nowimg).addClass("cur").siblings().removeClass("cur");
							}
						}
					}

				
				$("#xwxinxi ul li").click(
					function(){
						nowimg = $(this).index();
						dongzuo();
					}
				);

				function dongzuo(){
					//【业务1】根据信号量，来改变ul的left值
					$("#xwimg ul").animate(
						{
							"left":-kuandu * nowimg
						}
						,shijian
					);

					//【业务2】根据信号量，让小圆点变蓝。
					$("#xwxinxi ul li").eq(nowimg).addClass("cur").siblings().removeClass("cur");
				}
			}
		 );
	   </script>--> 
 </DIV></DIV>
<DIV class="portlet" id="dcf6fc430a7f43449cebbaf5d9739e1b" pagemoduleid="04e186567fac4b99a10789b16dd3c3f4">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenudcf6fc430a7f43449cebbaf5d9739e1b">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="txtMarquee-top" opentype="page"><!--<div class="hd">
				<a class="next"></a>
				<a class="prev"></a>
			</div>--> 
 
<DIV class="titleDiv">
<DIV class="titleZh">常见问题    </DIV><A style="float: right;" href="http://gjj.beijing.gov.cn/web/cjwt/zfgjjgjzf61/index.html">更多&gt;&gt;</A> 
 </DIV>
<DIV class="cj">
<UL class="cjinfoList">
  <LI><A title="住房公积金提取业务问答" onclick="void(0)" href="http://gjj.beijing.gov.cn/web/cjwt/zfgjjgjzf61/358747/index.html" 
  target="_blank">住房公积金提取业务问答</A></LI>
  <LI><A title="住房公积金转移业务问答" onclick="void(0)" href="http://gjj.beijing.gov.cn/web/cjwt/zfgjjgjzf61/358756/index.html" 
  target="_blank">住房公积金转移业务问答</A></LI>
  <LI><A title="住房公积金查询业务问答" onclick="void(0)" href="http://gjj.beijing.gov.cn/web/cjwt/zfgjjgjzf61/358750/index.html" 
  target="_blank">住房公积金查询业务问答</A></LI>
  <LI><A title="商品住宅专项维修资金业务问答" onclick="void(0)" href="http://gjj.beijing.gov.cn/web/cjwt/spzzzxwxzj78/358763/index.html" 
  target="_blank">商品住宅专项维修资金业务问答</A></LI>
  <LI><A title="售后公有住房住宅专项维修资金业务问答" onclick="void(0)" href="http://gjj.beijing.gov.cn/web/cjwt/zfbt43/358767/index.html" 
  target="_blank">售后公有住房住宅专项维修资金业务问答</A></LI>
  <LI><A title="住房公积金贷款业务问答" onclick="void(0)" href="http://gjj.beijing.gov.cn/web/cjwt/zfgjjdk21/358760/index.html" 
  target="_blank">住房公积金贷款业务问答</A></LI></UL></DIV></DIV>
<STYLE type="text/css">.txtMarquee-top{width:335px;}
.cj{    padding-top: 15px;height:190px;overflow:hidden;}
.cjinfoList{clear:both;}
.cjinfoList li a{
  line-height:28px;
  white-space:nowrap;
  text-overflow:ellipsis;
  overflow:hidden;
  font-size:13px;
}
.cjinfoList li a:hover{color:#005BB2;}</STYLE>
 
<SCRIPT>
$(function(){
  jQuery(".txtMarquee-top").slide({mainCell:".cj ul",autoPlay:true,effect:"topMarquee",vis:6,interTime:50,trigger:"click"});
});
</SCRIPT>
  </DIV></DIV></DIV>
<DIV class="dynamic fr">
<DIV class=" column" id="dynamic" name="新闻动态" runat="server">
<DIV class="portlet" id="9c19a60dc01e4f27b6b8efc5bf033f9e" pagemoduleid="2cf7cd14e14b426ba1681bc04a71e203">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu9c19a60dc01e4f27b6b8efc5bf033f9e">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="titleDiv">
<DIV class="titleZh">政务信息</DIV>
<UL class="news_list">
  <LI id="one0" onmouseover="setTab('one',0,2)"><A class="hover" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300662/index.html" 
  target="_blank">工作动态</A></LI>
  <LI id="one1" onmouseover="setTab('one',1,2)"><A href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300666/index.html" 
  target="_blank">通知公告</A></LI><!--<li id="one2" onmouseover="setTab('one',2,3)"><a href="/web/zwgk/_300583/_300670/index.html" target="_blank">业内动态</a></li>--> 
  <LI id="one2" onmouseover="setTab('one',2,2)"><A href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/index.html" 
  target="_blank">执法公告</A></LI></UL></DIV>
<SCRIPT>
$(".news_list li a").hover(function(){

	$(this).addClass("hover").parent().siblings().children().removeClass("hover");

});

</SCRIPT>
 
<STYLE type="text/css">
.hover{
color:#005BB2;
}</STYLE>
   </DIV></DIV></DIV>
<DIV class="lib_Contentbox neirong">
<DIV class="topcenter1 column" id="con_one_0" runat="server">
<DIV class="portlet" id="b141a37284664ea08ad38dc22fa749dc" pagemoduleid="01505277f3a049aabaa65f53ee025b79">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenub141a37284664ea08ad38dc22fa749dc">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news2" opentype="more">
<UL>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="北京住房公积金管理中心2017年度部门决算" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300662/360299/index.html" 
  target="_blank">北京住房公积金管理中心2017年度部门决算</A><SPAN 
  class="fr">2018-08-23</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="北京住房公积金管理委员会关于落实《住建部 财政部 人民银行关于改进住房公积金缴存机制 进一步降低企业成本的通知》的通知" 
  onclick="recordLinkArticleHits('358803')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300664/358803/2018061917185785410.pdf" 
  target="_blank">北京住房公积金管理委员会关于落实《住建部 财政部 人...</A><SPAN 
  class="fr">2018-06-19</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于调整部分住房公积金归集、贷款业务单据的通知" 
  onclick="recordLinkArticleHits('354709')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300664/354709/2018051418045484920.pdf" 
  target="_blank">关于调整部分住房公积金归集、贷款业务单据的通知</A><SPAN 
  class="fr">2018-05-09</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于调整住房资金相关业务单据的通知" 
  onclick="recordLinkArticleHits('354530')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300664/354530/2018050917562638559.pdf" 
  target="_blank">关于调整住房资金相关业务单据的通知</A><SPAN class="fr">2018-05-09</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于进一步落实优化营商环境工作措施的通知" 
  onclick="recordLinkArticleHits('352834')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300664/352834/2018042819234470569.pdf" 
  target="_blank">关于进一步落实优化营商环境工作措施的通知</A><SPAN 
class="fr">2018-04-28</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="Notice of Beijing Municipal Housing Provident Fund Management Committee on Adjusting Housing Provident Fund Deposit Ratio" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300662/352822/index.html" 
  target="_blank">Notice of Beijing Municipal Housing Provident Fund...</A><SPAN 
  class="fr">2018-04-28</SPAN></LI></UL></DIV></DIV></DIV></DIV>
<DIV class="topcenter1 column" id="con_one_1" style="display: none;" runat="server">
<DIV class="portlet" id="c8c9eeba52344cd6b7e627dc305dd87f" pagemoduleid="009629f4bda945c29566650010a3287e">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenuc8c9eeba52344cd6b7e627dc305dd87f">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news2 tzggfile" opentype="more">
<UL>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于公示报名住房公积金个人贷款二手房评估机构核验合格名单的公告" 
  onclick="recordLinkArticleHits('361724')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/361724/2018100814564181382.pdf" 
  target="_blank">关于公示报名住房公积金个人贷款二手房评估机构核验合...</A><IMG src="/ProvidentFund/resources/gjjre_files/2017020810512921456.gif"><SPAN 
  class="fr">2018-10-08</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于落实放管服、优化营商环境提升住房公积金归集服务水平的通知" 
  onclick="recordLinkArticleHits('361068')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/361068/2018091319473970304.pdf" 
  target="_blank">关于落实放管服、优化营商环境提升住房公积金归集服务...</A><SPAN 
  class="fr">2018-09-13</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于调整住房公积金个人住房贷款政策的通知" 
  onclick="recordLinkArticleHits('361065')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/361065/2018091319434649638.pdf" 
  target="_blank">关于调整住房公积金个人住房贷款政策的通知</A><SPAN 
class="fr">2018-09-13</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于公布北京住房公积金管理中心2018年度接收安置军队转业干部面试成绩及总成绩的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300666/360944/index.html" 
  target="_blank">关于公布北京住房公积金管理中心2018年度接收安置军队...</A><SPAN 
  class="fr">2018-09-06</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于北京市2018年最低工资标准和基本生活费涉及住房公积金有关事项的通知" 
  onclick="recordLinkArticleHits('360400')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/360400/2018082414434856016.pdf" 
  target="_blank">关于北京市2018年最低工资标准和基本生活费涉及住房公...</A><SPAN 
  class="fr">2018-08-24</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于进一步维护住房公积金缴存职工购房贷款权益的通知" 
  onclick="recordLinkArticleHits('359693')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300668/359693/2018081717292767286.pdf" 
  target="_blank">关于进一步维护住房公积金缴存职工购房贷款权益的通知</A><SPAN 
  class="fr">2018-08-17</SPAN></LI></UL></DIV></DIV></DIV></DIV>
<DIV class="topcenter1 column" id="con_one_2" style="display: none;" runat="server">
<DIV class="portlet" id="1f5f9c18cf624f8586453eae5bedff73" pagemoduleid="c4aa37445a6c46bba9b00478af6bc597">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu1f5f9c18cf624f8586453eae5bedff73">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news2" opentype="more">
<UL>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京明慧泉投资管理有限公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/360226/index.html" 
  target="_blank">对北京明慧泉投资管理有限公司的处罚决定</A><SPAN class="fr">2018-08-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京顺成利德劳务派遣有限公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/360223/index.html" 
  target="_blank">对北京顺成利德劳务派遣有限公司的处罚决定</A><SPAN 
class="fr">2018-08-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京森沃鑫达开关有限公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/360209/index.html" 
  target="_blank">对北京森沃鑫达开关有限公司的处罚决定</A><SPAN class="fr">2018-08-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京西联万博商业管理有限责任公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/360205/index.html" 
  target="_blank">对北京西联万博商业管理有限责任公司的处罚决定</A><SPAN 
  class="fr">2018-08-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京中冀福庆专用车有限公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/360202/index.html" 
  target="_blank">对北京中冀福庆专用车有限公司的处罚决定</A><SPAN class="fr">2018-08-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京东羽恒亚装饰设计有限公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/351180/index.html" 
  target="_blank">对北京东羽恒亚装饰设计有限公司的处罚决定</A><SPAN 
class="fr">2017-12-25</SPAN></LI></UL></DIV></DIV></DIV></DIV>
<DIV class="topcenter1 column" id="con_one_3" style="display: none;" runat="server">
<DIV class="portlet" id="398ed54a14e4431ab2f6a578aa565cb2" pagemoduleid="a852777364e64d7899b4316e83b9334b">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu398ed54a14e4431ab2f6a578aa565cb2">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news2" opentype="more">
<UL>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京明慧泉投资管理有限公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/360226/index.html" 
  target="_blank">对北京明慧泉投资管理有限公司的处罚决定</A><SPAN class="fr">2018-08-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京顺成利德劳务派遣有限公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/360223/index.html" 
  target="_blank">对北京顺成利德劳务派遣有限公司的处罚决定</A><SPAN 
class="fr">2018-08-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京森沃鑫达开关有限公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/360209/index.html" 
  target="_blank">对北京森沃鑫达开关有限公司的处罚决定</A><SPAN class="fr">2018-08-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京西联万博商业管理有限责任公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/360205/index.html" 
  target="_blank">对北京西联万博商业管理有限责任公司的处罚决定</A><SPAN 
  class="fr">2018-08-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京中冀福庆专用车有限公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/360202/index.html" 
  target="_blank">对北京中冀福庆专用车有限公司的处罚决定</A><SPAN class="fr">2018-08-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="对北京东羽恒亚装饰设计有限公司的处罚决定" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/zwgk/_300583/_300674/351180/index.html" 
  target="_blank">对北京东羽恒亚装饰设计有限公司的处罚决定</A><SPAN 
class="fr">2017-12-25</SPAN></LI></UL></DIV></DIV></DIV></DIV></DIV></DIV></DIV><!--便民服务--> 
  
<DIV class="wrapper2">
<DIV class="fangbian column" id="fangbian" name="便民服务" runat="server">
<DIV class="portlet" id="8f0693c543dc4bfeb563ce313411c494" pagemoduleid="48c7838cba60450eb53689f2a941cc1c">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu8f0693c543dc4bfeb563ce313411c494">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="bianmin">
<DIV class="titleDiv">
<DIV class="titleZh">便民服务</DIV></DIV>
<UL>
  <LI><A href="http://gjj.beijing.gov.cn/web/bmfw/_300540/index.html" target="_blank"><IMG 
  src="/ProvidentFund/resources/gjjre_files/2016060709565183110.png"><SPAN>公积金/商业贷款利率</SPAN></A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/bmfw/_300544/gjjdkjsq/index.html" 
  target="_blank"><IMG 
  src="/ProvidentFund/resources/gjjre_files/2016060709571225026.png"><SPAN>常用计算器</SPAN></A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/bmfw/_300556/_300746/index.html" 
  target="_blank"><IMG 
  src="/ProvidentFund/resources/gjjre_files/2016060709580845974.png"><SPAN>常用下载</SPAN></A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/bmfw/_300548/index.html" target="_blank"><IMG 
  src="/ProvidentFund/resources/gjjre_files/2016060709572977754.png"><SPAN>联名卡服务</SPAN></A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/bmfw/ywwdfb/index.html" target="_blank"><IMG 
  src="/ProvidentFund/resources/gjjre_files/2016060709575171031.png"><SPAN>业务网点服务</SPAN></A></LI><!--<li class="bianmin_last"><a href="/web/bmfw/_300556/_300746/index.html" target="_blank"><img src="/web/uiFramework/commonResource/image/2016060709580845974.png" /><span>下载中心</span></a></li>--></UL></DIV><BR><BR 
type="_moz"></DIV></DIV></DIV></DIV><!--政府信息公开-->   
<DIV class="gov_info clearfix">
<DIV class="public fl column" id="public" name="政府信息公开" runat="server">
<DIV class="portlet" id="cec9757fb7fe4e189cfdcbd25efd7c1c" pagemoduleid="f949699e082a42eba9bd59112c72224d">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenucec9757fb7fe4e189cfdcbd25efd7c1c">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="gov_info_pub">
<DIV class="titleDiv">
<DIV class="titleZh">政府信息公开</DIV></DIV>
<UL>
  <LI class="liHover"><A href="http://zfxxgk.beijing.gov.cn/110094/zfxxgkzn/2017-03/12/content_ef6de41cfa59430dbf3682a41b57e403.shtml" 
  target="_blank">政府信息公开指南</A></LI>
  <LI class="l2 liHover"><A href="http://zfxxgk.beijing.gov.cn/110094/jgxx12j/list.shtml" 
  target="_blank">政府信息公开目录</A></LI><!--<li class="l3 liHover"><a href="http://zfxxgk.beijing.gov.cn/app-ysqgk-client/a/frontreply/frontReply/selectstatus" target="_blank">依申请公开</a></li>-->
  <LI class="l4 liHover"><A href="http://zfxxgk.beijing.gov.cn/110094/zfxxgknb/list.shtml" 
  target="_blank">政府信息公开年报</A></LI><!--<li class="l5 liHover"><a href="http://zfxxgk.beijing.gov.cn/columns/1342/superviseMenu.html" target="_blank">监督投诉</a></li>-->
  <LI class="l6"><A href="http://gjj.beijing.gov.cn/web/zwgk/xzcf/xzcfxyxxgs37/index.html" 
  target="_blank"><IMG alt="" 
  src="/ProvidentFund/resources/gjjre_files/2018060810010426609.jpg"></A></LI></UL></DIV></DIV></DIV></DIV>
<DIV class="file fr">
<DIV class=" column" id="file" name="政府文件" runat="server">
<DIV class="portlet" id="d1631029b18f4f3d855b4429f9034d37" pagemoduleid="f1d4f50cf9704d2b8de4a36a80cead9f">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenud1631029b18f4f3d855b4429f9034d37">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="titleDiv">
<DIV class="titleZh">政策法规</DIV>
<UL class="zhengce_list">
  <LI id="two0" onmouseover="setTab('two',0,4)"><A class="hover" href="http://gjj.beijing.gov.cn/web/_300587/_300688/index.html">国务院及部委文件</A></LI>
  <LI id="two1" onmouseover="setTab('two',1,4)"><A href="http://gjj.beijing.gov.cn/web/_300587/szfjxgbmwj/index.html">市政府及相关部门文件</A></LI>
  <LI id="two2" onmouseover="setTab('two',2,4)"><A href="http://gjj.beijing.gov.cn/web/_300587/_300696/index.html">管委会文件</A></LI><!--<li id="two3" onmouseover="setTab('two',3,5)"><a href="[pagevisitpath:300702]">地方法规</a></li>-->
  <LI id="two3" onmouseover="setTab('two',3,4)"><A href="http://gjj.beijing.gov.cn/web/_300587/_300704/index.html">中心文件</A></LI>
  <LI id="two4" onmouseover="setTab('two',4,4)"><A href="http://gjj.beijing.gov.cn/web/_300587/_300708/index.html">政策解读</A></LI></UL></DIV>
<SCRIPT>
$(".zhengce_list li a").hover(function(){

	$(this).addClass("hover").parent().siblings().children().removeClass("hover");

});

</SCRIPT>
 
<STYLE type="text/css">
.hover{
color:#005BB2;
}</STYLE>
   </DIV></DIV></DIV>
<DIV class="lib_Contentbox neirong">
<DIV class="topcenter1 column" id="con_two_0" runat="server">
<DIV class="portlet" id="5c1d6b7f951c470680b5ef07ff6ea10b" pagemoduleid="08ee8969dcaa48ebb357d1eda4e57840">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu5c1d6b7f951c470680b5ef07ff6ea10b">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news2" opentype="more">
<UL>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="住房城乡建设部 财政部 人民银行关于放宽提取住房公积金支付房租条件的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300688/331732/index.html" 
  target="_blank">住房城乡建设部 财政部 人民银行关于放宽提取住房公积金支付房租条件的通知</A><SPAN 
  class="fr">2015-01-20</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于规范住房公积金个人住房贷款政策有关问题的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300688/332711/index.html" 
  target="_blank">关于规范住房公积金个人住房贷款政策有关问题的通知</A><SPAN 
  class="fr">2010-11-02</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于印发《业主大会和业主委员会指导规则》的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300688/318051/index.html" 
  target="_blank">关于印发《业主大会和业主委员会指导规则》的通知</A><SPAN 
  class="fr">2009-12-01</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于基本养老保险费 基本医疗保险费 失业保险费 住房公积金有关个人所得税政策的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300688/333120/index.html" 
  target="_blank">关于基本养老保险费 基本医疗保险费 失业保险费 住房公积金有关个人所得税政策的通知</A><SPAN 
  class="fr">2006-06-27</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="国家税务总局关于住房专项维修基金免征营业税问题的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300688/332349/index.html" 
  target="_blank">国家税务总局关于住房专项维修基金免征营业税问题的通知</A><SPAN 
  class="fr">2004-06-07</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于进一步加强住房公积金管理的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300688/331465/index.html" 
  target="_blank">关于进一步加强住房公积金管理的通知</A><SPAN 
class="fr">2002-05-13</SPAN></LI></UL></DIV></DIV></DIV></DIV>
<DIV class="topcenter1 column" id="con_two_1" style="display: none;" runat="server">
<DIV class="portlet" id="5c9d435bf7a74319adafb70f31f64758" pagemoduleid="e14155406f184555a9b137c5268f6536">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu5c9d435bf7a74319adafb70f31f64758">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news2" opentype="more">
<UL>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于调整北京市2015年最低工资标准的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/szfjxgbmwj/317899/index.html" 
  target="_blank">关于调整北京市2015年最低工资标准的通知</A><SPAN 
  class="fr">2015-02-12</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于试行使用北京市业主决定共同事项公共决策平台的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/szfjxgbmwj/317997/index.html" 
  target="_blank">关于试行使用北京市业主决定共同事项公共决策平台的通知</A><SPAN 
  class="fr">2010-09-29</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于印发《北京市住宅专项维修资金使用审核标准》的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/szfjxgbmwj/318036/index.html" 
  target="_blank">关于印发《北京市住宅专项维修资金使用审核标准》的通知</A><SPAN 
  class="fr">2010-05-19</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="北京市物业管理办法" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/szfjxgbmwj/317932/index.html" 
  target="_blank">北京市物业管理办法</A><SPAN class="fr">2010-04-20</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于印发售后公有住房住宅专项维修资金使用审核工作程序性规定的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/szfjxgbmwj/331084/index.html" 
  target="_blank">关于印发售后公有住房住宅专项维修资金使用审核工作程序性规定的通知</A><SPAN 
  class="fr">2009-07-14</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于房地产开发企业不得拒绝购房人选择住房公积金贷款购房有关事宜的紧急通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/szfjxgbmwj/331404/index.html" 
  target="_blank">关于房地产开发企业不得拒绝购房人选择住房公积金贷款购房有关事宜的紧急通知</A><SPAN 
  class="fr">2007-11-27</SPAN></LI></UL></DIV></DIV></DIV></DIV>
<DIV class="topcenter1 column" id="con_two_2" style="display: none;" runat="server">
<DIV class="portlet" id="f6f620df142f4ed1a1156ab960df9af4" pagemoduleid="1b30ffcb1d4c4ba9b90dd23c6b6b1294">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenuf6f620df142f4ed1a1156ab960df9af4">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news2" opentype="more">
<UL>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="北京住房公积金管理委员会关于落实《住建部 财政部 人民银行关于改进住房公积金缴存机制 进一步降低企业成本的通知》的通知" 
  onclick="recordLinkArticleHits('358809')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300698/358809/2018061917200232434.pdf" 
  target="_blank">北京住房公积金管理委员会关于落实《住建部 财政部 人民银行关于改进住房公积金缴存机...</A><SPAN class="fr">2018-06-19</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="北京住房公积金管理委员会办公室关于调整2017住房公积金年度缴存基数及月缴存额上限的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300696/327791/index.html" 
  target="_blank">北京住房公积金管理委员会办公室关于调整2017住房公积金年度缴存基数及月缴存额上限的...</A><SPAN class="fr">2017-06-05</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于调整住房公积金缴存比例的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300696/327797/index.html" 
  target="_blank">关于调整住房公积金缴存比例的通知</A><SPAN class="fr">2016-09-05</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="北京住房公积金管理委员会办公室关于调整2016住房公积金年度缴存基数及月缴存额上限的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300696/327794/index.html" 
  target="_blank">北京住房公积金管理委员会办公室关于调整2016住房公积金年度缴存基数及月缴存额上限的...</A><SPAN class="fr">2016-06-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="北京住房公积金管理委员会关于2015住房公积金年度住房公积金缴存有关问题的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300696/327806/index.html" 
  target="_blank">北京住房公积金管理委员会关于2015住房公积金年度住房公积金缴存有关问题的通知</A><SPAN 
  class="fr">2015-06-16</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于2013住房公积金年度住房公积金缴存有关问题的通知" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300696/333081/index.html" 
  target="_blank">关于2013住房公积金年度住房公积金缴存有关问题的通知</A><SPAN 
  class="fr">2013-04-12</SPAN></LI></UL></DIV></DIV></DIV></DIV>
<DIV class="topcenter1 column" id="con_two_3" style="display: none;" runat="server">
<DIV class="portlet" id="ef38d1f5c54d40fda4f6b78cbd31cba8" pagemoduleid="3f2d5773ded84cf7a233b5760c04e64c">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenuef38d1f5c54d40fda4f6b78cbd31cba8">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news2" opentype="more">
<UL>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于北京市2018年最低工资标准和基本生活费涉及住房公积金有关事项的通知" 
  onclick="recordLinkArticleHits('360410')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/305478/360410/2018082414455355935.pdf" 
  target="_blank">关于北京市2018年最低工资标准和基本生活费涉及住房公积金有关事项的通知</A><SPAN 
  class="fr">2018-08-24</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于做好降缓缴和跨年清册核定有关工作的通知" 
  onclick="recordLinkArticleHits('358972')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/305478/358972/2018062217155366484.pdf" 
  target="_blank">关于做好降缓缴和跨年清册核定有关工作的通知</A><SPAN 
  class="fr">2018-06-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于取消身份证明材料复印件作为住房公积金归集和贷款业务办理要件的通知" 
  onclick="recordLinkArticleHits('357293')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/305478/357293/2018051516104546944.pdf" 
  target="_blank">关于取消身份证明材料复印件作为住房公积金归集和贷款业务办理要件的通知</A><SPAN 
  class="fr">2018-05-15</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="北京住房公积金管理中心关于调整部分住房公积金归集、贷款业务单据的通知" 
  onclick="recordLinkArticleHits('354723')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/300664/354709/2018050921140145942.pdf" 
  target="_blank">北京住房公积金管理中心关于调整部分住房公积金归集、贷款业务单据的通知</A><SPAN 
  class="fr">2018-05-09</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="北京市住房资金管理中心 关于调整住房资金相关业务单据的通知" 
  onclick="recordLinkArticleHits('354562')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/305484/354562/2018050918012169829.pdf" 
  target="_blank">北京市住房资金管理中心 关于调整住房资金相关业务单据的通知</A><SPAN 
  class="fr">2018-05-09</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="北京住房公积金管理中心关于宣布失效一批规范性文件的公告" 
  onclick="recordLinkArticleHits('351142')" href="http://gjj.beijing.gov.cn/web/resource/cms/article/305475/351142/2018042511200156859.pdf" 
  target="_blank">北京住房公积金管理中心关于宣布失效一批规范性文件的公告</A><SPAN 
  class="fr">2018-04-10</SPAN></LI></UL></DIV></DIV></DIV></DIV>
<DIV class="topcenter1 column" id="con_two_4" style="display: none;" runat="server">
<DIV class="portlet" id="1ee0ead4651d41a89d33575a7d9c7c90" pagemoduleid="af1c2d8bc05c400aa5ceb63b5d902ae8">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu1ee0ead4651d41a89d33575a7d9c7c90">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news2" opentype="more">
<UL>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="《北京住房公积金管理中心关于落实放管服、优化营商环境提升住房公积金归集服务水平的通知》政策解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/361071/index.html" 
  target="_blank">《北京住房公积金管理中心关于落实放管服、优化营商环境提升住房公积金归集服务水平的...</A><SPAN class="newlogo"></SPAN><SPAN 
  class="fr">2018-09-13</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="《北京住房公积金管理中心关于调整住房公积金个人住房贷款政策的通知》政策解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/361074/index.html" 
  target="_blank">《北京住房公积金管理中心关于调整住房公积金个人住房贷款政策的通知》政策解读</A><SPAN 
  class="newlogo"></SPAN><SPAN class="fr">2018-09-13</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="《北京住房公积金管理委员会关于落实〈住房城乡建设部 财政部 人民银行关于改进住房公积金缴存机制 进一步降低企业成本的通知〉的通知》及《北京住房公积金管理中心关于做好降缓缴 跨年清册核定和年度结息对账有关工作的通知》政策解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/358967/index.html" 
  target="_blank">《北京住房公积金管理委员会关于落实〈住房城乡建设部 财政部 人民银行关于改进住房公...</A><SPAN class="newlogo"></SPAN><SPAN 
  class="fr">2018-06-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于《关于进一步改进服务加强住房公积金归集管理有关事项的通知》的解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/322890/index.html" 
  target="_blank">关于《关于进一步改进服务加强住房公积金归集管理有关事项的通知》的解读</A><SPAN 
  class="newlogo"></SPAN><SPAN class="fr">2017-08-08</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="放宽提取住房公积金支付房租条件政策解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/305426/index.html" 
  target="_blank">放宽提取住房公积金支付房租条件政策解读</A><SPAN class="newlogo"></SPAN><SPAN 
  class="fr">2015-06-26</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="调整住房公积金个人贷款政策解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/305423/index.html" 
  target="_blank">调整住房公积金个人贷款政策解读</A><SPAN class="newlogo"></SPAN><SPAN class="fr">2015-05-29</SPAN></LI></UL></DIV></DIV></DIV></DIV>
<DIV class="topcenter1 column" id="con_two_5" style="display: none;" runat="server">
<DIV class="portlet" id="784ca8b6a7174115bf2753c47b7dd8ec" pagemoduleid="20b753d29e2d46ecaa8090a2dc418a62">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu784ca8b6a7174115bf2753c47b7dd8ec">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="gg_cb"><A href="http://gjj.beijing.gov.cn/web/resource/cms/article/300664/351136/2018041110550073353.pdf" 
target="_blank"><IMG src="/ProvidentFund/resources/gjjre_files/2018042314524877565.png"></A></DIV>
<STYLE type="text/css">
.gg_cb{    
    position: absolute;
    left: 0px;
    top: 320px;
}</STYLE>
   </DIV></DIV>
<DIV class="portlet" id="c21155bca1fa494d900c568fc7e75f54" pagemoduleid="a54c58b35dfa4a7086229f7221e87b49">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenuc21155bca1fa494d900c568fc7e75f54">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="news2" opentype="more">
<UL>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="《北京住房公积金管理中心关于落实放管服、优化营商环境提升住房公积金归集服务水平的通知》政策解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/361071/index.html" 
  target="_blank">《北京住房公积金管理中心关于落实放管服、优化营商环境提升住房...</A><SPAN 
  class="fr">2018-09-13</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="《北京住房公积金管理中心关于调整住房公积金个人住房贷款政策的通知》政策解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/361074/index.html" 
  target="_blank">《北京住房公积金管理中心关于调整住房公积金个人住房贷款政策的...</A><SPAN 
  class="fr">2018-09-13</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="《北京住房公积金管理委员会关于落实〈住房城乡建设部 财政部 人民银行关于改进住房公积金缴存机制 进一步降低企业成本的通知〉的通知》及《北京住房公积金管理中心关于做好降缓缴 跨年清册核定和年度结息对账有关工作的通知》政策解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/358967/index.html" 
  target="_blank">《北京住房公积金管理委员会关于落实〈住房城乡建设部 财政部 人...</A><SPAN 
  class="fr">2018-06-22</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="关于《关于进一步改进服务加强住房公积金归集管理有关事项的通知》的解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/322890/index.html" 
  target="_blank">关于《关于进一步改进服务加强住房公积金归集管理有关事项的通知...</A><SPAN 
  class="fr">2017-08-08</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="放宽提取住房公积金支付房租条件政策解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/305426/index.html" 
  target="_blank">放宽提取住房公积金支付房租条件政策解读</A><SPAN class="fr">2015-06-26</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="调整住房公积金个人贷款政策解读" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/305423/index.html" 
  target="_blank">调整住房公积金个人贷款政策解读</A><SPAN class="fr">2015-05-29</SPAN></LI>
  <LI><IMG src="/ProvidentFund/resources/gjjre_files/2016060717010630435.png" border="0"><A title="解读2015年北京市基本生活费调整对职工住房公积金贷款的影响" 
  onclick="void(0)" href="http://gjj.beijing.gov.cn/web/_300587/_300708/305417/index.html" 
  target="_blank">解读2015年北京市基本生活费调整对职工住房公积金贷款的影响</A><SPAN 
  class="fr">2015-03-24</SPAN></LI></UL></DIV></DIV></DIV></DIV></DIV></DIV></DIV><!--互动服务--> 
  
<DIV class="hdfw clearfix">
<DIV class="hdfwIn column" id="hdfwIn" name="互动服务" runat="server">
<DIV class="portlet" id="0af92e6d4390489fb4f64d3d4e3da4fe" pagemoduleid="9fe931da77dc480fa159bd841f4a8b10">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu0af92e6d4390489fb4f64d3d4e3da4fe">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV class="hudong">
<DIV class="titleDiv">
<DIV class="titleZh">互动服务</DIV></DIV>
<UL style="overflow: hidden;">
  <LI style='background: url("/web/uiFramework/commonResource/image/2017070715480757945.png") no-repeat 0px;'><A 
  href="http://old.bjgjj.gov.cn/wsyw/tsbook/tsbook_new.jsp" 
  target="_blank">&nbsp;</A></LI><!--<li style="background: url(/web/resource/cms/2018/07/2018071311414350362.png)   0 no-repeat;"><a href="/web/zmhd/359266/index.html" target="_blank">&nbsp;</a></li>--> 
  <LI style='background: url("/web/uiFramework/commonResource/image/2017070715482215427.png") no-repeat 0px;'><A 
  href="http://gjj.beijing.gov.cn/web/zmhd/_300481/index.html" 
  target="_blank">&nbsp;</A></LI>
  <LI style='background: url("/web/uiFramework/commonResource/image/2017070715492922635.png") no-repeat 0px;'><A 
  href="http://old.bjgjj.gov.cn/wsyw/guestbook/nwwd.jsp" 
  target="_blank">&nbsp;</A></LI>
  <LI style='background: url("/web/uiFramework/commonResource/image/2017070715494012457.png") no-repeat 0px;'><A 
  href="http://old.bjgjj.gov.cn/wsyw/tsbook/tsbook_jy.jsp" 
  target="_blank">&nbsp;</A></LI>
  <LI style='background: url("/web/uiFramework/commonResource/image/2017070715512594896.png") no-repeat 0px;'><A 
  href="http://gjj.beijing.gov.cn/web/zmhd/310740/index.html" 
  target="_blank">&nbsp;</A></LI></UL></DIV></DIV></DIV></DIV></DIV><!--其他中心-->   
<DIV class="other_centers clearfix">
<DIV class="channel fl column" id="channel" name="渠道中心" runat="server"><LINK 
href="/ProvidentFund/resources/gjjre_files/container.css" rel="stylesheet" type="text/css" media="screen"> 
<LINK href="/ProvidentFund/resources/gjjre_files/container_blank.css.css" rel="stylesheet" type="text/css" 
media="screen"> 
<DIV class="content_blank portlet" id="7ac64f44737c400f82967e73b4071b11" 
pagemoduleid="b41cd113f8c54038a0d9a1289c8140ad">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu7ac64f44737c400f82967e73b4071b11">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV class="cp_blank">
<DIV class="title_blank">渠道中心    </DIV></DIV>
<DIV class="mod1_main_blank">
<STYLE type="text/css">.linshi ul li{width:444px;
float:left;}</STYLE>
 
<DIV class="chanel_cen">
<UL><!--<li style="background: url(/web/uiFramework/commonResource/image/2017011117033894192.png) -22px -16px no-repeat;"><a href="/web/qdzx/wx/index.html" target="_blank;">官方微信</a></li>
<li style="background: url(/web/uiFramework/commonResource/image/2017011117033894192.png) -206px -16px no-repeat;"><a class="app" href="/web/qdzx/appxz/index.html" target="_blank;">移动客户端</a></li><li style="background: url(/web/uiFramework/commonResource/image/2017011117033894192.png)-411px -16px  no-repeat;"><a href="/web/qdzx/12329kh/index.html" target="_blank;">12329热线</a></li>
<li style="background: url(/web/uiFramework/commonResource/image/2017011117033894192.png) -602px -16px no-repeat;"><a class="wangsyw" href="/web/qdzx/grwsyw/index.html" target="_blank;">个人网上业务平台</a></li>
<li style="background: url(/web/uiFramework/commonResource/image/2017011117033894192.png) -22px -111px no-repeat;"><a href="/web/qdzx/dxpt/index.html" target="_blank;">短信</a></li>
<li style="background: url(/web/uiFramework/commonResource/image/2017011117033894192.png) -411px -111px no-repeat;"><a href="/web/qdzx/wzxx/index.html" target="_blank;">邮箱</a></li><li style="background: url(/web/uiFramework/commonResource/image/2017011117033894192.png) -206px -111px no-repeat;"><a class="weibo" href="/web/qdzx/wb/index.html" target="_blank;">微博</a></li>
<li style="background: url(/web/uiFramework/commonResource/image/2017011117033894192.png) -602px -111px no-repeat;"><a class="wangsyw" href="/web/qdzx/dwwsyw/index.html" target="_blank;">单位网上业务平台</a></li>--></UL></DIV>
<DIV class="linshi">
<UL>
  <LI><A href="http://gjj.beijing.gov.cn/web/qdzx/12329kh/index.html" target="_blank"><IMG 
  src="/ProvidentFund/resources/gjjre_files/2018010811354685886.png"> </A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/web/qdzx/wb/index.html" 
  target="_blank"><IMG 
src="/ProvidentFund/resources/gjjre_files/2018010811362938304.png"></A></LI></UL></DIV><A href="http://gjj.beijing.gov.cn/web/qdzx/12329kh/index.html" 
target="_blank;">
<SCRIPT>
    $('.chanel_cen a').hover(
         function(){
             $(this).css('color','#006DBE');
         },
         function(){
             $(this).css('color','black');
         }
     );
</SCRIPT>
</A>   </DIV></DIV>
<DIV class="portlet" id="49cbf424cd3d42fe8a891b79fb5ea0c3" pagemoduleid="34cd316b8e544cb991b2fee5d8069224">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu49cbf424cd3d42fe8a891b79fb5ea0c3">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<DIV id="float_icon" style="left: 0px; top: 0px; visibility: visible; position: absolute; z-index: 99999;" 
opentype="page">
<UL></UL></DIV>
<STYLE>
#float_icon li{width:200px; padding:10px;margin-bottom:1px;}
#float_icon li img{width:200px;}
#float_icon li a{font-size:12px;color:#fff;line-height:22px;}
#float_icon li a:hover{text-decoration:underline;}
</STYLE>
 
<SCRIPT type="text/javascript">
	var dirX =1,dirY =1;
	var posX =0,posY =0;
	posY > 0;
	var oDiv = document.getElementById("float_icon");
	var oDiv_height = oDiv.offsetHeight;				
	timer = window.setInterval("moveIcon()",10);
	function moveIcon(){
		posX += dirX;
		posY += dirY;
		$("#float_icon").css("left",posX);
		$("#float_icon").css("top",posY);
		
		if(posX < 1 || posX >1100){
		     dirX =-dirX;
	    }
	        if(posY >= $(window).height()- oDiv_height && $(window).height()- oDiv_height >0) 
	            {dirY =-dirY}
		if(posY < 1){
		     dirY =-dirY;
	    } 
	        if(posY >= $(window).height()- oDiv_height && $(window).height()- oDiv_height >0) 
	            {posY >2000;dirY =-1}
		
	}
	$("#float_icon").mouseover(function(){
		clearInterval(timer);
	}).mouseout(function(){
		timer = window.setInterval("moveIcon()",10);
	});
</SCRIPT>
  </DIV></DIV>
<DIV class="portlet" id="b38efad8dc614ab99d09cf7563b95566" pagemoduleid="c0413232aa214179ab0e8811940589b1">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenub38efad8dc614ab99d09cf7563b95566">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV>
<SCRIPT type="text/javascript">
/* (function($) {
    $.fn.floatAd = function(options) {
        var defaults = {
            imgSrc:"",
            openStyle: 1,
            speed: 20
        };
        var options = $.extend(defaults, options);
        var itl = "";
        var html = "<div id='float_ad' style='position:fixed;left:0px;top:0px;z-index:1000000;cleat:both;'>";
        html += "<a href='/web/knqc/index.html' target='_blank'><img src='" + options.imgSrc + "' border='0' class='float_ad_img'/></a>";
        html += "<div id='close_f_ad' style='position:absolute;width:30px;height:16px;top:-18px;right:0px;cursor:pointer;float:right;font-size:14px'>关闭</div></div>";
        $('body').append(html);
        function init() {
            var x = 0,
            y = 0;
            var xin = true,
            yin = true;
            var step = 1;
            var obj = $("#float_ad");
            obj.find('img.float_ad_img').load(function() {
                var float = function() {
                    var L = T = 0;
                    var OW = obj.width();
                    var OH = obj.height();
                    var DW = $(window).width();
                    var DH = $(window).height();
                    x = x + step * (xin ? 1 : -1);
                    if (x < L) {
                        xin = true;
                        x = L;
                    }
                    if (x > DW - OW - 1) {
                        xin = false;
                        x = DW - OW - 1;
                    }
                    y = y + step * (yin ? 1 : -1);
                    if (y > DH - OH - 10) {
                        yin = false;
                        y = DH - OH - 10;
                    }
                    if (y < T) {
                        yin = true;
                        y = T;
                    }
                    var left = x;
                    var top = y;
                    obj.css({
                        'top': top,
                        'left': left
                    })
                };
                itl = setInterval(float, options.speed);
                $('#float_ad').mouseover(function() {
                     clearInterval(itl)
                });
                $('#float_ad').mouseout(function() {
                     itl = setInterval(float, options.speed)
                })
            })
        }
        init();
	$('#close_f_ad').click(function(){
            $('#float_ad').css('display','none');
            clearInterval(itl);
        });
    }
})(jQuery);

$(document).ready(function() {
    $(function() {
        $("body").floatAd({
            imgSrc: '/web/uiFramework/commonResource/image/2018062010372674459.jpg'
        });
    })
}); **/
</SCRIPT>
   </DIV></DIV></DIV>
<DIV class="fen fr column" id="fen" name="分中心" runat="server"><LINK href="/ProvidentFund/resources/gjjre_files/container.css" 
rel="stylesheet" type="text/css" media="screen"> <LINK href="/ProvidentFund/resources/gjjre_files/container_blank.css.css" 
rel="stylesheet" type="text/css" media="screen"> 
<DIV class="content_blank portlet" id="046a8869e3aa46a4827dc80acffb4487" 
pagemoduleid="634c3da743e946ee81b869e4f2fe1e22">
<DIV align="left" class="portlet-header"><SPAN id="menu"></SPAN>   
<DIV class="shadow dn" id="submenu046a8869e3aa46a4827dc80acffb4487">
<UL class="float_list_ul"></UL></DIV></DIV>
<DIV class="cp_blank">
<DIV class="title_blank">分中心    </DIV></DIV>
<DIV class="mod1_main_blank">
<DIV class="fen_cen">
<UL>
  <LI><A href="http://gjj.beijing.gov.cn/eportal/ui?pageId=305688&amp;articleKey=305562&amp;columnId=305500" 
  target="_blank">中共中央直属机关分中心</A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/eportal/ui?pageId=305688&amp;articleKey=305565&amp;columnId=305500" 
  target="_blank">中央国家机关分中心</A></LI>
  <LI><A href="http://gjj.beijing.gov.cn/eportal/ui?pageId=305688&amp;articleKey=305568&amp;columnId=305500" 
  target="_blank">铁路分中心</A></LI></UL></DIV></DIV></DIV></DIV><!--<div class="others fr" id="others" runat="server" name="其他业务系统"></div>--> 
  </DIV>
<DIV class="foot1">
<DIV class="foot">
<DIV class="footer_top"><!-- 友情链接下拉-->			 <SELECT name="url" class="fl" 
onchange="if(value!=''){window.open(this.options[this.selectedIndex].value);}else{return(false);}"><OPTION 
  value="" selected="">政府部门</OPTION>				 <OPTION 
  value="http://www.gov.cn/">中华人民共和国中央人民政府</OPTION>				 <OPTION value="http://www.beijing.gov.cn/">首都之窗</OPTION> 
                                  <OPTION 
  value="http://www.mohurd.gov.cn/">中华人民共和国住房和城乡建设部</OPTION>                     
              <OPTION value="http://www.bjjs.gov.cn/">北京市住建委</OPTION>			 </SELECT>
			 <SELECT name="url" class="fr" onchange="if(value!=''){window.open(this.options[this.selectedIndex].value);}else{return(false);}"><!--
				<option value="" selected>外省市公积金</option>
				  <option  value="http://www.qdgjj.com/">青岛市住房公积金管理中心</option>
				  <option  value="http://www.shgjj.com/">上海住房公积金管理中心</option>
				  <option  value="http://www.ycgjj.com.cn/">银川市住房公积金管理中心</option>
				  <option  value="http://www.gjj.gov.cn/index.html">济南市住房公积金管理中心</option>
				  <option  value="http://www.hrbgjj.gov.cn/">哈尔滨住房公积金管理中心</option>
				  <option  value="http://www.ljgjj.com/">丽江住房公积金管理中心</option>
				  <option  value="http://www.fzzfgjj.com/">福州市住房公积金管理中心</option>
				  <option  value="http://www.szgjj.gov.cn/">苏州市住房公积金管理中心</option>
				  <option  value="http://www.xmgjj.gov.cn/">厦门市住房公积金管理中心</option>
				  <option  value="http://www.hzgjj.com/">湖州市住房公积金管理中心</option>
				  <option value="http://www.csgjj.com.cn/">长沙市住房公积金管理中心</option>
				  <option  value="http://www.smxgjj.com/">三门峡市住房公积金管理中心</option>
				  <option  value="http://www.tygjj.com/">太原市住房公积金管理中心</option>
				  <option  value="http://www.gzgjj.gov.cn/">广州市住房公积金管理中心</option>
				  <option  value="http://www.zzsgjj.com/">株洲市住房公积金管理中心</option>
				  <option  value="http://www.wlmqgjj.com/">新疆乌鲁木齐住房公积金管理中心</option>
				  <option  value="http://www.sygjj.gov.cn/">十堰住房公积金管理中心</option>
				  <option  value="http://www.ntgjj.com/">南通市住房公积金管理中心</option>
				  <option  value="http://www.cczfgjj.gov.cn">长春住房公积金管理中心</option>
				  <option  value="http://www.dggjj.cn/ecdomain/framework/dggjj/index.jsp">东莞市住房公积金管理中心</option>
				  <option  value="http://www.xazfgjj.gov.cn/">西安市住房公积金管理中心</option>
				  <option  value="http://www.gjj.dl.gov.cn/icms/dlgjjwwmh/zh/ns:LHQ6MzIsZjoxOCxjOixwOixhOixtOg==/channel.vsml">大连市住房公积金管理中心</option>
				  <option  value="http://www.bjgjj.gov.cn/">北京住房公积金管理中心</option>
				  <option  value="http://www.jzgjj.com/">荆州住房公积金管理中心</option>
				  <option  value="http://gjj.nanjing.gov.cn">南京住房公积金管理中心</option>
				  <option  value="http://www.whgjj.cn/">武汉住房公积金管理中心</option>
                                   --> 
  			<OPTION value="" selected="">外省市公积金</OPTION> 			<OPTION value="http://www.shgjj.com">上海</OPTION> 
  			<OPTION value="http://www.zfgjj.cn">天津</OPTION>			 <OPTION value="http://www.szzfgjj.com/">深圳</OPTION>
  			 <OPTION value="http://www.njgjj.com">南京市</OPTION> 			<OPTION value="http://www.ntgjj.com">南通市</OPTION> 
  			<OPTION value="http://www.szgjj.gov.cn/">苏州市</OPTION> 			<OPTION value="http://www.zjzfjj.com.cn">镇江市</OPTION> 
  			<OPTION value="http://www.ycgjj.com">盐城市</OPTION> 			<OPTION value="http://www.sipspf.org.cn/">苏州工业园区</OPTION> 
  			<OPTION value="http://www.zjgjj.com">浙江省直</OPTION> 			<OPTION value="http://www.hzgjj.com">湖州市</OPTION>
  			 <OPTION value="http://www.zsgjj.gov.cn">舟山市</OPTION> 			<OPTION value="http://www.qzgjj.com">泉州市</OPTION>
  			 <OPTION value="http://www.gzgjj.gov.cn/">广州市</OPTION> 			<OPTION value="http://www.dygjj.gov.cn">东营市</OPTION>
  			 <OPTION value="http://gjj.my.gov.cn">绵阳市</OPTION> 			<OPTION value="http://www.mpfahk.org">香港</OPTION>
  			 <OPTION value="http://www.zzgjj.com">郑州市</OPTION> 			<OPTION value="http://www.smxgjj.com">三门峡市</OPTION>
  			 <OPTION value="http://www.whgjj.cn">武汉市</OPTION> 			<OPTION value="http://www.hsgjj.com">黄石市</OPTION> 
  			<OPTION value="http://www.jzgjj.com/">荆州市</OPTION>			 <OPTION value="http://www.jxgjj.gov.cn">江西</OPTION> 
  			<OPTION value="http://www.pxgjj.com.cn/">萍乡市</OPTION>			 <OPTION value="http://sygjj.shenyang.gov.cn/">沈阳</OPTION> 
  			<OPTION value="http://www.gjj.dl.gov.cn">大连</OPTION>			 <OPTION value="http://www.tygjj.com">太原市</OPTION>
  			 <OPTION value="http://www.wlmqgjj.com">乌鲁木齐</OPTION>			 <OPTION value="http://www.yxgjj.com">玉溪</OPTION> 
  			<OPTION value="http://www.ljgjj.com">丽江</OPTION>			 <OPTION value="http://www.wsgjj.com">文山州</OPTION>
  			 <OPTION value="http://www.ztgjj.com">昭通</OPTION>			 <OPTION value="http://www.xngjj.gov.cn">西宁</OPTION> 
                                  			</SELECT>                        <!--20160919测试改动-->
			 <!--<select name="url"onChange="if(value!=''){window.open(this.options[this.selectedIndex].value);}else{return(false);}">
				<option value="" selected>其他</option>
                                <option value='http://www.zzz.gov.cn/'><a href="http://www.zzz.gov.cn/">国管分中心</a></option>
			        <option value='http://www.51danbao.com.cn/'><a href="http://www.51danbao.com.cn/">北京市住房贷款担保中心</a></option>
			        <option value='http://www.realestate.gov.cn'><a href="http://www.realestate.gov.cn">住宅与房地产信息网</a></option>
			        <option value='http://www.bjgtj.gov.cn'><a href="http://www.bjgtj.gov.cn">北京市国土资源局</a></option>
			        
			</select>-->
		  </DIV>
<DIV class="footer_bottom"><!-- 版权所有等底部信息-->			 <!--<p> <span>今日访问量为271人次</span> <span>历史访问量为99999999人次</span></p>-->
			 
<P><A 
href="http://gjj.beijing.gov.cn/web/lxwm/index.html">联系我们</A><SPAN>|</SPAN> 				<!--<a href="/web/yjjy/index.html">意见建议</a>--> 
				<A href="http://gjj.beijing.gov.cn/web/wzdt/index.html">网站地图</A> 				<!--<a href="">版权声明</a>-->
			 </P>
<P><SPAN>版权所有：北京住房公积金管理中心</SPAN>                                 
<SPAN>政府网站标识码：1100000241</SPAN>				 <SPAN>京公网安备11010102001509</SPAN>
				 <SPAN>京ICP备05031686号</SPAN>				 <SPAN>客服电话：12329</SPAN>			 </P>
<DIV>
<SCRIPT type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1272146544'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s19.cnzz.com/z_stat.php%3Fid%3D1272146544%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));</SCRIPT>
 
<SCRIPT type="text/javascript">document.write(unescape("%3Cspan id='_ideConac' %3E%3C/span%3E%3Cscript src='http://dcs.conac.cn/js/01/000/0000/60441214/CA010000000604412140001.js' type='text/javascript'%3E%3C/script%3E"));</SCRIPT>
 
<SCRIPT id="_jiucuo_" src="/ProvidentFund/resources/gjjre_files/jiucuo.js" sitecode="1100000241"></SCRIPT>
 <IMG class="showJdjb" style="margin-left: 30px;" src="/ProvidentFund/resources/gjjre_files/2018042315070456187.png"> 
<A href="http://gjj.beijing.gov.cn/web/zmhd/359266/index.html"><IMG style="margin-left: 30px;" 
src="/ProvidentFund/resources/gjjre_files/2018081511481210826.png"></A> </DIV></DIV></DIV>
<DIV class="screenBg" style="background: rgb(0, 0, 0); left: 0px; top: 0px; width: 100%; height: 100%; position: fixed; z-index: 998; opacity: 0.5;"></DIV>
<DIV class="jdjbCon" style="left: 50%; top: 50px; width: 600px; margin-left: -300px; display: none; position: fixed; z-index: 999;">
<DIV class="jdjbPosi" style="position: relative;"><IMG class="closejdjb" style="top: -20px; right: -20px; position: absolute;" 
src="/ProvidentFund/resources/gjjre_files/2018042316160580103.png">               <IMG src="/ProvidentFund/resources/gjjre_files/2018042316103727295.jpg"> 
          </DIV>
<STYLE>
.screenBg{display:none;position: fixed;left: 0;top: 0;width: 100%;height: 100%;background: #000;filter: alpha(opacity=50);opacity: 0.5;z-index: 998;}
.jdjbCon{position:fixed;top:50px;left:50%;display:none;width:600px;margin-left:-300px;z-index:999;}
.screenBgShow{display:block;}
.jdjbPosi{position:relative;}
.closejdjb{position:absolute;top:-20px;right:-20px;}
#cnzz_stat_icon_1272146544{display:none;}
.foot1 .footer_bottom span img{
   margin-bottom:-12px;
}
</STYLE>
      </DIV>
<SCRIPT>
$(function(){
   $(".jdjbCon").hide();
   $(".screenBg").hide();
   $(".showJdjb").on("click",function(e){
     if($(".screenBg").hasClass("screenBgShow")){
        $(".screenBg").removeClass("screenBgShow");
        $(".jdjbCon").removeClass("screenBgShow");
            $(".jdjbCon").hide();
              $(".screenBg").hide();
     }else{
        $(".screenBg").addClass("screenBgShow");
        $(".jdjbCon").addClass("screenBgShow");
           $(".jdjbCon").show();
             $(".screenBg").show();
     } 
   });
   $(".closejdjb").on("click",function(e){
         $(".screenBg").removeClass("screenBgShow");
        $(".jdjbCon").removeClass("screenBgShow");
 $(".jdjbCon").hide();
 $(".screenBg").hide();
   });
   
});
</SCRIPT>
 
<SCRIPT src="/ProvidentFund/resources/gjjre_files/languagefan.js" type="text/javascript"></SCRIPT>
 </DIV>
<SCRIPT>
   var curHref = window.location.href;
   if(curHref.indexOf("http://www.bjgjj.gov.cn /")>=0){
    window.location.href = "http://gjj.beijing.gov.cn/";}
</SCRIPT>
   
<SCRIPT>
 if (location.href.indexOf("http://www.bjgjj.gov.cn/")>=0) location.href=location.href.replace("http://www.bjgjj.gov.cn/","http://gjj.beijing.gov.cn/")
</SCRIPT>
   
<SCRIPT>
$(function(){
 /*pdf*/
   /* var zxzysx = $(".newfile a");
    for(var i=0;i<zxzysx.length;i++){
        if($(zxzysx[i]).attr("href").indexOf(".pdf")>0){
            var fileUrl = "/web/uiFramework/commonResource/zip/pdfjs/pdfjs-1.7.225-dist/web/viewer.html?file="+$(zxzysx[i]).attr("href");
            $(zxzysx[i]).attr("href",fileUrl);
        }
    }


     var infos = $(".news2 a");
    for(var i=0;i<infos.length;i++){
        if($(infos[i]).attr("href").indexOf(".pdf")>0){
            var fileUrl = "/web/uiFramework/commonResource/zip/pdfjs/pdfjs-1.7.225-dist/web/viewer.html?file="+$(infos[i]).attr("href");
            $(infos[i]).attr("href",fileUrl);
        }
    }*/

})
</SCRIPT>

<DIV style="display: none;" easysite="easysiteHiddenDiv"> <INPUT id="currentLoginUserLoginName" type="hidden"> 
<INPUT id="currentLoginUserLoginId" type="hidden"> </DIV></BODY></HTML>
