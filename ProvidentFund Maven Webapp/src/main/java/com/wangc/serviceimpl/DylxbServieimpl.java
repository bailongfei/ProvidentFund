package com.wangc.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DyhtxxMapper;
import com.dao.DylxbMapper;
import com.wangc.service.DylxbService;
@Service
public class DylxbServieimpl implements	DylxbService{
@Autowired
		private DylxbMapper dl;
	@Override
	public List<Map<String, Object>> Dylxbquery() {
		// TODO Auto-generated method stub
		return dl.Dylxbquery();
	}

}
