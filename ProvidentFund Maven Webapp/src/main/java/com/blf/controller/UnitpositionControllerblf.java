package com.blf.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blf.service.UnitpositionService;

@Controller
@RequestMapping("/utzw")
public class UnitpositionControllerblf {
 @Autowired
 public UnitpositionService ut;
 @RequestMapping("/queryZw")
 @ResponseBody
 public List<Map<String,Object>> queryZw(){
	 List<Map<String,Object>> list=ut.queryZw();
	return list;
 }
 @RequestMapping("/queryLmk")
 @ResponseBody
 public List<Map<String,Object>> queryLmk(){
	 List<Map<String,Object>> list=ut.queryLmk();
	return list;
 }
}
