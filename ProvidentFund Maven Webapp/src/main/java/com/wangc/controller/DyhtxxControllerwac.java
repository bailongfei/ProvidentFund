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

import com.entity.Dyhtxx;
import com.wangc.service.DyhtxxService;
import com.wangc.service.DylxbService;

@Controller
@RequestMapping("/Dyhtxxx")
public class DyhtxxControllerwac {

	@Autowired
		private DylxbService bs;
	
	
	
	@RequestMapping("/dylcha")
	@ResponseBody//把方法的返回值类型转化为json类型 返回字符串
	public List<Map<String, Object>> dylx(){
		List<Map<String,Object>> list=bs.Dylxbquery();
		System.out.println(list);
		return list;
		
	}

	}
