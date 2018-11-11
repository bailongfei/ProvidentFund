package com.blf.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Bankdetails;
import com.entity.Unitsaccount;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.UnitcwhService;
@Controller
@RequestMapping("/unitcwh")
public class UnitcwhController {
	@Autowired
private UnitcwhService ser;
@RequestMapping("/queryAllcwh")
public @ResponseBody PageInfo<Map> queryAllcwh(Integer pageNum){
	PageHelper.startPage(pageNum, 6);
	List<Map> list=ser.queryAllcwh();
	PageInfo<Map> info=new PageInfo<Map>(list);
	return info;
	 }
@RequestMapping("/savecwh")
@ResponseBody
public int save(Unitsaccount g) {
	System.out.println("123");
	return ser.savecwh(g);
}
}
