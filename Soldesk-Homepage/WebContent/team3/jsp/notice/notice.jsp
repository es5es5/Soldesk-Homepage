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
	<table id="noticeTable">
		<tr>
			<td id="pageTitle" colspan="3">공지사항</td>
		</tr>
		<tr>
			<td id="write" style="height: 50px;" align="right" colspan="3"><a
				href="WriteNoticeController" style="text-decoration: none;">글쓰기&nbsp;&nbsp;&nbsp;</a>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<table id="noticeTable2">
					<tr>
						<td class="noticeTitle1" align="center">번호</td>
						<td class="noticeTitle1" align="center">제목</td>
						<td class="noticeTitle1" align="center">작성일</td>
						<td class="noticeTitle1" align="center" colspan="2">사용자 권한</td>
					</tr>

					<tr>
						<c:forEach var="b" items="${lists }">
							<td class="noticeNumber" align="center">${b.wn_no }</td>
							<td class="noticeTitle" align="left"><a
								href="ViewNoticeController?wn_no=${b.wn_no}">
								&nbsp; ${b.wn_title}
							</a></td>
							<td class="noticeTime" align="center"><fmt:formatDate
									value="${b.wn_date }" type="both" dateStyle="long"
									timeStyle="short"></fmt:formatDate></td>
							<td class="noticeButton" align="center"><button
									onclick="updateNotice(${b.wn_no});">수정</button></td>
							<td class="noticeButton" align="center"><button
									onclick="deleteNotice(${b.wn_no});">삭제</button></td>
					</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center">
				<c:if test="${curPageNo != 1 }">
					<a href="NoticePageController?p=${curPageNo-1 }">◀ 이전</a>
				</c:if>
				<c:forEach var="p" begin="1" end="${pageCount }">
					<a href="NoticePageController?p=${p }"> ${p }</a>
				</c:forEach>
				<c:if test="${curPageNo != pageCount }">
					<a href="NoticePageController?p=${curPageNo+1 }">다음 ▶</a>
				</c:if>
			</td>
		</tr>
	</table>
</body>
</html>