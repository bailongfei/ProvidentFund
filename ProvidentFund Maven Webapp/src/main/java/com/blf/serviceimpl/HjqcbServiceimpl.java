package com.blf.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blf.service.HjqcbService;
import com.dao.HjqcbMapper;
import com.dao.IndividualpayMapper;
import com.entity.Hjqcb;
import com.entity.Unitsaccount;
@Service
public class HjqcbServiceimpl implements HjqcbService {
  @Autowired
  private HjqcbMapper dao;
  @Autowired
  private IndividualpayMapper daoin;
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

}
