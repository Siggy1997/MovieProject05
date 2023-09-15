<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="../css/mhome/admin.css">


<style type="text/css">
#comment{
	width: 100%; 
	height: 100px;
	padding: 5px;
	line-height: 30px;
	overflow: visible;
	animation: fadeInUp 1s;
	
}
</style>
<body>

<div class="continer">
	<div class="header">
		
		<div class="menu">
			<!-- <div class="logo">logo</div> -->
			<div class="menu-item" onclick="url('admin')"><i class="xi-home-o xi-2x"></i> 홈</div>
			<div class="menu-item" onclick="url('member')"><i class="xi-user-o xi-2x"></i> 회원 관리</div>
			<div class="menu-item" onclick="url('')"><i class="xi-comment-o xi-2x"></i>1:1 문의 관리</div>
			<div class="menu-item" onclick="url('notice')"><i class="xi-bell-o xi-2x"></i> 공지사항 관리</div>
			<div class="menu-item" onclick="url('movieupload')"><i class="xi-movie-o xi-2x"></i> 영화 관리</div>
			<div class="menu-item" onclick="url('')"><i class="xi-movie-o xi-2x"></i> 예매현황</div>
			<div class="menu-item" onclick="url('')"><i class="xi-movie-o xi-2x"></i> 상영 스케줄 관리</div>
			<c:if test="true"><div class="menu-item" onclick="url('logout')"><i class="xi-flag-o  xi-2x"></i> 님 로그아웃</div></c:if>
		</div>
<script>function url(link){location.href='./'+link;}</script>
</div>
</div>



</body>
</html>