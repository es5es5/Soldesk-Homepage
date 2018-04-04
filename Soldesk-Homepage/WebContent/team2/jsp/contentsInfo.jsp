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
					교육일정
					<button>수정</button>
				</h3>
			</td>
			<td>시작일정 ~ 종료일정<!-- ${scheduleStart } ~ ${scheduleFinish } --></td>
			<td>
				<h3>
					교육기간
					<button>수정</button>
				</h3>
			</td>
			<td>종료월 - 시작월<!-- ${totalMonth } -->, (종료시간 - 시작시간) * (종료일정 -
				시작일정) (함수 만들어서 씀)<!-- ${totalHours } --></td>
		</tr>
		<tr>
			<td>
				<h3>
					교육시간
					<button>수정</button>
				</h3>
			</td>
			<td>각 요일이 표시, 시작시간 ~ 종료시간 <!-- ${timeStart } ~ ${timeFinish } --></td>
			<td>
				<h3>
					수강정원
					<button>수정</button>
				</h3>
			</td>
			<td>수강정원(명)<!-- ${capacity }명 --></td>
		</tr>
	</table>
</body>
</html>