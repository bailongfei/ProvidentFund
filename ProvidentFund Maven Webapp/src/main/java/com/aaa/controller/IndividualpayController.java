package com.aaa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.entity.Bjqcb;
import com.aaa.entity.Individualpay;
import com.aaa.service.BjqcbService;
import com.aaa.service.IndividualpayService;

@Controller
@RequestMapping("/Individualpay")
public class IndividualpayController {
	@Autowired
	private IndividualpayService service;
	@RequestMapping("/queryIndividualpay")
	@ResponseBody
	public List<Individualpay> queryIndividualpay(){
		List<Individualpay> list=service.queryIndividualpay();
		return list;
	}
}
