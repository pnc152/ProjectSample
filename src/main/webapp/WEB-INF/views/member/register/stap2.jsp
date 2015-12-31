<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h2>회원정보입력</h2>
	<form action="stap3" method="POST">
		<p>
			<label>메일<br/>
				<input type="text" name="member_email" id="member_email">
			</label>
		</p>
		<p>
			<label>이름<br/>
				<input type="text" name="member_name" id="member_name">
			</label>
		</p>
		<p>
			<label>주소<br/>
				<input type="text" name="member_address" id="member_address">
			</label>
		</p>
		<p>
			<label>핸드폰 번호<br/>
				<input type="text" name="member_phonenumber" id="member_phonenumber">
			</label>
		</p>
		<p>
			<label>비밀번호<br/>
				<input type="password" name="member_password" id="member_password">
			</label>
		</p>
		<p>
			<label>비밀번호 확인<br/>
				<input type="password" name="confirmpassword" id="confirmpassword">
			</label>
		</p>
		<input type="submit" value="가입 완료"/>
	</form>
</body>
</html>