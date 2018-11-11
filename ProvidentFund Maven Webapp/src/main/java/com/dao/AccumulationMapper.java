package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Accumulation;
import com.zhl.pager.Pager;

public interface AccumulationMapper {
    int deleteByPrimaryKey(Integer accumulation);

    int insert(Accumulation record);

    int insertSelective(Accumulation record);

    Accumulation selectByPrimaryKey(Integer accumulation);

    int updateByPrimaryKeySelective(Accumulation record);

    int updateByPrimaryKey(Accumulation record);
    //根据个人账号查询公积金提取信息
    public List<Map<String, Object>> findbyperaccount(String peracId);
    
}