package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.zhl.pager.Pager;

public interface PeraccountMapper {
    int deleteByPrimaryKey(Integer grzhbh);

    int insert(Peraccount record);

    int insertSelective(Peraccount record);

    Peraccount selectByPrimaryKey(Integer grzhbh);

    int updateByPrimaryKeySelective(Peraccount record);

    int updateByPrimaryKey(Peraccount record);
    //根据账号密码查询
    public Peraccount findbyaccount(Map<String, Object> map);
    //查询所有账户
    public List<Map<String, Object>> findbyPager(Map<String, Object> map);
    //查询总条数
    public int findPagercount(Map<String, Object> map);
    //根据公积金账号查询员工所属单位信息
    public Map<String, Object> findUnitName(String peracId);
    //根据贷款编号查询贷款信息和购房信息
    public Map<String, Object> finddkInfo(Integer dkxxbh);
    //查询所有单位
    public List<Unitinfo> queryUnitinfos();
    //根据单位id查询个人账号信息
    public List<Map<String, Object>> findaccountinfo(Map<String, Object> map);
    //查询分页数据总数
    public int findaccountnum(Map<String, Object> map);
    //根据身份证号码查询个人及单位信息
    public List<Map<String, Object>> findbyIdnumber(String IdNumber);
    //根据姓名查询账户正常账户信息
    public List<Map<String, Object>> findbyname(Map<String, Object> map);
    //根据姓名查询的总数量
    public int findbynamecount(Map<String, Object> map);
}