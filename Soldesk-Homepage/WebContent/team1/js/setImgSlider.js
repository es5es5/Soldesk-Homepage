function setMainSlider(){
	var imgFile = [
		"main_slide_japan.jpg",
		"main_slide10.jpg",
		"main_slide4.jpg",
		"main_slide6.jpg"
		];
	
	$.each(imgFile, function(i, fileName){
		var imgTag = $("<img>").attr("src", "img/" + fileName).attr("class", "sliderImg");
		var liTag = $("<li></li>").append(imgTag);
		$("#mainSlider").append(liTag);
	});
	
	$("#mainSlider").bxSlider({
		auto : true,
		pager : false,
		slideWidth : 1080,
		speed : 1000, 	// 애니메이션 속도(1/1000초 단위)
		pause : 5000	// 한 이미지당 보여질 시간(1/1000초 단위)
	});
	
}