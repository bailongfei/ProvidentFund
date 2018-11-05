package com.wangc.service;

import java.util.List;
import java.util.Map;

import com.entity.Grzfbkzhxx;
import com.entity.Repayplan;

public interface GrzfbkzhxxService {
		public List<Map<String, Object>> Grzfquery();
		//根据id 查询
		public List<Map<String, Object>> queryGrzgId(int dkbh);

		public int updateGrzfb(Map<String, Object> map);/*动态修改*/
		 int updateByPrimaryKey(Grzfbkzhxx record);
		 //添加还款计划
		public int Saverepayplan(Repayplan repayplan); 
}
