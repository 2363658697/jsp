<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<%--
		el表达式：${}
		可以在{}中进行任何运算
	 --%>
	 
	 <!-- 判断是否为空 -->
	 ${empty '' }
	 <!-- 获取上下文对象 -->
	 ${pageContext.request.contextPath }
	 
	 <%--
	 el表达式的内置对象：可以通过  内置对象.   来获取值
	 当键中含有 -  时 ，内置对象['键']  来取值
	 
	 获取值时建议带上作用域对象：不带作用域对象会从作用域最低的对象开始查找
	 pageScope  《 requestScope 《sessionScope  《applicationScope
	  --%>
	<jsp:useBean id="user" class="demo.User"  scope="request"></jsp:useBean>
	<br>
	<jsp:setProperty property="age" name="user" value="18"/>
	${requestScope.user.age }
	<br>
	${param["id"] }
	<br>
	${header.Cookie }
	 <br>
	 

	 
</body>
</html>