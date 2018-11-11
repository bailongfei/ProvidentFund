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

import com.cwh.service.UnitinfoService;
import com.entity.Unitinfo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
@Controller
@RequestMapping("/unitinfocwh")
public class UnitinfoCwhController {
	@Autowired
private UnitinfoService ser;
	@RequestMapping("/queryAllcwh")
	public @ResponseBody PageInfo<Map> queryAllcwh(Integer pageNum){
		PageHelper.startPage(pageNum, 6);
		List<Map> list=ser.queryAllcwh();
		PageInfo<Map> info=new PageInfo<Map>(list);
		return info;
		 }
	
	@RequestMapping("/savecwh")
	@ResponseBody
	public int savecwh(Unitinfo u) {
		System.out.println("123");
		return ser.savecwh(u);
	}
	//删除一行数据
		@RequestMapping("/deletecwh")
		public void deletecwh(@RequestBody int UnitInfoId,HttpServletResponse response) throws IOException{
			System.out.println(1);
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int num=ser.deletecwh(UnitInfoId);
			if (num>0) {
				out.print("删除成功");
			}else{
				out.print("删除失败");
			}
		}
		@RequestMapping("/queryByUnitinfoIdcwh")
		@ResponseBody
		public List<Unitinfo> queryByUnitinfoIdcwh(@RequestBody int UnitInfoId){
			List<Unitinfo> list=ser.queryByUnitinfoIdcwh(UnitInfoId);
			return list;
			
		}
		@RequestMapping("/updateunitinfocwh")
		public void updateunitinfocwh(@RequestBody Unitinfo u,HttpServletResponse response) throws IOException{
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			int unitinfoid=ser.updateunitinfocwh(u);
			if (unitinfoid>0) {
				out.print("更改成功！");
			}else{
				out.print("更改失败！");
			}
		}
}
