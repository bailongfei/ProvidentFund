package com.wangc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Peraccount;
import com.wangc.service.PeraccountService;

@Controller
@RequestMapping("/good")
public class PeraccountController {
	@Autowired
	private	PeraccountService ps;
	private Peraccount pds;
	 
	 @Transactional
	 @ResponseBody
	 @RequestMapping("/saveUploadOrUpdate")
	 public String saveTbGoods(Peraccount tb,HttpServletRequest request,HttpServletResponse response) throws IOException{
		 response.setContentType("text/html;charset=utf-8");
		 PrintWriter out=response.getWriter();
		 if(tb!=null){
			 pds=tb;
			 return "1";
		 }else {
			return "0";
		 }
		 //int i=ps.save(tb);
		 
	 }
	
	//¸ù¾Ýid²éÑ¯
	 @RequestMapping("/queryTById")
	 @ResponseBody
	 public List<Map<String, Object>> queryTById(int grzhbh){
		 List<Map<String, Object>> list1=ps.queryTbid(grzhbh);
		 System.out.println(list1);
		return list1;
		 
	 }
	
}
