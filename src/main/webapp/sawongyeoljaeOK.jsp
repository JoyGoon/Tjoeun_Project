<%@page import="com.tjoeun.service.SawongyeoljaeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="so" class="com.tjoeun.vo.SawongyeoljaeVO">
	<jsp:setProperty property="*" name="so"/>
</jsp:useBean>
${so}

<%
//	insert.jsp에서 넘어온 메인글을 테이블에 저장하는 메소드를 실행한다.
	SawongyeoljaeService.getInstance().insert(so);
//	메인글 1페이지 분량의 글 목록을 얻어오는 페이지(sawongyeoljaelist.jsp)로 넘겨준다.
	response.sendRedirect("sawongyeoljae.jsp"); //list로 넘기기
	response.sendRedirect("Ceo.jsp");
%>

</body>
</html>