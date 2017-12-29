<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--定义JSP全局变量，方法 --%>
	<%! int a=10;
		public int add(int p1,int p2){
			return p1+p2;
		}			
	%>
	<%-- 输出JSP全局变量，调用方法 --%>
	<%= "a="+a+"----"+add(3,5)
	%>
	<%--定义jsp成员变量，java程序片，<%%>可以对java代码进行单行拼接 --%>
	<%
			a++;
			for(int i=1;i<3;i++){
	%>		
	<%=i %>	
	<%	}
	%>
	<%--jsp输出 --%>
	<%=a %>
	
	
</body>
</html>