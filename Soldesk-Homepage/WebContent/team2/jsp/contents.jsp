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
					������
					<!-- ${contentsTitle} -->
				</h1></td>
		</tr>
		<tr>
			<td><h5>
					��з�
					<!-- ${category } -->
					> �ߺз�
					<!-- ${category } -->
					> ������
					<!-- ${contentsTitle } -->
				</h5></td>
		</tr>
		<tr>
			<td><jsp:include page="contentsInfo.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>�����Ұ�</td>
						<td>�����ı�</td>
					</tr>
				</table>
				<table border="solid">
					<tr>
						<td><jsp:include page="substance.jsp"></jsp:include>(������ �ҷ�������)</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<button>����</button>(onclick���� ����ȭ������ ���ư���)
			</td>
		</tr>
	</table>
</body>
</html>