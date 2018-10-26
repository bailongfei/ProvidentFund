package com.blf.service;

import java.util.List;
import java.util.Map;

import com.entity.Hjqcb;
import com.entity.Unitsaccount;

public interface HjqcbService {
	public List<Map<String,Object>> queryHjceb(Integer unitinfoaccount);
	public int selectSum(Integer unitinfoaccount);
}
