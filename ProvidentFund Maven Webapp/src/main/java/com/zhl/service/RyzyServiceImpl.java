package com.zhl.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.PeraccountMapper;
import com.dao.ryzyMapper;
import com.entity.Peraccount;
import com.entity.ryzy;
import com.zhl.pager.Pager;
@Service
public class RyzyServiceImpl implements RyzyService {
	@Autowired
	private ryzyMapper dao;
	@Autowired
	private PeraccountMapper perdao;
	@Transactional
	@Override
	public int SaveRyzyApply(ryzy ryzy) {
		// TODO Auto-generated method stub
		return dao.insertSelective(ryzy);
	}
	@Override
	public Pager queryapply(Map<String, Object> map, Pager p) {
		// TODO Auto-generated method stub
		String curPage=(String) map.get("curPage");//接收从前台传来的的当前页
		p.setCurPage(Integer.parseInt(curPage));//设置当前页到pager对象
		int totalCount=dao.queryapplycount();
		p.setTotalCount(totalCount);
		map.put("startIndex", p.getStartIndex());//设置开始索引
		map.put("pageSize", p.getPageSize());//设置每页条数
		List<Map<String, Object>> list=dao.queryapply(map);//查询分页的数据
		System.out.println(list);
		p.setList(list);//把分页的数据放到pager对象里面
		return p;
	}
	@Override
	public Pager queryryzysh(Map<String, Object> map, Pager p) {
		// TODO Auto-generated method stub
		String curPage=(String) map.get("curPage");//接收从前台传来的的当前页
		p.setCurPage(Integer.parseInt(curPage));//设置当前页到pager对象
		int totalCount=dao.queryryzyshcount();
		p.setTotalCount(totalCount);
		map.put("startIndex", p.getStartIndex());//设置开始索引
		map.put("pageSize", p.getPageSize());//设置每页条数
		List<Map<String, Object>> list=dao.queryryzysh(map);//查询分页的数据
		System.out.println(list);
		p.setList(list);//把分页的数据放到pager对象里面
		return p;
	}
	@Transactional
	@Override
	public int CheckRyzy(ryzy ryzy) {
		// TODO Auto-generated method stub
		ryzy.setShzt(2);
		Peraccount per=new Peraccount();
		per.setGrzhbh(ryzy.getSqr());
		per.setUnitinfoid(ryzy.getXdw());
		perdao.updateByPrimaryKeySelective(per);
		return dao.updateByPrimaryKeySelective(ryzy);
	}
	@Override
	public int CheckRyzy2(ryzy ryzy) {
		// TODO Auto-generated method stub
		ryzy.setShzt(3);
		return dao.updateByPrimaryKeySelective(ryzy);
	}

}
