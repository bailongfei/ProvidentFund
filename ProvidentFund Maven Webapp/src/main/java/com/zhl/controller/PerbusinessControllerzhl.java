package com.zhl.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.mybatis.generator.codegen.ibatis2.dao.DAOGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Peraccount;
import com.entity.Perbusiness;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhl.pager.Pager;
import com.zhl.service.PerbusinessService;
@Controller
@RequestMapping("/Perbusiness")
public class PerbusinessControllerzhl {
	@Autowired
	private PerbusinessService service;
	/*@ResponseBody
	@RequestMapping("/QuerybyId")
	public Map<String, Object> QuerybyId(){
		List<Perbusiness> list=service.findbypage(grzh);
		Map<String, Object> map=new HashMap<String, Object>();
		int count=service.findcount(grzh);
		map.put("code", 0);
		map.put("msg", "");
		map.put("count", count);
		map.put("data", list);
		
		return map;
	}*/
	/*@ResponseBody
	@RequestMapping("/findbycondition")
	public PageInfo<Map> findbycondition(Integer pageNum){
		System.out.println(pageNum);
		PageHelper.startPage(pageNum,2);
		List<Map> list=service.queryAll();
		PageInfo<Map> Info=new PageInfo<Map>(list);
		return Info;
	}*/
	//分页查询个人明细
	@ResponseBody
	@RequestMapping("/findbycondition")
	public Pager findbycondition(String grperbuType,@RequestParam(required = false, defaultValue = "1") Integer pageNum,String date1,String date2,String bkname){
		Pager p=new Pager();//分页对象
		p.setCurPage(pageNum);//当前页
		p.setPageSize(2);//每页条数
		Map<String, Object> condition=new HashMap<String, Object>();
		String date3 = null;
		condition.put("bkname", bkname);
		condition.put("grperbuType", grperbuType);//业务类型
		if(date1!=null && date1!="" && date2==""){
			date3=date1;
		}
		if(date2!=null && date2!="" && date1==""){
			date3=date2;
		}
		condition.put("date1", date1);
		condition.put("date2", date2);
		condition.put("date3", date3);
		Pager pager=service.findbycondition(condition, p);
		return pager;
	}
}
