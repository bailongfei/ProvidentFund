package com.wangc.service;

import java.util.List;
import java.util.Map;

import com.entity.Grzfbkzhxx;
import com.entity.Repayplan;
import com.wangc.Pager.Pager;

public interface GrzfbkzhxxService {

		//��ѯ����״̬Ϊ0δ����
		public List<Map<String,Object>> Grzfquery();
		//��ѯ���л���״̬Ϊ1
		public List<Map<String, Object>> Grzfquerytwo();
		//�޸�״̬
		public int updatestatic(int dkbh);
		//����id ��ѯ
		public List<Map<String, Object>> queryGrzgId(int dkbh);

		public int updateGrzfb(Map<String, Object> map);/*��̬�޸�*/
		 //��ӻ���ƻ�
		public int Saverepayplan(Repayplan repayplan);
		//��ҳģ����ѯ
		public Pager findbygrzfbk(Map<String, Object> grzfbk,Pager p);
			//��ѯ��������
		 public Integer findcount(Map<String, Object> grzfbk);

}
