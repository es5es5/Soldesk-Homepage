<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CONTENTS_BBS_PAGE</title>
<style type="text/css">
.modS, .modE, .mod, .modSubS, .modSubE {
	display: none;
}
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
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
		$("#modBigTitleS").click(function()
		{
			$("#modBigTitleS").css("display", "none");
			$("#bigTitle").css("display", "none");
			$("#modBigTitle").css("display", "inline");
			$("#modBigTitleE").css("display", "inline");
		});
		$("#modBigTitleE").click(function()
		{
			$("#modBigTitleE").css("display", "none");
			$("#modBigTitle").css("display", "none");
			$("#bigTitle").css("display", "inline");
			$("#modBigTitleS").css("display", "inline");
		});
		$("#modMidleTitleS").click(function()
		{
			$("#modMidleTitleS").css("display", "none");
			$("#midleTitle").css("display", "none");
			$("#modMidleTitle").css("display", "inline");
			$("#modMidleTitleE").css("display", "inline");
		});
		$("#modMidleTitleE").click(function()
		{
			$("#modMidleTitleE").css("display", "none");
			$("#modMidleTitle").css("display", "none");
			$("#midleTitle").css("display", "inline");
			$("#modMidleTitleS").css("display", "inline");
		});
		$("button.modSubS").click(function(e)
		{
			var id = e.target.getAttribute('id');
			$("#" + id).css("display", "none");
			$("#" + id + "ST").css("display", "none");
			$("#" + (id * 1 + 10000)).css("display", "inline");
			$("#" + (id * 1 + 10000) + "ST").css("display", "inline");
		});
		$("button.modSubE").click(function(e)
		{
			var id = e.target.getAttribute('id');
			$("#" + id).css("display", "none");
			$("#" + id + "ST").css("display", "none");
			$("#" + (id * 1 - 10000)).css("display", "inline");
			$("#" + (id * 1 - 10000) + "ST").css("display", "inline");
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
					<span id="bigTitle" class="main"> ��з��� </span> <input
						id="modBigTitle" class="modE" value="��з���">
					<!-- ${smName } -->
					<button id="modBigTitleS" class="modS">����</button>
					<button id="modBigTitleE" class="modE">�Ϸ�</button>
				</h1></td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>��ü</td>
						<c:forEach var="i" begin="1" end="3" step="1">
							<!-- ${ss } arrayList �������� -->
							<td>
								<h4>
									�з�
									<!-- ${ssName } -->
								</h4>
							</td>
						</c:forEach>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td><h3>
					��з�
					<!-- ${smName } -->
					> <span id="midleTitle" class="main">�ߺз�</span><input
						id="modMidleTitle" class="modE" value="�ߺз�">
					<!-- ${ssName } -->
					<button id="modMidleTitleS" class="modS">����</button>
					<button id="modMidleTitleE" class="modE">�Ϸ�</button>
					(���� ���õ� �з�)
				</h3></td>
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
					<c:forEach var="c" items="${contents }">
						<tr>
							<td><span id="${c.sc_no }ST" class="main"> <a
									href="ContentsController?sc_no=${c.sc_no }">${c.sc_title }</a>
							</span> <input id="${c.sc_no+10000 }ST" class="modE"
								value="${c.sc_title }">
								<button id="${c.sc_no }" class="modSubS">����</button>
								<button id="${c.sc_no+10000 }" class="modSubE">�Ϸ�</button></td>
							<td><span id="${c.sc_no+20000 }ST" class="main">
									${c.sc_expense } </span> <input id="${c.sc_no+30000 }ST" class="modE"
								value="${c.sc_expense }">
								<button id="${c.sc_no+20000 }" class="modSubS">����</button>
								<button id="${c.sc_no+30000 }" class="modSubE">�Ϸ�</button></td>
							<td>
								<button>������û</button>
							</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="3"><button class="modS">�߰�</button></td>
					</tr>
					<tr>
						<td colspan="3"><c:forEach var="p" begin="1"
								end="${pageCount }">&nbsp;
							<a href="ContentsPageController?p=${p }">${p }</a>
							</c:forEach></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>