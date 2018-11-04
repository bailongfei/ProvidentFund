package com.wangc.serviceimpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.DyhtxxMapper;
import com.dao.DylxbMapper;
import com.entity.Dyhtxx;
import com.wangc.service.DyhtxxService;
@Service
public class DyhtxxServiceimpl implements DyhtxxService{

@Autowired
	private DyhtxxMapper dh;

@Override
public int Dyhtxxsave(Dyhtxx dt) {
	// TODO Auto-generated method stub
	return dh.Dyhtxxsave(dt);
}

	

}
