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
	  System.out.println("个人开户"+map.get("dkzt"));  
	  response.setContentType("text/html;charset=utf-8");
	   map.put("zhztbh",1);//1账户状态正常
	   //map.put("dkzt",0);//贷款状态
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
  @RequestMapping("/grjstz")
  public void grjstz(@RequestParam Map<String,Object> map,HttpServletResponse response) throws IOException{
	  response.setContentType("text/html;charset=utf-8");
	  System.out.println("基数调整"+map.get("foccId")+map.get("jsje"));
	  int i=ipsc.updateIperJstz(map);
	  PrintWriter out=response.getWriter();
		Message message=new Message(i,"操作成功!");
		ObjectMapper mapper=new ObjectMapper();
		String jsonStr=mapper.writeValueAsString(message);
		out.print(jsonStr);
  }
  @RequestMapping("/grPljstz")
  public void grPljstz(@RequestParam(value="personalAccount[]")String[] personalAccount,@RequestParam(value="personalDepositBase[]")String[] personalDepositBase,@RequestParam(value="unitMonPayAmount[]")String[] unitMonPayAmount,@RequestParam(value="monPayAmount[]")String[] monPayAmount,HttpServletResponse response) throws IOException{
	  response.setContentType("text/html;charset=utf-8");
	  List list=new ArrayList();
	  if(personalAccount.length>0&&personalDepositBase.length>0){
		  for(int i=0;i<personalAccount.length;i++){
			  int pl=ipsc.updatePlIperjstz(personalAccount[i], personalDepositBase[i],unitMonPayAmount[i],monPayAmount[i]);
		      list.add(pl);
		  }
		  
	  }
	  PrintWriter out=response.getWriter();
		Message message=new Message(list.size(),"操作成功!");
		ObjectMapper mapper=new ObjectMapper();
		String jsonStr=mapper.writeValueAsString(message);
		out.print(jsonStr);
  }
  @RequestMapping("/querybjmx")
  @ResponseBody
  public List<Map<String,Object>> querybjmx(@RequestParam Map<String,Object> map){
	  List<Map<String,Object>> list=ipsc.queryBjmx(map);
	return list;

  }
}
