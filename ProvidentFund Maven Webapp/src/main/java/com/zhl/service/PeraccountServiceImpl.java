package com.zhl.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.PeraccountMapper;
import com.dao.ZhhbjlMapper;
import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.entity.Zhhbjl;
import com.zhl.pager.Pager;
@Service
public class PeraccountServiceImpl implements PeraccountService {
	@Autowired
	private PeraccountMapper dao;
	@Autowired
	private ZhhbjlMapper hbdao;
	@Transactional
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
	@Transactional
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
	@Override
	public Pager findbyPager(Map<String, Object> map,Pager p) {
		// TODO Auto-generated method stub
		String curPage=(String) map.get("curPage");//接收从前台传来的的当前页
		p.setCurPage(Integer.parseInt(curPage));//设置当前页到pager对象
		int totalCount=dao.findPagercount(map);
		p.setTotalCount(totalCount);
		map.put("startIndex", p.getStartIndex());//设置开始索引
		map.put("pageSize", p.getPageSize());//设置每页条数
		List<Map<String, Object>> list=dao.findbyPager(map);//查询分页的数据
		System.out.println(list);
		p.setList(list);//把分页的数据放到pager对象里面
		return p;
	}
	@Transactional
	@Override
	public void UpdateStates(Integer zhztbh,Integer grzhbh) {
		// TODO Auto-generated method stub
		Peraccount account=new Peraccount(grzhbh, zhztbh);
		dao.updateByPrimaryKeySelective(account);
	}
	@Transactional
	@Override
	public Map<String, Object> findUnitName(String peracId) {
		// TODO Auto-generated method stub
		return dao.findUnitName(peracId);
	}
	@Transactional
	@Override
	public Map<String, Object> finddkInfo(Integer dkxxbh) {
		// TODO Auto-generated method stub
		return dao.finddkInfo(dkxxbh);
	}
	@Transactional
	@Override
	public List<Unitinfo> queryUnitinfos() {
		// TODO Auto-generated method stub
		return dao.queryUnitinfos();
	}
	@Transactional
	@Override
	public int PeopleTransfer(Peraccount account) {
		// TODO Auto-generated method stub
		int result=dao.updateByPrimaryKeySelective(account);
		return result;
	}
	
	
}
