<%@page import="oracle.net.aso.s"%>
<%@page import="Tools.DbUtils"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	Connection conn = null;
	//建立连接
	public void init() throws ServletException {
		try {
			conn = DbUtils.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//关闭连接
	public void finalize(){
		try {
		conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	%>

	<%
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String emailName=request.getParameter("emailName");
			String emailAddress=request.getParameter("emailAddress");
			String pw=request.getParameter("pw");
			String myAddress=request.getParameter("myAddress");
			String phone=request.getParameter("phone");
			String sex=request.getParameter("sex");
			if("0".equals(sex)){
				sex="男";
			}else{
				sex="女";
			}
			//对获取的兴趣爱好进行判断
			String ckbox="";
			String[] ckboxs=request.getParameterValues("ckbox");
			for(String ck:ckboxs){
				if("0".equals(ck)){
					ckbox+="跑步,";
				}else if("1".equals(ck)){
					ckbox+="看电影,";
				}else{
					ckbox+="听音乐,";
				}
			}
			ckbox=ckbox.substring(0,ckbox.length()-1);
			
			//对获取的所在城市进行判断
			String sel="";
			String[] sels=request.getParameterValues("sel");
			for(String s:sels){
				if("0".equals(s)){
					sel+="北京,";
				}else if("1".equals(s)){
					sel+="上海,";
				}else{
					sel+="深圳,";
				}
			}
			sel=sel.substring(0,sel.length()-1);		
			%>	
			
			
			<%= "邮箱名:"+emailName%><br/>
			<%="邮箱地址:"+emailAddress%><br/>
			<%="密码:"+pw%><br/>
			<%="个人网址:"+myAddress%><br/>
			<%="电话号码:"+phone%><br/>
			<%="性别:"+sex%><br/>
			<%="兴趣爱好:"+ckbox%><br/>
			<%="所在城市:"+sel%><br/>
			
			
			<%
			String sql="insert into logininfo(emailname,emailaddress,pw,myaddress,phone,sex,ckbox,sel) values(?,?,?,?,?,?,?,?);";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, emailName);
			ps.setString(2, emailAddress);
			ps.setString(3, pw);
			ps.setString(4, myAddress);
			ps.setString(5, phone);
			ps.setString(6, sex);
			ps.setString(7, ckbox);
			ps.setString(8, sel);
			
			int count=ps.executeUpdate();
			%>	
			<%="成功插入："+count+"条数据" %>
	<% 	
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}			
	%>

</body>
</html>