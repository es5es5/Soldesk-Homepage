<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="CreateSubMenu">
		<table id="createSubMenu">
			<tr>
				<td colspan="2">${mms[0].sm_name}�� ����޴� �߰�</td>
			</tr>
			<tr>
				<td>����޴� Ÿ��</td>
				<td>
					<select name="ss_type">
						<option value="1">�Խ���</option>
						<option value="2">����</option>
						<option value="3">����Ұ�</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td><input name="ss_name"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input name="ss_mainMenuNo" type="hidden" value="${mms[0].sm_no}"><input type="submit" value="���"></td>
			</tr>
		</table>
	</form>
</body>
</html>