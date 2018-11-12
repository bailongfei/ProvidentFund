package com.zys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.IndividualpayMapper;
import com.entity.Individualpay;


@Service
public class IndividualpayServiceImpl implements IndividualpayService{
@Autowired
private IndividualpayMapper dao;
@Override
public List<Individualpay> queryIndividualpay() {
	// TODO Auto-generated method stub
	return dao.queryIndividualpay();
}
}
