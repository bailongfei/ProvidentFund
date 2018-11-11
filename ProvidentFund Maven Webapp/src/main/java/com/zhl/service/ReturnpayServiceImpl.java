package com.zhl.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ReturnpayMapper;
import com.entity.Returnpay;
import com.zhl.pager.Pager;
@Service
public class ReturnpayServiceImpl implements ReturnpayService {
	@Autowired
	private ReturnpayMapper dao;
	@Override
	public Pager findbyPager(String peracId,Pager p) {
		// TODO Auto-generated method stub
		Map<String, Object> condition=new HashMap<String, Object>();
		condition.put("peracId", peracId);//�����˺�
		int totalCount=dao.findcount(condition);//���������
		p.setTotalCount(totalCount);//���������ŵ�pager����
		condition.put("startIndex", p.getStartIndex());//���ÿ�ʼ����
		condition.put("pageSize", p.getPageSize());//����ÿҳ����
		List<Map<String, Object>> list=dao.findbypager(condition);//�õ���ҳ����
		p.setList(list);//�ѷ�ҳ���ݷŵ�pager����
		return p;
	}
	@Override
	public void SaveReturnpay(Returnpay returnpay) {
		// TODO Auto-generated method stub
		dao.insertSelective(returnpay);
	}
	
}
