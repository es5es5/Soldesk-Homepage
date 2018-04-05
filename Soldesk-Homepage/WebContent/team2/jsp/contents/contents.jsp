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
					${c.sc_title }
					<button>수정</button>
				</h1></td>
		</tr>
		<tr>
			<td><h5>
					대분류
					<!-- ${category } -->
					> 중분류
					<!-- ${category } -->
					> ${c.sc_title }
				</h5></td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>
							<h3>
								교육일정
								<button>수정</button>
							</h3>
						</td>
						<td><fmt:formatDate value="${c.sc_schedule_start }"
								pattern="yyyy.MM.dd" /> ~ <fmt:formatDate
								value="${c.sc_schedule_finish }" pattern="yyyy.MM.dd" /></td>
						<td>
							<h3>
								교육기간
								<button>수정</button>
							</h3>
						</td>
						<td>${totalMonth }개월,총${totalHours }시간</td>
					</tr>
					<tr>
						<td>
							<h3>
								교육시간
								<button>수정</button>
							</h3>
						</td>
						<td>매 주 ${totalWeeks }, <fmt:formatDate
								value="${c.sc_time_start }" pattern="kk:mm" /> ~ <fmt:formatDate
								value="${c.sc_time_finish }" pattern="kk:mm" /></td>
						<td>
							<h3>
								수강정원
								<button>수정</button>
							</h3>
						</td>
						<td>${c.sc_capacity }명</td>
					</tr>
				</table>
			</td>
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
									<c:forEach var="s" items="${substance }">
										<tr>
											<td>${s.scs_title }
												<button>수정</button>
											</td>
											<td>${s.scs_info }
												<button>수정</button>
											</td>
											<td>
												<button>수강신청</button>
											</td>
										</tr>
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