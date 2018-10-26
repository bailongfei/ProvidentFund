package com.blf.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blf.service.HjqcbService;
import com.entity.Hjqcb;
import com.entity.Unitsaccount;

@Controller
@RequestMapping("/hjqcb")
public class HjqcbController {
	@Autowired
	private HjqcbService hs;
 @RequestMapping("/queryHjqcb")
 @ResponseBody
 public List<Map<String,Object>> queryHjqcb(Integer unitinfoaccount){
	 System.out.println(unitinfoaccount);
	 List<Map<String,Object>> list=hs.queryHjceb(unitinfoaccount);
	 System.out.println(list.get(0));
	return list;
 }
 @RequestMapping("/selectSum")
 @ResponseBody
 public int querySum(Integer unitinfoaccount){
	 int i=hs.selectSum(unitinfoaccount);
	return i;
 }
}
