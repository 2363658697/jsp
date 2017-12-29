package tools;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import com.sun.org.apache.regexp.internal.recompile;

import redis.clients.jedis.BinaryClient.LIST_POSITION;
/**
 * jdbc��װ��
 * @author Administrator
 *
 */
public class DbUtils {
	static Properties p=new Properties();
	static{
		InputStream is=DbUtils.class.getResourceAsStream("/jdbc2.properties");  // '/' ����ͬһ��src�� ��������/������ͬһ������
		try {
			p.load(is);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * ��ȡ����
	 * @return
	 * @throws Exception 
	 */
	public static Connection getConnection() throws Exception{
		String url=p.getProperty("url");
		String driverClass=p.getProperty("driverClass");
		String uname=p.getProperty("username");
		String password=p.getProperty("password");
		Class.forName(driverClass);
		//��¼�ɹ�
		Connection conn=DriverManager.getConnection(url, uname, password);
		return conn;
	}
	/**
	 * ��ѯsql����list����
	 */
	public static  List<Map<String, String>> query(String sql) throws  Exception{
		Connection connection=getConnection();
		PreparedStatement ps=connection.prepareStatement(sql);
		ResultSet rSet=ps.executeQuery();
		ResultSetMetaData data=rSet.getMetaData();
		List list=new ArrayList();
		while(rSet.next()){
			Map map=new HashMap();
			for(int i=1;i<=data.getColumnCount();i++){
				String coString=data.getColumnName(i);
				String coValue=rSet.getString(i);
				map.put(coString, coValue);
			}
			list.add(map);
		}
		connection.close();
		rSet.close();
		return list;
	}
}
