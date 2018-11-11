package com.blf.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.blf.service.individualPayService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.util.Message;

@Controller
@RequestMapping("/ipay")
@SessionAttributes(value={"s","ss"})
public class individualPayControllerblf {
	@Autowired
	private individualPayService ipsc;
  @RequestMapping("/saveIpayPer")
  public void queryIpayPer(@RequestParam Map map,HttpServletResponse response) throws IOException{
	  System.out.println(map.get("unitratedeposit"));  
	  response.setContentType("text/html;charset=utf-8");
	   map.put("zhztbh",1);//1账户状态正常
	   map.put("openaccountstatus",1);
	   //map.put("peraccountbalance",0);//开户账额
		/*int t=ipsc.insertPercc(map);
		int i=ipsc.insertIparPer(map);*/
	    int i=ipsc.insertIparOrPerccOrUpdatePercc(map);
		PrintWriter out=response.getWriter();
		Message message=new Message(i,"操作成功!");
		ObjectMapper mapper=new ObjectMapper();
		String jsonStr=mapper.writeValueAsString(message);
		out.print(jsonStr);
  }
  @RequestMapping("/queryIpery")
  @ResponseBody
  public List<Map<String,Object>> queryIper(String UnitInfoAccount,String bkname){
	  System.out.println(UnitInfoAccount+"补缴"+bkname);
	  List<Map<String, Object>> list=ipsc.queryIperss(UnitInfoAccount, bkname);
	  System.out.println(list);
	  return list; 
  }
  @RequestMapping("/querycheckData")
  @ResponseBody
  public List querycheckData(@RequestParam(value="checkData[]")String[] checkData){
	  List list=new ArrayList();
	  System.out.println("补缴参数"+checkData);
	  if(checkData.length>0){
		  for(int i=0;i<checkData.length;i++){
			  Map<String, Object> list2=ipsc.queryCheckdata(checkData[i]);
		      list.add(list2);
		  }
	  }
	  System.out.println(list);
	return list;
  }
}
