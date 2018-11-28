package com.blf.service;

import java.util.List;
import java.util.Map;

public interface ReturnpayServices {
	//根据单位id查询个人账号信息冲缴
	 public List<Map<String, Object>> findaccountinfo2(Map<String, Object> map);
}
