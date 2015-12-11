<%@page import="com.hanains.guestbook.dao.GuestBookDao"%>
<%@page import="java.util.List"%>
<%@page import="com.hanains.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 	
<%
	pageContext.setAttribute("newLine", "\n");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/insert" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
			</tr>
		</table>
	</form>
	<br>

	<c:set var="cnt" value="${fn:length(list)}" />
	--${cnt}--
	<c:forEach items="${list}" var="vo" varStatus="status">
		<table width=510 border=1>
			<tr>
				<td>${cnt-status.index}</td>
				<td>${vo.name} </td>
				<td>${vo.reg_date}</td>
				<td><a href="${pageContext.request.contextPath}/form?no=${vo.no}">삭제</a></td>
			</tr>
			<tr>
				<td colspan=4>${fn:replace(vo.message,'<br>', 'newLine')}</td>
			</tr>
		</table>
	</c:forEach>
</body>
</html>