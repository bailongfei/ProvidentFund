package com.zhl.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Peraccount;
import com.entity.Returnpay;
import com.entity.Unitinfo;
import com.zhl.pager.Pager;
import com.zhl.service.PeraccountService;
import com.zhl.service.ReturnpayService;

@Controller
@RequestMapping("/Peraccount")
public class PeraccountControllerzhl {
	@Autowired
	private PeraccountService service;
	@Autowired
	private ReturnpayService rpservice;
	//��½
	@ResponseBody
	@RequestMapping("/login")
	public String login(String peracid,String peracloginpw,HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("peracid", peracid);
		map.put("peracloginpw", peracloginpw);
		Peraccount pa=service.login(map);
		System.out.println(map);
		System.out.println(pa);
		if(pa!=null){
			session.setAttribute("Peraccount", pa);
			return "1";
		}else {
			return "0";
		}
	}
	//�˻��ϲ�
	@ResponseBody
	@RequestMapping(value="/AccountMerge",produces="text/html;charset=UTF-8")
	public String AccountMerge(String peracId1,String peracloginpw1,String peracId2,String peracloginpw2){
		Map<String, Object> account1=new HashMap<String, Object>();
		Map<String, Object> account2=new HashMap<String, Object>();
		account1.put("peracid", peracId1);
		account1.put("peracloginpw", peracloginpw1);
		account2.put("peracid", peracId2);
		account2.put("peracloginpw", peracloginpw2);
		service.AccountMerge(account1, account2);
		return "�˻��ϲ��ɹ�";
	}
	//��ҳ��ѯ�����˺���Ϣ
	@ResponseBody
	@RequestMapping("/findbyPager")
	public Pager findbyPager(@RequestParam Map<String, Object> map){
		Pager p=new Pager();
		p.setPageSize(2);//����ÿҳ����
		Pager pager=service.findbyPager(map, p);
		return pager;
	}
	//�޸��˺�״̬
	@ResponseBody
	@RequestMapping("/UpdateStates")
	public String UpdateStates(Integer zhztbh,Integer grzhbh){
		service.UpdateStates(zhztbh, grzhbh);
		return "1";
	}
	//���ݹ������˺Ų�ѯԱ��������λ��Ϣ
	@ResponseBody
	@RequestMapping("/findUnitName")
    public Map<String, Object> findUnitName(String peracId){
    	Map<String, Object> map=service.findUnitName(peracId);
    	return map;
    }
	//���ݴ����Ų�ѯ������Ϣ�͹�����Ϣ
	@ResponseBody
	@RequestMapping("/finddkInfo")
    public Map<String, Object> finddkInfo(Integer dkxxbh){
    	Map<String, Object> map=service.finddkInfo(dkxxbh);
    	return map;
    }
	@ResponseBody
	@RequestMapping("/queryUnitinfos")
	public List<Unitinfo> queryUnitinfos(){
		List<Unitinfo> list=service.queryUnitinfos();
		return list;
	}
	@ResponseBody
	@RequestMapping("/PeopleTransfer")
	public String PeopleTransfer(Peraccount account){
		service.PeopleTransfer(account);
		return "1";
	}
	@ResponseBody
	@RequestMapping("/findaccountinfo")
	public Pager findaccountinfo(@RequestParam Map<String, Object> map,HttpSession session){
				//��session��ȡ��ǰ��½��λ�˺ŵĵ�λid
		//Integer UnitInfoId=(Integer) session.getAttribute("UnitInfoId");
		map.put("UnitInfoId", 1);//����
		Pager p=new Pager();
		p.setPageSize(2);//����ÿҳ����
		Pager pager=service.findaccountinfo(map, p);
		return pager;
	}
	@ResponseBody
	@RequestMapping("/findbperacId")
	public List findbperacId(@RequestParam(value="peracIds[]")String[] peracIds){
		List list=new ArrayList();
		System.out.println(peracIds);
		if(peracIds.length>0){
			for (int i = 0; i < peracIds.length; i++) {
				Map<String, Object> map=service.findUnitName(peracIds[i]);
				list.add(map);
			}
		}
		return list;
	}
	//���
	@ResponseBody
	@RequestMapping("/returnpay")
	public String returnpay(@RequestParam Map<String, Object> map){
		String percount=(String) map.get("percount");
		Integer accountnum=Integer.valueOf(percount);//��ȡ����
		Date date=new Date();
		for(Integer i=0;i<accountnum;i++){//ѭ����map�õ�ֵ ���ŵ�ʵ�����н��б���
			Integer grzhbh= Integer.valueOf((String)map.get("grzhbh"+i.toString()));
			Long chje=Long.valueOf((String)map.get("chje"+i.toString()));
			Returnpay repay=new Returnpay();
			repay.setGrzhbh(grzhbh);
			repay.setChje(chje);
			repay.setChsj(date);//���ó��ʱ��
			rpservice.SaveReturnpay(repay);//��ӳ�ɼ�¼
			Peraccount account=service.findbyid(grzhbh);//���ݸ����˺�������ѯ�����˺���Ϣ
			account.setPeracbalance(account.getPeracbalance()+Integer.valueOf(chje.toString()));
			service.Updateinfo(account);//�ѳ�ɵ�Ǯ�ӵ������˻����
		}
		return "1";
	} 
	//�������֤�����ѯ���˼���λ��Ϣ
	@ResponseBody
	@RequestMapping("/findbyIdnumber")
	public Map<String, Object> findbyIdnumber(String IdNumber){
		List<Map<String, Object>> list=service.findbyIdnumber(IdNumber);
		return list.get(0);
	}
	@ResponseBody
	@RequestMapping("/findbyname")
	public Pager findbyname(@RequestParam Map<String, Object> map){
		Pager p=new Pager();
		p.setPageSize(2);//����ÿҳ����
		Pager pager=service.findbyname(map,p);
		return pager;
	}
}
