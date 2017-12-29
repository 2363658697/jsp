<%@ page language="java" 
    pageEncoding="UTF-8" isELIgnored="false"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<form action="${pageContext.request.contextPath }/ts">
		<input type="text" name="model"/>
		<input type="submit"  value="搜索"/>
	</form>
		<table border="1" style="text-align: center;">
		<c:set var="index" value="0"></c:set>
		<c:forEach var="list" items="${requestScope.list.data}">
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
		<tr>
			<td><a href="${pageContext.request.contextPath }/ts?curPage=1">首页</a></td>
			<td><a href="${pageContext.request.contextPath }/ts?curPage=${requestScope.list.prePage }">上一页</a></td>
			<c:forEach var="i" begin="1" end="${requestScope.list.totalPage}" step="1">
				<a href="${pageContext.request.contextPath }/ts?curPage=${pageScope.i }">${pageScope.i }</a>
			</c:forEach>
			<td><a href="${pageContext.request.contextPath }/ts?curPage=${requestScope.list.nextPage }">下一页</a></td>
			<td><a href="${pageContext.request.contextPath }/ts?curPage=${requestScope.list.totalPage }">尾页</a></td>
		</tr>
		<style type="text/css">
				a{
					text-decoration: none;
				}
		</style>
</body>
</html>