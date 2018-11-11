package com.blf.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Accumulation;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.AccumcwhService;

import net.sf.jsqlparser.statement.update.Update;
@Controller
@RequestMapping("/accumulationcwh")
public class AccumcwhController {
	@Autowired
private AccumcwhService ser;
	@RequestMapping("/queryAllcwh")
	public @ResponseBody PageInfo<Map> queryAllcwh(Integer pageNum){
		PageHelper.startPage(pageNum, 6);
		List<Map> list=ser.queryAllcwh();
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
		 }
	@ResponseBody
	@RequestMapping("/updatecwh")
	public  String updatecwh(Integer accumulation){
		Accumulation accumulation2=new Accumulation();
		accumulation2.setAccumulation(accumulation);
		accumulation2.setGrapprovalstatuss("ÉóºËÍ¨¹ý");
		ser.updatecwh(accumulation2);
		return "1";
	}
	
	
}
