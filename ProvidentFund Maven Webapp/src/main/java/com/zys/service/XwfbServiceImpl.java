package com.zys.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.XwfbDao;
import com.entity.Xwfb;




@Service
public class XwfbServiceImpl implements XwfbService{
	//注入dao层
@Autowired
private XwfbDao dao;
//查询所有
@Override
public List<Xwfb> queryXwfb() {
	return dao.queryXwfb();
}
//添加
	@Override
	public int insertXwfb(Xwfb xw) {
		return dao.insertXwfb(xw);
	}
//删除
	@Override
	public int deleteXwfb(int id) {
		return dao.deleteXwfb(id);
	}
//根据id查询
	@Override
	public Xwfb queryById(int id) {
		return dao.queryById(id);
	}
//修改
	@Override
	public int updateXwfb(Xwfb xw) {
		return dao.updateXwfb(xw);
	}
	//分页查询
	/*@Override
	public List<Xwfb> queryXwfb1(Pager pager) {
		return dao.queryXwfb1(pager);
	}*/
	
}
