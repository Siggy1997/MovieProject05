<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV::movie</title>
<script src="./js/jquery-3.7.0.min.js"></script>
<link rel="stylesheet" href="./css/detail.css" />

</head>
<body>
	<%@ include file="menu.jsp"%>
	<h1>MOVIE</h1>
	
	<div>
		<img alt="" src="${detail.mv_poster }">
		<button>예매하기</button>
		<h1>${detail.mv_name }</h1>
		<div></div>
	</div>
	
	
	
	
</body>
</html>