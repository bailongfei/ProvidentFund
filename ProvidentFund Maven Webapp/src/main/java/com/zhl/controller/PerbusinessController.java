package com.zhl.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
public class PerbusinessController {
	@Autowired
	private PerbusinessService service;
	private Integer grzh;
	@RequestMapping("/findbypage")
	public String findbypage(Integer grzhbhs){
		grzh=grzhbhs;
		return "QueryPerbusiness";
	}
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
	
	@ResponseBody
	@RequestMapping("/findbycondition")
	public Pager findbycondition(String grperbuType,@RequestParam(required = false, defaultValue = "1") Integer pageNum,String date1,String date2){
		Pager p=new Pager();//分页对象
		p.setCurPage(pageNum);//当前页
		p.setPageSize(2);//每页条数
		Map<String, Object> condition=new HashMap<String, Object>();
		String date3 = null;
		condition.put("grzhbhs", 1);//个人账号
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
		condition.put("startIndex", p.getStartIndex());//设置开始索引
		condition.put("pageSize", p.getPageSize());//设置每页条数
		List<Map<String, Object>> list=service.findbycondition(condition);//获取list
		Integer totalCount=service.findcount(condition);//查询出结果总条数
		p.setList(list);//设置list
		p.setTotalCount(totalCount);//设置总条数
		//PageHelper.startPage(pageNum, 2);
		//PageInfo<Map<String, Object>> pInfo=new PageInfo<Map<String,Object>>(list);
		//System.out.println(pInfo.toString());
		//Map<String, Object> map=new HashMap<String, Object>();
		//map.put("grzhbhs", grzh);
		//map.put("pInfo", pInfo);
		return p;
	}
}
