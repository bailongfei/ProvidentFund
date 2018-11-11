package com.zhl.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.PeraccountMapper;
import com.dao.ZhhbjlMapper;
import com.entity.Peraccount;
import com.entity.Unitinfo;
import com.entity.Zhhbjl;
import com.zhl.pager.Pager;
@Service
public class PeraccountServiceImpl implements PeraccountService {
	@Autowired
	private PeraccountMapper dao;
	@Autowired
	private ZhhbjlMapper hbdao;
	@Transactional
	@Override
	public int insert(Peraccount peraccount) {
		// TODO Auto-generated method stub
		return dao.insert(peraccount);
	}

	@Override
	public Peraccount login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.findbyaccount(map);
	}
	@Transactional
	@Override
	public void AccountMerge(Map<String, Object> account1, Map<String, Object> account2) {
		// TODO Auto-generated method stub
		//��ѯ�����������
		Peraccount peraccount1=dao.findbyaccount(account1);
		Peraccount peraccount2=dao.findbyaccount(account2);
		System.out.println(peraccount1);
		System.out.println(peraccount2);
		//�ϲ���� �������˺�
		if(peraccount1!=null || peraccount2 !=null){
			Integer money1=peraccount1.getPeracbalance();
			Integer money2=peraccount2.getPeracbalance();
			money1=money1+money2;
			money2=0;
			peraccount1.setPeracbalance(money1);
			peraccount2.setPeracbalance(money2);
			peraccount2.setZhztbh(3);
			dao.updateByPrimaryKeySelective(peraccount1);
			dao.updateByPrimaryKeySelective(peraccount2);
		}
		//��Ӻϲ��˺ż�¼
		Zhhbjl zhhbjl=new Zhhbjl();
		zhhbjl.setBlgrzh(peraccount1.getGrzhbh().toString());
		zhhbjl.setXhgrzh(peraccount2.getGrzhbh().toString());
		zhhbjl.setGrzhbh(peraccount1.getGrzhbh());
		hbdao.insertSelective(zhhbjl);
	}
	@Override
	public Pager findbyPager(Map<String, Object> map,Pager p) {
		// TODO Auto-generated method stub
		String curPage=(String) map.get("curPage");//���մ�ǰ̨�����ĵĵ�ǰҳ
		p.setCurPage(Integer.parseInt(curPage));//���õ�ǰҳ��pager����
		int totalCount=dao.findPagercount(map);
		p.setTotalCount(totalCount);
		map.put("startIndex", p.getStartIndex());//���ÿ�ʼ����
		map.put("pageSize", p.getPageSize());//����ÿҳ����
		List<Map<String, Object>> list=dao.findbyPager(map);//��ѯ��ҳ������
		System.out.println(list);
		p.setList(list);//�ѷ�ҳ�����ݷŵ�pager��������
		return p;
	}
	@Transactional
	@Override
	public void UpdateStates(Integer zhztbh,Integer grzhbh) {
		// TODO Auto-generated method stub
		Peraccount account=new Peraccount(grzhbh, zhztbh);
		dao.updateByPrimaryKeySelective(account);
	}
	@Transactional
	@Override
	public Map<String, Object> findUnitName(String peracId) {
		// TODO Auto-generated method stub
		return dao.findUnitName(peracId);
	}
	@Transactional
	@Override
	public Map<String, Object> finddkInfo(Integer dkxxbh) {
		// TODO Auto-generated method stub
		return dao.finddkInfo(dkxxbh);
	}
	@Transactional
	@Override
	public List<Unitinfo> queryUnitinfos() {
		// TODO Auto-generated method stub
		return dao.queryUnitinfos();
	}
	@Transactional
	@Override
	public int PeopleTransfer(Peraccount account) {
		// TODO Auto-generated method stub
		int result=dao.updateByPrimaryKeySelective(account);
		return result;
	}

	@Override
	public Pager findaccountinfo(Map<String, Object> map, Pager p) {
		// TODO Auto-generated method stub
		String curPage=(String) map.get("curPage");//���մ�ǰ̨�����ĵĵ�ǰҳ
		p.setCurPage(Integer.parseInt(curPage));//���õ�ǰҳ��pager����
		int totalCount=dao.findaccountnum(map);
		p.setTotalCount(totalCount);
		map.put("startIndex", p.getStartIndex());//���ÿ�ʼ����
		map.put("pageSize", p.getPageSize());//����ÿҳ����
		List<Map<String, Object>> list=dao.findaccountinfo(map);//��ѯ��ҳ������
		System.out.println(list);
		p.setList(list);//�ѷ�ҳ�����ݷŵ�pager��������
		return p;
	}

	@Override
	public void Updateinfo(Peraccount account) {
		// TODO Auto-generated method stub
		dao.updateByPrimaryKeySelective(account);
	}

	@Override
	public Peraccount findbyid(Integer grzhbh) {
		// TODO Auto-generated method stub
		return dao.selectByPrimaryKey(grzhbh);
	}

	@Override
	public List<Map<String, Object>> findbyIdnumber(String IdNumber) {
		// TODO Auto-generated method stub
		return dao.findbyIdnumber(IdNumber);
	}

	@Override
	public Pager findbyname(Map<String, Object> map, Pager p) {
		// TODO Auto-generated method stub
		String curPage=(String) map.get("curPage");//���մ�ǰ̨�����ĵĵ�ǰҳ
		p.setCurPage(Integer.parseInt(curPage));//���õ�ǰҳ��pager����
		int totalCount=dao.findbynamecount(map);
		p.setTotalCount(totalCount);
		map.put("startIndex", p.getStartIndex());//���ÿ�ʼ����
		map.put("pageSize", p.getPageSize());//����ÿҳ����
		List<Map<String, Object>> list=dao.findbyname(map);//��ѯ��ҳ������
		p.setList(list);
		return p;
	}
	
	
}
