package com.wangc.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PeraccountMapper;
import com.entity.Peraccount;
import com.wangc.service.PeraccountService;
@Service
public class PeraccountServiceimpl implements PeraccountService{
 @Autowired
 		private PeraccountMapper pm;
	@Override
	public int save(Peraccount tb) {
		// TODO Auto-generated method stub
		return pm.insertSelective(tb);
	}

	@Override
	public List<Map<String, Object>> queryTbid(int personNo) {
		// TODO Auto-generated method stub
		return pm.queryTbid(personNo);
	}

}
