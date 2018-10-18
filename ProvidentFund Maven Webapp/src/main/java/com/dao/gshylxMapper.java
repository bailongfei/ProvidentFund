package com.dao;

import com.entity.gshylx;

public interface gshylxMapper {
    int deleteByPrimaryKey(Integer gshylxbh);

    int insert(gshylx record);

    int insertSelective(gshylx record);

    gshylx selectByPrimaryKey(Integer gshylxbh);

    int updateByPrimaryKeySelective(gshylx record);

    int updateByPrimaryKey(gshylx record);
}