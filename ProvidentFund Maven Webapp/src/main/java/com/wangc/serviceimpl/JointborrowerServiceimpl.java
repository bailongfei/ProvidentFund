package com.wangc.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.JointborrowerMapper;
import com.entity.Jointborrower;
import com.wangc.service.JointborrowerService;
@Service
public class JointborrowerServiceimpl implements JointborrowerService{
@Autowired
		private JointborrowerMapper jo;
	@Override
	public int save(Jointborrower tb) {
		// TODO Auto-generated method stub
		return jo.insert(tb);
	}

}
