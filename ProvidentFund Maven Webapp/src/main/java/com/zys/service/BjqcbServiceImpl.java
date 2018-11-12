package com.zys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BjqcbMapper;
import com.entity.Bjqcb;


@Service
public class BjqcbServiceImpl implements BjqcbService{
@Autowired
private BjqcbMapper dao;
	@Override
	public List<Bjqcb> queryBjqcb() {
		// TODO Auto-generated method stub
		return dao.queryBjqcb();
	}
}
