package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Accumulation;
import com.entity.Peraccount;
import com.entity.Perdetails;

public interface PerdeService {
	 //查询所有
    public List<Map>queryAllcwh();
    public List<Map>queryAllzgcwh();
    //id查询
    public List<Peraccount> queryByIdcwh(int grzhbh);
    public List<Map> getallcwh(Integer grzhbh);
//修改
    public int updatecwh(List<Map> list);
   //添加
    public int savecwh(Peraccount u);
    //查询所有
    public List<Map>queryAlltycwh();
    public int updateztcwh(Peraccount u,Boolean b);
  //模糊
    public List<Map> querymhcwh();
}
