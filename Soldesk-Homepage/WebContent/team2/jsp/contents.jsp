<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CONTENTS_PAGE</title>
</head>
<body>
	<table border="solid">
		<tr>
			<td><h1>
					과정명
					<!-- ${SOLDESK_contents_title} -->
				</h1></td>
		</tr>
		<tr>
			<td><h5>
					대분류
					<!-- ${category } -->
					> 중분류
					<!-- ${category } -->
					> 과정명
					<!-- ${SOLDESK_contents_title } -->
				</h5></td>
		</tr>
		<tr>
			<td>contentsInfo.jsp</td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>과정소개</td>
						<td>수강후기</td>
					</tr>
				</table>
				<table border="solid">
					<tr>
						<td>
							substance.jsp (여러개)
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<button>이전</button>
			</td>
		</tr>
	</table>
</body>
</html>