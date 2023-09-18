<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV::detail</title>
<link rel="stylesheet" href="./css/detail.css" />
<script src="./js/jquery-3.7.0.min.js"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>


<script type="text/javascript">
	$(function() {
		let WURL = window.location.href;
		let count = $("#count").val();
		count = parseInt(count);
		$(".count").html("누적관객수<br>" + count.toLocaleString() + "명");
		/* 하트 바꾸기 */
		$(".like").click(function() {
			let icon = $(this).find('i');

			if (icon.hasClass('xi-heart-o')) {
				icon.removeClass('xi-heart-o').addClass('xi-heart');
			} else {
				icon.removeClass('xi-heart').addClass('xi-heart-o');
			}
		});

		let show = false;

		$(".share").click(function() {
			if (show) {
				$("#sharediv, #triangle").hide();
			} else {
				$("#sharediv, #triangle").show();
			}
			show = !show;

		});

		/* url복사 */
		$(document).on('click', "#link", function() {

			let textArea = document.createElement("textarea");
			textArea.value = WURL;

			// textarea를 body에 추가
			document.body.appendChild(textArea);

			// textarea를 선택하고 복사 명령 실행
			textArea.select();
			document.execCommand("copy");

			// textarea를 삭제
			document.body.removeChild(textArea);

			alert("URL이 복사되었습니다.");
		});

		// Kakao Link 초기화
		Kakao.init('5e6035c5b6dc0c23f98779b6f6fded6d');

		// 버튼 클릭 이벤트 핸들러
		$(document).on("click", "#kakao", function() {
			// 공유할 정보 설정
			var title = 'WELCOME TO DREAMBOX';
			var description = '이 웹 페이지를 카카오톡으로 공유합니다.';
			var imageUrl = '${detail.mv_poster}';
			var webUrl = window.location.href;

			// 카카오톡으로 공유하기
			Kakao.Link.sendDefault({
				objectType : 'feed',
				content : {
					title : title,
					description : description,
					imageUrl : imageUrl,
					link : {
						mobileWebUrl : webUrl,
						webUrl : webUrl,
					},
				},
			});
		});

		$("li").click(function() {
			$(this).addClass("on");
			$(this).siblings("li").removeClass("on");
		})

	});
</script>
<style type="text/css">
.top-content::before {
	background-image: url("${detail.mv_bgimg}");
}
</style>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="top">
		<div class="top-content">
			<div class="poster">

				<div>
					<img class="posterimg" src="${detail.mv_poster}">
				</div>
				<div class="svg-wrapper">
					<svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                    <rect id="shape" height="40" width="150" />
                    <div id="text">
                        <a href=""><span class="spot"></span>예매하기</a>
                    </div>
                </svg>
				</div>
			</div>
			<div class="title">

				<div class="mvtitle">
					<img src="${detail.mv_gradeimg}">
					<h1>${detail.mv_name}</h1>
				</div>

				<div>${detail.mv_nameen }</div>
				<br>

				<button class="like" type="button">
					<i class="xi-heart-o"></i> 좋아요
				</button>
				<button class="share" type="button">
					<i class="xi-share-alt-o"></i> 공유하기
				</button>
				<div id="triangle"></div>
				<div id="sharediv">
					<button id="kakao">
						<i class="xi-kakaotalk xi-2x" style="color: #FBC02D"></i><br>
						카카오톡
					</button>
					<button id="kakao">
						<i class="xi-line xi-2x" style="color: green"></i><br> 라인
					</button>
					<button id="link">
						<i class="xi-link xi-2x"></i><br> 링크 복사
					</button>
				</div>

				<div class="title-info">
					<div class="rank">
						예매율 <br>${detail.mv_idx }위
					</div>
					<div class="count">
						<input id="count" type="hidden" value="${detail.au_acccnt}">
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="clear"></div> 
	<ul>
		<li class="on">영화 정보</li>
		<li>예고편</li>
		<li>등장인물</li>
		<li>스틸컷</li>
	</ul>
	<div class="clear"></div>
	<div class="info">
		영화 이름 : ${detail.mv_name }<br>
		장르 : ${detail.mv_genre }<br>
		${detail.mv_country }<br>
		${detail.mv_maker }<br>
		러닝 타임 : ${detail.mv_runtime }분<br>
		개봉일 : ${detail.mv_sdate }
		<hr>
		${detail.mv_sinop }
	</div>
	
	
	
	
	
	<div class="clear"></div>


</body>
</html>