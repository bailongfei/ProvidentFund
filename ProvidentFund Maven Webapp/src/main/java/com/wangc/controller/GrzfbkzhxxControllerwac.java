package com.wangc.controller;

import static org.hamcrest.CoreMatchers.nullValue;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.Date;
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
import com.entity.Repayplan;
import com.wangc.Pager.Pager;
import com.wangc.service.GrzfbkzhxxService;
import com.wangc.service.RepaylanService;


@Controller
@RequestMapping("/Grzfbk")
public class GrzfbkzhxxControllerwac {
@Autowired
	private RepaylanService rs;
	@Autowired
			private GrzfbkzhxxService gf;
	//��ѯ����״̬Ϊo
	@RequestMapping("/Grzquery")
	@ResponseBody
	public List<Map<String, Object>> quee(){
		List<Map<String, Object>> list=gf.Grzfquery();
		System.out.println(list);
		return list;
	}
	//��ѯ����״̬Ϊ1����
	@RequestMapping("/Grzquerytwo")
	@ResponseBody
	public List<Map<String, Object>> queet(){
			List<Map<String, Object>> list1=gf.Grzfquerytwo();
			return list1;
		
	}
	//��ѯ����״̬Ϊo
	@ResponseBody
	@RequestMapping("/updatestatic")
	public void update(int dkbh){
			gf.updatestatic(dkbh);
	}
	
	 @RequestMapping("/queryGrzg")
	 @ResponseBody
	 public Map<String, Object> queryById(int dkbh){
		 List<Map<String, Object>> tt=gf.queryGrzgId(dkbh);
		 Map<String, Object> map=new HashMap<String, Object>();
         DecimalFormat df = new DecimalFormat("#.0");
		 map=tt.get(0);
		 //�ȶ�𻹿�
		 Double dkffe=(Double) map.get("dkffe");//�����ܽ��
		 Double grdkqs=(Double) map.get("grdkqs");//��������
		 Double zxll=(Double) map.get("zxll");//����
		 Double hsbjze=(Double) map.get("hsbjze");//�ѻ�����
		 Double grdqjhghbj=dkffe/grdkqs;//Ӧ������
		 Double dqjhghlxs=(dkffe-hsbjze)*zxll;//Ӧ����Ϣ
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
		 DecimalFormat df = new DecimalFormat("#.0");
		 Date date=new Date();
		 response.setContentType("text/html;charset=utf-8");
		 PrintWriter out=response.getWriter();
		 Double dksyqs=Double.parseDouble((String) map.get("dksyqs"));//ʣ������
		 dksyqs=dksyqs-1;
		 if(dksyqs<1){
			 map.put("sfzx", "1");
		 }
		 Integer dkbh=Integer.valueOf((String) map.get("dkbh"));
		 Double dkffe=Double.parseDouble((String) map.get("dkffe")) ;
		 Double zxll=Double.parseDouble((String) map.get("zxll"));
		 Double grdkqs=Double.parseDouble((String) map.get("grdkqs"));
		 Double dqjhhkje=Double.parseDouble((String) map.get("dqjhhkje"));
		 Double grdqjhghbj=Double.parseDouble((String) map.get("grdqjhghbj"));
		 Double dqjhghlxs=Double.parseDouble((String) map.get("dqjhghlxs"));
		 Double hsbjze=Double.parseDouble((String) map.get("hsbjze"));//�ѻ����
		 //�����ܽ�� = �����ܽ��+��ǰ�����	
		 hsbjze=hsbjze+grdqjhghbj;
		 hsbjze=Double.parseDouble(df.format(hsbjze));
		 map.put("dkffe", dkffe);
		 map.put("zxll", zxll);
		 map.put("grdkqs", grdkqs);
		 map.put("dqjhhkje", dqjhhkje);
		 map.put("grdqjhghbj", grdqjhghbj);
		 map.put("dqjhghlxs", dqjhghlxs);
		 map.put("dkbh", dkbh);
		 map.put("dksyqs", dksyqs);
		 map.put("hsbjze", hsbjze);
		 //ʵ����
		 Repayplan repayplan=new Repayplan();
		 repayplan.setDkbh(dkbh);
		 repayplan.setHkrq(date);
		 repayplan.setYhbj(grdqjhghbj.intValue());
		 repayplan.setYhlx(dqjhghlxs.intValue());
		 repayplan.setYqztzs("1");
		 int qic=grdkqs.intValue()-dksyqs.intValue();
		 repayplan.setQic(qic);
		 System.out.println(map);
		 int i=gf.updateGrzfb(map);
		 gf.Saverepayplan(repayplan);
		 if(i>0){
			 out.print("����ɹ�!");//��ǰ̨��ӡtext�ı���ʽ
		 }else{
			 out.print("���ʧ��!");
		 }
	 }
	//��ѯ������ϸ
	@RequestMapping("/Repayid")
	@ResponseBody
	 public List<Map<String, Object>> queryDyhtxx(int dkbh){
		System.out.println(dkbh);
		 List<Map<String, Object>> list1=rs.queryDyhtxx(dkbh);
		 System.out.println(list1);
		return list1;
	 }
	//��ҳ
	@RequestMapping("/findByIdGrzfb")
	@ResponseBody
	public Pager findbygrzfbk(@RequestParam(required =false,defaultValue="1") Integer pageNum,String name){
		Pager p=new Pager();
		p.setCurPage(pageNum);//��ǰҳ;
		p.setPageSize(2);//ÿҳ����
		Map<String, Object>  grzfbk=new HashMap<String, Object>();
		grzfbk.put("bkname", name);
		Pager pager=gf.findbygrzfbk(grzfbk, p);
		return pager;
		
	}
}
