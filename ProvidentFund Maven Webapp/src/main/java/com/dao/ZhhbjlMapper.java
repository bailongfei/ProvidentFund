package com.dao;

import com.entity.Zhhbjl;

public interface ZhhbjlMapper {

    int deleteByPrimaryKey(Integer jlbh);

    int insert(Zhhbjl record);

    int insertSelective(Zhhbjl record);

    Zhhbjl selectByPrimaryKey(Integer jlbh);

    int updateByPrimaryKeySelective(Zhhbjl record);

    int updateByPrimaryKey(Zhhbjl record);
}