package com.wangc.service;

import java.util.List;
import java.util.Map;

import com.entity.Peraccount;

public interface PeraccountService {
	 public int save(Peraccount tb);
	    public List<Map<String, Object>> queryTbid(int grzhbh);
}
