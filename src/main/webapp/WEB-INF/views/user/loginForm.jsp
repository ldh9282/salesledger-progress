<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>로그인: IYF 인력기초원장/매출원장</title>
<meta content="" name="description">
<meta content="" name="keywords">
 
<script type="text/javascript">
$(function() {
	
	 var saveIdValue = localStorage.getItem("saveId");/* 저장한 아이디 */
	 var saveIdCheck = localStorage.getItem("saveIdCheck");/* 전에 체크박스 체크했는지 */
	 if(saveIdValue != null){
	    $('#username').val(saveIdValue);
	 }
	 
	 
	 if(saveIdCheck == "true"){
		 $('#saveIdCheck').attr("checked", true); 
	 }
	 
	 $("#password").keydown(function(keyNum){
			if(keyNum.keyCode == 13){
				$("#loginCheck").click()
			}
		})
	 
	 
	 /* 아이디 체크 저장 */
	 $("#saveIdCheck").change(function() {
		    if ($("#saveIdCheck").is(":checked")) {
		    	localStorage.setItem("saveIdCheck", "true");
		    } else {
		    	localStorage.removeItem("saveIdCheck");
		    }
	})
	

	$('#loginCheck').click(function loginCheckClick() {
        var username = $('#username').val();
        var password = $('#password').val();
        
        if(username == ""){
        	alert("아이디를 입력하세요")
        	return false
        }
        if(password == ""){
        	alert("패스워드를 입력하세요")
        	return false
        }
        var saveIdCheck = $('#saveIdCheck:checked').val();
		
        /* 아이디 저장 */
		if(saveIdCheck == 'on'){
			localStorage.setItem("saveId", username);
		}else{
			localStorage.removeItem("saveId");
		}
        
		
        
        const loginData = {
        		"username": username,
        		"password": password
        		};
        
      $.ajax({
        	type : "POST",
            url: "login.ajax",
            contentType : "application/json",
            data: JSON.stringify(loginData),
            success: function (result) {
                if(result == 1){
                	console.log("여기까지");
                	alert("로그인 성공");
                	location.href ="main.do"
                }else if(result == -2){
                	alert("관리자 승인이 필요합니다.");
                	return false;
                } else if(result == -1){
                	alert("없는 아이디입니다.");
                	return false;
                }else if(result == 0){
                	alert("암호를 다시 입력해주세요");
                	return false;
                }
            },
            error : function() {
				alert("알수 없는 에러")
			}
        });
    });
	 
	 
});
</script>
</head>
<body>
	<main>
		<div class="container">
			<section
				class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
							<div class="d-flex justify-content-center py-4">
								<a href="index.html" class="logo d-flex align-items-center w-auto"> 
								<span class="d-none d-lg-block">IYF - 인력기초원장 / 매출원장</span>
								</a>
							</div>
							<div class="card mb-3">
								<div class="card-body">
									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">계정에 로그인하세요</h5>
										<p class="text-center small">아이디와 비밀번호를 입력하세요</p>
									</div>
										<form class="row g-3 needs-validation" action="" method="post" name="frm" enctype="multipart/form-data">
											<div class="col-12">
												<label for="username" class="form-label">아이디</label>
												<div class="input-group has-validation">
													<input type="text" name="username" class="form-control" id="username" required>
													<div class="invalid-feedback">아이디를 입력해주세요</div>
												</div>
											</div>
											<div class="col-12">
												<label for="yourPassword" class="form-label">비밀번호</label> 
												<input type="password" name="password" class="form-control" id="password" required>
												<div class="invalid-feedback">비밀번호를 입력해주세요!</div>
											</div>
											<div class="col-12">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" name="saveIdCheck" id="saveIdCheck"> 
													<label class="form-check-label" for="saveIdCheck">아이디 저장</label><!-- 아직 기능 추가안함 -->
												</div>
											</div>
											<div class="col-12">
												<button class="btn btn-primary w-100" type="button" id="loginCheck">로그인</button>
											</div>
											<div class="col-12">
												<p class="small mb-0">
													계정이 없으신가요? <a href="userRegisterForm.do">계정 만들기</a>
												</p>
											</div>
										</form>
								</div>
							</div>

						</div>
					</div>
				</div>

			</section>

		</div>
	</main>
	<!-- End #main -->
</body>

</html>