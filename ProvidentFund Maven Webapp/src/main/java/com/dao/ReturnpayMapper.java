package com.dao;

import java.util.List;

import com.entity.Returnpay;

public interface ReturnpayMapper {
    int deleteByPrimaryKey(Integer chbh);

    int insert(Returnpay record);

    int insertSelective(Returnpay record);

    Returnpay selectByPrimaryKey(Integer chbh);

    int updateByPrimaryKeySelective(Returnpay record);

    int updateByPrimaryKey(Returnpay record);
    //·ÖÒ³²éÑ¯³å½É¼ÇÂ¼
    public List<Returnpay> findbypager(Integer grzhbhs);    
}