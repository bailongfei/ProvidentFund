package com.zhl.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Accumulation;
import com.entity.Gjjtqyyb;
import com.zhl.service.AccumulationService;
@RequestMapping("/Accumulationzhl")
@Controller
public class AccumulationControllerzhl {
	@Autowired
	private AccumulationService service;
	//��ӹ�������ȡ����
	@ResponseBody
	@RequestMapping("/ApplyAccumulation")
	public String ApplyAccumulation(Accumulation accumulation){
		Date date=new Date();
		accumulation.setSqsj(date);
		accumulation.setGrapprovalstatuss("�����");
		service.SaveAccmulation(accumulation);
		String message="�������ύ ��ȴ���ˣ�";
		return message;
	}
	@ResponseBody
	@RequestMapping("/findtqyy")
	public List<Gjjtqyyb> findtqyy(){
		List<Gjjtqyyb> list=service.findtqyy();
		return list;
	}
	@RequestMapping("/findbyperaccount")
	public String findbyperaccount(String peracId,Map map){
		peracId="15812345678";
		List<Map<String, Object>> list=service.findbyperaccount(peracId);
		map.put("list", list);
		return "FindApplicationbyperacId";
	}
}
