<%@ page language="java" contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Forte | About</title>
<meta charset="utf-8">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/foundation.min.css" type="text/css">
<link rel="stylesheet" href="css/superfish.css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link href='http://fonts.googleapis.com/css?family=PT+Sans+Caption|Open+Sans' rel='stylesheet' type='text/css'>
<script src="js/vendor/custom.modernizr.js"></script>
<script>
Modernizr.load({
    // test if browser understands media queries
    test: Modernizr.mq('only all'),
    // if not load ie8-grid
    nope: 'css/ie8-grid-foundation-4.css'
});
</script>
<script	src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js">
	<script src="http://code.jquery.com/jquery.js" >
</script>
<script src="js/bootstrap/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
<link rel="stylesheet" href="css/ie-fixes.css">
<![endif]-->
<script type="text/javascript">
       function fnBack(){
      var answer = confirm("예약을 취소하시겠습니까?")
      if(answer) {
         alert("예약을 취소합니다.")
         history.back();
      }
      else{
         alert("예약을 진행합니다.");
      }
   }
</script>
</head>
<body>

<div class="call top-call-to-action">
  <div class="row">
    <div class="large-12 columns loginstyles">
      <div class="social-icons">
        <ul>
          <li><a href="#">t</a></li>
          <li><a href="#">f</a></li>
          <li><a href="#">y</a></li>
          <li><a href="#">p</a></li>
          <li><a href="#">d</a></li>
        </ul>
      </div>
     
     <c:if test="${name==null}">
	<span><a href="register.member">회원가입</a></span>
	<span><a href="login.member">로그인   </a></span>
	</c:if>
	
	<c:if test="${name!=null}">
	${name}님 환영합니다.
	<span><a href="logout.member">로그아웃</a></span>
	<span><a href="loginchange.member">비밀번호 변경하기</a></span>
	</c:if> </div>
  </div>
</div>
<div class="header">
  <div class="row">
    <div class="large-12 twelve columns">
      <div class="logo"><a href="index.jsp"> <img src="images/logo.png" alt=""></a> </div>
    </div>
  </div>
</div>
<div class="topmenu">
  <div class="row">
    <div class="large-12 twelve columns hide-for-small">
      <ul class="sf-menu">
        
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="gallery.jsp">Gallery</a></li>
        <li><a href="contact.jsp">Contact Us</a>
          <ul class="dropdown">
            <li><a href="#">Dropdown Level 1a</a>
              <ul>
                <li><a href="#">Dropdown Level 2a</a></li>
                <li><a href="#">Dropdown Level 2b</a></li>
              </ul>
            </li>
            <li><a href="#">Dropdown Level 1b</a></li>
            <li><a href="#">Dropdown Level 1c</a></li>
            <li><a href="#">Dropdown Level 1d</a></li>
            <li><a href="#">See all &rarr;</a></li>
          </ul>
        </li>
        <li><a href="list.board">게시판</a></li>
        <li><a href="blog.jsp">학원소개</a></li>
        <li><a href="#">스터디좌석 예약</a>
        	<ul class="dropdown">
        		<li><a href="#">스터디좌석 예약하기</a></li>
        		<li><a href="#">예약 확인</a></li>
        	</ul>
      </ul>
    </div>
    <div class="large-12 twelve columns show-for-small">
      <form name="dropdown" action="#">
        <select name="selected" id="target" accesskey="E" onChange="goToNewPage(document.dropdown.selected)">
          <option value="index.jsp">Home</option>
          <option value="about.jsp">About Us</option>
          <option value="gallery.jsp">Gallery</option>
          <option value="contact.jsp">Contact Us</option>
          <option value="blog.jsp">Blog</option>
        </select>
      </form>
    </div>
  </div>
</div>

<!-- 위쪽은 header.css 대신 사용하는 부분. 탬플릿에서 가져왔다. -->

<div class="container" align="center" id="resview" style="margin-top: 50px" ><img src="images/hta_res.jpg" alt="" />
	
	
	<form action="reservation2.study" method="POST">
	<input type="hidden" name="member_email" /><!-- 이부분 sql에 비교에 기준인 b_seq를 히든으로 컨트롤에 넘겨줌 -->
	
		
	<p style="margin-top: 50px">
	<label><h3>예약하실 날짜를 선택해 주세요</h3></label>
	<input type="date" name="reservation_date" id="day" width="90px"/>
	</p>
	 <p>
   <fieldset>
    <label for="files"><h3>사용 시간 설정</h3></label>
    <select name="reservation_time" id="files">
      
      <optgroup label="morning" >
        <option value="08:00~10:00">08:00~10:00</option>
        <option value="10:00~12:00">10:00~12:00</option>
      </optgroup>
      
      <optgroup label="afternoon">
        <option value="12:00~14:00">12:00~14:00</option>
        <option value="14:00~16:00">14:00~16:00</option>
        <option value="16:00~18:00">16:00~18:00</option>
        <option value="18:00~20:00">18:00~20:00</option>
        <option value="20:00~22:00">20:00~22:00</option>
      </optgroup>
      <optgroup label="deadline"></optgroup>
    </select>
   </fieldset>
   </p>
	<div style="margin-top: 50px">
	<p>
	<jsp:include page="table.jsp"></jsp:include>
	</p>
	</div>
	
	
	<button class="btn btn-danger" type="button" name="selectcancel" value="cancle" onclick="fnBack()">취소</button>
	<button class="btn btn-primary" type="submit" name="selectDay" value="next" >다음</button>
	</form>
</div>

<!-- 아래쪽은 footer.css 대신 사용하는 부분. 탬플릿에서 가져왔다. -->

<div class="footer">
  <div class="row">
    <div class="large-12 twelve columns">
      <div class="row">
        <div class="large-4 four small-12 columns">
          <div class="contact">
            <h3>contacts us</h3>
            <img src="images/contact-us.png" alt="">
            <div class="contact-icons">
              <ul>
                <li class="phone1 mobile">(342)908898</li>
                <li class="email">email@domain.com</li>
                <li class="phone2">1800809000</li>
                <li class="fax">(132)1239040</li>
              </ul>
            </div>
            <p>15 Willson Street Oakliegh, 2211, Melbourne,Victoria, Australia</p>
          </div>
          <div class="social-icons">
            <ul>
              <li><a href="#">t</a></li>
              <li><a href="#">f</a></li>
              <li><a href="#">y</a></li>
              <li><a href="#">p</a></li>
              <li><a href="#">d</a></li>
            </ul>
          </div>
        </div>
        <div class="large-4 four small-12 columns">
          <div class="information">
            <h3>information</h3>
            <ul>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
              <li><a href="#">phasellus etres solris nobita cumque minus</a></li>
              <li><a href="#">lorem ipsum dolor sit esmut sint officia</a></li>
            </ul>
          </div>
        </div>
        <div class="large-4 four small-12 columns">
          <div class="quick-contacts">
            <h3>quick contacts</h3>
            <form action="#" method="post" class="quick-contact-form">
              <table>
                <tr>
                  <td><input type="text" name="name" placeholder="Name:"></td>
                </tr>
                <tr>
                  <td><input type="text" name="email" placeholder="Email:"></td>
                </tr>
                <tr>
                  <td><input type="text" name="subject" placeholder="Subject:"></td>
                </tr>
                <tr>
                  <td><textarea  name="message" placeholder="Message:"></textarea></td>
                </tr>
                <tr>
                  <td style="text-align:right;"><input type="submit" name="submit" value="Submit"></td>
                </tr>
              </table>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="theme-credits">
    <p>&copy; 2045 All rights reserved by <a href="#">Forte.</a> Design by: <a href="http://topwebsitetemplates.org">topwebsitetemplates.org</a></p>
  </div>
</div>
<div id="recaptcha_container"></div>
<script src="js/jquery.min.js"></script>
<script src="js/superfish.js"></script>
<script src="js/hoverIntent.js"></script>
<script src="js/slider/jquery.flexslider.js"></script>
<script src="js/slider/jquery.testimonialslider.js"></script>
<script>
Modernizr.load({
    test: Modernizr.placeholder,
    nope: 'js/placeholder.min.js'
});
function goToNewPage() {
    if (document.getElementById('target').value) {
        window.location.href = document.getElementById('target').value;
    }
}
</script>
<script>
$(document).ready(function () {
    $('ul.sf-menu').superfish({
        animation: {
            height: 'show'
        },
        delay: 400
    });
    $('.flexslider').flexslider({
        animation: "slide"
    });
    $('.testimonialslider').testimonialslider({
        animation: "fade",
        animationLoop: false,
        itemMargin: 50,
        itemMargin: 0,
        maxItems: 1,
        after: function (slider) {
            var currentSlide = parseInt(slider.currentSlide);
            var currentSlide = parseInt(slider.currentSlide);
            var currentSlideHeight = $('.testimonialslider ul.slides').find('li').eq(currentSlide).css('height');
            $('.testimonialslider ul.slides').animate({
                height: currentSlideHeight
            }, 100);
        }
    });
});
</script>
</body>
</html>
