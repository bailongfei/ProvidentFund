package com.blf.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blf.service.UnitsaccountService;

import com.entity.Unitsaccount;
import com.util.Pager;
@Controller
@RequestMapping("/unfo")
public class UnitsaccountController {
 @Autowired
 private UnitsaccountService unse;
 @RequestMapping("/queryUnfoAndUncc")
 @ResponseBody
 public List<Map<String,Object>> query(){
	 List<Map<String,Object>> list=unse.queryUnitinfo();
	return list;
 }
 @RequestMapping("/queryUnfo")
 @ResponseBody
 public List<Map<String,Object>> queryUnfo(Unitsaccount unitinfoaccount){
	 System.out.println(unitinfoaccount);
	 List<Map<String,Object>> list=unse.queryUnfo(unitinfoaccount);
	 System.out.println(list);
	return list;
 }
@RequestMapping("/queryPageUnfo")
@ResponseBody
 public Pager queryPageUnfo(String UnitInfoName,@RequestParam(required = false, defaultValue = "1") Integer pageNum){
	System.out.println(UnitInfoName+"汇缴"+pageNum);  
	Pager p=new Pager();//分页对象
		p.setCurPage(pageNum);/*当前页*/
		p.setPageSize(1);/*//每页条数*/
		Map<String,Object> map=new HashMap<String,Object>();
		//map.put("startIndex", (curPage-1)*pageSize);
		map.put("startIndex", p.getStartIndex());//设置开始索引
		map.put("pageSize", p.getPageSize());//设置每页条数
		map.put("unfoName", UnitInfoName);
		List<Map<String, Object>> list=unse.queryUnPagefo(map);
		int i=unse.getPageCount(map);
		p.setList(list);
		p.setTotalCount(i);
	return p;
	 
 }
}
