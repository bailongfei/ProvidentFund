package com.zys.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.HjqcbMapper;
import com.entity.Hjqcb;


@Service
public class hjqcbServiceImpl implements hjqcbService{
@Autowired
    private HjqcbMapper mapper;
@Override
public List<Hjqcb> queryAll() {
	return mapper.queryAll();
}
@Override
public int insert(Hjqcb h) {
	return mapper.insertss(h);
}
}
