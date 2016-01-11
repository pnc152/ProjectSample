<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width">
<title>항공권예매 &gt; 국내선항공 &gt; 항공편 조회</title>

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
/* 달력 */
$(function() {
     $( "#datepicker" ).datepicker();
     
     $( "#datepicker2" ).datepicker();
});

</script>
</head>
<body id="sub">
     


                     <h4>출발일</h4>
                     <div id="datepicker" class="ll-skin-santiago mt_10"></div>

                  

                     <h4>귀국일</h4>
                     <div id="datepicker2" class="ll-skin-santiago mt_10"></div>

                  
                



</body>
</html>
