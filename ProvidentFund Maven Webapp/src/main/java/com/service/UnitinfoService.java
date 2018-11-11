package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Unitinfo;

public interface UnitinfoService {
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
