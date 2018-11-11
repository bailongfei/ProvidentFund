package com.zys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zys.dao.BjqcbDao;
import com.zys.entity.Bjqcb;

@Service
public class BjqcbServiceImpl implements BjqcbService{
@Autowired
private BjqcbDao dao;
	@Override
	public List<Bjqcb> queryBjqcb() {
		// TODO Auto-generated method stub
		return dao.queryBjqcb();
	}
}
