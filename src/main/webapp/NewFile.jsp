<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<!-- datepicker -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
/* 달력 */
$(function() {
     $( "#datepicker" ).datepicker();
      
});

</script>
</head>
<body>
	<h4>예약일</h4>
	<div id="datepicker" class="ll-skin-santiago mt_10"></div>

</body>
</html>