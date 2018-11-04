package com.zhl.service;

import java.util.List;
import java.util.Map;

import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.zhl.pager.Pager;

public interface PeraccountService {
	//录入
	public int insert(Peraccount peraccount);
	//登录
	public Peraccount login(Map<String, Object> map);
	//账户合并
	public void AccountMerge(Map<String, Object> account1,Map<String, Object> account2);
	//分页查询账户
	public Pager findbyPager(Map<String, Object> map,Pager p);
	//修改账户状态
	public void UpdateStates(Integer zhztbh,Integer grzhbh);
    //根据公积金账号查询员工所属单位信息
    public Map<String, Object> findUnitName(String peracId);
    //根据贷款编号查询贷款信息和购房信息
    public Map<String, Object> finddkInfo(Integer dkxxbh);
    //查询所有单位
    public List<Unitinfo> queryUnitinfos();
    //人员转移
    public int PeopleTransfer(Peraccount account);
}
