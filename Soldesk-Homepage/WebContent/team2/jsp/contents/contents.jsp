<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CONTENTS_PAGE</title>
<style type="text/css">
.modS, .modE, .mod {
	display: none;
}
</style>

<link href="datePicker/css/jquery.datepick.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/timepicker@1.11.12/jquery.timepicker.css"
	rel="stylesheet">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="datePicker/js/jquery.plugin.min.js"></script>
<script src="datePicker/js/jquery.datepick.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/timepicker@1.11.12/jquery.timepicker.js"></script>

<script>
	$(function()
	{
		$("#mod").click(
				function()
				{
					if ($("#mod").attr("value") == "off")
					{
						$(".modS, .mod, .modSubS").css("display", "inline");
						$("#mod").attr("value", "on");
					} else
					{
						$(".modS, .modE, .mod, .modSubS, .modSubE").css(
								"display", "none");
						$(".main, .subMain").css("display", "inline");
						$("#mod").attr("value", "off");
					}
				});
		$("#modTitleS").click(function()
		{
			$("#modTitleS").css("display", "none");
			$("#title").css("display", "none");
			$("#modTitle").css("display", "inline");
			$("#modTitleE").css("display", "inline");
		});
		$("#modTitleE").click(function()
		{
			$("#modTitleE").css("display", "none");
			$("#modTitle").css("display", "none");
			$("#title").css("display", "inline");
			$("#modTitleS").css("display", "inline");
		});
		$("#modSchedule1S").click(function()
		{
			$("#modSchedule1S").css("display", "none");
			$("#schedule1").css("display", "none");
			$("#modSchedule1").css("display", "inline");
			$("#modSchedule1E").css("display", "inline");
		});
		$("#modSchedule1E").click(function()
		{
			$("#modSchedule1E").css("display", "none");
			$("#modSchedule1").css("display", "none");
			$("#schedule1").css("display", "inline");
			$("#modSchedule1S").css("display", "inline");
		});
		$("#modHolyDaysS").click(function()
		{
			$("#modHolyDaysS").css("display", "none");
			$("#holyDays").css("display", "none");
			$("#modHolyDays").css("display", "inline");
			$("#modHolyDaysE").css("display", "inline");
		});
		$("#modHolyDaysE").click(function()
		{
			$("#modHolyDaysE").css("display", "none");
			$("#modHolyDays").css("display", "none");
			$("#holyDays").css("display", "inline");
			$("#modHolyDaysS").css("display", "inline");
		});
		$("#modTimeS").click(function()
		{
			$("#modTimeS").css("display", "none");
			$("#time").css("display", "none");
			$("#modTime").css("display", "inline");
			$("#modTimeE").css("display", "inline");
		});
		$("#modTimeE").click(function()
		{
			$("#modTimeE").css("display", "none");
			$("#modTime").css("display", "none");
			$("#time").css("display", "inline");
			$("#modTimeS").css("display", "inline");
		});
		$("#modCapacityS").click(function()
		{
			$("#modCapacityS").css("display", "none");
			$("#capacity").css("display", "none");
			$("#modCapacity").css("display", "inline");
			$("#modCapacityE").css("display", "inline");
		});
		$("#modCapacityE").click(function()
		{
			$("#modCapacityE").css("display", "none");
			$("#modCapacity").css("display", "none");
			$("#capacity").css("display", "inline");
			$("#modCapacityS").css("display", "inline");
		});
		$('.datePicker').datepick(
				{
					firstDay : 1,
					dateFormat : 'yyyy.mm.dd',
					prevText : '���� ��',
					nextText : '���� ��',
					monthNames : [ '1��', '2��', '3��', '4��', '5��', '6��', '7��',
							'8��', '9��', '10��', '11��', '12��' ],
					monthNamesShort : [ '1��', '2��', '3��', '4��', '5��', '6��',
							'7��', '8��', '9��', '10��', '11��', '12��' ],
					dayNames : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],
					dayNamesShort : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],
					dayNamesMin : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],
					showMonthAfterYear : true,
					changeMonth : true,
					changeYear : true,
					yearSuffix : '��'
				});
		$('#multiDatesPicker').datepick(
				{
					multiSelect : 999,
					firstDay : 1,
					dateFormat : 'yyyy.mm.dd',
					prevText : '���� ��',
					nextText : '���� ��',
					monthNames : [ '1��', '2��', '3��', '4��', '5��', '6��', '7��',
							'8��', '9��', '10��', '11��', '12��' ],
					monthNamesShort : [ '1��', '2��', '3��', '4��', '5��', '6��',
							'7��', '8��', '9��', '10��', '11��', '12��' ],
					dayNames : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],
					dayNamesShort : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],
					dayNamesMin : [ '��', '��', 'ȭ', '��', '��', '��', '��' ],
					showMonthAfterYear : true,
					changeMonth : true,
					changeYear : true,
					yearSuffix : '��'
				});
		$('.timePicker').timepicker(
		{
			'timeFormat' : 'H:i'
		});
	});
</script>
</head>
<body>
	<table border="solid">
		<tr>
			<td>
				<button id="mod" value="off">�����ڸ�� on/off</button>
			</td>
		</tr>
		<tr>
			<td><h1>
					<span id="title" class="main">${c.sc_title }</span> <input
						id="modTitle" class="modE" value="${c.sc_title }">
					<button id="modTitleS" class="modS">����</button>
					<button id="modTitleE" class="modE">�Ϸ�</button>
				</h1></td>
		</tr>
		<tr>
			<td><h5>
					��з�
					<!-- ${category } -->
					> �ߺз�
					<!-- ${category } -->
					> ${c.sc_title }
				</h5></td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>
							<h3>
								��������
								<button id="modSchedule1S" class="modS">����</button>
								<button id="modSchedule1E" class="modE">�Ϸ�</button>
							</h3>
						</td>
						<td><span id="schedule1" class="main"> <fmt:formatDate
									value="${c.sc_schedule_start }" pattern="yyyy.MM.dd" /> ~ <fmt:formatDate
									value="${c.sc_schedule_finish }" pattern="yyyy.MM.dd" />
						</span> <span id="modSchedule1" class="modE"> ������ : <input
								class="datePicker"
								value="<fmt:formatDate
									value="${c.sc_schedule_start }" pattern="yyyy.MM.dd" />">������
								: <input class="datePicker"
								value="<fmt:formatDate
									value="${c.sc_schedule_finish }" pattern="yyyy.MM.dd" />">
						</span></td>
						<td>
							<h3>
								�����Ⱓ
								<button id="modHolyDaysS" class="modS">����</button>
								<button id="modHolyDaysE" class="modE">�Ϸ�</button>
							</h3>
						</td>
						<td><span id="holyDays" class="main">${totalMonth }����,��${totalHours }�ð�</span>
							<span id="modHolyDays" class="modE"> <textarea
									id="multiDatesPicker" >${holyDays }</textarea>���������� ���� �ٸ���
									
						</span></td>
					</tr>
					<tr>
						<td>
							<h3>
								�����ð�
								<button id="modTimeS" class="modS">����</button>
								<button id="modTimeE" class="modE">�Ϸ�</button>
							</h3>
						</td>
						<td>�� �� <span id="time" class="main"> <c:forEach
									var="tw" items="${totalWeeks }">
									${tw }
									</c:forEach> , <fmt:formatDate value="${c.sc_schedule_start }"
									pattern="kk:mm" /> ~ <fmt:formatDate
									value="${c.sc_schedule_finish }" pattern="kk:mm" />
						</span><span id="modTime" class="modE"> <!-- checked="checked" -->(��
								<input type="checkbox" value="��"
								<c:if test="${fn:contains(totalWeeks, '��')}">checked="checked"</c:if>>)
								(ȭ <input type="checkbox" value="ȭ"
								<c:if test="${fn:contains(totalWeeks, 'ȭ')}">checked="checked"</c:if>>)
								(�� <input type="checkbox" value="��"
								<c:if test="${fn:contains(totalWeeks, '��')}">checked="checked"</c:if>>)
								(�� <input type="checkbox" value="��"
								<c:if test="${fn:contains(totalWeeks, '��')}">checked="checked"</c:if>>)
								(�� <input type="checkbox" value="��"
								<c:if test="${fn:contains(totalWeeks, '��')}">checked="checked"</c:if>>)
								(�� <input type="checkbox" value="��"
								<c:if test="${fn:contains(totalWeeks, '��')}">checked="checked"</c:if>>)
								(�� <input type="checkbox" value="��"
								<c:if test="${fn:contains(totalWeeks, '��')}">checked="checked"</c:if>>)
								, <input class="timePicker"
								value="<fmt:formatDate value="${c.sc_schedule_start }"
									pattern="kk:mm" />">~<input
								class="timePicker"
								value="<fmt:formatDate
									value="${c.sc_schedule_finish }" pattern="kk:mm" />">
						</span></td>
						<td>
							<h3>
								��������
								<button id="modCapacityS" class="modS">����</button>
								<button id="modCapacityE" class="modE">�Ϸ�</button>
							</h3>
						</td>
						<td><span id="capacity" class="main">${c.sc_capacity }</span><span
							id="modCapacity" class="modE"> <input
								value="${c.sc_capacity }">
						</span>��</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>�����Ұ�</td>
						<td><button>������û</button></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><jsp:include page="substance.jsp"></jsp:include></td>
		</tr>
		<tr>
			<td>
				<button>����</button>(onclick���� ����ȭ������ ���ư���)
			</td>
		</tr>
	</table>
</body>
</html>