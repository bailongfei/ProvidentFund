package com.zys.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Individualpay;
import com.zys.service.IndividualpayService;

@Controller
@RequestMapping("/Individualpay")
public class IndividualpayControllerzys {
	@Autowired
	private IndividualpayService service;
	@RequestMapping("/queryIndividualpay")
	@ResponseBody
	public List<Individualpay> queryIndividualpay(){
		List<Individualpay> list=service.queryIndividualpay();
		return list;
	}
}
