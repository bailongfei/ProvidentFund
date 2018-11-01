package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Peraccount;

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
}