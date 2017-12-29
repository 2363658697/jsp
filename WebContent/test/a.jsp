<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--文本框 --%>
	<!-- 	<form action="b.jsp" method="post">
		<p>
			姓名： <input type="text" name="txt">
		<p>
			<input type="submit" value="提交"> <input type="reset"
				value="重置">
	</form> -->

	<%--单选按钮 --%>
	<!-- 	<center>
		<font size=5 color="blue">单选钮Radio的使用 </font>
		<p>
		<hr>
		<form action="b.jsp" method="post">
			<input type="radio" name="rdo" value="先生">男 
			<input type="radio" name="rdo" value="女士">女
			<input type="submit"value="提交">
		</form>
	</center> -->


	<%--复选按钮 --%>
	<!-- 	<center>
	<font color="blue" size="5">接收复选框的值</font><p>
	<hr>
	<form action="b.jsp" method="post">
		<input type="checkbox" name="cb" value="文学">文学
		<input type="checkbox" name="cb" value="音乐">音乐
		<input type="checkbox" name="cb" value="体育">体育
		<p>
		<input type="submit" value="提交">
	</form>
	</center> -->

	<%--口令，密码框 --%>
	<!-- 	<form action="b.jsp" method="post">
	Input password：<P>
		<input type="password" name="pwd">
		<input type="submit" value="Submit">
	</form>	 -->

	<%--hidden --%>
	<!-- 	<form action="b.jsp" method="post">
		<input type="hidden" name="hid" value="ok">
		<input type="submit" value="Submit">
	</form>	 -->

	<%--单选下拉列表 --%>
	<!-- 	<FONT SIZE="5" COLOR="blue">
		选择一个城市
	</FONT> <p> <hr>	
	<FORM METHOD=POST ACTION="b.jsp">
		<SELECT NAME="sel" size=1>
			<option value="北京">北京</option>
			<option value="上海">上海</option>
			<option value="天津">天津</option>
		</SELECT>
		<INPUT TYPE="submit" value="提交">
	</FORM> -->


	<font size=5 color="blue"> 请选择 </font>
	<p>
	<hr>
	<form action="b.jsp" method="post">
		<input type="radio" name="rdo" value="a.jpg">图片 
		<input type="radio" name="rdo" value="a.avi">电影 
		<input type="radio"	name="rdo" value="a.mp3">音乐 
		<input type="submit" value="提交">
	</form>







</body>
</html>