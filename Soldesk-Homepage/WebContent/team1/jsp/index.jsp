<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="icon" href="img/s1.png" />
<link rel="stylesheet" href="css/jquery.bxslider.css">
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/exam.css">
<link rel="stylesheet" href="css/home.css">
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/jquery.bxslider.js"></script>
<script src="js/setImgSlider.js"></script>
<script src="js/setMenu.js"></script>
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
						<td align="right">교육문의 02-6901-7001 &nbsp;|&nbsp; 시험문의
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
						<td class="siteMenu" align="center"><a href="">구직자국비지원</a></td>
						<td class="siteMenu" align="center"><a href="">재직자국비지원</a></td>
						<td class="siteMenu" align="center"><a href="">4차산업교육과정</a></td>
						<td class="siteMenu" align="center"><a href="">국제공인<br>교육과정
						</a></td>
						<td class="siteMenu" align="center"><a href="">국제자격증<br>시험센터
						</a></td>
						<td class="siteMenu" align="center"><a href="">취업지원실</a></td>
						<td class="siteMenu" align="center"><a href="">커뮤니티</a></td>
					</tr>
				</table>
				<table id="siteSubMenuArea">
					<tr>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">자바 빅데이터 취업반</a></td>
								</tr>
								<tr>
									<td><a href="">정보보안 취업반</a></td>
								</tr>
								<tr>
									<td><a href="">네트워크 취업반</a></td>
								</tr> 
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">프로그래밍 과정</a></td>
								</tr>
								<tr>
									<td><a href="">정보보안 과정</a></td>
								</tr>
								<tr>
									<td><a href="">네트워크 과정</a></td>
								</tr>
								<tr>
									<td><a href="">시스템 과정</a></td>
								</tr>
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">빅데이터 & AI</a></td>
								</tr>
								<tr>
									<td><a href="">사물인터넷</a></td>
								</tr>
								<tr>
									<td><a href="">가상증강현실</a></td>
								</tr>
								<tr>
									<td><a href="">핀테크</a></td>
								</tr>
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">redhat 공인교육</a></td>
								</tr>
								<tr>
									<td><a href="">oracle 공인교육</a></td>
								</tr>
								<tr>
									<td><a href="">AWS 공인교육</a></td>
								</tr>
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="ExamController">국제자격증시험센터</a></td>
								</tr>
								<tr>
									<td><a href="ExamController">시험센터 공지사항</a></td>
								</tr>
								<tr>
									<td><a href="ExamController">시험접수<br>변경/취소신청</a></td>
								</tr>
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">취업지원실 소개</a></td>
								</tr>
								<tr>
									<td><a href="">취업지원실 외부활동</a></td>
								</tr>
								<tr>
									<td><a href="">취업후기</a></td>
								</tr>
								<tr>
									<td><a href="">Blog</a></td>
								</tr>
								<tr>
									<td><a href="">Cafe</a></td>
								</tr>
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">공지사항</a></td>
								</tr>
								<tr>
									<td><a href="">자주 하는 질문</a></td>
								</tr>
								<tr>
									<td><a href="">특강/세미나</a></td>
								</tr>
								<tr>
									<td><a href="">수강생인터뷰</a></td>
								</tr>
								<tr>
									<td><a href="">기업체인터뷰</a></td>
								</tr>
								<tr>
				 					<td><a href="">Gallery</a></td>
								</tr>
								<tr>
									<td><a href="">온라인 상담</a></td>
								</tr>
								<tr>
									<td><a href="">온라인 결제</a></td>
								</tr>
								<tr>
									<td><a href="">오시는 길</a></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td> 
		</tr>		   
	</table>
<jsp:include page="${contentPage }"></jsp:include> 
<table class="endTitle">
		<tr>
			<td align="center">
				<table>
					<tr>
						<td>상호명 : 솔데스크</td>
						<td>대표 : 솔데스크</td>
						<td>전화 : 070-1234-5678</td>
						<td>사업자등록번호 : 000-샘플시안-00000</td>
						<td>E-mail : soldesk@naver.com</td> 
					</tr>
					<tr>
						<td colspan="5">Copyright Design SOLDESK All rights reserved.</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>