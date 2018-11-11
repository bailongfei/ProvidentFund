package com.zhl.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.aspectj.weaver.ast.Var;
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
public class PeraccountController {
	@Autowired
	private PeraccountService service;
	@Autowired
	private ReturnpayService rpservice;
	//登陆
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
	//账户合并
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
		return "账户合并成功";
	}
	//分页查询所有账号信息
	@ResponseBody
	@RequestMapping("/findbyPager")
	public Pager findbyPager(@RequestParam Map<String, Object> map){
		Pager p=new Pager();
		p.setPageSize(2);//设置每页条数
		Pager pager=service.findbyPager(map, p);
		return pager;
	}
	//修改账号状态
	@ResponseBody
	@RequestMapping("/UpdateStates")
	public String UpdateStates(Integer zhztbh,Integer grzhbh){
		service.UpdateStates(zhztbh, grzhbh);
		return "1";
	}
	//根据公积金账号查询员工所属单位信息
	@ResponseBody
	@RequestMapping("/findUnitName")
    public Map<String, Object> findUnitName(String peracId){
    	Map<String, Object> map=service.findUnitName(peracId);
    	return map;
    }
	//根据贷款编号查询贷款信息和购房信息
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
				//从session获取当前登陆单位账号的单位id
		//Integer UnitInfoId=(Integer) session.getAttribute("UnitInfoId");
		map.put("UnitInfoId", 1);//待改
		Pager p=new Pager();
		p.setPageSize(2);//设置每页条数
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
	//冲缴
	@ResponseBody
	@RequestMapping("/returnpay")
	public String returnpay(@RequestParam Map<String, Object> map){
		String percount=(String) map.get("percount");
		Integer accountnum=Integer.valueOf(percount);//获取数量
		Date date=new Date();
		for(Integer i=0;i<accountnum;i++){//循环从map拿到值 并放到实体类中进行保存
			Integer grzhbh= Integer.valueOf((String)map.get("grzhbh"+i.toString()));
			Long chje=Long.valueOf((String)map.get("chje"+i.toString()));
			Returnpay repay=new Returnpay();
			repay.setGrzhbh(grzhbh);
			repay.setChje(chje);
			repay.setChsj(date);//设置冲缴时间
			rpservice.SaveReturnpay(repay);//添加冲缴记录
			Peraccount account=service.findbyid(grzhbh);//根据个人账号主键查询个人账号信息
			account.setPeracbalance(account.getPeracbalance()+Integer.valueOf(chje.toString()));
			service.Updateinfo(account);//把冲缴的钱加到个人账户余额
		}
		return "1";
	} 
	//根据身份证号码查询个人及单位信息
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
		p.setPageSize(2);//设置每页条数
		Pager pager=service.findbyname(map,p);
		return pager;
	}
}
