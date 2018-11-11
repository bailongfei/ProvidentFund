package com.dao;

import com.entity.Accumulation;
import com.entity.Bkshzjb;

public interface BkshzjMapper {
    int updateByPrimaryKeySelective(Bkshzjb record);
    public void  updatebh(Bkshzjb bkshzjb);

}
