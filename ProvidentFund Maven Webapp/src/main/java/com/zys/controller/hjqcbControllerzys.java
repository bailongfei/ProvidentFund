package com.zys.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Hjqcb;
import com.zys.service.hjqcbService;


@Controller
@RequestMapping("/hjqcb")
public class hjqcbControllerzys {
@Autowired
private hjqcbService service;
@RequestMapping("/queryAll")
@ResponseBody
public List<Hjqcb> queryAll(){
	 List<Hjqcb> list=service.queryAll();
	return list; 
}
@RequestMapping("/insert")
public String insert(Hjqcb h,Map map){
	int result= service.insert(h);
	map.put("hjqcb", h);
	return "list";
}
}
