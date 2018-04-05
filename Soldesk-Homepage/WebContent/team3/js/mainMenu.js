function createMainMenu() {
	var sm_name = prompt("추가할 메뉴 이름(20글자 이하)");
	if (sm_name != null && sm_name != "" && sm_name.length <= 20) {
		location.href = "CreateMainMenu?sm_name=" + sm_name;
	} else {
		alert("글자수 확인");
	}
}

function adminCheck() {
	var ok = confirm("관리자모드 할꺼야?(확인:로그인, 취소:로그아웃)");
	if (ok) {
		location.href = "AdminLoginController";
	} else {
		location.href = "AdminLogoutController";
	}
}

function createSubMenu(ss_mainMenuNo) {
	var ss_name = prompt("추가할 메뉴 이름(20글자 이하)");
	if (ss_name != null && ss_name != "" && ss_name.length <= 20) {
		location.href = "CreateSubMenu?ss_name=" + ss_name + "&ss_mainMenuNo="
				+ ss_mainMenuNo;
	} else {
		alert("글자수 확인");
	}
}

function goCreateSubMenu(sm_no) {
	location.href = "GoCreateSubMenu?sm_no=" + sm_no;
}

function deleteMainMenu(sm_no) {
	var ok = confirm("진짜 삭제할꺼야?");
	if (ok) {
		location.href = "DeleteMainMenuController?sm_no=" + sm_no;
	}
}

function goContentPage(ss_type) {
	if (ss_type == 1) {
		location.href = "BulletinController";
	}
}

function updateBulletin(wn_no) {
	location.href = "UpdateBulletinController?wn_no="+wn_no;
}

function deleteBulletin(wn_no) {
	location.href = "DeleteBulletinController?wn_no="+wn_no;
}