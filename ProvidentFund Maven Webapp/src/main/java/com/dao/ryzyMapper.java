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
    //��ѯ��Աת������
    public List<Map<String, Object>> queryapply(Map<String, Object> map);
    //��ѯ��Աת����������
    public Integer queryapplycount();
    //��ѯ��Աת�����
    public List<Map<String, Object>> queryryzysh(Map<String, Object> map);
    //��ѯ��Աת�����������
    public Integer queryryzyshcount();
}