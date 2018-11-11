package com.wangc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Loaninfo;
import com.entity.Purchase;
import com.wangc.service.LoaninfoService;
import com.wangc.serviceimpl.FjlxbServiceimpl;
import com.wangc.serviceimpl.PurchaseServiceimpl;

@Controller
@RequestMapping("/purchase")
public class PurchaseControllerwc {
	@Autowired
	private PurchaseServiceimpl ps;
    @Autowired
	private FjlxbServiceimpl fs;
	@RequestMapping("/list")
	@ResponseBody
	 public List<Map<String,Object>> queryT(){
		List<Map<String,Object>> list=ps.queryPurcha();
		System.out.println(list);
		return list;
	 }
	//下拉框
	@RequestMapping("/fjlxlist")
	@ResponseBody
	public List<Map<String, Object>> Fjlxquery(){
		List<Map<String,Object>> list=fs.queryFjlx();
		System.out.println(list);
		return list;
		
	}
	@RequestMapping("/purchasave")
	@ResponseBody
	 public void purchasave(Purchase pu,HttpServletRequest request,HttpServletResponse response) throws IOException{
		 response.setContentType("text/html;charset=utf-8");
		 PrintWriter out=response.getWriter();
		 int i=ps.save(pu);
		 if(i>0){
			 out.print("添加成功!");//往前台打印text文本格式
		 }else{
			 out.print("添加失败!");
		 }
	 }
}
