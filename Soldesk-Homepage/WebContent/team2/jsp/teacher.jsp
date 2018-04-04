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
				<table border="solid">
					<tr>
						<td><img alt="강사 사진"
							src="http://www.soldesk.co.kr/images/pt!tcUGH.png"> <!-- <img alt="강사 사진" src="${photo }"> --></td>
					</tr>
					<tr>
						<td><h3>
								강사명
								<!-- ${teacherName } -->
							</h3> 강사님</td>
					</tr>
				</table>
			</td>
			<td>
				<table border="solid">
					<tr>
						<td><h3>교육경력사항</h3></td>
					</tr>
					<tr>
						<td>내용<!-- ${teacherResume } --></td>
					</tr>
					<tr>
						<td><h3>보유자격증</h3></td>
					</tr>
					<tr>
						<td>내용<!-- ${teacherCertificate } --></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>