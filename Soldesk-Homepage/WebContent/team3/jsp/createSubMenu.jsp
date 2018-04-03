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
				<td colspan="2">${mms[0].sm_name}의 서브메뉴 추가</td>
			</tr>
			<tr>
				<td>서브메뉴 타입</td>
				<td>
					<select name="ss_type">
						<option value="1">게시판</option>
						<option value="2">사진</option>
						<option value="3">강사소개</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input name="ss_name"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input name="ss_mainMenuNo" type="hidden" value="${mms[0].sm_no}"><input type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
</body>
</html>