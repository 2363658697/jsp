<%@ page language="java" isELIgnored="false" 
    pageEncoding="UTF-8"%>
   <!-- 导入标签库 -->
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<!-- set ， if 的用法
	if不能嵌套，可以使用多个if做判断
	 -->
	<c:set var="sal" value="12000" scope="page"></c:set>
	
	<c:if test="${pageScope.sal <10000 }">
		低薪
	</c:if>
	<c:if test="${pageScope.sal >=10000 && pageScope.sal<20000}">
		中薪
	</c:if>
	<c:if test="${pageScope.sal >20000 }">
		高薪
	</c:if>
	</br>
	
	<!-- choose when otherwise  相当于 if elseif   else -->
	<c:choose>
		<c:when test="${pageScoep.sal <10000 }">
			低薪
		</c:when>
		<c:when test="${pageScope.sal >=10000 && pageScope.sal<20000 }">
			中薪
		</c:when>
		<c:otherwise>
			高薪
		</c:otherwise>
	</c:choose>
	</br>
		
	<!-- foreach 相当于 for循环和foreach循环 -->
	<c:forEach var="i"  begin="1" end="5" step="1">
			${pageScope.i }</br>
	</c:forEach>
	</br>
	<%
		String[] str=new String[]{"aa","bb"};
		pageContext.setAttribute("str", str);
	%>
	<c:forEach var="j"  items="${pageScope.str }">
		${pageScope.j }</br>
	</c:forEach>
	</br>
	
	<!-- out 标签可以对标签转译，el表达式则会在网页上直接显示标签内容，escapeXml属性决定是否对标签转译默认值true
	out标签防止xss攻击，字符类型的数据用out输出 
	-->
	<c:set var="a" value="<font color=red>a</font>"></c:set>
	${pageScope.a }</br>
	<c:out value="${pageScope.a }"  escapeXml="true"></c:out>
	</br>
	<!-- 捕获异常 -->
	<c:catch var="ex">
		<%
			String s=null;
			s.toString();
		%>
	</c:catch>
	${pageScope.ex }
</body>
</html>