package com.zhl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.ryzy;
import com.zhl.pager.Pager;
import com.zhl.service.RyzyService;
@Controller
@RequestMapping("/Ryzyzhl")
public class RyzyControllerzhl {
	@Autowired
	private RyzyService service;
	@ResponseBody
	@RequestMapping("/SaveApply")
	public String SaveApply(ryzy ryzy){
		ryzy.setShzt(1);
		service.SaveRyzyApply(ryzy);
		return "1";
	}
	//查询人员转移申请
	@ResponseBody
	@RequestMapping("/queryapply")
	public Pager queryapply(@RequestParam Map<String, Object> map){
		Pager p=new Pager();
		p.setPageSize(2);//设置每页条数
		Pager pager=service.queryapply(map, p);
		return pager;
	}
	@ResponseBody
	@RequestMapping("/queryryzysh")
	public Pager queryryzysh(@RequestParam Map<String, Object> map){
		Pager p=new Pager();
		p.setPageSize(2);//设置每页条数
		Pager pager=service.queryryzysh(map, p);
		return pager;
	}
	@ResponseBody
	@RequestMapping("/CheckRyzy")
	public String CheckRyzy(ryzy ryzy){
		int result=service.CheckRyzy(ryzy);
		if(result>0){
			return "1";
		}else {
			return null;
		}
	}
	@ResponseBody
	@RequestMapping("/CheckRyzy2")
	public String CheckRyzy2(ryzy ryzy){
		int result=service.CheckRyzy2(ryzy);
		if(result>0){
			return "1";
		}else {
			return null;
		}
	}
}
