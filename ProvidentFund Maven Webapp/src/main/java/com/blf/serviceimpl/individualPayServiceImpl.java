package com.blf.serviceimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blf.service.individualPayService;
import com.dao.IndividualpayMapper;
import com.dao.PeraccountMapper;
import com.entity.Individualpay;
import com.entity.Peraccount;
@Service
public class individualPayServiceImpl implements individualPayService {
@Autowired
private IndividualpayMapper ipay;
@Autowired
private PeraccountMapper percc;
    
	/*@Override
	public int insertPercc(Map<String, Object> map) {
		int i=percc.insertPercc(map);
		Integer id=(Integer) map.get("grzhbh");
		ipay.insertIpayPer(map);
		
		System.out.println(id);
		return i;
	}
    
	@Override
	public int insertIparPer(Map<String, Object> map) {
		int i=ipay.insertIpayPer(map);
		return i;
	}*/
	
@Transactional
@Override
public int insertIparOrPerccOrUpdatePercc(Map<String, Object> map) {
	System.out.println(map.get("peraccountbalance"));
	percc.insertPercc(map);
	Integer id=(Integer) map.get("grzhbh");
	System.out.println("perccÖ÷¼ü"+id);
	ipay.insertIpayPer(map);
	Integer zhid=(Integer) map.get("grzhbhs");
	System.out.println(zhid);
	int t=percc.updatePercc(map);
	return t;
}
@Transactional
@Override
public int saveIparOrperccOrUpdatePercc(Peraccount pecc, Individualpay ip) {
	percc.savePercc(pecc);
	ipay.saveIpaer(ip);
	Map<String,Object> map=new HashMap<String,Object>();
	map.put("grzhbh",pecc.getGrzhbh());
	map.put("grzhbhs",ip.getGrzhbhs());
	int r=percc.updatePercc(map);
	return r;
}
@Override
public List<Map<String, Object>> queryIperss(String UnitInfoAccount, String bkname) {
	List<Map<String, Object>> list=ipay.queryIperRy(UnitInfoAccount, bkname);
	return list;
}
@Override
public Map<String, Object> queryCheckdata(String perId) {
	Map<String, Object> list=ipay.queryCheckdata(perId);
	return list;
}

}
