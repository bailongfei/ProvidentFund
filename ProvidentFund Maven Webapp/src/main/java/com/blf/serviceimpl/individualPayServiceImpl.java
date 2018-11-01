package com.blf.serviceimpl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.blf.service.individualPayService;
import com.dao.IndividualpayMapper;
import com.dao.PeraccountMapper;
@Service
public class individualPayServiceImpl implements individualPayService {
@Autowired
private IndividualpayMapper ipay;
@Autowired
private PeraccountMapper percc;
    @Transactional
	@Override
	public int insertPercc(Map<String, Object> map) {
		int i=percc.insertPercc(map);
		return i;
	}
    
	@Override
	public int insertIparPer(Map<String, Object> map) {
		int i=ipay.insertIpayPer(map);
		return i;
	}
	
/*@Transactional
@Override
public int insertIparOrPercc(Map<String, Object> map) {
	int i=ipay.insertIpayPer(map);
	int t=percc.insertPercc(map);
	return i+t;
}*/

}
