package com.zys.dao;

import java.util.List;

import com.zys.entity.Xwfb;


public interface XwfbDao {
public List<Xwfb> queryXwfb();//查询所有
public int insertXwfb(Xwfb xw);//添加
public int deleteXwfb(int id);//删除
public Xwfb queryById(int id);//根据id查询
public int updateXwfb(Xwfb xw);//修改

/*public List<Xwfb> queryXwfb1(Pager pager);*///分页查询
}
