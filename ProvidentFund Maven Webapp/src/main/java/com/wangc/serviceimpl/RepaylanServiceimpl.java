package com.wangc.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.RepayplanMapper;
import com.wangc.service.RepaylanService;
@Service
public class RepaylanServiceimpl implements RepaylanService{
@Autowired
	private RepayplanMapper rp;
	@Override
	public List<Map<String, Object>> queryDyhtxx(int dkbh) {
		// TODO Auto-generated method stub
		return rp.queryDyhtxx(dkbh);
	}

}
