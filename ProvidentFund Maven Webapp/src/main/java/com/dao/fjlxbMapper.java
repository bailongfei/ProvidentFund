package com.dao;

import com.entity.fjlxb;

public interface fjlxbMapper {
    int deleteByPrimaryKey(Integer fubh);

    int insert(fjlxb record);

    int insertSelective(fjlxb record);

    fjlxb selectByPrimaryKey(Integer fubh);

    int updateByPrimaryKeySelective(fjlxb record);

    int updateByPrimaryKey(fjlxb record);
}