<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="WriteNoticeController" method="post">
		<table border="1" style="width: 100%; height: 100%;">
			<tr>
				<td>
					<table border="1" style="margin-left: auto; margin-right: auto; width: 80%; height: 400px;">
						<tr>
							<td style="height: 30px; width: 80%;">게시글</td>
							<td><select>
								<option value="A">A유형</option>
								<option value="B">B유형</option>
							</select> </td>
						</tr>
						<tr>
							<td colspan="2" style="height: 30px;"><textarea name="wn_title" autofocus="autofocus"
									placeholder="100자 내외" maxlength="200" style="width: 100%; height: 20px; resize: none;"></textarea></td>
						</tr>
						<tr>
							<td colspan="2"><textarea name="wn_txt" autofocus="autofocus"
									placeholder="200자 내외" maxlength="200" style="width: 100%; height: 100%; resize: none;"></textarea></td>
						</tr>
						<tr>
							<td colspan="2" align="right" style="height: 30px;"><input type="submit" value="작성"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>