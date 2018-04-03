<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="solid">
		<tr>
			<td>
				<h3>교육일정</h3>
			</td>
			<td>시작일정 ~ 종료일정<!-- 교육일정 --></td>
			<td>
				<h3>교육기간</h3>
			</td>
			<td>종료일정 - 시작일정, (종료시간 - 시작시간) * (종료일정 - 시작일정) (함수 만들어서 씀)<!-- 교육기간 --></td>
		</tr>
		<tr>
			<td>
				<h3>교육시간</h3>
			</td>
			<td>각 요일이 표시, 시작시간 ~ 종료시간 <!-- 교육시간 --></td>
			<td>
				<h3>수강정원</h3>
			</td>
			<td>수강정원(명)<!-- ${SOLDESK_contents_info_capacity }명 --></td>
		</tr>
	</table>
</body>
</html>