package com.wangc.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.GrzfbkzhxxMapper;
import com.dao.RepayplanMapper;
import com.entity.Grzfbkzhxx;
import com.entity.Repayplan;
import com.wangc.Pager.Pager;
import com.wangc.service.GrzfbkzhxxService;
@Service
public class GrzfbkzhxxServiceimpl implements GrzfbkzhxxService{
@Autowired
	private GrzfbkzhxxMapper dao;
@Autowired
	private RepayplanMapper rdao;
	@Override
	public List<Map<String, Object>> Grzfquery() {
		// TODO Auto-generated method stub
		return dao.Grzfquery();
	}
	//动态修改还款
	@Override
	public int updateGrzfb(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.updateGrzfb(map);
	}
	
	//根据id 查询
	@Override
	public List<Map<String, Object>> queryGrzgId(int dkbh) {
		// TODO Auto-generated method stub
		return dao.queryGrzgId(dkbh);
	}
	//添加还款计划
	@Override
	public int Saverepayplan(Repayplan repayplan) {
		// TODO Auto-generated method stub
		return rdao.insertSelective(repayplan);
	}
	//查询分页
	@Override
	public Pager findbygrzfbk(Map<String, Object> grzfbk,Pager p) {
		// TODO Auto-generated method stub
		Integer totalCount=dao.findcount(grzfbk);//查询总条数
		p.setTotalCount(totalCount);
		grzfbk.put("startIndex", p.getStartIndex());
		grzfbk.put("pageSize", p.getPageSize());
		List<Map<String, Object>> list=dao.findbygrzfbk(grzfbk);//获取list
		p.setList(list);
		return p;
	}
	//查询总条数
	@Override
	public Integer findcount(Map<String, Object> grzfbk) {
		// TODO Auto-generated method stub
		return dao.findcount(grzfbk);
	}
	//查询所有还款状态为1
	@Override
	public List<Map<String, Object>> Grzfquerytwo() {
		// TODO Auto-generated method stub
		return dao.Grzfquerytwo();
	}
	//修改状态
	@Override
	public int updatestatic(int dkbh) {
		// TODO Auto-generated method stub
		return dao.updatestatic(dkbh);
	}
	
}
