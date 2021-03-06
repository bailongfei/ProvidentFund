package com.cwh.service;

import java.util.List;
import java.util.Map;

import com.entity.Grzfbkzhxx;
import com.entity.Loaninfo;

public interface LoanService {
	//查询所有
    public List<Map>queryAllcwh();

    public List<Map>queryAllzocwh();

    //修改
    public int updatecwh(List<Map> list);
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
