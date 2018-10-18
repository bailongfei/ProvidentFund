package com.dao;

import com.entity.xtyjbxx;

public interface xtyjbxxMapper {
    int deleteByPrimaryKey(Integer ygbh);

    int insert(xtyjbxx record);

    int insertSelective(xtyjbxx record);

    xtyjbxx selectByPrimaryKey(Integer ygbh);

    int updateByPrimaryKeySelective(xtyjbxx record);

    int updateByPrimaryKey(xtyjbxx record);
}