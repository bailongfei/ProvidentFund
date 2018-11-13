package com.blf.serviceimpl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blf.service.bjqcbService;
import com.dao.BjqcbMapper;
import com.dao.IndividualpayMapper;
import com.dao.UnitsaccountMapper;
@Service
public class bjqcbServiceimpl implements bjqcbService {
@Autowired
private IndividualpayMapper Ip;
@Autowired
private BjqcbMapper bj;
@Autowired
private UnitsaccountMapper unfo;
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
		Map<String,Object> mp=new HashMap<String, Object>();
		mp.put("UnitInfoAccount",map.get("unitinfoaccount"));
		mp.put("UnitsBalance",map.get("bjssje"));
		int c=unfo.updateunfocc(mp);
		return c;
		
	}

}
