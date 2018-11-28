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
	
@Transactional
@Override
public int insertIparOrPerccOrUpdatePercc(Map<String, Object> map) {
	System.out.println(map.get("peraccountbalance"));
	percc.insertPercc(map);
	Integer id=(Integer) map.get("grzhbh");
	System.out.println("percc����"+id);
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
	System.out.println("��������"+ip.getUnitratedeposit()+ip.getPercontributionrate());
	ipay.saveIpaer(ip);
	Map<String,Object> map=new HashMap<String,Object>();
	map.put("grzhbh",pecc.getGrzhbh());
	map.put("grzhbhs",ip.getGrzhbhs());
	map.put("perAccountBalance",0);
	map.put("unitRateDeposit",ip.getUnitratedeposit()*0.01);
	map.put("perContributionRate",ip.getPercontributionrate()*0.01);
	percc.updatePercc(map);
	int r=ipay.IperUpdates(map);
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
@Override
public int updateIperJstz(Map<String, Object> map) {
	int i=ipay.updateIperJstz(map);
	return i;
}
@Override
public int updatePlIperjstz(String personalAccount, String personalDepositBase,String unitMonPayAmount,String monPayAmount) {
	int i=ipay.UpdatePlperjstz(personalAccount, personalDepositBase,unitMonPayAmount,monPayAmount);
	return i;
}
@Override
public List<Map<String, Object>> queryBjmx(Map<String, Object> map) {
	List<Map<String, Object>> list=ipay.queryBjmx(map);
	return list;
}

}
