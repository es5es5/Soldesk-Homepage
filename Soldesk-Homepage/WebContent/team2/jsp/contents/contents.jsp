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
					<button>����</button>
				</h1></td>
		</tr>
		<tr>
			<td><h5>
					��з�
					<!-- ${category } -->
					> �ߺз�
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
								��������
								<button>����</button>
							</h3>
						</td>
						<td><fmt:formatDate value="${c.sc_schedule_start }"
								pattern="yyyy.MM.dd" /> ~ <fmt:formatDate
								value="${c.sc_schedule_finish }" pattern="yyyy.MM.dd" /></td>
						<td>
							<h3>
								�����Ⱓ
								<button>����</button>
							</h3>
						</td>
						<td>${totalMonth }����,��${totalHours }�ð�</td>
					</tr>
					<tr>
						<td>
							<h3>
								�����ð�
								<button>����</button>
							</h3>
						</td>
						<td>�� �� ${totalWeeks }, <fmt:formatDate
								value="${c.sc_schedule_start }" pattern="kk:mm" /> ~ <fmt:formatDate
								value="${c.sc_schedule_finish }" pattern="kk:mm" /></td>
						<td>
							<h3>
								��������
								<button>����</button>
							</h3>
						</td>
						<td>${c.sc_capacity }��</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>�����Ұ�</td>
						<td><button>������û</button></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><jsp:include page="${substancePage }"></jsp:include></td>
		</tr>
		<tr>
			<td>
				<button>����</button>(onclick���� ����ȭ������ ���ư���)
			</td>
		</tr>
	</table>
</body>
</html>