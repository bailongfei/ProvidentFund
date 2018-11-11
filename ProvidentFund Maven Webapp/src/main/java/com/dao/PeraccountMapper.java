package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Peraccount;

public interface PeraccountMapper {
    int deleteByPrimaryKey(Integer grzhbh);

    int insert(Peraccount record);

    int insertSelective(Peraccount record);

    Peraccount selectByPrimaryKey(Integer grzhbh);

    int updateByPrimaryKeySelective(Peraccount record);

    int updateByPrimaryKey(Peraccount record);
  //查询所有
    public List<Map>queryAllcwh();
    //查询所有
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
  //模糊
    public List<Map> querymhcwh();
}