package com.zhl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Peraccount;
import com.zhl.pager.Pager;
import com.zhl.service.PeraccountService;

@Controller
@RequestMapping("/Peraccount")
public class PeraccountController {
	@Autowired
	private PeraccountService service;
	//登陆
	@ResponseBody
	@RequestMapping("/login")
	public String login(String peracid,String peracloginpw,HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("peracid", peracid);
		map.put("peracloginpw", peracloginpw);
		Peraccount pa=service.login(map);
		System.out.println(map);
		System.out.println(pa);
		if(pa!=null){
			session.setAttribute("Peraccount", pa);
			return "1";
		}else {
			return "0";
		}
	}
	//账户合并
	@ResponseBody
	@RequestMapping(value="/AccountMerge",produces="text/html;charset=UTF-8")
	public String AccountMerge(String peracId1,String peracloginpw1,String peracId2,String peracloginpw2){
		Map<String, Object> account1=new HashMap<String, Object>();
		Map<String, Object> account2=new HashMap<String, Object>();
		account1.put("peracid", peracId1);
		account1.put("peracloginpw", peracloginpw1);
		account2.put("peracid", peracId2);
		account2.put("peracloginpw", peracloginpw2);
		service.AccountMerge(account1, account2);
		return "账户合并成功";
	}
	//分页查询所有账号信息
	@ResponseBody
	@RequestMapping("/findbyPager")
	public Pager findbyPager(@RequestParam Map<String, Object> map){
		Pager p=new Pager();
		p.setPageSize(2);//设置每页条数
		Pager pager=service.findbyPager(map, p);
		return pager;
	}
	//修改账号状态
	@ResponseBody
	@RequestMapping("/UpdateStates")
	public String UpdateStates(Integer zhztbh,Integer grzhbh){
		service.UpdateStates(zhztbh, grzhbh);
		return "1";
	}
	//根据公积金账号查询员工所属单位信息
	@ResponseBody
	@RequestMapping("/findUnitName")
    public Map<String, Object> findUnitName(String peracId){
    	Map<String, Object> map=service.findUnitName(peracId);
    	return map;
    }
}
