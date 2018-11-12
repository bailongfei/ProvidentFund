package com.zys.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Bjqcb;
import com.zys.service.BjqcbService;

@Controller
@RequestMapping("/bjqcb")
public class BjqcbControllerzys {
	@Autowired
	private BjqcbService service;
	@RequestMapping("/queryBjqcb")
	@ResponseBody
	public List<Bjqcb> queryBjqcb(){
		List<Bjqcb> list=service.queryBjqcb();
		return list;
	}

}
