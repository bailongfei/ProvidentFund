package com.dao;

import com.entity.Xtyjbxx;

public interface XtyjbxxMapper {
    int deleteByPrimaryKey(Integer ygbh);

    int insert(Xtyjbxx record);

    int insertSelective(Xtyjbxx record);

    Xtyjbxx selectByPrimaryKey(Integer ygbh);

    int updateByPrimaryKeySelective(Xtyjbxx record);

    int updateByPrimaryKey(Xtyjbxx record);
}