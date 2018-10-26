package com.dao;

import com.entity.Gshylx;

public interface GshylxMapper {
    int deleteByPrimaryKey(Integer gshylxbh);

    int insert(Gshylx record);

    int insertSelective(Gshylx record);

    Gshylx selectByPrimaryKey(Integer gshylxbh);

    int updateByPrimaryKeySelective(Gshylx record);

    int updateByPrimaryKey(Gshylx record);
}