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
			<td><h1>��з���</h1></td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>��ü</td>
						<td>�з�1</td>
						<td>�з�2</td>
						<td>�з�3</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><h3>��з� > �ߺз�</h3></td>
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
						<td>������1</td>
						<td>900,000</td>
						<td>
							<button>������û</button>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>