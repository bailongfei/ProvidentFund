package com.llt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.InfoVoMapper;
import com.entity.InfoVo;

@Service
public class ImportExcelServiceImpl implements ImportExcelService {
	@Autowired
	private InfoVoMapper dao;

	@Override
	public void importExcel(InfoVo infoVo) {
		// TODO Auto-generated method stub
		dao.importExcel(infoVo);
	}

}
