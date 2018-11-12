package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.ryzy;

public interface ryzyMapper {
    int deleteByPrimaryKey(Integer zyid);

    int insert(ryzy record);

    int insertSelective(ryzy record);

    ryzy selectByPrimaryKey(Integer zyid);

    int updateByPrimaryKeySelective(ryzy record);

    int updateByPrimaryKey(ryzy record);
    //查询人员转移申请
    public List<Map<String, Object>> queryapply(Map<String, Object> map);
    //查询人员转移申请数量
    public Integer queryapplycount();
    //查询人员转移审核
    public List<Map<String, Object>> queryryzysh(Map<String, Object> map);
    //查询人员转移审核总数量
    public Integer queryryzyshcount();
}