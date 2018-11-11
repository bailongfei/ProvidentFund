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
	//��̬�޸Ļ���
	@Override
	public int updateGrzfb(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.updateGrzfb(map);
	}
	
	//����id ��ѯ
	@Override
	public List<Map<String, Object>> queryGrzgId(int dkbh) {
		// TODO Auto-generated method stub
		return dao.queryGrzgId(dkbh);
	}
	//��ӻ���ƻ�
	@Override
	public int Saverepayplan(Repayplan repayplan) {
		// TODO Auto-generated method stub
		return rdao.insertSelective(repayplan);
	}
	//��ѯ��ҳ
	@Override
	public Pager findbygrzfbk(Map<String, Object> grzfbk,Pager p) {
		// TODO Auto-generated method stub
		Integer totalCount=dao.findcount(grzfbk);//��ѯ������
		p.setTotalCount(totalCount);
		grzfbk.put("startIndex", p.getStartIndex());
		grzfbk.put("pageSize", p.getPageSize());
		List<Map<String, Object>> list=dao.findbygrzfbk(grzfbk);//��ȡlist
		p.setList(list);
		return p;
	}
	//��ѯ������
	@Override
	public Integer findcount(Map<String, Object> grzfbk) {
		// TODO Auto-generated method stub
		return dao.findcount(grzfbk);
	}
	//��ѯ���л���״̬Ϊ1
	@Override
	public List<Map<String, Object>> Grzfquerytwo() {
		// TODO Auto-generated method stub
		return dao.Grzfquerytwo();
	}
	//�޸�״̬
	@Override
	public int updatestatic(int dkbh) {
		// TODO Auto-generated method stub
		return dao.updatestatic(dkbh);
	}
	
}
