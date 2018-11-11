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
    //根据单位id查询个人账号信息
    public Pager findaccountinfo(Map<String, Object> map,Pager p);
    //修改账户信息
    public void Updateinfo(Peraccount account);
    //根据账户id查询
    public Peraccount findbyid(Integer grzhbh);
    //根据身份证号码查询个人及单位信息
    public List<Map<String, Object>> findbyIdnumber(String IdNumber);
    //根据姓名查询账户正常账户信息
    public Pager findbyname(Map<String, Object> map, Pager p);
}
