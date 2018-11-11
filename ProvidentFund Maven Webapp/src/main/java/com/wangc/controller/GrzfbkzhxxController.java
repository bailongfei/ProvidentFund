package com.wangc.controller;

import static org.hamcrest.CoreMatchers.nullValue;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Grzfbkzhxx;
import com.entity.Loaninfo;
import com.entity.Repayplan;
import com.wangc.Pager.Pager;
import com.wangc.service.GrzfbkzhxxService;
import com.wangc.service.RepaylanService;


@Controller
@RequestMapping("/Grzfbk")
public class GrzfbkzhxxController {
@Autowired
	private RepaylanService rs;
	@Autowired
			private GrzfbkzhxxService gf;
	//查询还款状态为o
	@RequestMapping("/Grzquery")
	@ResponseBody
	public List<Map<String, Object>> quee(){
		List<Map<String, Object>> list=gf.Grzfquery();
		System.out.println(list);
		return list;
	}
	//查询还款状态为1销户
	@RequestMapping("/Grzquerytwo")
	@ResponseBody
	public List<Map<String, Object>> queet(){
			List<Map<String, Object>> list1=gf.Grzfquerytwo();
			return list1;
		
	}
	//查询还款状态为o
	@ResponseBody
	@RequestMapping("/updatestatic")
	public void update(int dkbh){
			gf.updatestatic(dkbh);
	}
	
	 @RequestMapping("/queryGrzg")
	 @ResponseBody
	 public Map<String, Object> queryById(int dkbh){
		 List<Map<String, Object>> tt=gf.queryGrzgId(dkbh);
		 Map<String, Object> map=new HashMap<String, Object>();
         DecimalFormat df = new DecimalFormat("#.0");
		 map=tt.get(0);
		 //等额本金还款
		 Double dkffe=(Double) map.get("dkffe");//贷款总金额
		 Double grdkqs=(Double) map.get("grdkqs");//贷款期数
		 Double zxll=(Double) map.get("zxll");//利率
		 Double hsbjze=(Double) map.get("hsbjze");//已还本金
		 Double grdqjhghbj=dkffe/grdkqs;//应还本金
		 Double dqjhghlxs=(dkffe-hsbjze)*zxll;//应还利息
		 Double dqjhhkje=grdqjhghbj+dqjhghlxs;//应还总金额
		 map.put("grdqjhghbj", df.format(grdqjhghbj));
		 map.put("dqjhghlxs", df.format(dqjhghlxs));
		 map.put("dqjhhkje", df.format(dqjhhkje));
		 return map;
	 }
	//贷款信息
	@RequestMapping("/updatee")
	@ResponseBody
	 public void Grzfb(@RequestParam Map<String, Object> map,HttpServletResponse response) throws IOException {
		 DecimalFormat df = new DecimalFormat("#.0");
		 Date date=new Date();
		 response.setContentType("text/html;charset=utf-8");
		 PrintWriter out=response.getWriter();
		 Double dksyqs=Double.parseDouble((String) map.get("dksyqs"));//剩余期数
		 dksyqs=dksyqs-1;
		 if(dksyqs<1){
			 map.put("sfzx", "1");
		 }
		 Integer dkbh=Integer.valueOf((String) map.get("dkbh"));
		 Double dkffe=Double.parseDouble((String) map.get("dkffe")) ;
		 Double zxll=Double.parseDouble((String) map.get("zxll"));
		 Double grdkqs=Double.parseDouble((String) map.get("grdkqs"));
		 Double dqjhhkje=Double.parseDouble((String) map.get("dqjhhkje"));
		 Double grdqjhghbj=Double.parseDouble((String) map.get("grdqjhghbj"));
		 Double dqjhghlxs=Double.parseDouble((String) map.get("dqjhghlxs"));
		 Double hsbjze=Double.parseDouble((String) map.get("hsbjze"));//已还款本金
		 //回收总金额 = 回收总金额+当前还款本金	
		 hsbjze=hsbjze+grdqjhghbj;
		 hsbjze=Double.parseDouble(df.format(hsbjze));
		 map.put("dkffe", dkffe);
		 map.put("zxll", zxll);
		 map.put("grdkqs", grdkqs);
		 map.put("dqjhhkje", dqjhhkje);
		 map.put("grdqjhghbj", grdqjhghbj);
		 map.put("dqjhghlxs", dqjhghlxs);
		 map.put("dkbh", dkbh);
		 map.put("dksyqs", dksyqs);
		 map.put("hsbjze", hsbjze);
		 //实体类
		 Repayplan repayplan=new Repayplan();
		 repayplan.setDkbh(dkbh);
		 repayplan.setHkrq(date);
		 repayplan.setYhbj(grdqjhghbj.intValue());
		 repayplan.setYhlx(dqjhghlxs.intValue());
		 repayplan.setYqztzs("1");
		 int qic=grdkqs.intValue()-dksyqs.intValue();
		 repayplan.setQic(qic);
		 System.out.println(map);
		 int i=gf.updateGrzfb(map);
		 gf.Saverepayplan(repayplan);
		 if(i>0){
			 out.print("还款成功!");//往前台打印text文本格式
		 }else{
			 out.print("添加失败!");
		 }
	 }
	//查询还款明细
	@RequestMapping("/Repayid")
	@ResponseBody
	 public List<Map<String, Object>> queryDyhtxx(int dkbh){
		System.out.println(dkbh);
		 List<Map<String, Object>> list1=rs.queryDyhtxx(dkbh);
		 System.out.println(list1);
		return list1;
	 }
	//分页
	@RequestMapping("/findByIdGrzfb")
	@ResponseBody
	public Pager findbygrzfbk(@RequestParam(required =false,defaultValue="1") Integer pageNum,String name){
		Pager p=new Pager();
		p.setCurPage(pageNum);//当前页;
		p.setPageSize(2);//每页条数
		Map<String, Object>  grzfbk=new HashMap<String, Object>();
		grzfbk.put("bkname", name);
		Pager pager=gf.findbygrzfbk(grzfbk, p);
		return pager;
		
	}
}
