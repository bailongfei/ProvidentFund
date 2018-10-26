package com.dao;

import com.entity.Individualpay;

public interface IndividualpayMapper {
	public int selectSum(Integer unitinfoaccount);
    int deleteByPrimaryKey(Integer grzhbhs);

    int insert(Individualpay record);

    int insertSelective(Individualpay record);

    Individualpay selectByPrimaryKey(Integer grzhbhs);

    int updateByPrimaryKeySelective(Individualpay record);

    int updateByPrimaryKey(Individualpay record);
}