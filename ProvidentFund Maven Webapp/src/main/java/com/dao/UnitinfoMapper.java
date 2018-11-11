package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Unitinfo;

public interface UnitinfoMapper {
    int deleteByPrimaryKey(Integer unitinfoid);

    int insert(Unitinfo record);

    int insertSelective(Unitinfo record);

    Unitinfo selectByPrimaryKey(Integer unitinfoid);

    int updateByPrimaryKeySelective(Unitinfo record);

    int updateByPrimaryKey(Unitinfo record);
    //查询所有
    public List<Map>queryAllcwh();
   //添加
    public int savecwh(Unitinfo u);
    //删除
    public int deletecwh(int UnitInfoId);
   //修改
    public int updateunitinfocwh(Unitinfo u);
    //根据id查询
    public List<Unitinfo> queryByUnitinfoIdcwh(int unitinfoid);
}