package com.cwh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.PeraccountMapper;
import com.entity.Peraccount;
@Service
public class PerdeServiceImpl implements PerdeService{
	@Autowired
private PeraccountMapper dao;
	@Override
	public List<Map> queryAllcwh() {
		// TODO Auto-generated method stub
		return dao.queryAllcwh();
	}


	@Override
	public List<Map> queryAllzgcwh() {
		// TODO Auto-generated method stub
		return dao.queryAllzgcwh();
	}


	@Override
	public List<Peraccount> queryByIdcwh(int grzhbh) {
		// TODO Auto-generated method stub
		return dao.queryByIdcwh(grzhbh);
	}


	@Override
	public List<Map> getallcwh(Integer grzhbh) {
		// TODO Auto-generated method stub
		return dao.getallcwh(grzhbh);
	}


	@Override
	public int updatecwh(List<Map> list) {
		// TODO Auto-generated method stub
		return dao.updatecwh(list);
	}


	@Override
	public int savecwh(Peraccount u) {
		// TODO Auto-generated method stub
		return dao.savecwh(u);
	}


	@Override
	public List<Map> queryAlltycwh() {
		// TODO Auto-generated method stub
		return dao.queryAlltycwh();
	}

	@Transactional
	@Override
	public int updateztcwh(Peraccount u, Boolean b) {
		// TODO Auto-generated method stub
		if(b){
			if(u.getZhztbh()==4){
				u.setZhztbh(1);
			}else if (u.getZhztbh()==5) {
				u.setZhztbh(2);
			}else if (u.getZhztbh()==6) {
				u.setZhztbh(3);
			}
		}else if (b==false) {
			if (u.getZhztbh()==4) {
				u.setZhztbh(2);
			}else if(u.getZhztbh()==5){
				u.setZhztbh(1);
			}else if(u.getZhztbh()==6){
				u.setZhztbh(1);
			}
		}
		return dao.updateByPrimaryKeySelective(u);
	}


	@Override
	public List<Map> querymhcwh() {
		// TODO Auto-generated method stub
		return dao.querymhcwh();
	}

}
