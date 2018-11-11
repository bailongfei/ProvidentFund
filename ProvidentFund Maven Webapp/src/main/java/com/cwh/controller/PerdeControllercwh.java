package com.cwh.controller;

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

import com.cwh.service.PerdeService;
import com.entity.Peraccount;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Controller
@RequestMapping("/peraccountcwh")
public class PerdeControllercwh {
	@Autowired
private PerdeService ser;
@RequestMapping("/queryAllcwh")
public @ResponseBody PageInfo<Map> queryAllcwh(Integer pageNum){

	PageHelper.startPage(pageNum, 6);
	List<Map> list=ser.queryAllcwh();
	PageInfo<Map> info=new PageInfo<Map>(list);
	return info;
	 }
@RequestMapping("/querymhcwh")
@ResponseBody
 public List<Map> querymhcwh(){
	System.out.println(1);
	return ser.querymhcwh();
	 }

@RequestMapping("/queryAllzgcwh")
public @ResponseBody PageInfo<Map> queryAllzgcwh(Integer pageNum){

	PageHelper.startPage(pageNum, 6);
	List<Map> list=ser.queryAllzgcwh();
	PageInfo<Map> info=new PageInfo<Map>(list);
	return info;
	 }

@RequestMapping("/ByIdcwh")
@ResponseBody
public List<Peraccount> queryByIdcwh( int grzhbh){

	List<Peraccount> list=ser.queryByIdcwh(grzhbh);
	return list;
	
}
@RequestMapping("/updatecwh")

public @ResponseBody String updatecwh(@RequestBody List<Map> list) {
	System.out.println(list);
	ser.updatecwh(list);
	return 	"true";
}
@RequestMapping("/savecwh")
@ResponseBody
public int save(Peraccount u) {
	System.out.println("123");
	return ser.savecwh(u);
}
@RequestMapping("/queryAlltycwh")
public @ResponseBody PageInfo<Map> queryAlltycwh(Integer pageNum){

	PageHelper.startPage(pageNum, 6);
	List<Map> list=ser.queryAlltycwh();
	PageInfo<Map> info=new PageInfo<Map>(list);
	return info;
	 }
@ResponseBody
@RequestMapping("/updateztcwh")
public String updateztcwh(Integer grzhbh,Integer zhztbh,Boolean b){
	Peraccount p=new Peraccount();
	p.setGrzhbh(grzhbh);
	p.setZhztbh(zhztbh);
	ser.updateztcwh(p, b);
	return "1";
}
@RequestMapping("/getallcwh")
public @ResponseBody List<Map> getallcwh(Integer grzhbh){
	List<Map> list=ser.getallcwh(grzhbh);
	System.out.println(grzhbh);
	System.out.println(list);
	return list;
	
}
}
