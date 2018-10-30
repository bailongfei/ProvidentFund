package com.blf.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blf.service.UnitsaccountService;
import com.entity.Hjqcb;
import com.entity.Unitsaccount;
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
}
