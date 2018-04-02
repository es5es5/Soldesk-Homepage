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
						<td class="siteMenu" align="center"><a href="">�Ϻ�IT�����</a></td>
						<td class="siteMenu" align="center"><a href="">�����ڱ�������</a></td>
						<td class="siteMenu" align="center"><a href="">4�������������</a></td>
						<td class="siteMenu" align="center"><a href="">��������<br>��������
						</a></td>
						<td class="siteMenu" align="center"><a href=ExamController>�����ڰ���<br>���輾��
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
									<td><a href="exam.html">�����ڰ������輾��</a></td>
								</tr>
								<tr>
									<td><a href="exam.html">���輾�� ��������</a></td>
								</tr>
								<tr>
									<td><a href="exam.html">��������<br>����/��ҽ�û</a></td>
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
	
	<table id="siteContentArea">
		<tr>
			<td>
				<table id="siteSubMenu2Area">
					<tr>
						<td id="siteSubMenu2Title">�����ڰ������輾��</td>
					</tr>
					<tr>
						<td><button class="siteSubMenu2">���輾�� �Ұ�</button></td>
					</tr>
					<tr>
						<td><button class="siteSubMenu2">�������� ����</button></td>
					</tr>
					<tr>
						<td><button class="siteSubMenu2">��������</button></td>
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
						<td class="eTitle"><h3>���輾�� �Ұ�</h3></td>
					</tr>
					<tr>
						<td class="eContent">
							<span class="eSubTitle">�ֵ���ũ ���輾�ʹ� �������ν��輾���Դϴ�.</span><p>
							�����ڰ����� ��� ��� ������ �ƴ϶� �ؿܿ����� ���� ������ ����� ������ �Ǹ� ���ư� �������� �־� ū ������ �ְ� �ֽ��ϴ�.<br>
							�Ϸʷ� CISCO �ڰ����� ��� ��κ��� ��Ʈ��ũ ��ü���� �ش� �ڰ��� ���� ���θ� ���� ��� ������<br>���� ���ο� ���� ȸ�翡 ������ �ֱ� ������ ��� �� �������� ������ �˴ϴ�.<p>
							Amazon / Cisco / Comptia / HUAWEI / ISACA / Microsoft / Oracle / SAS / VMware �� ��ó�� �����絵 ����<br>
							�����縶�� ���������� ���� ������ ������ �������� ���ຸ�� PearsonVUE / PROMETRIC / PSI �� �ְ��縦 ���� ������ ����˴ϴ�.<p>
							���� �ֵ���ũ ���輾�ʹ� ��ó�� ������ �ְ���� �����Ͽ� �����ڰ� ��ȣ�ϴ� ��� �����ڰ��� ������<br>
							������ ȯ�濡�� ������ �������� ������ �� �ֵ��� ��� �� ��ϰ� �ֽ��ϴ�.<p>
							������ �غ��ϽŸ�ŭ ���� ��� �����ñ� �������� �����մϴ�. 
						</td>
					</tr>
					<tr>
						<td class="eContent" align="left">
							<span class="eSubTitle">�������� �� �ȳ�(�Ǿ�信�� �ְ��ϴ� ���踸 �ش�)</span><br><br>
							<table id="eTable">
								<tr>
									<td class="eTd1" align="center">������� </td>
									<td class="eTd2">- �湮���� Ȥ�� E-mail �߼�(��������/����/��ҽ�û �޴� ����)</td>
								</tr>
								<tr>
									<td class="eTd1" align="center">�����ð�<br>(��û)</td>
									<td class="eTd2">- ���� ����� ���� �ּ� �Ϸ������� ��û. ������ ���� ���� ����(��~��) 10:00 ~ 17:00<br>
    									- ���Ͻ��� ����� ���輾�ͷ� �ݵ��(��) Ȯ����ȭ
    								</td>
								</tr>
								<tr>
									<td class="eTd1" align="center">�����ð�<br>(����/���)</td>
									<td class="eTd2">
										- ������ ���� ���� 2�������� ��û ����(��~��) 17:00 ����<br>
    									- ���Ŀ��� ���� �� ��Ұ� �Ұ����ϸ� ���÷ᰡ ȯ�ҵ��� �ʽ��ϴ�.<br>
    									ex) ���� ������ 2������ �������� ��� �� �� ���ϱ��� ��û
									</td>
								</tr>
								<tr>
									<td class="eTd1" align="center">������<br>��ð�</td>
									<td class="eTd2">- ����(��~��) 10:00 ~ 22:00</td>
								</tr>
								<tr>
									<td class="eTd1" align="center">�������<br>�غ�</td>
									<td class="eTd2">
										- �⺻�ź����� �����ź��� �ʿ�<br>
    									- �ź���(�ֹ�������/����������/���� ��2�� ����)<br>
    									- ���� �ź����� 1������ ���� ��� ������ ���������� �� üũ/�ſ�ī�� ����<br>
    									- ������ ������ ���� ���԰����� ��ǰ : ����, ���ڰ���, �����ڷ� �� <br>(��Ʈ���� �� ���� ���輾�Ϳ��� �����ϸ� ������ ���ι�ǰ�� ���(����)�� �� �����ϴ�.)
									</td>
								</tr>
								<tr>
									<td class="eTd1" align="center">������ȭ</td>
									<td class="eTd2">- 02-6901-7007</td>
								</tr>
							</table>
							<p id="eWarning" align="right">���������Ұ�, ���߱����� �̿�ٶ��ϴ�.</p>
							&nbsp;&nbsp;						
						</td>
					</tr>
				</table>
				<table class="e">
					<tr>
						<td class="eTitle"><h3>�������� ����</h3></td>
					</tr>
					<tr>
						<td class="eContent" align="center"><img width="95%" src="img/exam2.png"></td>
					</tr>
				</table>
				<table class="e">
					<tr>
						<td class="eTitle"><h3>��������</h3></td>
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
									<td class="eFAQF">���������� ������ ���� �̷��������?</td>
								</tr>
								<tr>
									<td>A</td>
									<td>�� ������ Ȩ���������� ������ ������ ���� ��Ͻ� �ٷ� ������ �̷������ <br>�������� ������(�Ǿ�信�� �ְ��ϴ� �Ϻ� ���踸 ����) �������� �������α׷����� ���ÿ����� �߼��� ���Ͽ� ������ ����˴ϴ�. (���� 10:00 ~ 17:00 ���̿� �߼��� ���Ͽ� ����) <br>��, ������Ͽ� ������ �̷�� ���°� �ƴ϶� ���������� ������ ���ÿ� ����˴ϴ�.</td>
								</tr>
							</table>
							<table class="eFAQ">
								<tr>
									<td style="width:5%;" class="eFAQF">Q</td>
									<td class="eFAQF">������� �湮�� �������� ������ �ֳ���?</td>
								</tr>
								<tr>
									<td>A</td>
									<td>�ź����� ������ ������ ���� ���԰����� ��ǰ(����, ����) Ȥ�� �����ڷḦ ������ ���ø�˴ϴ�. <br>�ź����� ��� 1~2���� ������ Ȯ���ϰ� ������, �����縶�� ��û�ϴ� ����(�ź��� ����)�� �ٸ��� Ȩ������ Ȯ�� �� �����Ͻñ� �ٶ��ϴ�. (�ְ��簡 �Ǿ�� �� �Ƹ����������� ��� 2���� �ʼ��̸�, �̿��� ������ 1������ �����Ͽ� �湮�ϸ� �˴ϴ�.) <br>�ź��� �������� �ԽǺҰ�</td>
								</tr>
							</table>
							<table class="eFAQ">
								<tr>
									<td style="width:5%;" class="eFAQF">Q</td>
									<td class="eFAQF">�հ� �� �ڰ����� ��� �޳���?</td>
								</tr>
								<tr>
									<td>A</td>
									<td>��� �ڰ����� �����翡 �߱��մϴ�.<br>�����縶�� �ڰ��� �߱� ����� �����Ͽ��� ������ Ȩ�������� �����ٶ��ϴ�. (���������� ���輾�Ϳ��� ��µǴ� ���̴� �ڰ����� �ƴϸ� ����ǥ�Դϴ�. �� �����縶�� ��¹��� ���� ���赵 �ֽ��ϴ�.) <br>���輾�� ����&�ȳ����� �Խ��ǿ� �Ϻ� �������� �ڰ��� ���ɹ�� �Խñ��� ������ �����ٶ��ϴ�.</td>
								</tr>
							</table>
							<table class="eFAQ">
								<tr>
									<td style="width:5%;" class="eFAQF">Q</td>
									<td class="eFAQF">��������� �������� ��𿡼� �޳���?</td>
								</tr>
								<tr>
									<td>A</td>
									<td>�Ϲݸ���ó�� ������ ī����ǥ(������)�� ���� ������ �ʽ��ϴ�. <br>�¶��ο��� ���� ���������� ������ Ȩ������ Ȥ�� �̸��Ϸ� �߼۵� ������������ ��ü�Ͻñ� �ٶ��ϴ�.</td>
								</tr>
							</table>
							<table class="eFAQ">
								<tr>
									<td style="width:5%;" class="eFAQF">Q</td>
									<td class="eFAQF">�ڰ����� �Ҿ���Ƚ��ϴ�. ��߱��� ��� �ϳ���?</td>
								</tr>
								<tr>
									<td>A</td>
									<td>�ڰ����� �����翡�� �����ϹǷ� �� �ش� �����縦 ���� ��߱��ϼž��մϴ�. <br>��߱޽� �����ᰡ �߻��� �� �ֽ��ϴ�.</td>
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