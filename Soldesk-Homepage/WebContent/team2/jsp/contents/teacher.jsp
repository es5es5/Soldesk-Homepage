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
						<td><img alt="���� ����" src="${t.st_photo }">
							<button>����</button></td>
					</tr>
					<tr>
						<td><h3>${t.st_name }</h3> �����
							<button>����</button></td>
					</tr>
				</table>
			</td>
			<td>
				<table border="solid">
					<tr>
						<td><h3>
								������»���
								<button>����</button>
							</h3></td>
					</tr>
					<tr>
						<td>${t.st_resume }</td>
					</tr>
					<tr>
						<td><h3>
								�����ڰ���
								<button>����</button>
							</h3></td>
					</tr>
					<tr>
						<td>${t.st_certificate }</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>