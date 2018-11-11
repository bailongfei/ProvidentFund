package com.jym.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Gshylx;
import com.entity.Gslxb;
import com.entity.Jjlxb;
import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.entity.Unitsaccount;
import com.jym.services.PeraccountServices;

/*@SessionAttributes(value={"list"})//查找model map中的相同key值对应的数据存入session中
*/
@Controller
@RequestMapping("/Peraccount")
public class PeraccountControllerjym {
	@Autowired
	private PeraccountServices ser;
	@RequestMapping("/save")
	public @ResponseBody  int save(Peraccount p,Unitinfo u){
		System.out.println(p.toString());
		System.out.println(u.toString());
		return ser.insert(p,u);
		
	}
	@RequestMapping("/insertUnitinfo1")
	public @ResponseBody  int insertUnitinfo1(Unitinfo u){
		
		System.out.println(u.toString());
		return ser.insertUnitinfo1(u);
		
	}
	
	@RequestMapping("/insertUnitsaccount")
	public @ResponseBody  int insertUnitsaccount(Unitsaccount n){
		
		System.out.println(n.toString());
		return ser.insertUnitsaccount(n);
		
	}
	@RequestMapping("/updateUnitinfo")
	public @ResponseBody  int updateUnitinfo(Unitinfo u){
		System.out.println(u.getUnitinfoid());
		System.out.println(u.toString());
		return ser.updateUnitinfo(u);
		
	}
	
	@RequestMapping("/selectPeraccount")
	public @ResponseBody  Map selectPeraccount(Peraccount p,HttpSession se){
		
		System.out.println("5555");
		Map map=ser.selectPeraccount(p);
		System.out.println(map);
		if(map!=null){
			 se.setAttribute("user",map);
			 System.out.println(se.getAttribute("user"));
			return map;
		}
		Map map1=new HashMap();
		map1.put("bkname", 0);
		return map1;
		
	}
	@RequestMapping("/selectPeraccount1")
	public @ResponseBody  Map selectPeraccount1(HttpSession se){
		Map map=(Map) se.getAttribute("user");
		System.out.println(map);
		return map;
		
	}
	@RequestMapping("/selectUnitinfot")
	public @ResponseBody  Map selectUnitinfot(Unitinfo u){
		Map map=ser.selectUnitinfot(u);
		System.out.println(map);
		return map;
		
	}
	@RequestMapping("/selectGshylx")
	public @ResponseBody  List selectGshylx(Gshylx g){
		List list=ser.selectGshylx(g);
		System.out.println(list);
		return  list;
		
	}
	@RequestMapping("/selectGslxb")
	public @ResponseBody  List selectGslxb(Gslxb s){
		List list=ser.selectGslxb(s);
		System.out.println(list);
		return  list;
		
	}
	@RequestMapping("/selectJjlxb")
	public @ResponseBody  List selectJjlxb(Jjlxb j){
		List list=ser.selectJjlxb(j);
		System.out.println(list);
		return  list;
		
	}
}
