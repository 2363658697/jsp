<%@ page language="java" 
    pageEncoding="UTF-8" isELIgnored="false"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
		<jsp:useBean id="mt" class="demo.MysqlTest"></jsp:useBean>
		<table border="1" style="text-align: center;">
		<c:set var="index" value="0"></c:set>
		<c:forEach var="list" items="${pageScope.mt.select}">
			<c:if test="${pageScope.index==0 }">
				<tr>
					<c:forEach var="map" items="${pageScope.list}">
						<th>${map.key}</th>
					</c:forEach>
					<c:set var="index" value="1"></c:set>
				</tr>
			</c:if>
			<tr>
				<c:forEach var="map" items="${pageScope.list}">
						<td>${map.value}</td>
				</c:forEach>
			</tr>
		</c:forEach>
		</table>
		
</body>
=
</html>