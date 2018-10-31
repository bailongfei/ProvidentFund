package com.zhl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Peraccount;
import com.zhl.service.PeraccountService;

@Controller
@RequestMapping("/Peraccount")
public class PeraccountController {
	@Autowired
	private PeraccountService service;
	/*@ResponseBody
	@RequestMapping("/findall")
	public List<Map> findall(){
		List<Map> list=service.findall();
		System.out.println(list);
		return list;
	}*/
	@ResponseBody
	@RequestMapping("/login")
	public String login(String peracid,String peracloginpw){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("peracid", peracid);
		map.put("peracloginpw", peracloginpw);
		Peraccount pa=service.login(map);
		System.out.println(map);
		System.out.println(pa);
		if(pa!=null){
			return "1";
		}else {
			return "0";
		}
	}
	@ResponseBody
	@RequestMapping(value="/AccountMerge",produces="text/html;charset=UTF-8")
	//账户合并
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
}
