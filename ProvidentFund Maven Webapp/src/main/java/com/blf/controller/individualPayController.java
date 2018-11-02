package com.blf.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blf.service.individualPayService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.util.Message;

@Controller
@RequestMapping("/ipay")
public class individualPayController {
	@Autowired
	private individualPayService ipsc;
  @RequestMapping("/saveIpayPer")
  public void queryIpayPer(@RequestParam Map map,HttpServletResponse response) throws IOException{
	  System.out.println(map);  
	  response.setContentType("text/html;charset=utf-8");
	   map.put("zhztbh",1);//1账户状态正常
	   map.put("openaccountstatus", 1);
		/*int t=ipsc.insertPercc(map);
		int i=ipsc.insertIparPer(map);*/
	    int i=ipsc.insertIparOrPercc(map);
		PrintWriter out=response.getWriter();
		Message message=new Message(i,"操作成功!");
		ObjectMapper mapper=new ObjectMapper();
		String jsonStr=mapper.writeValueAsString(message);
		out.print(jsonStr);
  }
}
