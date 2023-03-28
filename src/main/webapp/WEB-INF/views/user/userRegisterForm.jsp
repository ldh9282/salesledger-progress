<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입: IYF 인력기초원장/매출원장</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
	//중복체크를 하지 않으면 넘어가지 않도록 설정
	function chk() { 
		if (frm.idchk.value == 0) {
			alert("아이디를 확인해주세요.");
			return false;
		}
	}
	
	//아이디 중복체크
	function chk2() { 
		//아이디 입력체크
		if (!frm.username.value) {
			alert("아이디를 입력하고 중복체크 하세요.");
			frm.id.focus();
			return false;
		}
		//DB의 아이디 중복 체크
		$.post('confirmId.ajax', "id=" + frm.username.value, function(data) { 
			if (data == 0) {
				$('#err').html("이미 사용중인 아이디입니다.");
				$('#err').css("color", "red");
				return false;
			} else {
				$('#err').html("사용 가능한 아이디입니다.");
				$('#err').css("color", "blue");
				frm.idchk.value = "1";
				return false;
			}
		});
	}
	
	// 암호와 암호확인 같은지 체크
	function pass_chk() { 
		if (frm.password.value != '' && frm.password2.value != '') {
			if (frm.password.value == frm.password2.value) {
				document.getElementById('same').innerHTML = '비밀번호가 일치합니다.';
				document.getElementById('same').style.color = 'blue';
			} else {
				document.getElementById('same').innerHTML = '비밀번호가 일치하지 않습니다.';
				document.getElementById('same').style.color = 'red';
				frm.password2.focus();
				frm.password2.value = "";
			}
		}
	}
</script>

</head>
<body>
	<div class="container" align="center">
		<div class="row justify-content-center">
		<h2 class="text-primary">회원가입</h2>
		<form action="userRegister.do" method="post" name="frm" onsubmit="return chk()" enctype="multipart/form-data">
			<input type="hidden" name="idchk" value="0">
			<table class="table table-bordered table-striped">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" required="required" placeholder="이름"></td>
				</tr>
				<tr>
					<th>ID</th>
					<td><input type="text" name="username" required="required"
						autofocus="autofocus" placeholder="ID"> <input
						type="button" onclick="chk2()" value="중복체크">
					<div id="err"></div></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="password" required="required" placeholder="암호"></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="password2" required="required" onchange="pass_chk()" placeholder="암호확인"><div id="same"></div></td>
				</tr>
				<tr>
					<th>회사명</th>
					<td>
					<select name="company">
						<option value="iycnc">iycnc</option>
						<option value="ibts">ibts</option>
						<option value="iys">iys</option>
					</select>
					</td>
				</tr>			
			</table>
			<button type="submit" class="btn btn-primary" id="btnRegister">등록</button>
		</form>	
		</div>
		<button onclick="location.href='loginForm.do'">로그인 화면으로</button>

	</div>
</body>
</html>