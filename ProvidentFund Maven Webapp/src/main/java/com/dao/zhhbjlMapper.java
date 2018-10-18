package com.dao;

import com.entity.zhhbjl;

public interface zhhbjlMapper {
    int deleteByPrimaryKey(Integer jlbh);

    int insert(zhhbjl record);

    int insertSelective(zhhbjl record);

    zhhbjl selectByPrimaryKey(Integer jlbh);

    int updateByPrimaryKeySelective(zhhbjl record);

    int updateByPrimaryKey(zhhbjl record);
}