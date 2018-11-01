package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Individualpay;

public interface IndividualpayMapper {
	public int selectSum(Integer unitinfoaccount);
	public List<Map<String,Object>> selectBGjce(Integer unitinfoaccount);
	public int insertIpayPer(Map<String,Object> map);
    int deleteByPrimaryKey(Integer grzhbhs);

    int insert(Individualpay record);

    int insertSelective(Individualpay record);

    Individualpay selectByPrimaryKey(Integer grzhbhs);

    int updateByPrimaryKeySelective(Individualpay record);

    int updateByPrimaryKey(Individualpay record);
}