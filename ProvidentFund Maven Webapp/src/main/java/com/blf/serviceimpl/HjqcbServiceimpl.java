package com.blf.serviceimpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blf.service.HjqcbService;
import com.dao.HjqcbMapper;
import com.dao.IndividualpayMapper;
import com.dao.PerbusinessMapper;
import com.dao.Sys_userMapper;
import com.dao.UnitsaccountMapper;
import com.entity.Hjqcb;
import com.entity.Individualpay;
import com.entity.Perbusiness;
@Service
public class HjqcbServiceimpl implements HjqcbService {
  @Autowired
  private HjqcbMapper dao;
  @Autowired
  private IndividualpayMapper daoin;
  @Autowired
  private Sys_userMapper userdao;
  @Autowired
  private PerbusinessMapper perssDao;
  @Autowired
  private UnitsaccountMapper unfocc;
	@Override
	public List<Map<String,Object>> queryHjceb(Integer unitinfoaccount) {
		List<Map<String,Object>> list=dao.queryHjceb(unitinfoaccount);
		return list;
	}
	@Override
	public int selectSum(Integer unitinfoaccount) {
		int i=daoin.selectSum(unitinfoaccount);
		return i;
	}
	@Override
	public List<Map<String, Object>> selectBGjce(Integer unitinfoaccount) {
		List<Map<String, Object>> list=daoin.selectBGjce(unitinfoaccount);
		return list;
	}
	@Override
	public List<Map<String, Object>> queryUser() {
		List<Map<String, Object>> list=userdao.queryUserss();
		return list;
	}
	@Transactional
	@Override
	public int insertHjqcbOrUpdateIparOrqueryIperOrsavepercc(Hjqcb record) {
		dao.insert(record);
		daoin.updateIpar(record);
		List<Individualpay> list=daoin.queryIpaer(record.getUnitinfoaccount());
		System.out.println("≤È—Øipaer:"+list);
		for(int i=0;i<list.size();i++){
			Perbusiness per=new Perbusiness();
			per.setGrzhbhs(list.get(i).getGrzhbhs());
			per.setGrzhbh(list.get(i).getGrzhbh());
			per.setGrpersonids(list.get(i).getPersonalaccount());
			per.setGrperbutime(record.getJnmy());
			per.setGrperbutype(record.getHjywlx());
			per.setPerbulimit(list.get(i).getPeraccountbalance());
			per.setUnitadvancep(list.get(i).getUnitmonpayamount()*Integer.valueOf(list.get(i).getDemandinterestand()));
			per.setPersonadvancep(list.get(i).getUnitmonpayamount()*Integer.valueOf(list.get(i).getDemandinterestand()));
			perssDao.insertSelective(per);
		}
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("UnitInfoAccount",record.getUnitinfoaccount());
		map.put("UnitsBalance",record.getSsje());
		int u=unfocc.updateunfocc(map);
		return u;
	}
	@Override
	public List<Map<String, Object>> queryHj(Map<String,Object> map) {
		List<Map<String, Object>> list=dao.queryHj(map);
		
		return list;
	}
	@Override
	public int getCount(Map<String, Object> map) {
		int i=dao.getCount(map);
		return i;
	}
	@Override
	public List<Map<String, Object>> queryUcOrUf(Integer unitinfoaccount) {
		List<Map<String, Object>> list=dao.queryUcOrUf(unitinfoaccount);
		return list;
	}
	@Override
	public List<Map<String, Object>> queryPeraccs(Map<String, Object> map) {
		List<Map<String, Object>> m=perssDao.quertPeraccs(map);
		
		return m;
	}
	@Override
	public int queryCountPeracc(Map<String, Object> map) {
		int i=perssDao.queryCountPeraccs(map);
		return i;
	}

}
