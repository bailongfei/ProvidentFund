package com.zhl.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PerbusinessMapper;
import com.entity.Perbusiness;
import com.zhl.pager.Pager;
@Service
public class PerbusinessServiceImpl implements PerbusinessService {
	@Autowired
	private PerbusinessMapper dao;
	@Override
	public Integer findcount(Map<String, Object> condition) {
		// TODO Auto-generated method stub
		return dao.findcount(condition);
	}
	@Override
	public Pager findbycondition(Map<String, Object> condition,Pager p) {
		// TODO Auto-generated method stub
		Integer totalCount=dao.findcount(condition);//查询出结果总条数
		p.setTotalCount(totalCount);
		condition.put("startIndex", p.getStartIndex());//设置开始索引
		condition.put("pageSize", p.getPageSize());//设置每页条数
		List<Map<String, Object>> list=dao.findbycondition(condition);//获取list
		p.setList(list);//设置list
		return p;
	}
	@Override
	public List<Perbusiness> findbypage(Integer grzhbhs) {
		// TODO Auto-generated method stub
		return dao.findpage(grzhbhs);
	}
	@Override
	public List<Map> queryAll() {
		// TODO Auto-generated method stub
		return dao.queryAll();
	}

}
