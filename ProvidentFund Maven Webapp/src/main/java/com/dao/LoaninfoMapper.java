package com.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.entity.Bkshzjb;
import com.entity.Grzfbkzhxx;
import com.entity.Loaninfo;

public interface LoaninfoMapper {
    int deleteByPrimaryKey(Integer dkxxbh);

    int insert(Loaninfo record);

    int insertSelective(Loaninfo record);

    Loaninfo selectByPrimaryKey(Integer dkxxbh);

    int updateByPrimaryKeySelective(Loaninfo record);

    int updateByPrimaryKey(Loaninfo record);
  //查询所有
    public List<Map>queryAllcwh();
  //查询终审
    public List<Map>queryAllzocwh();
    //修改
    public int updatecwh(List<Map> list);
    public int updatebhcwh(List<Map> list);
    public void  updatebhcwh(Bkshzjb bkshzjb);
    public int updatebhyycwh(List<Map> list);
    //查询状态
    public List<Map> getshbhcwh();
    public List<Map> getshbhzocwh();

    //根据id查询
    public List<Loaninfo> queryByIdcwh(int dkxxbh);
    
    public List<Map> getallcwh(Integer dkxxbh);
    //添加
    public int savegrcwh(Grzfbkzhxx u);
}