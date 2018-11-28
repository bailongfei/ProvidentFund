package com.blf.serviceimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blf.service.bjqcbService;
import com.dao.BjqcbMapper;
import com.dao.IndividualpayMapper;
import com.dao.PerbusinessMapper;
import com.dao.ReturnpayMapper;
import com.dao.UnitsaccountMapper;
@Service
public class bjqcbServiceimpl implements bjqcbService {
@Autowired
private IndividualpayMapper Ip;
@Autowired
private BjqcbMapper bj;
@Autowired
private UnitsaccountMapper unfo;
@Autowired
private PerbusinessMapper perss;
@Transactional
	@Override
	public int savebjqcbOrUpdateIper(Map<String, Object> map) {
	     System.out.println("²¹½É"+map.get("bjrs"));
		String peraccId=(String) map.get("bjrs");
		Integer in=Integer.valueOf(peraccId);
		System.out.println("²¹½É¸öÊý"+in);
		for(Integer i=0;i<in;i++){
			String personalaccount=(String) map.get("personalaccount"+i.toString());
			String grjczes=(String) map.get("grjczes"+i.toString());
			
            int ip=Ip.BujiaoUpdateIper(personalaccount, grjczes);
            
		}
		bj.saveBujiao(map);
		for(Integer j=0;j<in;j++){
			Map<String,Object> map1=new HashMap<String,Object>();
			Integer grzhbhs=Integer.valueOf((String) map.get("grzhbhs"+j.toString()));
			String bjjzrq=(String) map.get("bjjzrq");
			String perbuLimit=(String) map.get("grjczes"+j.toString());
			Integer unitAdvancep=Integer.valueOf((String) map.get("dwjn"+j.toString()));
			Integer personAdvancep=Integer.valueOf((String) map.get("grjn"+j.toString()));
			String grpersonIds=(String) map.get("personalaccount"+j.toString());
			
			map1.put("grzhbhs",grzhbhs);
			map1.put("grperbutime",bjjzrq);
			map1.put("grperbutype","²¹½É");
			map1.put("perbulimit",perbuLimit);
			map1.put("unitadvancep",unitAdvancep);
			map1.put("personadvancep",personAdvancep);
			map1.put("grpersonids",grpersonIds);
			int ips=perss.savePeress(map1);
		}
		Map<String,Object> mp=new HashMap<String, Object>();
		mp.put("UnitInfoAccount",map.get("unitinfoaccount"));
		mp.put("UnitsBalance",map.get("bjssje"));
		int c=unfo.updateunfocc(mp);
		return c;
		
	}
@Override
public List<Map<String, Object>> querydwBJqc(Map<String, Object> map) {
	List<Map<String, Object>> m=bj.queryBjqcbdwmx(map);
	return m;
}
@Override
public int queryCountBjqcbdwmx(Map<String, Object> map) {
	int l=bj.queryCountBjqcbdwmx(map);
	return l;
}

}
