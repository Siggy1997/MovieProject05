<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV::discount</title>
<script src="./js/jquery-3.7.0.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="styles.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="script.js"></script>
<style type="text/css">
/* 슬라이더 컨테이너 스타일 */
.slider-container {
    position: relative;
    overflow: hidden;
    width: 80%;
    margin: 0 auto;
}

/* 슬라이더 스타일 */
.slider {
    display: flex;
    align-items: center; /* 이미지를 세로 중앙에 정렬 */
    transition: all 0.3s ease;
}

/* 각 이미지 슬라이드 스타일 */
.slide {
    flex: 0 0 33.33%; /* 이미지 개수에 따라 조정 */
    padding: 10px; /* 이미지 간격 조정 */
    text-align: center;
}

.slide img {
    max-width: 100%;
    height: auto;
}

/* 이전 및 다음 버튼 스타일 */
.prev-button, .next-button {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    cursor: pointer;
    padding: 10px 20px;
    background-color: #333;
    color: #fff;
    z-index: 1;
}

.prev-button {
    left: 0;
}

.next-button {
    right: 0;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
    let currentIndex = 0;

    function updateSlider() {
        const slideWidth = 33.33; // 이미지 개수에 따라 조정
        const translateX = -currentIndex * slideWidth;
        $(".slider").css("transform", `translateX(${translateX}%)`);
    }

    $(".prev-button").click(function() {
        if (currentIndex > 0) {
            currentIndex--;
            updateSlider();
        }
    });

    $(".next-button").click(function() {
        if (currentIndex < 2 /* 이미지 개수 - 1 */) {
            currentIndex++;
            updateSlider();
        }
    });

    updateSlider(); // 초기 슬라이더 설정
});
</script>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<h1>DISCOUNT</h1>
	<div class="slider-container">
		<div class="slider">
			<div class="slide">
				<img src="./img/IMAX.png" alt="이미지 1">
			</div>
			<div class="slide">
				<img src="./img/IMAX1.png" alt="이미지 2">
			</div>
			<div class="slide">
				<img src="./img/IMAX3.jpg" alt="이미지 3">
			</div>
			<!-- 추가 이미지들을 필요한 만큼 추가합니다. -->
		</div>
		    <div class="prev-button">이전</div>
        <div class="next-button">다음</div>
	</div>
</body>
</html>