package com.blf.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blf.service.ReturnpayServices;
import com.dao.ReturnpayMapper;
@Service
public class ReturnpayServiceImpls implements ReturnpayServices{
@Autowired
private ReturnpayMapper rm;
	@Override
	public List<Map<String, Object>> findaccountinfo2(Map<String, Object> map) {
		List<Map<String, Object>> list=rm.findaccountinfo2(map);
		return list;
	}

}
