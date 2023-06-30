<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재 확인 페이지</title>

<link rel="stylesheet" href="./css/CeoOK.css"/>

<script type="text/javascript" src="./js/CeoOK.js" defer="defer"></script>

</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
boolean companion = false;
%>

<jsp:useBean id="mo" class="com.tjoeun.vo.MainVO">
	<jsp:setProperty property="*" name="mo"/>
</jsp:useBean>

<div>
	<table style="width: 700px;">
		<tr>
			<th colspan="5" class="th">결재 확인 페이지</th>
		</tr>
		<tr>
			<td class="td" style="width: 80px;" align="center">사원번호</td>
			<td class="td" style="width: 300px;" align="center">기안 종류</td>
			<td class="td" style="width: 100px;" align="center">이름</td>
			<td class="td" style="width: 170px;" align="center">연락처</td>
		</tr>
		<jsp:useBean id="date" class="java.util.Date"/>
		<tr>
			<td class="td2" align="center">${mo.cnum}</td>
			<td class="td2" align="center">기안 종류 이름</td>
			<td class="td2" align="center">
				<c:set var="name" value="${fn:replace(mo.name, '<', '&lt;')}"/>
				<c:set var="name" value="${fn:replace(mo.name, '>', '&gt;')}"/>
				${mo.name}
			</td>
			<td class="td2" align="center">
				Phone: ${mo.phone}<br/>
				E-mail: ${mo.email}
			</td>
		</tr>
		<tr>
			<td class="td3" align="center">제목</td>
			<td colspan="3" class="td2">
				<%-- 
				<c:set var="subject" value="${fn:replace(mo.subject, '<', '&lt;')}"/>
				<c:set var="subject" value="${fn:replace(mo.subject, '>', '&gt;')}"/>
				<a href="increment.jsp?idx=${mo.idx}&currentPage=${currentPage}">
					${subject}
				</a> 
				--%>
			</td>
		</tr>
		<tr>
			<td class="td3" align="center">내용</td>
			<td colspan="3" class="td2">
				<%-- 
				<c:set var="content" value="${fn:replace(mo.content, '<', '&lt;')}"/>
				<c:set var="content" value="${fn:replace(content, '>', '&gt;')}"/>
				<c:set var="content" value="${fn:replace(content, 'enter', '<br/>')}"/>
				${content} 
				--%>
			</td>
		</tr>
		<tr>
			<td colspan="4" align="right">
				<input class="button button1" type="button" value="승인" 
					onclick="location.href='CeoView.jsp'"/>
				<input class="button button2" type="button" value="반려" 
					onclick="companionCheck()"/>
				<input class="button button3" type="button" value="돌아가기" 
					onclick="location.href='CeoView.jsp'"/>
			</td>
		</tr>
	</table>
</div>

<div style="display: none;">
	<br/>
	<hr style="border: 2px dashed rgb(183, 210, 149); width: 700px; margin-left: auto; margin-left: auto;"/>
	<br/>
	<!-- 코멘트 폼 -->
	<form action="CeoView.jsp" method="post" name="commentForm">
		<table style="width: 700px;">
			<tr class="tr">
				<th class="th2">COMMENT</th>
				<td></td>
			</tr>
			<tr>
				<td class="td" align="center" style="width: 100px; opacity: 60%;">
					<label for="content">내용</label>
				</td>
				<td class="td2" colspan="3">
					<textarea id="content" rows="3" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right">
					<input class="button button4" type="submit" value="코멘트 저장" name="commentBtn"/>
					<input class="button button5" type="reset" value="다시 쓰기"/>
				</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>