<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table id="notice_table">
		<tr>
			<td colspan="4" id="notice_titleTd">${mms[0].sms[0].ss_name}</td>
		</tr>
		<tr>
			<td id="notice_noTd">번호</td>
			<td id="notice_titTd">제목</td>
			<td id="notice_ownerTd">작성자</td>
			<td id="notice_dateTd">날짜</td>
		</tr>
		<tr class="notice_tr">
			<td class="notice_textTd">01</td>
			<td class="notice_textTd" onclick="test();">공지사항 ver.1</td>
			<td class="notice_textTd" onclick="test();">관리자</td>
			<td class="notice_textTd">18.03.27 13:18:50</td>
		</tr>
		<tr class="notice_tr">
			<td class="notice_textTd">02</td>
			<td class="notice_textTd">공지사항 ver.1</td>
			<td class="notice_textTd">관리자</td>
			<td class="notice_textTd">18.03.27 13:18:50</td>
		</tr>
		<tr class="notice_tr">
			<td class="notice_textTd">03</td>
			<td class="notice_textTd">공지사항 ver.1</td>
			<td class="notice_textTd">관리자</td>
			<td class="notice_textTd">18.03.27 13:18:50</td>
		</tr>
		<tr class="notice_tr">
			<td class="notice_textTd">04</td>
			<td class="notice_textTd">공지사항 ver.1</td>
			<td class="notice_textTd">관리자</td>
			<td class="notice_textTd">18.03.27 13:18:50</td>
		</tr>
		<tr class="notice_tr">
			<td class="notice_textTd">05</td>
			<td class="notice_textTd">공지사항 ver.1</td>
			<td class="notice_textTd">관리자</td>
			<td class="notice_textTd">18.03.27 13:18:50</td>
		</tr>
		<tr class="notice_tr">
			<td class="notice_textTd">06</td>
			<td class="notice_textTd">공지사항 ver.1</td>
			<td class="notice_textTd">관리자</td>
			<td class="notice_textTd">18.03.27 13:18:50</td>
		</tr>
		<tr class="notice_tr">
			<td class="notice_textTd">07</td>
			<td class="notice_textTd">공지사항 ver.1</td>
			<td class="notice_textTd">관리자</td>
			<td class="notice_textTd">18.03.27 13:18:50</td>
		</tr>
		<tr class="notice_tr">
			<td class="notice_textTd">08</td>
			<td class="notice_textTd">공지사항 ver.1</td>
			<td class="notice_textTd">관리자</td>
			<td class="notice_textTd">18.03.27 13:18:50</td>
		</tr>
		<tr class="notice_tr">
			<td class="notice_textTd">09</td>
			<td class="notice_textTd">공지사항 ver.1</td>
			<td class="notice_textTd">관리자</td>
			<td class="notice_textTd">18.03.27 13:18:50</td>
		</tr>
		<tr class="notice_tr">
			<td class="notice_textTd">10</td>
			<td class="notice_textTd">공지사항 ver.1</td>
			<td class="notice_textTd">관리자</td>
			<td class="notice_textTd">18.03.27 13:18:50</td>
		</tr>
		<tr>
			<td colspan="4" align="center">1 2 3 4 5</td>
		</tr>
		<c:if test="${sessionScope.admin != null}">
		<tr>
			<td colspan="4" align="right"><button class="notice_btn" onclick="bulletin_goWrite();">글쓰기</button></td>
		</tr>
		</c:if>
		<tr>
			<td colspan="4" align="center"><form><input name="title" id="notice_textInput"><input type="submit" value="검색" class="notice_btn"></form></td>
		</tr>
	</table>
</body>
</html>