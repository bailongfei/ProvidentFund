package com.cwh.service;

import java.util.List;
import java.util.Map;
import com.entity.Peraccount;

public interface PerdeService {
	 //��ѯ����
    public List<Map>queryAllcwh();
    public List<Map>queryAllzgcwh();
    //id��ѯ
    public List<Peraccount> queryByIdcwh(int grzhbh);
    public List<Map> getallcwh(Integer grzhbh);
//�޸�
    public int updatecwh(List<Map> list);
   //���
    public int savecwh(Peraccount u);
    //��ѯ����
    public List<Map>queryAlltycwh();
    public int updateztcwh(Peraccount u,Boolean b);
  //ģ��
    public List<Map> querymhcwh();
}
