<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>SOLDESK</title>
<link rel="icon" href="img/s1.png" />
<link rel="stylesheet" href="css/jquery.bxslider.css">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/contentPage.css">
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

	<table id="siteTitleArea">
		<tr>
			<td align="center">
				<table id="siteTitle">
					<tr>
						<td align="center">
							<a href="HomeController"><img id="siteLogo" src="img/s1.png"></a>
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td id="siteTitleArea2" align="center">
				<table id="siteTitle2">
					<tr>
						<td>&nbsp;&nbsp;실력과 인품을 겸비한 인재양성 교육기관</td>
						<td align="right" onclick="adminCheck();">교육문의 02-6901-7001 &nbsp;|&nbsp; 시험문의
							02-6901-7007</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center" id="siteMenuArea">
				<table>
					<tr>
						<td></td>
					</tr>
					<tr>
						<td></td>
					</tr>
				</table>
				<table id="siteMainMenuArea">
					<tr>
						<c:forEach var="mm" items="${mms}">
							<td class="siteMenu" align="center">
								<a href="GoSubMenuController">${mm.sm_name}</a>
							</td>
						</c:forEach>
						<c:if test="${sessionScope.admin != null}">
							<td class="siteMenu" align="center" onclick="createMainMenu();">메뉴추가</td>
						</c:if>						
					</tr>
				</table>
				<table id="siteSubMenuArea">
					<tr>
						<c:forEach var="mm" items="${mms}">
							<td class="siteSubMenu" align="center" valign="top" >
								<table style="width:100%;">
									<c:forEach var="sm" items="${mm.sms}">
										<tr>
											<td><a href="">${sm.ss_name}</a></td>
										</tr>
									</c:forEach>
									<c:if test="${sessionScope.admin != null}">
										<tr>
											<td><button onclick="createSubMenu(${mm.sm_no});">서브메뉴추가</button></td>
										</tr>
									</c:if>
								</table>
							</td>
						</c:forEach>
						<c:if test="${sessionScope.admin != null}">
							<td class="siteSubMenu" align="center" valign="top" >
								<table style="width:100%;">
									<tr>
										<td><a href="">${r}</a></td>
									</tr>
								</table>
							</td>
						</c:if>	
					</tr>
				</table>
			</td>
		</tr>		
	</table>
	<table id="siteContentArea">
		<tr>
			<td>
				<ul id="mainSlider">
				</ul>	
			</td>
		</tr>
		<tr>
			<td>
				<jsp:include page="${contentPage }"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>