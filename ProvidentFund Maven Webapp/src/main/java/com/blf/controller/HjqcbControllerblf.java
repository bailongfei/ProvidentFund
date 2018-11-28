package com.blf.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blf.service.HjqcbService;
import com.blf.service.bjqcbService;
import com.entity.Hjqcb;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.util.Message;
import com.util.Pager;

@Controller
@RequestMapping("/hjqcb")
public class HjqcbControllerblf{
	@Autowired
	private HjqcbService hs;
	@Autowired
	private bjqcbService bjs;
 @RequestMapping("/queryHjqcb")
 @ResponseBody
 public List<Map<String,Object>> queryHjqcb(Integer unitinfoaccount){
	 List<Map<String,Object>> list=hs.queryHjceb(unitinfoaccount);
	 //System.out.println(list.get(0));
	return list;
 }
 @RequestMapping("/selectSum")
 @ResponseBody
 public int querySum(Integer unitinfoaccount){
	 int i=hs.selectSum(unitinfoaccount);
	return i;
 }
 @RequestMapping("/selectBGjce")
 @ResponseBody
 public List<Map<String, Object>> selectBGjce(Integer unitinfoaccount){
	 List<Map<String, Object>> list2=hs.selectBGjce(unitinfoaccount);
	return list2;
 }
 @RequestMapping("/queryUser")
 @ResponseBody
 public List<Map<String, Object>> queryUser(){
	 List<Map<String, Object>> list=hs.queryUser();
	return list;
 }
@RequestMapping("/saveHjqcb")
 public void saveHjqcb(Hjqcb hq,HttpServletResponse response) throws IOException{
	System.out.println(hq.getUnitinfoaccount()+"��ɲ���"+hq.getNhyf());
	response.setContentType("text/html;charset=utf-8");
	int i=hs.insertHjqcbOrUpdateIparOrqueryIperOrsavepercc(hq);
	PrintWriter out=response.getWriter();
	Message message=new Message(i,"�����ɹ�!");//״̬��
	ObjectMapper mapper=new ObjectMapper();
	String jsonStr=mapper.writeValueAsString(message);
	out.print(jsonStr);
 }
/*@RequestMapping("/queryHj")
@ResponseBody
public Pager queryHj(String UnitInfoName,@RequestParam(required = false, defaultValue = "1") Integer pageNum){
	System.out.println(UnitInfoName);
	Pager p=new Pager();//��ҳ����
	p.setCurPage(pageNum);��ǰҳ
	p.setPageSize(4);//ÿҳ����
	Map<String,Object> map=new HashMap<String, Object>();
	//map.put("startIndex", (curPage-1)*pageSize);
	map.put("startIndex", p.getStartIndex());//���ÿ�ʼ����
	map.put("pageSize", p.getPageSize());//����ÿҳ����
	map.put("unfoName", UnitInfoName);
	List<Map<String, Object>> list=hs.queryHj(map);//�õ�ĳҳ�������
	int i=hs.getCount(map);//��ȡʵ�ʵ�����
	//���õ�ǰҳ��Ӧ�����ݺ��ܵ�����
	p.setTotalCount(i);
	p.setList(list);
	System.out.println(list);
	return p;
}*/
@RequestMapping("/queryHj")
@ResponseBody
public Pager queryHj(@RequestParam Map<String,Object> map){
	System.out.println(map.get("UnitInfoName"));
	Pager p=new Pager();//��ҳ����
	p.setCurPage(Integer.valueOf((String) map.get("pageNum")));/*��ǰҳ*/
	p.setPageSize(4);/*//ÿҳ����*/
	//map.put("startIndex", (curPage-1)*pageSize);
	map.put("startIndex", p.getStartIndex());//���ÿ�ʼ����
	map.put("pageSize", p.getPageSize());//����ÿҳ����
	List<Map<String, Object>> list=hs.queryHj(map);//�õ�ĳҳ�������
	//List<Map<String, Object>> list2=bjs.querydwBJqc(map);
	int i=hs.getCount(map);//��ȡʵ�ʵ�����
	//���õ�ǰҳ��Ӧ�����ݺ��ܵ�����
	p.setTotalCount(i);
	p.setList(list);
	System.out.println(list);
	return p;
}
@RequestMapping("/queryUcbOrUf")
@ResponseBody
public List<Map<String, Object>> queryUcbOrUf(Integer unitinfoaccount){
	List<Map<String, Object>> list=hs.queryUcOrUf(unitinfoaccount);
	return list;
}
@RequestMapping("/selectHjmx")
@ResponseBody
public Pager selectHjmx(@RequestParam Map<String,Object> map){
	System.out.println("������"+map.get("UnitInfoAccount"));
	Pager p=new Pager();//��ҳ����
	p.setCurPage(Integer.valueOf((String) map.get("pageNum")));/*��ǰҳ*/
	System.out.println("��ǰҳ"+p.getCurPage());
	p.setPageSize(4);/*//ÿҳ����*/
	//Map<String,Object> maps=new HashMap<String, Object>();
	//map.put("startIndex", (curPage-1)*pageSize);
	map.put("startIndex", p.getStartIndex());//���ÿ�ʼ����
	map.put("pageSize", p.getPageSize());//����ÿҳ����
	List<Map<String,Object>> m=hs.queryPeraccs(map);
	p.setList(m);
	int i=hs.queryCountPeracc(map);
	p.setTotalCount(i);
	return p;
}
}
