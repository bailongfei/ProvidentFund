package com.wangc.service;

import java.util.List;
import java.util.Map;

import com.entity.Grzfbkzhxx;
import com.entity.Repayplan;
import com.wangc.Pager.Pager;

public interface GrzfbkzhxxService {

		//查询还款状态为0未还清
		public List<Map<String,Object>> Grzfquery();
		//查询所有还款状态为1
		public List<Map<String, Object>> Grzfquerytwo();
		//修改状态
		public int updatestatic(int dkbh);
		//根据id 查询
		public List<Map<String, Object>> queryGrzgId(int dkbh);

		public int updateGrzfb(Map<String, Object> map);/*动态修改*/
		 //添加还款计划
		public int Saverepayplan(Repayplan repayplan);
		//分页模糊查询
		public Pager findbygrzfbk(Map<String, Object> grzfbk,Pager p);
			//查询所有数量
		 public Integer findcount(Map<String, Object> grzfbk);

}
