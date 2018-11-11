package com.blf.controller;

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

import com.entity.Accumulation;
import com.entity.Bkshzjb;
import com.entity.Grzfbkzhxx;
import com.entity.Loaninfo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.LoanService;
@Controller
@RequestMapping("/loaninfocwh")
public class LoanController {
	@Autowired
private LoanService ser;
	private Grzfbkzhxx gs;
@RequestMapping("/queryAllcwh")
public @ResponseBody PageInfo<Map> queryAlcwhl(Integer pageNum){

	PageHelper.startPage(pageNum, 6);
	List<Map> list=ser.queryAllcwh();
	PageInfo<Map> info=new PageInfo<Map>(list);
	return info;
	 }
@RequestMapping("/queryAllzocwh")
public @ResponseBody PageInfo<Map> queryAllzocwh(Integer pageNum){

	PageHelper.startPage(pageNum, 6);
	List<Map> list=ser.queryAllzocwh();
	PageInfo<Map> info=new PageInfo<Map>(list);
	return info;
	 }
@RequestMapping("/ByIdcwh")
@ResponseBody
public List<Loaninfo> queryByIdcwh(@RequestBody int dkxxbh){
	List<Loaninfo> list=ser.queryByIdcwh(dkxxbh);
	return list;
	
}

@RequestMapping("/getallcwh")
public @ResponseBody List<Map> getallcwh(Integer dkxxbh){
	List<Map> list=ser.getallcwh(dkxxbh);
	System.out.println(dkxxbh);
	System.out.println(list);
	return list;
	
}
@RequestMapping("/updatecwh")

public @ResponseBody String updatecwh(@RequestBody List<Map> list) {
	System.out.println(list);
	ser.updatecwh(list);
	return 	"true";
}
@RequestMapping("/updatebhyycwh")

public @ResponseBody String updatebhyycwh(@RequestBody List<Map> list) {
	System.out.println(list);
	ser.updatebhyycwh(list);
	return 	"true";
}
@RequestMapping("/getshbhcwh")
public @ResponseBody List<Map> getshbhcwh(){
	List<Map> list=ser.getshbhcwh();
	return list;
	
}
@RequestMapping("/getshbhzocwh")
public @ResponseBody List<Map> getshbhzocwh(){
	List<Map> list=ser.getshbhzocwh();
	return list;
	
}

@RequestMapping("/savegrcwh")
@ResponseBody
public int savegrcwh(Grzfbkzhxx u) {
	System.out.println("123");
u.setHslxze(0);
	return ser.savegrcwh(u);
}
}
