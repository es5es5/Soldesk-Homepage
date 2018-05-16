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
				<button id="mod" value="off">관리자모드 on/off</button>
			</td>
		</tr>
		<tr>
			<td><h1>
					<span id="bigTitle" class="main"> 대분류명 </span> <input
						id="modBigTitle" class="modE" value="대분류명">
					<!-- ${smName } -->
					<button id="modBigTitleS" class="modS">수정</button>
					<button id="modBigTitleE" class="modE">완료</button>
				</h1></td>
		</tr>
		<tr>
			<td>
				<table border="solid">
					<tr>
						<td>전체</td>
						<c:forEach var="i" begin="1" end="3" step="1">
							<!-- ${ss } arrayList 받을거임 -->
							<td>
								<h4>
									분류
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
					대분류
					<!-- ${smName } -->
					> <span id="midleTitle" class="main">중분류</span><input
						id="modMidleTitle" class="modE" value="중분류">
					<!-- ${ssName } -->
					<button id="modMidleTitleS" class="modS">수정</button>
					<button id="modMidleTitleE" class="modE">완료</button>
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
					<c:forEach var="c" items="${contents }">
						<tr>
							<td><span id="${c.sc_no }ST" class="main"> <a
									href="ContentsController?sc_no=${c.sc_no }">${c.sc_title }</a>
							</span> <input id="${c.sc_no+10000 }ST" class="modE"
								value="${c.sc_title }">
								<button id="${c.sc_no }" class="modSubS">수정</button>
								<button id="${c.sc_no+10000 }" class="modSubE">완료</button></td>
							<td><span id="${c.sc_no+20000 }ST" class="main">
									${c.sc_expense } </span> <input id="${c.sc_no+30000 }ST" class="modE"
								value="${c.sc_expense }">
								<button id="${c.sc_no+20000 }" class="modSubS">수정</button>
								<button id="${c.sc_no+30000 }" class="modSubE">완료</button></td>
							<td>
								<button>수강신청</button>
							</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="3"><button class="modS">추가</button></td>
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