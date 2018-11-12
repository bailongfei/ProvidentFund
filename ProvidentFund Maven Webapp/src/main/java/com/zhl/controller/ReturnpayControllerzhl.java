package com.zhl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhl.pager.Pager;
import com.zhl.service.ReturnpayService;
@Controller
@RequestMapping("/Returnpayzhl")
public class ReturnpayControllerzhl {
	@Autowired
	private ReturnpayService service;
	//·ÖÒ³²éÑ¯³å½É¼ÇÂ¼
	@ResponseBody
	@RequestMapping("/findbyPager")
	public Pager findbyPager(String peracId,int curPage){
		Pager p=new Pager();
		p.setCurPage(curPage);
		p.setPageSize(2);
		Pager pager=service.findbyPager(peracId, p);
		return pager;
	}
}
