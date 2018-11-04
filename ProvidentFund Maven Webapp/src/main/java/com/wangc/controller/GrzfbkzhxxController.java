package com.wangc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Grzfbkzhxx;
import com.entity.Loaninfo;
import com.wangc.service.GrzfbkzhxxService;


@Controller
@RequestMapping("/Grzfbk")
public class GrzfbkzhxxController {

	@Autowired
			private GrzfbkzhxxService gf;
	
	@RequestMapping("/Grzquery")
	@ResponseBody
	public List<Map<String, Object>> quee(){
		List<Map<String, Object>> list=gf.Grzfquery();
		System.out.println(list);
		return list;
	}
	 @RequestMapping("/queryGrzg")
	 @ResponseBody
	 public Map<String, Object> queryById(int dkbh){
		 List<Map<String, Object>> tt=gf.queryGrzgId(dkbh);
		 Map<String, Object> map=new HashMap<String, Object>();
         DecimalFormat df = new DecimalFormat("#.0");
		 map=tt.get(0);
		 Double dkffe=(Double) map.get("dkffe");//�����ܽ��
		 Double grdkqs=(Double) map.get("grdkqs");//��������
		 Double zxll=(Double) map.get("zxll");//����
		 Double grdqjhghbj=dkffe/grdkqs;//Ӧ������
		 Double dqjhghlxs=grdqjhghbj*zxll;//Ӧ����Ϣ
		 Double dqjhhkje=grdqjhghbj+dqjhghlxs;//Ӧ���ܽ��
		 map.put("grdqjhghbj", df.format(grdqjhghbj));
		 map.put("dqjhghlxs", df.format(dqjhghlxs));
		 map.put("dqjhhkje", df.format(dqjhhkje));
		 return map;
	 }
	//������Ϣ
	@RequestMapping("/updatee")
	@ResponseBody
	 public void Grzfb(@RequestParam Map<String, Object> map,HttpServletResponse response) throws IOException {
		 response.setContentType("text/html;charset=utf-8");
		 PrintWriter out=response.getWriter();
		 Integer dkbh=Integer.valueOf((String) map.get("dkbh"));
		 Double dkffe=Double.parseDouble((String) map.get("dkffe")) ;
		 Double zxll=Double.parseDouble((String) map.get("zxll"));
		 Double grdkqs=Double.parseDouble((String) map.get("grdkqs"));
		 Double dqjhhkje=Double.parseDouble((String) map.get("dqjhhkje"));
		 Double grdqjhghbj=Double.parseDouble((String) map.get("grdqjhghbj"));
		 Double dqjhghlxs=Double.parseDouble((String) map.get("dqjhghlxs"));
		 map.put("dkffe", dkffe);
		 map.put("zxll", zxll);
		 map.put("grdkqs", grdkqs);
		 map.put("dqjhhkje", dqjhhkje);
		 map.put("grdqjhghbj", grdqjhghbj);
		 map.put("dqjhghlxs", dqjhghlxs);
		 map.put("dkbh", dkbh);
		 System.out.println(map);
		 int i=gf.updateGrzfb(map);
		 if(i>0){
			 out.print("����ɹ�!");//��ǰ̨��ӡtext�ı���ʽ
		 }else{
			 out.print("���ʧ��!");
		 }
		
	 }
}
