package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Returnpay;

public interface ReturnpayMapper {
    int deleteByPrimaryKey(Integer chbh);

    int insert(Returnpay record);

    int insertSelective(Returnpay record);

    Returnpay selectByPrimaryKey(Integer chbh);

    int updateByPrimaryKeySelective(Returnpay record);

    int updateByPrimaryKey(Returnpay record);
    //分页查询冲缴记录
    public List<Map<String, Object>> findbypager(Map<String, Object> map);
    //查询总条数进行分页
    public int findcount(Map<String, Object> map);
}