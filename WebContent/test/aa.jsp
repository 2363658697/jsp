<%@page import="java.io.PrintStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
			6666
	

    	<%
    		ByteArrayOutputStream baos=new ByteArrayOutputStream();
			PrintStream ps=new PrintStream(baos);
			exception.printStackTrace(ps);
			String et=new String(baos.toByteArray());
    	
    	%>
		<%=et%>
			
</body>
</html>