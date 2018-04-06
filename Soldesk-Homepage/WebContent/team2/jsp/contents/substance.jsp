<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="solid">
		<c:forEach var="s" items="${substance }">
			<tr>
				<td>
					<h3>
						${s.scs_title }
						<button>수정</button>
					</h3>
				</td>
			</tr>
			<tr>
				<td><c:if test="${s.scs_info!='[강사]' }">
								${s.scs_info }
				</c:if> <c:if test="${s.scs_info=='[강사]' }">
						<jsp:include page="teacher.jsp"></jsp:include>
					</c:if>

					<button>수정</button></td>
			</tr>
		</c:forEach>
		<tr>
			<td>
				<button>추가</button>
			</td>
		</tr>
	</table>
</body>
</html>