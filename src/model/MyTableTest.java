package model;

import java.util.List;
import java.util.Map;

import tools.DbUtils;

public class MyTableTest {

	/**
	 * 执行数据库的查询语句
	 * @throws Exception 
	 */
	public  List<Map<String, String>> getTable(String str) {
		if(str==null){
			str="";
		}
		String sql="select * from dept where dname like '%"+str+"%'";
		 List<Map<String, String>> list = null;
		try {
			list = DbUtils.query(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public Integer getTableCount(String str){
		if(str==null){
			str="";
		}
		String sql="select count(rowid) ct from emp where ename like '%"+str+"%'";
		 List<Map<String, String>> list = null;
		try {
			list = DbUtils.query(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Integer count=Integer.parseInt(list.get(0).get("CT").toString());
		return count;
	}


	public PageTools getTableList(String str,Integer curPage) {
		if(str==null){
			str="";
		}
		Integer totalCount=getTableCount(str);
		PageTools pageTools=new PageTools(curPage, null, totalCount);
		String sql="select * from (select t.*,rownum rn from emp t where ename like '%"+str+"%'"+") where rn>="+pageTools.getStartIndex()+"and rn<="+pageTools.getEndIndex();
		 List<Map<String, String>> list = null;
		try {
			list = DbUtils.query(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		pageTools.setData(list);
		return pageTools;
	}
}
