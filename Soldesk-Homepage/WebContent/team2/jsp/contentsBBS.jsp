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
					대분류명
					<!-- ${smName } -->
				</h1></td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>전체</td>
						<td>분류1<!-- ${ssName } -->(포이치 (배열))
						</td>
						<td>분류2<!-- ${ssName } -->(포이치 (배열))
						</td>
						<td>분류3<!-- ${ssName } -->(포이치 (배열), 조건문으로 현재 선택된 것을 BOALD체
							처리)
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><h3>
					대분류
					<!-- ${smName } -->
					> 중분류
					<!-- ${ssName } -->
					(현재 선택된 분류)
				</h3></td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>
							<h4>과정명</h4>
						</td>
						<td>
							<h4>교육비</h4>
						</td>
						<td>
							<h4>수강신청</h4>
						</td>
					</tr>
					<tr>
						<td>과정명<!-- ${scTitle } --></td>
						<td>900,000<!-- ${scExpense } --></td>
						<td>
							<button>수강신청</button>
						</td>
					</tr>
					<tr>
						<td colspan="3">(윗열과 같은 것으로 포이치 (배열), 한 페이지에 10개까지 표시)</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>