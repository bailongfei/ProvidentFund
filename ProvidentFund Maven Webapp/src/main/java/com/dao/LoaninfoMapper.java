package com.dao;

import com.entity.Loaninfo;

public interface LoaninfoMapper {
    int deleteByPrimaryKey(Integer dkxxbh);

    int insert(Loaninfo record);

    int insertSelective(Loaninfo record);

    Loaninfo selectByPrimaryKey(Integer dkxxbh);

    int updateByPrimaryKeySelective(Loaninfo record);

    int updateByPrimaryKey(Loaninfo record);
}