<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>EL计算器</title>
		<style type="text/css">
			html,
			body {
				margin: 0;
				padding: 0;
			}
			
			table {
				height: 230px;
				width: 180px;
				margin: 100px auto;
				border: 1px solid black;
			}
			
			td {
				border: 1px solid black;
			}
			
			input {
				font-family: "微软雅黑";
				font-size: 20px;
				width: 43px;
				height: 42px;
			}
			
			.sch {
				height: 20px;
				width: 100%;
				text-align: right;
				border: none;
				line-height: 10px;
			}
			
			.fnz {
				font-size: 10px;
			}
			
			.val {
				width: 100%;
				height: 15px;
				font-size: 12px;
			}
		</style>
		<script type="text/javascript">
			window.onload = function() {
				var scr = document.getElementById('screen');
				var butns = document.getElementsByClassName("num");
				
				//数字按钮
				for (var i = 0; i < butns.length; i++) {
					butns[i].onclick = function() {
						scr.value += this.value;
					}
				}
			}
			
			//点击运算符后的操作
			function getSym(sym){
				var scr = document.getElementById('screen');
				var sub = document.getElementById('subscreen');
				if(scr.value != null && scr.value != ""){
					sub.value = scr.value;
					document.getElementById('symview').value = sym;
					scr.value = null;
				}
			}
			
			//清屏
			function cls() {
				var views = document.getElementsByClassName('sch');
				for (var i = 0; i < views.length; i++) {
					views[i].value = null;
				}
			}
		</script>
	</head>
	<body>
		<div>
			<form action="ca.jsp" method="post" >
				<table>
					<tbody>
						<tr>
							<td colspan="4">
								<input type="text" class="sch fnz" id="subscreen" name="num1" value="${param.num1}" readonly="readonly" />
								<input type="text" class="sch" id="symview" name="symview" value="${param.symview}" readonly="readonly" />
								<input type="text" class="sch" id="screen" name="num2" value="${
									param.symview eq '+' ? param.num1 + param.num2 :
									param.symview eq '-' ? param.num1 - param.num2 :
									param.symview eq '*' ? param.num1 * param.num2 :
									param.num1 / param.num2
								}" readonly="readonly" />
							</td>
						</tr>
						<tr>
							<td>
								<input type="button" value="1" class="num" />
							</td>
							<td>
								<input type="button" value="2" class="num" />
							</td>
							<td>
								<input type="button" value="3" class="num" />
							</td>
							<td>
								<input type="button" value="+" name="sym" onclick="getSym(this.value)" />
							</td>
						</tr>
						<tr>
							<td>
								<input type="button" value="4" class="num" />
							</td>
							<td>
								<input type="button" value="5" class="num" />
							</td>
							<td>
								<input type="button" value="6" class="num" />
							</td>
							<td>
								<input type="button" value="-" name="sym" onclick="getSym(this.value)" />
							</td>
						</tr>
						<tr>
							<td>
								<input type="button" value="7" class="num" />
							</td>
							<td>
								<input type="button" value="8" class="num" />
							</td>
							<td>
								<input type="button" value="9" class="num" />
							</td>
							<td>
								<input type="button" value="*" name="sym" onclick="getSym(this.value)" />
							</td>       
						</tr>
						<tr>
							<td>
								<input type="button" value="C" id="clean" onclick="cls()" />
							</td>
							<td>
								<input type="button" value="0" class="num" />
							</td>
							<td>
								<input type="button" value="." class="num" />
							</td>
							<td>
								<input type="button" value="/" name="sym" onclick="getSym(this.value)" />
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<input type="submit" value="=" style="width:100%;">
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</body>
</html>