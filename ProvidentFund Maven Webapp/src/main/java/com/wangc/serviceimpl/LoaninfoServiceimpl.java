package com.wangc.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.LoaninfoMapper;
import com.entity.Loaninfo;
import com.wangc.service.LoaninfoService;
@Service
public class LoaninfoServiceimpl implements LoaninfoService{
@Autowired
	public LoaninfoMapper Lm;
	@Override
	public int Loansave(Loaninfo lo) {
		// TODO Auto-generated method stub
		return Lm.Loansave(lo);
	}

}
