package com.aaa.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.entity.hjqcb;
import com.aaa.service.hjqcbService;

@Controller
@RequestMapping("/hjqcb")
public class hjqcbController {
@Autowired
private hjqcbService service;
@RequestMapping("/queryAll")
@ResponseBody
public List<hjqcb> queryAll(){
	 List<hjqcb> list=service.queryAll();
	return list; 
}
@RequestMapping("/insert")
public String insert(hjqcb h,Map map){
	int result= service.insert(h);
	map.put("hjqcb", h);
	return "list";
}
}
