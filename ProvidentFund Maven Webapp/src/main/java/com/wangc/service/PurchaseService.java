package com.wangc.service;

import java.util.List;
import java.util.Map;

import com.entity.Purchase;

public interface PurchaseService {
	public List<Map<String,Object>> queryPurcha();
	 public int save(Purchase pu);
	   
}
