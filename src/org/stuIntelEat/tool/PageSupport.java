package org.stuIntelEat.tool;

import java.util.ArrayList;
import java.util.List;

public class PageSupport {
 private Integer currentPageNo=1;
 private Integer pageSize=8;
 private Integer totalCount=0;
 private Integer totalPageCount=1;
 private Integer num=3;
 private List items =new ArrayList();
 /*private List<Object> items =new ArrayList<Object>();*/
 /**
	 * 计算总页数
	 * @param totalCount
	 */

 /**
	 * 当前页的前num条页 假设当前页是 6 共有11页 如：1 2 3 4 5
	 * @return
	 */
	public List<Integer> getPrevPages() {
		List<Integer> list = new ArrayList<Integer>();
		Integer _frontStart = 1;
		
		if (currentPageNo > num) {
			_frontStart = currentPageNo - num;
		}
		
		
		for (Integer i=_frontStart; i<currentPageNo; i++) {
			list.add(i);
		}
		
		return list;
	}
	
 public List<Integer> getNextPages() {
	 int endPage=num;
	 List<Integer> list =new ArrayList<Integer>();
	 if((currentPageNo+num)<totalPageCount&&totalPageCount>num){
		 endPage=currentPageNo+endPage;
	 }else {
		 endPage=totalPageCount;
	}
	 for (int i = currentPageNo+1; i <= endPage; i++) {
	   list.add(i);
	}
	return list;
 }
public Integer getNum() {
	return num;
}
public void setNum(Integer num) {
	this.num = num;
}
public List getItems() {
	return items;
}
public void setItems(List items) {
	this.items = items;
}
public Integer getTotalPageCount() {
	return totalPageCount;
}
public void setTotalPageCount(Integer totalCount) {
	if(totalCount>0){   
		  this.totalCount=totalCount;
		  this.totalPageCount=(totalCount+pageSize-1)/pageSize;
		
	}

}
public Integer getCurrentPageNo() {
	return currentPageNo;
}
public void setCurrentPageNo(Integer currentPageNo) {
	this.currentPageNo = currentPageNo;
}
public Integer getPageSize() {
	return pageSize;
}
public void setPageSize(Integer pageSize) {
	this.pageSize = pageSize;
}
public Integer getTotalCount() {
	return totalCount;
}
public void setTotalCount(Integer totalCount) {
	this.totalCount = totalCount;
}

public Integer getPrev(){
	return currentPageNo-1;
}

public Integer getNext(){
	return currentPageNo+1;
}

public Integer getLast(){
	return totalPageCount;
}

public boolean getIsPrev(){
	if(currentPageNo>1){
		return true;
	}
	return false;
}


public boolean getIsNext(){
	
	if(totalPageCount!=null && currentPageNo<totalPageCount){
		return true;
	}
	return false;
}

}
