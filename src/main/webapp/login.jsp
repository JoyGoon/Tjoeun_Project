<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인/로그아웃</title>
<link rel="stylesheet" href="./css/login.css"/>
<script type="text/javascript" src="./js/test.js"></script>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
	
	String result = "";
	
	String error = (String) session.getAttribute("error");
	if ( error == null ) {
		error = "";
	} 
	
//	out.println(error);
	
	
%>

<form action="loginOK.jsp" method="post">
	<table width="300" cellpadding="5" cellspacing="0">
		
		<tr>
			<th class="th"><label for="cnum">사원번호</label></th>
			<td>
				<input id="cnum" class="input" type="text" name="cnum"/>
			</td>
		</tr>
		
		<tr>
			<th class="th"><label for="password">비밀번호</label></th>
			<td>
				<input id="password" class="input" type="password" name="password"/>
			</td>
		</tr>
		
		<tr>
			<td id="result" colspan="2" align="center">
				<%=error%>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input id="login" type="submit" value="로그인"/>
			</td>
		</tr>
	</table>
</form>

</body>
</html>