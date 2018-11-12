package com.jym.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Gshylx;
import com.entity.Gslxb;
import com.entity.Jjlxb;
import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.entity.Unitsaccount;
import com.jym.services.PeraccountServices;
import com.util.Pager;

/*@SessionAttributes(value={"list"})//查找model map中的相同key值对应的数据存入session中
*/
@Controller
@RequestMapping("/Peraccount")
public class PeraccountController {
	@Autowired
	private PeraccountServices ser;
	@RequestMapping("/save")
	public @ResponseBody  int save(Peraccount p,Unitinfo u){
		System.out.println(p.toString());
		System.out.println(u.toString());
		return ser.insert(p,u);
		
	}
	@RequestMapping("/updateUnitsaccount")
	public @ResponseBody  int updateUnitsaccount(Unitsaccount record,Unitinfo record1){
		
		ser.updateUnitsaccount(record,record1);
		return 0;
		
	}
	@RequestMapping("/updateUnitsaccount1")
	public @ResponseBody  int updateUnitsaccount1(Unitsaccount a){
		System.out.println(a.toString());
		
		return ser.updateUnitsaccount1(a);
		
	}
	@RequestMapping("/insertUnitinfo1")
	public @ResponseBody  int insertUnitinfo1(Unitinfo u){
		
		System.out.println(u.toString());
		return ser.insertUnitinfo1(u);
		
	}
	@RequestMapping("/insertUnitinfo2")
	public @ResponseBody  int insertUnitinfo2(Unitinfo u){
		
		System.out.println(u.toString());
		
		return ser.insertUnitinfo2(u);
		
	}
	@RequestMapping("/insertUnitsaccount")
	public @ResponseBody  int insertUnitsaccount(Unitsaccount n){
		
		System.out.println(n.toString());
		return ser.insertUnitsaccount(n);
		
	}
	@RequestMapping("/insertUnitsaccount1")
	public @ResponseBody  int insertUnitsaccount1(Unitsaccount n){
		
		System.out.println(n.toString());
		return ser.insertUnitsaccount1(n);
		
	}
	@RequestMapping("/updateUnitinfo")
	public @ResponseBody  int updateUnitinfo(Unitinfo f){
		System.out.println(f.getUnitinfoid());
		System.out.println(f.toString());
		return ser.updateUnitinfo(f);
		
	}
	//存
	@RequestMapping("/selectPeraccount")
	public @ResponseBody  Map selectPeraccount(Peraccount p,HttpSession se){
		
		
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
	//取
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
	@RequestMapping("/selectUnitsaccountid")
	public @ResponseBody  Map selectUnitsaccountid(int UnitInfoId){
		Map map=ser.selectUnitsaccountid(UnitInfoId);
		System.out.println(UnitInfoId);
		System.out.println(map);
		return map;
		
	}
	@RequestMapping("/selectUnitsaccount")
	public @ResponseBody  List selectUnitsaccount(Unitsaccount n){
		List list=ser.selectUnitsaccount(n);
		System.out.println(list);
		return  list;
		
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
	@RequestMapping("/queryPageUnfo")
	@ResponseBody
	 public Pager queryPageUnfo(String UnitsName,@RequestParam(required = false, defaultValue = "1") Integer pageNum){
		System.out.println(UnitsName+"汇缴"+pageNum);  
		Pager p=new Pager();//分页对象
			p.setCurPage(pageNum);/*当前页*/
			p.setPageSize(3);/*//每页条数*/
			Map<String,Object> map=new HashMap<String,Object>();
			//map.put("startIndex", (curPage-1)*pageSize);
			map.put("startIndex", p.getStartIndex());//设置开始索引
			map.put("pageSize", p.getPageSize());//设置每页条数
			map.put("UnitsName", UnitsName);
			List<Map<String, Object>> list=ser.queryPageUnfo(map);
			int i=ser.getPageCount(map);
			p.setList(list);
			p.setTotalCount(i);
		return p;
		 
	 }
	
	@RequestMapping("/deleteUnitsaccount")
	public @ResponseBody  int deleteUnitsaccount(Unitsaccount s,Unitinfo o){
	System.out.println(s.toString());
		return  ser.deleteUnitsaccount(s, o);
		
	}
	@RequestMapping("/selectunitinfocredit")
	public @ResponseBody int selectunitinfocredit(String unitinfocredit) {
		System.out.println(unitinfocredit);
		return ser.selectunitinfocredit(unitinfocredit);
		// TODO Auto-generated method stub
	
	}
	//销户 更改单位状态
	@RequestMapping("/updateUaccount")
	public @ResponseBody String updateUaccount(Integer unitinfoid) {
		Unitsaccount  unitsaccount2=new Unitsaccount();
		unitsaccount2.setUnitinfoid(unitinfoid);
		unitsaccount2.setUnitesstate("已销户");
		
		ser.updateUaccount(unitsaccount2);
		return "1";
		// TODO Auto-generated method stub
	
	}
	//封存 更改单位状态
		@RequestMapping("/updateUaccount1")
		public @ResponseBody String updateUaccount1(Integer unitinfoid) {
			Unitsaccount  unitsaccount3=new Unitsaccount();
			unitsaccount3.setUnitinfoid(unitinfoid);
			unitsaccount3.setUnitesstate("封存");
			
			ser.updateUaccount(unitsaccount3);
			return "2";
			// TODO Auto-generated method stub
		
		}

}
