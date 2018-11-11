package com.service;

import java.util.List;
import java.util.Map;

import com.entity.Bkshzjb;
import com.entity.Grzfbkzhxx;
import com.entity.Loaninfo;
import com.github.pagehelper.PageInfo;

public interface LoanService {
	//��ѯ����
    public List<Map>queryAllcwh();

    public List<Map>queryAllzocwh();

    //�޸�
    public int updatecwh(List<Map> list);
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
