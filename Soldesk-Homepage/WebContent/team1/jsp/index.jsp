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
						<td>&nbsp;&nbsp;�Ƿ°� ��ǰ�� ����� ����缺 �������</td>
						<td align="right">�������� 02-6901-7001 &nbsp;|&nbsp; ���蹮��
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
						<td class="siteMenu" align="center"><a href="">�����ڱ�������</a></td>
						<td class="siteMenu" align="center"><a href="">�����ڱ�������</a></td>
						<td class="siteMenu" align="center"><a href="">4�������������</a></td>
						<td class="siteMenu" align="center"><a href="">��������<br>��������
						</a></td>
						<td class="siteMenu" align="center"><a href="">�����ڰ���<br>���輾��
						</a></td>
						<td class="siteMenu" align="center"><a href="">���������</a></td>
						<td class="siteMenu" align="center"><a href="">Ŀ�´�Ƽ</a></td>
					</tr>
				</table>
				<table id="siteSubMenuArea">
					<tr>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">�ڹ� ������ �����</a></td>
								</tr>
								<tr>
									<td><a href="">�������� �����</a></td>
								</tr>
								<tr>
									<td><a href="">��Ʈ��ũ �����</a></td>
								</tr> 
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">���α׷��� ����</a></td>
								</tr>
								<tr>
									<td><a href="">�������� ����</a></td>
								</tr>
								<tr>
									<td><a href="">��Ʈ��ũ ����</a></td>
								</tr>
								<tr>
									<td><a href="">�ý��� ����</a></td>
								</tr>
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">������ & AI</a></td>
								</tr>
								<tr>
									<td><a href="">�繰���ͳ�</a></td>
								</tr>
								<tr>
									<td><a href="">������������</a></td>
								</tr>
								<tr>
									<td><a href="">����ũ</a></td>
								</tr>
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">redhat ���α���</a></td>
								</tr>
								<tr>
									<td><a href="">oracle ���α���</a></td>
								</tr>
								<tr>
									<td><a href="">AWS ���α���</a></td>
								</tr>
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="ExamController">�����ڰ������輾��</a></td>
								</tr>
								<tr>
									<td><a href="ExamController">���輾�� ��������</a></td>
								</tr>
								<tr>
									<td><a href="ExamController">��������<br>����/��ҽ�û</a></td>
								</tr>
							</table>
						</td>
						<td class="siteSubMenu" align="center" valign="top" >
							<table style="width:100%;">
								<tr>
									<td><a href="">��������� �Ұ�</a></td>
								</tr>
								<tr>
									<td><a href="">��������� �ܺ�Ȱ��</a></td>
								</tr>
								<tr>
									<td><a href="">����ı�</a></td>
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
									<td><a href="">��������</a></td>
								</tr>
								<tr>
									<td><a href="">���� �ϴ� ����</a></td>
								</tr>
								<tr>
									<td><a href="">Ư��/���̳�</a></td>
								</tr>
								<tr>
									<td><a href="">���������ͺ�</a></td>
								</tr>
								<tr>
									<td><a href="">���ü���ͺ�</a></td>
								</tr>
								<tr>
				 					<td><a href="">Gallery</a></td>
								</tr>
								<tr>
									<td><a href="">�¶��� ���</a></td>
								</tr>
								<tr>
									<td><a href="">�¶��� ����</a></td>
								</tr>
								<tr>
									<td><a href="">���ô� ��</a></td>
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
						<td>��ȣ�� : �ֵ���ũ</td>
						<td>��ǥ : �ֵ���ũ</td>
						<td>��ȭ : 070-1234-5678</td>
						<td>����ڵ�Ϲ�ȣ : 000-���ýþ�-00000</td>
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