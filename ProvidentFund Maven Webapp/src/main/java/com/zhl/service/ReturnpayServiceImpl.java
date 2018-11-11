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
		condition.put("peracId", peracId);//个人账号
		int totalCount=dao.findcount(condition);//获得总条数
		p.setTotalCount(totalCount);//把总条数放到pager对象
		condition.put("startIndex", p.getStartIndex());//设置开始索引
		condition.put("pageSize", p.getPageSize());//设置每页条数
		List<Map<String, Object>> list=dao.findbypager(condition);//得到分页数据
		p.setList(list);//把分页数据放到pager对象
		return p;
	}
	@Override
	public void SaveReturnpay(Returnpay returnpay) {
		// TODO Auto-generated method stub
		dao.insertSelective(returnpay);
	}
	
}
