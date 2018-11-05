package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.dao.IndividualpayDao;
import com.aaa.entity.Individualpay;
@Service
public class IndividualpayServiceImpl implements IndividualpayService{
@Autowired
private IndividualpayDao dao;
@Override
public List<Individualpay> queryIndividualpay() {
	// TODO Auto-generated method stub
	return dao.queryIndividualpay();
}
}
