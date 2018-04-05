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
	<table id="bulletinTable">
		<tr>
			<td id="pageTitle" colspan="3">��������</td>
		</tr>
		<tr>
			<td id="write" style="height: 50px;" align="right" colspan="3"><a
				href="WriteBulletinController" style="text-decoration: none;">�۾���&nbsp;&nbsp;&nbsp;</a>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<table id="bulletinTable2">
					<tr>
						<td class="bulletinTitle1" align="center">��ȣ</td>
						<td class="bulletinTitle1" align="center">����</td>
						<td class="bulletinTitle1" align="center">�ۼ���</td>
						<td class="bulletinTitle1" align="center" colspan="2">����� ����</td>
					</tr>

					<c:forEach var="b" items="${lists }">
						<tr>
							<td class="bulletinNumber" align="center">${b.wn_no }</td>
							<td class="bulletinTitle" align="left">
								<a href="ViewBulletinController?wn_no=${b.wn_no}">&nbsp; ${b.wn_title}</a>
							</td>
							<td class="bulletinTime" align="center">
								<fmt:formatDate value="${b.wn_date }" type="both" dateStyle="long" timeStyle="short"></fmt:formatDate>
							</td>
							<td class="bulletinButton" align="center">
								<button onclick="updateBulletin(${b.wn_no});">����</button>
							</td>
							<td class="bulletinButton" align="center">
								<button onclick="deleteBulletin(${b.wn_no});">����</button>
							</td>
						</tr>
					</c:forEach>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center">
				<c:if test="${curPageNo != 1 }">
					<a href="BulletinPageController?p=${curPageNo-1 }">�� ����</a>
				</c:if>
				<c:forEach var="p" begin="1" end="${pageCount }">
					<a href="BulletinPageController?p=${p }"> ${p }</a>
				</c:forEach>
				<c:if test="${curPageNo != pageCount }">
					<a href="BulletinPageController?p=${curPageNo+1 }">���� ��</a>
				</c:if>
			</td>
		</tr>
	</table>
</body>
</html>