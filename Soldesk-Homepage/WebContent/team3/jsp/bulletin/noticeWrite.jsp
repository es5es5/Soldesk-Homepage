<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="">
		<table id="noticeWrite_table">
			<tr>
				<td colspan="2" id="noticeWrite_titleTd">글쓰기</td>
			</tr>
			<tr>
				<td class="noticeWrite_Td1">제목</td>
				<td align="center"><input name="hr_title" maxlength="50" id="noticeWrite_textInput" autofocus="autofocus"></td>
			</tr>
			<tr>
				<td class="noticeWrite_Td1">내용</td>
				<td align="center"><textarea name="hr_text" id="noticeWrite_textarea"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="등록" class="notice_btn"></td>
			</tr>
		</table>
	</form>
</body>
</html>