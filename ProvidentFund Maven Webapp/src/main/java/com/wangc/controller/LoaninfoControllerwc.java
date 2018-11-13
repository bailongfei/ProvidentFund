package com.wangc.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
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
public class LoaninfoControllerwc {
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
	//������Ϣ���
	 @Transactional
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
	//��ͬ��������
	 @Transactional
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
	//ס����Ϣ���
	 @Transactional
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
    @Transactional
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
			return "����ɹ�";
		}else {
			 return "����ʧ��";
		}
	 }
}
