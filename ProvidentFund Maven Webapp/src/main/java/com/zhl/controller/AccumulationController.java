package com.zhl.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Accumulation;
import com.entity.Gjjtqyyb;
import com.zhl.service.AccumulationService;
@RequestMapping("/Accumulation")
@Controller
public class AccumulationController {
	@Autowired
	private AccumulationService service;
	//添加公积金提取申请
	@ResponseBody
	@RequestMapping("/ApplyAccumulation")
	public String ApplyAccumulation(Accumulation accumulation){
		Date date=new Date();
		accumulation.setSqsj(date);
		accumulation.setGrapprovalstatuss("审核中");
		service.SaveAccmulation(accumulation);
		String message="申请已提交 请等待审核！";
		return message;
	}
	@ResponseBody
	@RequestMapping("/findtqyy")
	public List<Gjjtqyyb> findtqyy(){
		List<Gjjtqyyb> list=service.findtqyy();
		return list;
	}
}
