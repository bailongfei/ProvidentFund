package com.blf.serviceimpl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blf.service.HjqcbService;
import com.dao.HjqcbMapper;
import com.dao.IndividualpayMapper;
import com.dao.Sys_userMapper;
import com.entity.Hjqcb;
import com.entity.Unitsaccount;
@Service
public class HjqcbServiceimpl implements HjqcbService {
  @Autowired
  private HjqcbMapper dao;
  @Autowired
  private IndividualpayMapper daoin;
  @Autowired
  private Sys_userMapper userdao;
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
	@Override
	public int insertHjqcb(Hjqcb record) {
		int i=dao.insert(record);
		return i;
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

}
