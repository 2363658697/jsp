package demo;

import java.util.List;
import java.util.Map;

import tools.DbUtils;

public class MysqlTest {

	/**
	 * ִ�����ݿ�Ĳ�ѯ���
	 * @throws Exception 
	 */
	public  List<Map<String, String>> getSelect() {
		String sql="select * from goods";
		 List<Map<String, String>> list = null;
		try {
			list = DbUtils.query(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}






}
