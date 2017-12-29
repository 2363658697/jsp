<%@tag pageEncoding="UTF-8"%>
<%@ attribute name="test" required="true" type="java.lang.Boolean"%>
<%@ taglib tagdir="/WEB-INF/tags"  prefix="my"%>
<%
	if(test==true){
%>
<jsp:doBody></jsp:doBody>
<%
	}
%>