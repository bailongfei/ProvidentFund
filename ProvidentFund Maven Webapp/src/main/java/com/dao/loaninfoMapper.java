package com.dao;

import com.entity.loaninfo;

public interface loaninfoMapper {
    int deleteByPrimaryKey(Integer dkxxbh);

    int insert(loaninfo record);

    int insertSelective(loaninfo record);

    loaninfo selectByPrimaryKey(Integer dkxxbh);

    int updateByPrimaryKeySelective(loaninfo record);

    int updateByPrimaryKey(loaninfo record);
}