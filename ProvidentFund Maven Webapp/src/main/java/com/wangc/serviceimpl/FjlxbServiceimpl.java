package com.wangc.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.FjlxbMapper;
import com.wangc.service.FjlxbService;
@Service
public class FjlxbServiceimpl implements FjlxbService{
@Autowired
	public FjlxbMapper dao;
	@Override
	public List<Map<String, Object>> queryFjlx() {
		// TODO Auto-generated method stub
		return dao.queryFjlx();
	}
}
