<%@ page language="java" isELIgnored="false"
    pageEncoding="UTF-8"  %>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>国际化</title>
</head>
<body>
	<!-- 国际化 -->
	<fmt:setLocale value="${pageContext.request.locale}"/>
	<fmt:setBundle basename="/mess" ></fmt:setBundle>
	<fmt:message key="address"></fmt:message>
	
	<!-- 
	日期格式化:
		formatDate:日期转成字符串
		parseDate：字符串转日期		
	 -->
	<jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
	<fmt:formatDate value="${pageScope.date }" pattern="yyyy-MM-dd"/> 
	<fmt:parseDate value="2012/12/23" pattern="yyyy/MM/dd"></fmt:parseDate>
</body>
</html>