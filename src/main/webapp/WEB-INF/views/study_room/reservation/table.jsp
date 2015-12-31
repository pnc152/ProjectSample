<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
	type="text/javascript"></script>

<script>
	// html 이 다 로딩된 후 실행
	$(document).ready(function() {
		// 체크박스들이 변경됬을때
		$(":checkbox").change(function() {
			var cnt = $("#person").val();

			// 셀렉트박스의 값과 체크박스중 체크된 갯수가 같을때, 다른 체크박스들을 disable 처리
			if (":checkbox:checked"){
				$(":checkbox").attr("disabled", "disabled");
			}
			// 체크된 갯수가 다르면 활성화 시킴
			else {
				$(":checkbox").removeAttr("disabled");
			}
		});

		// 셀렉트박스에서 다른 인원수를 선택하면 초기화 시킴
		$("#person").change(function() {
			$(":checkbox").removeAttr("checked");
			$(":checkbox").removeAttr("disabled");
		});
	});
	function fnCancel(){
		$(":checkbox").removeAttr("checked");
		$(":checkbox").removeAttr("disabled");
	}
</script>
</head>
<body>
	
	
	<table border="2" style="border-color:black;" >
		<tr>
			<td><label><input type="checkbox" />1번 테이블</label></td>
			<td><label><input type="checkbox" />2번 테이블</label></td>
			<td><label><input type="checkbox" />3번 테이블</label></td>
			<td><label><input type="checkbox" />4번 테이블</label></td>
			<td><label><input type="checkbox" />5번 테이블</label></td>
			<td><label><input type="checkbox" />6번 테이블</label></td>
			<td><label><input type="checkbox" />7번 테이블</label></td>
			<td><label><input type="checkbox" />8번 테이블</label></td>
		</tr>
		
	</table>
	<button class="btn btn-primary" type="button" name="selectChange" value="테이블 선택 변경" onclick="fnCancel()">테이블 선택 변경</button>
</body>
</html>