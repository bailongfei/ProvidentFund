package com.blf.serviceimpl;

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
		List<Map<String, Object>> list=userdao.queryUser();
		return list;
	}
	@Transactional
	@Override
	public int insertHjqcbOrUpdateIparOrqueryIperOrsavepercc(Hjqcb record) {
		dao.insert(record);
		int t=daoin.updateIpar(record);
		List<Individualpay> list=daoin.queryIpaer(record.getUnitinfoaccount());
		System.out.println("��ѯipaer:"+list);
		for(int i=0;i<list.size();i++){
			Perbusiness per=new Perbusiness();
			per.setGrzhbhs(list.get(i).getGrzhbhs());
			per.setGrzhbh(list.get(i).getGrzhbh());
			per.setGrpersonids(list.get(i).getPersonalaccount());
			per.setGrperbutime(record.getJnmy());
			per.setGrperbutype(record.getHjywlx());
			per.setPerbulimit(list.get(i).getPeraccountbalance());
			/*if(list.get(i).getUnitmonpayamount().contains(".")){
				per.setUnitadvancep(Integer.parseInt(list.get(i).getUnitmonpayamount().substring(0,list.get(i).getUnitmonpayamount().indexOf("."))));//��ȡС����ǰ�������	
			}else{
				per.setUnitadvancep(Integer.parseInt(list.get(i).getUnitmonpayamount()));
			}*/
			/*if(list.get(i).getUnitmonpayamount().contains(".")){
				per.setUnitadvancep(Integer.parseInt(list.get(i).getUnitmonpayamount().split(".")[0]));
			}else{
				per.setUnitadvancep(Integer.parseInt(list.get(i).getUnitmonpayamount()));
			}*/
			per.setUnitadvancep(list.get(i).getUnitmonpayamount());
			per.setPersonadvancep(list.get(i).getUnitmonpayamount());
			perssDao.insertSelective(per);
		}
		return t;
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
	public List<Map<String, Object>> queryUcOrUf(Integer unitinfoaccount){
		List<Map<String, Object>> list=dao.queryUcOrUf(unitinfoaccount);
		return list;
	}

}
