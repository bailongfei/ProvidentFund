package com.wangc.service;

import java.util.List;
import java.util.Map;

import com.entity.Grzfbkzhxx;

public interface GrzfbkzhxxService {
		public List<Map<String, Object>> Grzfquery();
		//����id ��ѯ
		public List<Map<String, Object>> queryGrzgId(int dkbh);

		public int updateGrzfb(Map<String, Object> map);/*��̬�޸�*/
		 int updateByPrimaryKey(Grzfbkzhxx record);
}
