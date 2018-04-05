<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table id="bulletinTable" border="1">
			<tr>
				<td colspan="2">&nbsp;세부 사항</td>
			</tr>
			<tr>
				<td id="bulletinViewTitle">&nbsp;
					${notice.wn_title}
				</td>
				<td align="right">
					<fmt:formatDate value="${notice.wn_date }" type="both" dateStyle="long"
									timeStyle="short"></fmt:formatDate>
				&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" valign="top">
					<p>&nbsp;
					${notice.wn_txt}
				</td>
			</tr>
	</table>
</body>
</html>