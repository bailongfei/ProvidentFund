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
import org.springframework.web.bind.annotation.ResponseBody;

import com.blf.service.ReturnpayServices;
import com.blf.service.bjqcbService;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.util.Message;
import com.util.Pager;

@Controller
@RequestMapping("/bj")
public class bjqcbControllerblf {
@Autowired
private bjqcbService bjsc;
@Autowired
private ReturnpayServices rs;
@RequestMapping("/saveBjOrIper")	
public void saveBjOrIper(@RequestParam Map map,HttpServletResponse response) throws IOException{
	  System.out.println("����"+map.get("unitinfoaccount"));  
	    response.setContentType("text/html;charset=utf-8");
	    int i=bjsc.savebjqcbOrUpdateIper(map);//����
	    PrintWriter out=response.getWriter();
		Message message=new Message(i,"�����ɹ�!");
		ObjectMapper mapper=new ObjectMapper();
		String jsonStr=mapper.writeValueAsString(message);
		out.print(jsonStr);
  }

@RequestMapping("/findaccountinfo2")
@ResponseBody
public List<Map<String, Object>> findaccountinfo2(@RequestParam Map<String, Object> map){
	
	List<Map<String, Object>> list=rs.findaccountinfo2(map);
	return list;
}
@RequestMapping("/querydwbj")
@ResponseBody
public Pager queryHj(@RequestParam Map<String,Object> map){
	System.out.println(map.get("UnitInfoName"));
	Pager ps=new Pager();//��ҳ����
	ps.setCurPage(Integer.valueOf((String) map.get("pageNum")));/*��ǰҳ*/
	ps.setPageSize(4);/*//ÿҳ����*/
	//map.put("startIndex", (curPage-1)*pageSize);
	map.put("startIndex", ps.getStartIndex());//���ÿ�ʼ����
	map.put("pageSize", ps.getPageSize());//����ÿҳ����
	List<Map<String, Object>> list=bjsc.querydwBJqc(map);//�õ�ĳҳ�������
	//List<Map<String, Object>> list2=bjs.querydwBJqc(map);
	int i=bjsc.queryCountBjqcbdwmx(map);//��ȡʵ�ʵ�����
	//���õ�ǰҳ��Ӧ�����ݺ��ܵ�����
	ps.setTotalCount(i);
	ps.setList(list);
	System.out.println(list);
	return ps;
}

}
