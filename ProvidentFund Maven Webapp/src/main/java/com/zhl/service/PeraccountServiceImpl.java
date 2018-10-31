package com.zhl.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PeraccountMapper;
import com.dao.ZhhbjlMapper;
import com.entity.Peraccount;
import com.entity.Zhhbjl;
@Service
public class PeraccountServiceImpl implements PeraccountService {
	@Autowired
	private PeraccountMapper dao;
	@Autowired
	private ZhhbjlMapper hbdao;
	@Override
	public int insert(Peraccount peraccount) {
		// TODO Auto-generated method stub
		return dao.insert(peraccount);
	}

	@Override
	public Peraccount login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.findbyaccount(map);
	}

	@Override
	public void AccountMerge(Map<String, Object> account1, Map<String, Object> account2) {
		// TODO Auto-generated method stub
		//查询两个表的数据
		Peraccount peraccount1=dao.findbyaccount(account1);
		Peraccount peraccount2=dao.findbyaccount(account2);
		System.out.println(peraccount1);
		System.out.println(peraccount2);
		//合并余额 销户副账号
		if(peraccount1!=null || peraccount2 !=null){
			Integer money1=peraccount1.getPeracbalance();
			Integer money2=peraccount2.getPeracbalance();
			money1=money1+money2;
			money2=0;
			peraccount1.setPeracbalance(money1);
			peraccount2.setPeracbalance(money2);
			peraccount2.setZhztbh(3);
			dao.updateByPrimaryKeySelective(peraccount1);
			dao.updateByPrimaryKeySelective(peraccount2);
		}
		//添加合并账号记录
		Zhhbjl zhhbjl=new Zhhbjl();
		zhhbjl.setBlgrzh(peraccount1.getGrzhbh().toString());
		zhhbjl.setXhgrzh(peraccount2.getGrzhbh().toString());
		zhhbjl.setGrzhbh(peraccount1.getGrzhbh());
		hbdao.insertSelective(zhhbjl);
	}
	
	
}
