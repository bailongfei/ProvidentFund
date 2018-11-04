package com.wangc.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.GrzfbkzhxxMapper;
import com.entity.Grzfbkzhxx;
import com.wangc.service.GrzfbkzhxxService;
@Service
public class GrzfbkzhxxServiceimpl implements GrzfbkzhxxService{
@Autowired
	private GrzfbkzhxxMapper dao;
	@Override
	public List<Map<String, Object>> Grzfquery() {
		// TODO Auto-generated method stub
		return dao.Grzfquery();
	}
	@Override
	public int updateGrzfb(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.updateGrzfb(map);
	}
	@Override
	public List<Map<String, Object>> queryGrzgId(int dkbh) {
		// TODO Auto-generated method stub
		return dao.queryGrzgId(dkbh);
	}
	@Override
	public int updateByPrimaryKey(Grzfbkzhxx record) {
		// TODO Auto-generated method stub
		return dao.updateByPrimaryKey(record);
	}

}
