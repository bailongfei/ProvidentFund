package com.zys.entity;

import java.util.List;

public class Pager {
private List list;//���ݼ���
private int curPage=1;//��ǰҳ
private int pageSize=3;//ÿҳ����
private int totalCount;//������
private int totalPages;//��ҳ��
private int first;//��ҳ
private int prev;//��ҳ
private int next;//��ҳ
private int last;//βҳ
private int startlndex;//��ʼ����
public List getList() {
	return list;
}
public void setList(List list) {
	this.list = list;
}
public int getCurPage() {
	if(curPage<1)
		return 1;
	return curPage;
}
public void setCurPage(int curPage) {
	
		this.curPage = curPage;
}
public int getPageSize() {
	return pageSize;
}
public void setPageSize(int pageSize) {
	this.pageSize = pageSize;
}
public int getTotalCount() {
	return totalCount;
}
public void setTotalCount(int totalCount) {
	this.totalCount = totalCount;
}
public int getTotalPages() {
	return getTotalCount()%getPageSize()==0?getTotalCount()/getPageSize():getTotalCount()/getPageSize()+1;
}

public int getFirst() {
	return 1;
}

public int getPrev() {
	return getCurPage()<=1?1:getCurPage()-1;
}

public int getNext() {
	return getCurPage()<getTotalPages()?getCurPage()+1:getTotalPages();
}

public int getLast() {
	return getTotalPages();
}


public int getStartIndex() {
	return (this.curPage-1)*this.pageSize;
}
public Pager(int curPage, int pageSize, int totalCount) {
	super();
	this.curPage = curPage;
	this.pageSize = pageSize;
	this.totalCount = totalCount;
}
public Pager() {
	super();
}
public Pager(List list, int curPage, int pageSize, int totalCount) {
	super();
	this.list = list;
	this.curPage = curPage;
	this.pageSize = pageSize;
	this.totalCount = totalCount;
}

}