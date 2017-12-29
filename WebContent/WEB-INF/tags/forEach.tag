<%@tag import="java.util.Collection"%>
<%@tag pageEncoding="UTF-8" %>
<%@attribute name="var"  required="true"%>
<%@attribute name="items"  type="java.lang.Object" %>
<%
	if(items instanceof  Collection){
	    Collection<String> c=( Collection<String>)items;
	    for(String s:c){
	 	request.setAttribute(var, s);
%>
<jsp:doBody></jsp:doBody>
<% 
	    }
	}
	if(items.getClass().getName().startsWith("[")){
	    String[] arr=(String[])items;
	    for(String ss:arr){
	 	request.setAttribute(var, ss);
%>
<jsp:doBody></jsp:doBody>
<% 
	}
}
%>
