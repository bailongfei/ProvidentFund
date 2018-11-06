package com.dao;

import java.util.List;

import com.entity.Gjjtqyyb;

public interface GjjtqyybMapper {
    int deleteByPrimaryKey(Integer tqyyid);

    int insert(Gjjtqyyb record);

    int insertSelective(Gjjtqyyb record);

    Gjjtqyyb selectByPrimaryKey(Integer tqyyid);

    int updateByPrimaryKeySelective(Gjjtqyyb record);

    int updateByPrimaryKey(Gjjtqyyb record);
    //查询所有提取原因
    public List<Gjjtqyyb> findall();
}