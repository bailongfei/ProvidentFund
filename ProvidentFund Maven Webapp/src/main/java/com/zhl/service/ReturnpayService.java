package com.zhl.service;

import com.entity.Returnpay;
import com.zhl.pager.Pager;

public interface ReturnpayService {
	public Pager findbyPager(String peracId,Pager p);
	public void SaveReturnpay(Returnpay returnpay);
}
