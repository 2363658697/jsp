<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags"  prefix="my"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>自定义标签</title>
</head>
<body>
	<%
		List list=new ArrayList();
		list.add("d");
		list.add("c");
		request.setAttribute("list", list);
	%>

	<my:forEach var="i" items="${fn:split('1,3,4',',') }">
		${requestScope.i }
	</my:forEach>


	<my:forEach var="i" items="${requestScope.list }">
		${requestScope.i }
	</my:forEach>
	<my:if test="${5>2 }">
		ddd		
	</my:if>

</body>
</html>