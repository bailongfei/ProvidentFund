package com.zys.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Xwfb;
import com.zys.service.XwfbService;


@Controller
//��ѯ����
@RequestMapping("/xwfb")
public class XwfbController {
		@Autowired
		private XwfbService service;
		@RequestMapping("/queryXwfb")
		@ResponseBody
		public List<Xwfb> queryXwfb(){
			List<Xwfb> list=service.queryXwfb();
			return list;
	}
		//��������
		 @RequestMapping("/insertXwfb")
		 @ResponseBody
		  public void insertXwfb(Xwfb xw,HttpServletResponse response) throws IOException{
			 response.setContentType("text/html;charset=utf-8");
			 PrintWriter out=response.getWriter();
			  int i=service.insertXwfb(xw);
			  System.out.println(xw);
			  if(i>0){
				  out.print("���ӳɹ���");
			  }else{
				  out.print("����ʧ�ܣ�");
			  }
		 }
		//�޸�����
		 @RequestMapping("/updateXwfb")
		 @ResponseBody
		  public void updateXwfb(Xwfb xw,HttpServletResponse response) throws IOException{
			 response.setContentType("text/html;charset=utf-8");
			 PrintWriter out=response.getWriter();
			  int i=service.updateXwfb(xw);
			  System.out.println(xw);
			  if(i>0){
				  out.print("�޸ĳɹ���");
			  }else{
				  out.print("�޸�ʧ�ܣ�");
			  }
		 }
		 //ɾ������
		 @RequestMapping("/deleteXwfb")
		 @ResponseBody
		 public void deleteXwfb(Xwfb xw,HttpServletResponse response) throws IOException{
			int i=service.deleteXwfb(xw.getXwbh());
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			if(i>0){
				 out.print("ɾ���ɹ�!");
			 }else{
				 out.print("ɾ��ʧ��!");
			 }
		 }
		 //����id��ѯ
		 @RequestMapping("/queryById")
		 @ResponseBody
		 public Xwfb queryById(Xwfb xw){
			 Xwfb tt=service.queryById(xw.getXwbh());
			return tt;
		 }
		//��ҳ��ѯ
		/* public String queryXwfb1(Pager pager,HttpServletRequest request)throws UnsupportedEncodingException{
		   //��װpage���󣬴��뷽���в�ѯ�б� ��������
			 Pager p=pager;
		    int pageSize=4;//����ÿҳ��С
		    p.setPageSize(pageSize);
		    int curPage=p.getCurPage();
			if(curPage==0){
		    	curPage=1;
		    	p.setCurPage(curPage);
		    }
		    int startlndex=pager.getStartIndex();
		    if(!(p.getCurPage()==0)){
		    	startlndex=getStartIndexBycurPage(curPage,pageSize);
		    }
			 return null;
		 }*/
}