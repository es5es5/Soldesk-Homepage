<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="solid">
		<tr>
			<td>
				<h3>
					��������
					<button>����</button>
				</h3>
			</td>
			<td>�������� ~ ��������<!-- ${scheduleStart } ~ ${scheduleFinish } --></td>
			<td>
				<h3>
					�����Ⱓ
					<button>����</button>
				</h3>
			</td>
			<td>����� - ���ۿ�<!-- ${totalMonth } -->, (����ð� - ���۽ð�) * (�������� -
				��������) (�Լ� ���� ��)<!-- ${totalHours } --></td>
		</tr>
		<tr>
			<td>
				<h3>
					�����ð�
					<button>����</button>
				</h3>
			</td>
			<td>�� ������ ǥ��, ���۽ð� ~ ����ð� <!-- ${timeStart } ~ ${timeFinish } --></td>
			<td>
				<h3>
					��������
					<button>����</button>
				</h3>
			</td>
			<td>��������(��)<!-- ${capacity }�� --></td>
		</tr>
	</table>
</body>
</html>