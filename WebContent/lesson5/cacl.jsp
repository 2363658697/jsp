<%@ page language="java" isELIgnored="false"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>计算器</title>
			<style type="text/css">
			body,html{
				margin: 0px;
				padding: 0px;
			}			
			.bt{
				width: 40px;
				height: 35px;
			}
			.c{
				width: 40px;
				height: 35px;
			}
			.tag{
				width: 40px;
				height: 35px;
			}
			.a{
				border: none;
				text-align: right;
			}
			.s{
				width: 172px;
				height: 35px;
			}
			td{
				width: 35px;
				height: 35px
			}
		</style>
		<script type="text/javascript">
			window.onload = function() {
				var e = document.getElementById('e');
				var bts = document.getElementsByClassName('bt');
				
				//数字按钮
				for (var i = 0; i < bts.length; i++) {
					bts[i].onclick = function() {
						e.value += this.value;
					}
				}
			}
			
			//点击运算符后的操作
			function getTag(tag){
				var q = document.getElementById('q');
				var e = document.getElementById('e');
				var w=document.getElementById('w');
				if(e.value != null && e.value != ""){
					q.value = e.value;
					w.value = tag;
					e.value = null;
				}
			}
			
			//清屏
			function cls() {
				var views = document.getElementsByClassName('a');
				for (var i = 0; i < views.length; i++) {
					views[i].value = null;
				}
			}
		</script>
</head>
<body>
		<div style="margin-left: 400px">
			<form action="cacl.jsp" method="post">
				<table border="1" cellpadding="0" >
					<tr>
						<td colspan="4" >
							<input type="text" name="num1" value="${param.num1}"  class="a"  id="q" readonly="readonly"/><br />
							<input type="text" name="num2" value="${param.num2}" class="a" id="w" readonly"/><br />
							<input type="text" name="num3" value="${param.num3}" class="a" id="e" readonly="readonly" placeholder="0"/><br />
							<input type="text" name="num4" value='<c:if test="${param.num2 == '+'}">${param.num1+param.num3 }
							</c:if><c:if test="${param.num2 == '-'}">${param.num1-param.num3 }
							</c:if><c:if test="${param.num2 == '*'}">${param.num1*param.num3 }
							</c:if><c:if test="${param.num2 == '/'}">${param.num1/param.num3 }
							</c:if>' class="a"  readonly="readonly"/><br />
						</td>
					</tr>
					<tr>
						<td>
							<input type="button" class="bt"  value="1" />
						</td>
						<td>
							<input type="button" class="bt"  value="2" />
						</td>
						<td>
							<input type="button" class="bt"  value="3" />
						</td>
						<td>
							<input type="button" class="tag"  value="+" onclick="getTag(this.value)"/>
						</td>
					</tr>				
					<tr>
						<td>
							<input type="button" class="bt"  value="4" />
						</td>
						<td>
							<input type="button" class="bt"  value="5" />
						</td>
						<td>
							<input type="button" class="bt"  value="6" />
						</td>
						<td>
							<input type="button" class="tag"  value="-" onclick="getTag(this.value)"/>
						</td>
					</tr>				
					<tr>
						<td>
							<input type="button" class="bt"  value="7" />
						</td>
						<td>
							<input type="button" class="bt"  value="8" />
						</td>
						<td>
							<input type="button" class="bt"  value="9" />
						</td>
						<td>
							<input type="button" class="tag"  value="*" onclick="getTag(this.value)"/>
						</td>
					</tr>	
					<tr>
						<td>
							<input type="button" class="c"  value="C" onclick="cls()"/>
						</td>
						<td>
							<input type="button" class="bt"  value="0" />
						</td>
						<td>
							<input type="button" class="bt"  value="." />
						</td>
						<td>
							<input type="button" class="tag"  value="/" onclick="getTag(this.value)"/>
						</td>
					</tr>	
					<tr>
						<td colspan="4">
							<input type="submit" class="s" value="=" />
						</td>
					</tr>
				</table>
		 	</form>
		</div>
</body>
</html>