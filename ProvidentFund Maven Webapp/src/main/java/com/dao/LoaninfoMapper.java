package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Bkshzjb;
import com.entity.Grzfbkzhxx;
import com.entity.Loaninfo;

public interface LoaninfoMapper {

	public int Loansave(Loaninfo lo);

    int deleteByPrimaryKey(Integer dkxxbh);

    int insert(Loaninfo record);

    int insertSelective(Loaninfo record);

    Loaninfo selectByPrimaryKey(Integer dkxxbh);

    int updateByPrimaryKeySelective(Loaninfo record);

    int updateByPrimaryKey(Loaninfo record);
  //��ѯ����
    public List<Map>queryAllcwh();
  //��ѯ����
    public List<Map>queryAllzocwh();
    //�޸�
    public int updatecwh(List<Map> list);
    public int updatebhcwh(List<Map> list);
    public void  updatebhcwh(Bkshzjb bkshzjb);
    public int updatebhyycwh(List<Map> list);
    //��ѯ״̬
    public List<Map> getshbhcwh();
    public List<Map> getshbhzocwh();

    //����id��ѯ
    public List<Loaninfo> queryByIdcwh(int dkxxbh);
    
    public List<Map> getallcwh(Integer dkxxbh);
    //���
    public int savegrcwh(Grzfbkzhxx u);
}