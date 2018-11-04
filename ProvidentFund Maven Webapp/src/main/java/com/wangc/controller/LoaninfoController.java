package com.wangc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Dyhtxx;
import com.entity.Jointborrower;
import com.entity.Loaninfo;
import com.entity.Purchase;
import com.wangc.service.DyhtxxService;
import com.wangc.service.LoaninfoService;
import com.wangc.serviceimpl.JointborrowerServiceimpl;
import com.wangc.serviceimpl.PurchaseServiceimpl;

@Controller
@RequestMapping("/lololo")
public class LoaninfoController {
	@Autowired
	private LoaninfoService ls;
	@Autowired
	private JointborrowerServiceimpl jb;
	@Autowired
	private PurchaseServiceimpl ps;
	@Autowired
	private DyhtxxService ds;
	
	private Purchase pe;
	private Loaninfo lf;
	private Jointborrower jo;
	//贷款信息添加
	@RequestMapping("/losave")
	@ResponseBody
	 public String Loansave(Loaninfo lo,HttpServletRequest request,HttpServletResponse response) {
		 response.setContentType("text/html;charset=utf-8");
		 if(lo!=null){
			 lf=lo;
			 return "1";
		 }else {
			return "0";
		 }
	
		 
	 }
	//共同借款人添加
	@ResponseBody
	@RequestMapping("/saveJoin")
	public String saveTbGoods(Jointborrower tb){
		 if(tb!=null){
			 jo=tb;
			 return "1";
		 }else {
			return "0";
		 }
	}
	//住房信息添加
	@ResponseBody
	@RequestMapping("/purchasave")
	public String saveTbGoods(Purchase pu){
	
		 if(pu!=null){
			 pe=pu;
			 return "1";
		 }else {
			return "0";
		 }
	}
	
	
	@RequestMapping("/dysave")
	@ResponseBody
	 public String purchasave(Dyhtxx dh){
		
		 ls.Loansave(lf);
		 Integer lfid=lf.getDkxxbh();
		 System.out.println(lf.toString());
		 System.out.println(lfid);
		 jo.setDkxxbh(lfid);
		 jb.save(jo);
		 System.out.println(jo.toString());
		 pe.setDkxxbh(lfid);
		 int i=ps.save(pe);
		 dh.setDkxxbh(lfid);
		 int a=ds.Dyhtxxsave(dh);
		 if (a>0) {
			return "1";
		}else {
			 return "0";
		}
	 }
	
/*	
	@RequestMapping("/purchasave")
	@ResponseBody
	 public String purchasave(Purchase pu){
		 ls.Loansave(lf);
		 Integer lfid=lf.getDkxxbh();
		 System.out.println(lf.toString());
		 System.out.println(lfid);
		 jo.setDkxxbh(lfid);
		 jb.save(jo);
		 System.out.println(jo.toString());
		 pu.setDkxxbh(lfid);
		 int i=ps.save(pu);
		 System.out.println(pu.toString());
		 if(i>0){
			 return "1";
		 }else{
			 return "0";
		 }
	 }*/
}
