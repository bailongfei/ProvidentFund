package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.dao.BjqcbDao;
import com.aaa.entity.Bjqcb;
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
