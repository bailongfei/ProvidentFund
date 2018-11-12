package com.zhl.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.PeraccountMapper;
import com.dao.ryzyMapper;
import com.entity.Peraccount;
import com.entity.ryzy;
import com.zhl.pager.Pager;
@Service
public class RyzyServiceImpl implements RyzyService {
	@Autowired
	private ryzyMapper dao;
	@Autowired
	private PeraccountMapper perdao;
	@Transactional
	@Override
	public int SaveRyzyApply(ryzy ryzy) {
		// TODO Auto-generated method stub
		return dao.insertSelective(ryzy);
	}
	@Override
	public Pager queryapply(Map<String, Object> map, Pager p) {
		// TODO Auto-generated method stub
		String curPage=(String) map.get("curPage");//���մ�ǰ̨�����ĵĵ�ǰҳ
		p.setCurPage(Integer.parseInt(curPage));//���õ�ǰҳ��pager����
		int totalCount=dao.queryapplycount();
		p.setTotalCount(totalCount);
		map.put("startIndex", p.getStartIndex());//���ÿ�ʼ����
		map.put("pageSize", p.getPageSize());//����ÿҳ����
		List<Map<String, Object>> list=dao.queryapply(map);//��ѯ��ҳ������
		System.out.println(list);
		p.setList(list);//�ѷ�ҳ�����ݷŵ�pager��������
		return p;
	}
	@Override
	public Pager queryryzysh(Map<String, Object> map, Pager p) {
		// TODO Auto-generated method stub
		String curPage=(String) map.get("curPage");//���մ�ǰ̨�����ĵĵ�ǰҳ
		p.setCurPage(Integer.parseInt(curPage));//���õ�ǰҳ��pager����
		int totalCount=dao.queryryzyshcount();
		p.setTotalCount(totalCount);
		map.put("startIndex", p.getStartIndex());//���ÿ�ʼ����
		map.put("pageSize", p.getPageSize());//����ÿҳ����
		List<Map<String, Object>> list=dao.queryryzysh(map);//��ѯ��ҳ������
		System.out.println(list);
		p.setList(list);//�ѷ�ҳ�����ݷŵ�pager��������
		return p;
	}
	@Transactional
	@Override
	public int CheckRyzy(ryzy ryzy) {
		// TODO Auto-generated method stub
		ryzy.setShzt(2);
		Peraccount per=new Peraccount();
		per.setGrzhbh(ryzy.getSqr());
		per.setUnitinfoid(ryzy.getXdw());
		perdao.updateByPrimaryKeySelective(per);
		return dao.updateByPrimaryKeySelective(ryzy);
	}
	@Override
	public int CheckRyzy2(ryzy ryzy) {
		// TODO Auto-generated method stub
		ryzy.setShzt(3);
		return dao.updateByPrimaryKeySelective(ryzy);
	}

}
