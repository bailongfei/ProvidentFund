package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.dao.hjqcbMapper;
import com.aaa.entity.hjqcb;
@Service
public class hjqcbServiceImpl implements hjqcbService{
@Autowired
    private hjqcbMapper mapper;
@Override
public List<hjqcb> queryAll() {
	return mapper.queryAll();
}
@Override
public int insert(hjqcb h) {
	return mapper.insert(h);
}
}
