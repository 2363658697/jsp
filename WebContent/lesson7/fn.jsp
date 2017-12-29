<%@ page language="java"  isELIgnored="false"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>fn标签库</title>
</head>
<body>
		<!-- contains -->
		<c:if test="${fn:contains('yes','e') }">
				fn:contains
		</c:if></br>
		<!-- fn:containsIgnoreCase -->
		<c:if test="${fn:containsIgnoreCase('yes','YES') }">
			fn:containsIgnoreCase
		</c:if></br>
		<!-- fn:endsWith -->
		<c:if test="${fn:endsWith('yes','s')}">
			fn:endsWith
		</c:if></br>
		<!-- fn:escapeXml -->
		  ${fn:escapeXml('<font color=red>a</font>')}</br>
		  <!-- fn:indexOf -->
		  ${fn:indexOf('abca', 'a')}</br>	  
		  <!-- fn:split -->
		<c:set var="qq" value="${fn:split('aa bb cc', ' ')}" />
		${pageScope.qq[1] }</br>
		 <!-- fn:join -->
		<c:out value="${fn:join(qq, '-')}"></c:out></br>
		 <!-- fn:length -->
		${fn:length('dttt')}</br>
		<!-- fn:replace -->
		${fn:replace('rrr,ddd',',','-')}</br>
		<!-- fn:startsWith -->
		${fn:startsWith('kkgett','kk')}</br>
		<!-- fn:substring -->
		${fn:substring('dislike',3,7)}</br>
		<!-- fn:substringAfter -->
		${fn:substringAfter('hello-word', '-')}</br>
		<!-- fn:substringBefore -->
		${fn:substringBefore('hello-word', '-')}</br>
		<!-- toLowerCase -->
		<c:out value="${fn:toLowerCase('BBB')}"/><br>  
		<!-- UpperCase -->
        <c:out value="${fn:toUpperCase('aaa')}"/><br>  
        <!-- trim -->
        <c:out value="${fn:trim(' ak - 47  ')}"/><br> 
</body>
</html>