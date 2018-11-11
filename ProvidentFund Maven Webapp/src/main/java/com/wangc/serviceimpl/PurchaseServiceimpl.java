package com.wangc.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PurchaseMapper;
import com.entity.Purchase;
import com.wangc.service.PurchaseService;
@Service
public class PurchaseServiceimpl implements PurchaseService{
@Autowired
		private PurchaseMapper pm;
	@Override
	public List<Map<String, Object>> queryPurcha() {
		// TODO Auto-generated method stub
		return pm.queryPurcha();
	}
	@Override
	public int save(Purchase pu) {
		// TODO Auto-generated method stub
		return pm.insert(pu);
	}

}
