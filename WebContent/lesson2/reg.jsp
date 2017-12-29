<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

		<script type="text/javascript">
			function checkForm(){			
				<%--验证邮箱名称--%>
				var emailName=document.getElementsByName("emailName")[0].value;
				if(emailName==null || emailName==""){
					alert("请输入邮箱名称");
					return;
				}
				<%--验证邮箱地址--%>
				var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
				var emailAddress=document.getElementsByName("emailAddress")[0].value;
				if(!re.test(emailAddress)){
					alert("输入的邮箱地址不符合规范");
					return;
				}				
				<%--验证密码--%>
				var regex=/^\w{5,17}$/;
				var pw=document.getElementsByName("pw")[0].value;
				var pw1=document.getElementsByName("pw")[1].value;
				if(!regex.test(pw) || !regex.test(pw1)){
					alert("输入的密码不符合规范");
					return;
				}
				<%---验证个人网址--%>
				var reg=/^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(([A-Za-z0-9-~]+)\.)+([A-Za-z0-9-~\/])+$/;
				var myAddress=document.getElementsByName("myAddress")[0].value;
				if(!reg.test(myAddress)){
					alert("输入的网址不符合规范");
					return;
				}
				<%---验证电话号码--%>			
				var r=/(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/;
				var phone=document.getElementsByName("phone")[0].value;
				if(!r.test(phone)){
					alert("输入的电话号码不符合规范");
					return;
				}
				
			document.forms[0].submit();
			}		
			
		</script>

</head>
<body>
		<form action="suc.jsp" method="post">
				邮箱名称：<input type="text" name="emailName" /> <br />
				邮箱地址：<input type="text" name="emailAddress" /> <br />
				密码:<input type="password"  name="pw" /><br />
			    确认密码：<input type="password"  name="pw" /><br />
				个人网址：<input type="text" name="myAddress" /> <br />
			    电话号码：<input type="text" name="phone" /><br />
				性别：男<input type="radio" name="sex" value="0" checked="checked"/>
					      女<input type="radio" name="sex" value="1"/><br />	
				兴趣爱好：<input type="checkbox" name="ckbox"  value="0" checked="checked"/>跑步
				<input type="checkbox" name="ckbox"  value="1" />看电影
				<input type="checkbox" name="ckbox"  value="2" />听音乐<br />
				所在城市：
				<select  name="sel">
					<option  value="0">北京</option>
					<option value="1">上海</option>
					<option value="2"  selected="selected">深圳</option>
				</select><br   />
				<a href="javascript:checkForm()" style="font-size: larger;color: greenyellow;">立即注册</a>
		</form>
</body>
</html>