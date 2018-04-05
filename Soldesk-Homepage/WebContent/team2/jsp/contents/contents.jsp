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
					<!-- ${contentsTitle } -->
					<button>수정</button>
				</h1></td>
		</tr>
		<tr>
			<td><h5>
					대분류
					<!-- ${category } -->
					> 중분류
					<!-- ${category } -->
					> 과정명
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
						<td><c:if test="${1==1 }">
								<h4>
							</c:if> 과정소개 <c:if test="${1==1 }">
								</h4>
							</c:if></td>
						<td><c:if test="${1!=1 }">
								<h4>
							</c:if> 수강후기 <c:if test="${1!=1 }">
								</h4>
							</c:if></td>
					</tr>
				</table>
				<table border="solid">
					<tr>
						<td><c:choose>
								<c:when test="${1==1 }">
									<c:forEach var="i" begin="1" end="5" step="1">
										<jsp:include page="substance.jsp"></jsp:include>
									</c:forEach>
								</c:when>
								<c:otherwise>수강후기(수강후기도 substance.jsp)</c:otherwise>
							</c:choose></td>
					</tr>
					<tr>
						<td>
							<button>추가</button>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<button>이전</button>(onclick으로 이전화면으로 돌아가게)
			</td>
		</tr>
	</table>
</body>
</html>