function setMainMenuAnimation(){
	$("#siteMenuArea").mouseenter(function(){
		$("#siteSubMenuArea").fadeIn(500);
	});
	
	$("#siteMenuArea").mouseleave(function(){
		$("#siteSubMenuArea").fadeOut(500);
		$(".siteSubMenu").removeClass("selectedMenu");
		$(".siteMenu").removeClass("selectedMenu");
	});
	
	$(".siteMenu").mouseenter(function() {
		$(".siteSubMenu").removeClass("selectedMenu");
		$(".siteMenu").removeClass("selectedMenu");
		var selectedMenu = this;
		$(this).addClass("selectedMenu");
		$(".siteMenu").each(function(i) {
			if (selectedMenu == $(".siteMenu")[i]) {
				var selectedSubMenu = $(".siteSubMenu")[i];
				$(selectedSubMenu).addClass("selectedMenu");
			}
		});
	});
	
	$(".siteSubMenu").mouseenter(function() {
		$(".siteSubMenu").removeClass("selectedMenu");
		$(".siteMenu").removeClass("selectedMenu");
		var selectedSubMenu = this;
		$(this).addClass("selectedMenu");
		$(".siteSubMenu").each(function(i) {
			if (selectedSubMenu == $(".siteSubMenu")[i]) {
				var selectedMenu = $(".siteMenu")[i];
				$(selectedMenu).addClass("selectedMenu");
			}
		});
	});
}
function setSiteSubMenu2(){
	var r = ($(window).width() / 2) + 490;
	$("#siteSubMenu2Area").css("right", r+"px");
	
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
}