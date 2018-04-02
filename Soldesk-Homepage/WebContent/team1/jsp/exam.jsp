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
<script src="js/jquery-1.12.4.min.js"></script>
<script src="js/jquery.bxslider.js"></script>
<script src="js/setImgSlider.js"></script>
<script src="js/setMenu.js"></script>
<script type="text/javascript">
	$(function() {
		setMainMenuAnimation();
		setMainSlider();
		setSiteSubMenu2();
		
		$(".siteSubMenu2").click(function(){
			$(".e").css("display", "none");
			var selectedSubMenu2 = this;
			$(".siteSubMenu2").each(function(i) {
				if (selectedSubMenu2 == $(".siteSubMenu2")[i]) {
					var exam = $(".e")[i];
					$(exam).fadeIn(1500);
				}
			});
		});
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
						<td class="siteMenu" align="center"><a href="">일본IT취업반</a></td>
						<td class="siteMenu" align="center"><a href="">재직자국비지원</a></td>
						<td class="siteMenu" align="center"><a href="">4차산업교육과정</a></td>
						<td class="siteMenu" align="center"><a href="">국제공인<br>교육과정
						</a></td>
						<td class="siteMenu" align="center"><a href=ExamController>국제자격증<br>시험센터
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
									<td><a href="exam.html">국제자격증시험센터</a></td>
								</tr>
								<tr>
									<td><a href="exam.html">시험센터 공지사항</a></td>
								</tr>
								<tr>
									<td><a href="exam.html">시험접수<br>변경/취소신청</a></td>
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
	
	<table id="siteContentArea">
		<tr>
			<td>
				<table id="siteSubMenu2Area">
					<tr>
						<td id="siteSubMenu2Title">국제자격증시험센터</td>
					</tr>
					<tr>
						<td><button class="siteSubMenu2">시험센터 소개</button></td>
					</tr>
					<tr>
						<td><button class="siteSubMenu2">시험응시 절차</button></td>
					</tr>
					<tr>
						<td><button class="siteSubMenu2">시험정보</button></td>
					</tr>
					<tr>
						<td><button class="siteSubMenu2">FAQ</button></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td align="center">
				<img style="width:960px;" src="img/exam.png">
			</td>
		</tr>
		<tr>
			<td align="center">
				<table class="e" style="display:initial;">
					<tr>
						<td class="eTitle"><h3>시험센터 소개</h3></td>
					</tr>
					<tr>
						<td class="eContent">
							<span class="eSubTitle">솔데스크 시험센터는 국제공인시험센터입니다.</span><p>
							국제자격증의 경우 통상 국내뿐 아니라 해외에서도 많은 인정과 취업에 도움이 되며 나아가 연봉협상에 있어 큰 영향을 주고 있습니다.<br>
							일례로 CISCO 자격증의 경우 대부분의 네트워크 업체에서 해당 자격증 보유 여부를 통해 기술 인정과<br>보유 여부에 따른 회사에 혜택이 있기 때문에 취업 및 연봉협상에 도움이 됩니다.<p>
							Amazon / Cisco / Comptia / HUAWEI / ISACA / Microsoft / Oracle / SAS / VMware 등 이처럼 벤더사도 많고<br>
							벤더사마다 시험종류도 많이 있으며 벤더사 개별적인 시행보다 PearsonVUE / PROMETRIC / PSI 등 주관사를 통해 시험이 진행됩니다.<p>
							저희 솔데스크 시험센터는 이처럼 막강한 주관사와 협력하여 응시자가 선호하는 모든 국제자격증 시험을<br>
							쾌적한 환경에서 편안한 마음으로 진행할 수 있도록 노력 및 운영하고 있습니다.<p>
							열심히 준비하신만큼 좋은 결과 있으시길 진심으로 응원합니다. 
						</td>
					</tr>
					<tr>
						<td class="eContent" align="left">
							<span class="eSubTitle">시험접수 및 안내(피어슨뷰에서 주관하는 시험만 해당)</span><br><br>
							<table id="eTable">
								<tr>
									<td class="eTd1" align="center">접수방법 </td>
									<td class="eTd2">- 방문접수 혹은 E-mail 발송(시험접수/변경/취소신청 메뉴 참고)</td>
								</tr>
								<tr>
									<td class="eTd1" align="center">접수시간<br>(신청)</td>
									<td class="eTd2">- 응시 희망일 기준 최소 하루전까지 신청. 공휴일 제외 평일 기준(월~금) 10:00 ~ 17:00<br>
    									- 당일시험 희망시 시험센터로 반드시(必) 확인전화
    								</td>
								</tr>
								<tr>
									<td class="eTd1" align="center">접수시간<br>(변경/취소)</td>
									<td class="eTd2">
										- 응시일 기준 평일 2일전까지 신청 평일(월~금) 17:00 까지<br>
    									- 이후에는 변경 및 취소가 불가능하며 응시료가 환불되지 않습니다.<br>
    									ex) 시험 기준일 2일전이 공휴일일 경우 그 전 평일까지 신청
									</td>
								</tr>
								<tr>
									<td class="eTd1" align="center">시험장<br>운영시간</td>
									<td class="eTd2">- 평일(월~금) 10:00 ~ 22:00</td>
								</tr>
								<tr>
									<td class="eTd1" align="center">시험당일<br>준비물</td>
									<td class="eTd2">
										- 기본신분증과 보조신분증 필요<br>
    									- 신분증(주민증록증/운전면허증/여권 중2개 지참)<br>
    									- 만약 신분증이 1가지만 있을 경우 응시자 영문성함이 들어간 체크/신용카드 지참<br>
    									- 벤더사 규정에 의해 반입가능한 물품 : 사전, 전자계산기, 참고자료 등 <br>(노트보드 및 펜은 시험센터에서 제공하며 응시자 개인물품은 사용(반입)할 수 없습니다.)
									</td>
								</tr>
								<tr>
									<td class="eTd1" align="center">문의전화</td>
									<td class="eTd2">- 02-6901-7007</td>
								</tr>
							</table>
							<p id="eWarning" align="right">주차지원불가, 대중교통을 이용바랍니다.</p>
							&nbsp;&nbsp;						
						</td>
					</tr>
				</table>
				<table class="e">
					<tr>
						<td class="eTitle"><h3>시험응시 절차</h3></td>
					</tr>
					<tr>
						<td class="eContent" align="center"><img width="95%" src="img/exam2.png"></td>
					</tr>
				</table>
				<table class="e">
					<tr>
						<td class="eTitle"><h3>시험정보</h3></td>
					</tr>
					<tr>
						<td class="eContent" align="center">
							a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>a<br>
						</td>
					</tr>
				</table>
				<table class="e">
					<tr>
						<td class="eTitle"><h3>FAQ</h3></td>
					</tr>
					<tr>
						<td class="eContent" align="center">
							<table class="eFAQ">
								<tr>
									<td style="width:5%;" class="eFAQF">Q</td>
									<td class="eFAQF">시험접수시 결제는 언제 이루어지나요?</td>
								</tr>
								<tr>
									<td>A</td>
									<td>각 벤더사 홈페이지에서 응시자 본인이 직접 등록시 바로 결제가 이루어지며 <br>대행으로 접수시(피어슨뷰에서 주관하는 일부 시험만 가능) 감독관이 결제프로그램으로 응시원서를 발송한 당일에 결제가 진행됩니다. (평일 10:00 ~ 17:00 사이에 발송한 메일에 한함) <br>즉, 시험당일에 결제가 이루어 지는게 아니라 시험접수시 결제가 동시에 진행됩니다.</td>
								</tr>
							</table>
							<table class="eFAQ">
								<tr>
									<td style="width:5%;" class="eFAQF">Q</td>
									<td class="eFAQF">시험당일 방문시 지참물이 무엇이 있나요?</td>
								</tr>
								<tr>
									<td>A</td>
									<td>신분증과 벤더사 규정에 의해 반입가능한 물품(사전, 계산기) 혹은 참조자료를 가지고 오시면됩니다. <br>신분증의 경우 1~2개의 종류를 확인하고 있으며, 벤더사마다 요청하는 규정(신분증 개수)이 다르니 홈페이지 확인 후 지참하시기 바랍니다. (주관사가 피어슨뷰 및 아마존웹서비스의 경우 2가지 필수이며, 이외의 시험은 1가지만 지참하여 방문하면 됩니다.) <br>신분증 미지참시 입실불가</td>
								</tr>
							</table>
							<table class="eFAQ">
								<tr>
									<td style="width:5%;" class="eFAQF">Q</td>
									<td class="eFAQF">합격 후 자격증은 어떻게 받나요?</td>
								</tr>
								<tr>
									<td>A</td>
									<td>모든 자격증은 벤더사에 발급합니다.<br>벤더사마다 자격증 발급 방법이 상이하오니 벤더사 홈페이지를 참조바랍니다. (시험종료후 시험센터에서 출력되는 종이는 자격증이 아니며 성적표입니다. 각 벤더사마다 출력물이 없는 시험도 있습니다.) <br>시험센터 공지&안내사항 게시판에 일부 벤더사의 자격증 수령방법 게시글이 있으니 참고바랍니다.</td>
								</tr>
							</table>
							<table class="eFAQ">
								<tr>
									<td style="width:5%;" class="eFAQF">Q</td>
									<td class="eFAQF">시험결제한 영수증은 어디에서 받나요?</td>
								</tr>
								<tr>
									<td>A</td>
									<td>일반매장처럼 결제시 카드전표(영수증)가 따로 나오지 않습니다. <br>온라인에서 직접 결제진행한 벤더사 홈페이지 혹은 이메일로 발송된 결제내역으로 대체하시기 바랍니다.</td>
								</tr>
							</table>
							<table class="eFAQ">
								<tr>
									<td style="width:5%;" class="eFAQF">Q</td>
									<td class="eFAQF">자격증을 잃어버렸습니다. 재발급은 어떻게 하나요?</td>
								</tr>
								<tr>
									<td>A</td>
									<td>자격증은 벤더사에서 관리하므로 각 해당 벤더사를 통해 재발급하셔야합니다. <br>재발급시 수수료가 발생할 수 있습니다.</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>