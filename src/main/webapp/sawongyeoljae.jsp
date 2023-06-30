<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재안 올리기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>

<form class="m-3" action="sawongyeoljaeOK.jsp" method="post">
	<table class="table" style="width: 700px; margin-left: auto; margin-right: auto;">
		<tr class="table-primary">
			<th colspan="3" style="font-size: 30px; text-align: center;">결재 올리세용</th>
		</tr>
		<tr>
			<th class="align-middle" width="100">
				<label for="name">기안 종류</label>
			</th>	
			<td colspan="2">
				<select name="paperlist" style="width: 200px;">
						<option selected="selected">휴가서</option>
						<option>사직서</option>
						<option>제안서</option>
						<option>공문</option>
				</select><br />
				</th>
			</td>	
		<tr>
			<th class="align-middle">
				<label for="subject">제목</label>
			</th>
			<td colspan="2">
				<input id="subject" class="form-control form-control-sm" type="text" name="subject"/>
			</td>
		</tr>
		
		<tr>
			<th class="align-middle">
				<label for="content">내용</label>
			</th>
			<td colspan="2">
				<textarea 
					id="content" 
					class="form-control form-control-sm" 
					rows="10" 
					name="content"
					style="resize: none;"></textarea>
			</td>
		</tr>
		
		<tr class="table-secondary">
			<td colspan="3" align="center">
				<input 
					class="btn btn-outline-primary btn-sm" 
					type="submit" 
					value="제출하기" 
					style="font-size: 13px;"/>
				<input 
					class="btn btn-outline-danger btn-sm" 
					type="reset" 
					value="다시쓰기" 
					style="font-size: 13px;"/>
				<input 
					class="btn btn-outline-success btn-sm" 
					type="button" 
					value="목록으로" 
					style="font-size: 13px;"
					onclick="history.back()"/>
			</td>
		</tr>
	</table>
</form>

</body>
</html>














