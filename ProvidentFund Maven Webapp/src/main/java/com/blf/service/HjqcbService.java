package com.blf.service;

import java.util.List;
import java.util.Map;

import com.entity.Hjqcb;

public interface HjqcbService {
	public List<Map<String,Object>> queryHjceb(Integer unitinfoaccount);
	public List<Map<String,Object>> queryUcOrUf(Integer unitinfoaccount);
	public int selectSum(Integer unitinfoaccount);
	public List<Map<String,Object>> selectBGjce(Integer unitinfoaccount);
	public List<Map<String,Object>> queryUser();
	public int insertHjqcbOrUpdateIparOrqueryIperOrsavepercc(Hjqcb record);
	public List<Map<String,Object>> queryHj(Map<String,Object> map);
	public int getCount(Map<String, Object> map);
}
