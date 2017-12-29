<%--
	pageEncoding="编码" --jsp在翻译成servlet的java文件时设置的java文件的字符集
	contentType="text/html";charset="iso-8859-1" ---响应时给浏览器的字符集
	没有设置 contentType 默认值"text/html"; charset="pageEncoding的编码格式"
 --%>
<%--
		导包使用多个 <%@ page import=" " %>
 --%>
<%@ page language="java" 
    pageEncoding="UTF-8"%>
    
<%--
		是否忽略el表达式，设置为false （建议每个jsp都加上）
		原因：不同的tomcat对el表达式的默认值不一样
 --%>    
<%@ page isELIgnored="false" %>

<%--
		是否是线程安全的
 --%>
<%@ page isThreadSafe="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
		<%
		request.setCharacterEncoding("UTF-8");
		%>
		<jsp:include page="header.jsp">
		<jsp:param value="阳光总在风云后" name="test"/>
		</jsp:include>
</body>
</html>