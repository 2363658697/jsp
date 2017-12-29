<%@ page language="java" isELIgnored="false"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
		<form action="work.jsp"> 
			<input type="text"  name="num1" value="${param.num1}">
			<input type="text"  name="num" value="${param.sel}"  style="width: 30px">
			<input type="text"  name="num2" value="${param.num2}">
			<input type="submit"  value="=">
			<input type="text"  name="num2" value="${param.sel == '+' ?(param.num1+param.num2):(param.sel== '-' ?(param.num1-param.num2):(param.sel== '*' ?(param.num1*param.num2):(param.num1/param.num2)))}">
			<br>
			<select  name="sel" style="margin-left: 178px;margin-top: 5px;width: 35px;">
				<option value="+">+
				<option value="-">-
				<option value="*">*
				<option value="/">/
			</select> 
		</form>
</body>
</html>