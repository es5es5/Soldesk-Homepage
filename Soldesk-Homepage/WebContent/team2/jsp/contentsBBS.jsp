<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CONTENTS_BBS_PAGE</title>
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/jquery.bxslider.js"></script>
<script src="js/setImgSlider.js"></script>
<script src="js/setMenu.js"></script>
<script src="js/mainMenu.js"></script>
<script type="text/javascript">
	$(function() {
		setMainMenuAnimation();
		setMainSlider();
		setSiteSubMenu2();
	});
</script>
</head>
<body>
	<table border="solid">
		<tr>
			<td><h1>
					��з���
					<!-- ${smName } -->
				</h1></td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>��ü</td>
						<td>�з�1<!-- ${ssName } -->(����ġ (�迭))
						</td>
						<td>�з�2<!-- ${ssName } -->(����ġ (�迭))
						</td>
						<td>�з�3<!-- ${ssName } -->(����ġ (�迭), ���ǹ����� ���� ���õ� ���� BOALDü
							ó��)
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><h3>
					��з�
					<!-- ${smName } -->
					> �ߺз�
					<!-- ${ssName } -->
					(���� ���õ� �з�)
				</h3></td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>
							<h4>������</h4>
						</td>
						<td>
							<h4>������</h4>
						</td>
						<td>
							<h4>������û</h4>
						</td>
					</tr>
					<tr>
						<td>������<!-- ${scTitle } --></td>
						<td>900,000<!-- ${scExpense } --></td>
						<td>
							<button>������û</button>
						</td>
					</tr>
					<tr>
						<td colspan="3">(������ ���� ������ ����ġ (�迭), �� �������� 10������ ǥ��)</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>