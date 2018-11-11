package com.blf.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.blf.service.bjqcbService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.util.Message;
@Controller
@RequestMapping("/bj")
public class bjqcbController {
@Autowired
private bjqcbService bjsc;
@RequestMapping("/saveBjOrIper")	
public void saveBjOrIper(@RequestParam Map map,HttpServletResponse response) throws IOException{
	  System.out.println("²¹½É"+map.get("unitinfoaccount"));  
	    response.setContentType("text/html;charset=utf-8");
	    int i=bjsc.savebjqcbOrUpdateIper(map);//²¹½É
	    PrintWriter out=response.getWriter();
		Message message=new Message(i,"²Ù×÷³É¹¦!");
		ObjectMapper mapper=new ObjectMapper();
		String jsonStr=mapper.writeValueAsString(message);
		out.print(jsonStr);
  }

}
