<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--获取文本框信息 --%>
	<%-- 	<%
	request.setCharacterEncoding("UTF-8");
	String s = request.getParameter("txt");
	out.println("您的姓名是"+s);
	%> --%>

	<%--获取单选按钮信息 --%>
	<%-- 	<%
		request.setCharacterEncoding("UTF-8");
		String s=request.getParameter("rdo");
		out.println("您选择了:" + s);
	%> --%>

	<%--获取多选按钮信息 --%>
	<%-- 	<center>
		您选择的是：
		<%
		request.setCharacterEncoding("UTF-8");
		String s[] = request.getParameterValues("cb");
		if (s != null) {
			for (int i = 0; i < s.length; i++) {
	%>
		<%=s[i]%>
		<%
				}
			}
		%>
	</center> --%>

	<%--获取口令，密码信息 --%>
	<%-- 		<%
		String s = request.getParameter("pwd");
		if (s != null)
			out.println("<HR>Your password is:" + s);
	%> --%>

	<%--获取hidden信息 --%>
	<%-- <%  String s=request.getParameter("hid");
		if (s!=null)
			out.println("<HR>Submitted value is:"+s);
	%> --%>

	<%--获取单选下拉列表信息 --%>
	<%-- <%	request.setCharacterEncoding("UTF-8");
	String s=request.getParameter ("sel");
	if (s!=null){
%>
	<%=s %>
<%} %> --%>

	<%-- <%
	String s=request.getParameter("rdo");
	if (s!=null) {
		if (s.equals("a.jpg"))
			out.println("<img src=a.jpg></img>");
		else if (s.equals("a.avi"))
			out.println("<embed src=a.avi></embed>");
		else if (s.equals("a.mp3"))
			out.println("<embed src=a.mp3></embed>");
	}
%> --%>

	<%
	String s=request.getParameter("rdo");
	if (s!=null) {
		if (s.equals("a.jpg")){
%>
	<img src=<%=s %>></img>
	<%		}
		else if (s.equals("a.avi")){
%>
	<embed src=<%=s %>></embed>
	<%		}
		else if (s.equals("a.mp3")){
%>
	<embed src=<%=s %> loop="1"></embed>
	<% 
		}
	}
%>





</body>
</html>