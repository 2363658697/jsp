<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<%--定义一个Integer的变量--%>
		<%! Integer a=0; %>
		
		<%--对该变量上锁 --%>
		<%
			synchronized(a){
				a++;
			}
		%>
		
		<%=a %>
		
		    <%! long count = 0;                //被客户共享的count
        	synchronized void setCount()  //synchronized修饰的方法
       	 {   count++;
       	 }
    %>
    <%  	setCount();
        	 out.println("您是第"+count+"个访问本站的客户");   
    %>
		
		
</body>
</html>