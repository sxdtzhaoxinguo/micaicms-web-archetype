/**
 * <p>Copyright ® 迷彩CMS平台版权所有。</p>
 * 类名: PageUtil
 * 创建人: zhaoxg    创建时间: 2015年3月16日
 */
package ${package}.util;

import java.util.List;

/**
 * TODO <功能简述> <br/>
 * TODO <功能详细描述>
 * @author zhaoxg
 */
public class PageUtil<T> {

	private int recordCount;	//总记录数
	private int pageNo=1;		//当前页数
	private int pageCount;		//总页数
	private int firstResult=0;   //起始记录数
	private int pageSize=25;	//每页显示记录数，默认为25
	private int firstPage=1;   //首页
	private int prePage;       //前一页
	private int nextPage;      //下一页
	private int lastPage;      //末页
	private List<T> listdata;	//当前查询的记录集合
	
	
	public int getRecordCount() {
		return recordCount;
	}
	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
		if(this.recordCount==0)
			this.pageCount=1;
		else if(this.recordCount%this.pageSize>0)
			this.pageCount=this.recordCount/this.pageSize+1;
		else
			this.pageCount=this.recordCount/this.pageSize;
	}
	public int getFirstResult() {
		firstResult = pageSize*(pageNo-1);
		return firstResult;
	}
	public void setFirstResult(int firstResult) {
		this.firstResult = firstResult;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<T> getListdata() {
		return listdata;
	}
	public void setListdata(List<T> listdata) {
		this.listdata = listdata;
	}
	public int getFirstPage() {
		return firstPage;
	}
	public void setFirstPage(int firstPage) {
		this.firstPage = firstPage;
	}
	public int getPrePage() {
		return prePage;
	}
	public void setPrePage(int prePage) {
		this.prePage = prePage;
	}
	public int getNextPage() {
		nextPage = pageNo+1;
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public int getLastPage() {
		lastPage = pageCount;
		return lastPage;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	
}
