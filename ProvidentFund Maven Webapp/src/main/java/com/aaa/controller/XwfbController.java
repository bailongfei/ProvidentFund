package com.aaa.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.entity.Xwfb;
import com.aaa.service.XwfbService;

@Controller
@RequestMapping("/xwfb")
public class XwfbController {
		@Autowired
		private XwfbService service;
		@RequestMapping("/queryXwfb")
		@ResponseBody
		public List<Xwfb> queryXwfb(){
			List<Xwfb> list=service.queryXwfb();
			return list;
	}
		//添加新闻
		 @RequestMapping("/insertXwfb")
		 @ResponseBody
		  public void insertXwfb(Xwfb xw,HttpServletResponse response) throws IOException{
			 response.setContentType("text/html;charset=utf-8");
			 PrintWriter out=response.getWriter();
			  int i=service.insertXwfb(xw);
			  System.out.println(xw);
			  if(i>0){
				  out.print("添加成功！");
			  }else{
				  out.print("添加失败！");
			  }
		 }
		//修改新闻
		 @RequestMapping("/updateXwfb")
		 @ResponseBody
		  public void updateXwfb(Xwfb xw,HttpServletResponse response) throws IOException{
			 response.setContentType("text/html;charset=utf-8");
			 PrintWriter out=response.getWriter();
			  int i=service.updateXwfb(xw);
			  System.out.println(xw);
			  if(i>0){
				  out.print("修改成功！");
			  }else{
				  out.print("修改失败！");
			  }
		 }
		 //删除新闻
		 @RequestMapping("/deleteXwfb")
		 @ResponseBody
		 public void deleteXwfb(Xwfb xw,HttpServletResponse response) throws IOException{
			int i=service.deleteXwfb(xw.getXwbh());
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			if(i>0){
				 out.print("删除成功!");
			 }else{
				 out.print("删除失败!");
			 }
		 }
		 //根据id查询
		 @RequestMapping("/queryById")
		 @ResponseBody
		 public Xwfb queryById(Xwfb xw){
			 Xwfb tt=service.queryById(xw.getXwbh());
			return tt;
		 }
}