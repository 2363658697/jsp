<%@ page language="java" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	a.jsp
	<jsp:useBean id="user" class="demo.User"  scope="page"></jsp:useBean>
	<jsp:setProperty property="age" name="user" value="18"/>
	<jsp:getProperty property="age" name="user"/>
</body>
</html>