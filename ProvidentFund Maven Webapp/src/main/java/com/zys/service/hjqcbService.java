package com.zys.service;


import java.util.List;

import com.entity.Hjqcb;


public interface hjqcbService {
	public List<Hjqcb> queryAll();
    public int insert(Hjqcb h);
}
