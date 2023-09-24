<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CGV::ticketlist</title>
<script src="./js/jquery-3.7.0.min.js"></script>
<link rel="stylesheet" href="css/menu.css" />
<link rel="stylesheet" href="css/ticketlist.css" />
</head>
<body>
 
	<%@ include file="menu.jsp"%>
	<h1 id="title">예매내역</h1>


<c:forEach items="${ticketList}" var="t">
      <button type="submit" id=button
        onclick="location.href='ticket?ms_idx=' + ${t.ms_idx} + '&adult=' + ${t.ri_adult} + '&youth=' + ${t.ri_youth} + '&special=' + ${t.ri_special} + '&list=' + '${t.ss_seat}'">
        <h3 id="mvName">${t.mv_name}</h3>
        ${t.ms_sdate}
        ${t.ms_stime} ~ ${t.ms_etime}
        <br>
        ${t.th_city}
        <br>
        <br>
    </button>
    <br><br>
</c:forEach>

<br>

<script>

</script>
</body>
</html>