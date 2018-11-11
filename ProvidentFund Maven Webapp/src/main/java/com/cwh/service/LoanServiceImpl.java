package com.cwh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.GrzfbkzhxxMapper;
import com.dao.LoaninfoMapper;
import com.entity.Bkshzjb;
import com.entity.Grzfbkzhxx;
import com.entity.Loaninfo;
@Service
public class LoanServiceImpl implements LoanService{
	@Autowired
private LoaninfoMapper dao;

	@Override
	public List<Map> queryAllcwh() {
		// TODO Auto-generated method stub
		
		return dao.queryAllcwh();
	}
	@Override
	public List<Loaninfo> queryByIdcwh(int dkxxbh) {
		// TODO Auto-generated method stub
		return dao.queryByIdcwh(dkxxbh);
	}
	@Override
	public int updatecwh(List<Map> list) {
		// TODO Auto-generated method stub
		return dao.updatecwh(list);
	}
	@Override
	public List<Map> getallcwh(Integer dkxxbh) {
		// TODO Auto-generated method stub
		return dao.getallcwh(dkxxbh);
	}
	@Override
	public List<Map> queryAllzocwh() {
		// TODO Auto-generated method stub
		return dao.queryAllzocwh();
	}
	@Override
	public List<Map> getshbhcwh() {
		// TODO Auto-generated method stub
		return dao.getshbhcwh();
	}
	@Override
	public List<Map> getshbhzocwh() {
		// TODO Auto-generated method stub
		return dao.getshbhzocwh();
	}
	@Override
	public int savegrcwh(Grzfbkzhxx u) {
		// TODO Auto-generated method stub
		return dao.savegrcwh(u);
	}
	@Override
	public int updatebhyycwh(List<Map> list) {
		// TODO Auto-generated method stub
		return dao.updatebhyycwh(list);
	}



}
