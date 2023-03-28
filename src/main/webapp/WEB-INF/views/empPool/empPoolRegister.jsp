<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>인력풀: IYF 인력기초원장/매출원장</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
</head>

<body>

    <main id="main" class="main">


        <section>
            <div class="container">
                <h1>인력 등록 페이지</h1>
                    <div class="form-group mb-3">
                        <label for="sourcingManager">소싱담당자:</label>
                        <input type="text" class="form-control" id="sourcingManager" name="sourcing_manager">
                    </div>
                    <div class="form-group mb-3">
                        <label for="name">이름:</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="form-group mb-3">
                        <label for="phoneNumber">전화번호:</label>
                        <input type="text" class="form-control" id="phoneNumber" name="phonenumber">
                    </div>
                    <div class="form-group mb-3">
                        <label for="birthdate">생년월일:</label>
                        <input type="date" class="form-control" id="birthdate" name="birthdate">
                    </div>
                    <div class="form-group mb-3">
                        <label for="email">이메일:</label>
                        <input type="email" class="form-control" id="email" name="email">
                    </div>
                    <div class="form-group mb-3">
                        <label for="address">주소:</label>
                        <input type="text" class="form-control" id="address" name="address">
                    </div>
                    <div class="form-group mb-3">
                        <label for="empResume">이력서:</label>
                        <input type="file" class="form-control" id="empResume" name="empResume">
                    </div>
                    <div class="form-group mb-3">
                        <label for="careerLevel">학력:</label>
                        <select class="form-control" id="education" name="education">
                            <option value="미기입">미기입</option>
                            <option value="고졸">고졸</option>
                            <option value="전문졸">전문졸</option>
                            <option value="대졸">대졸</option>
                            <option value="석사">석사</option>
                            <option value="박사">박사</option>
                        </select>
                    </div>
                    <div class="form-group mb-3">
                        <label for="schoolName">학교명:</label>
                        <input type="text" class="form-control" id="schoolName" name="school_name">
                    </div>
                    <div class="form-group mb-3">
                        <label for="major">학과:</label>
                        <input type="text" class="form-control" id="major" name="major">
                    </div>
                    <div class="form-group mb-3">
                        <label for="careerYears">경력:</label>
                        <input type="text" class="form-control" id="careerYears" name="career_years">
                    </div>
                    <div class="form-group mb-3">
                        <label for="careerField">분야:</label>
                        <input type="text" class="form-control" id="careerField" name="career_field">
                    </div>
                    <div class="form-group mb-3">
                        <label for="careerLevel">등급:</label>
                        <select class="form-control" id="careerLevel" name="career_level">
                            <option value="미기입">미기입</option>
                            <option value="초급">초급</option>
                            <option value="중급">중급</option>
                            <option value="고급">고급</option>
                            <option value="특급">특급</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary" id="btnRegister">인력 등록</button>
            </div>
        </section>

    </main><!-- End #main -->

    <script>
        $(document).ready(function() {
        	
        	// 인력 등록 버튼 클릭 이벤트
            $('#btnRegister').click(function() {       	
                 const empPool = {
					sourcing_manager: $('#sourcingManager').val(),
					name: $('#name').val(),
					phonenumber: $('#phoneNumber').val(),
					birthdate: new Date($('#birthdate').val()),
					email: $('#email').val(),
					address: $('#address').val(),
					education: $('#education').val(),
					school_name: $('#schoolName').val(),
					major: $('#major').val(),
					career_years: $('#careerYears').val(),
					career_field: $('#careerField').val(),
					career_level: $('#careerLevel').val(),
				};
                
                $.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/empPool.ajax',
                    data: JSON.stringify(empPool),
                    contentType: 'application/json',
                    success: function() {                   	  	
                        opener.parent.location.reload();
                        window.close();
                    },
                    error: function() {
                        opener.parent.location.reload();
                        window.close();
                    }
                });               
                uploadResume();
            });
        });
        
        //이력서 저장
        function uploadResume() {
    		var empResumeForm = new FormData();
        	var empResume = $('#empResume').get(0).files[0];
        	empResumeForm.append('file', empResume);
        	if(empResume != null){
            	$.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/empPoolResume.ajax',
                    processData:false,
            		contentType: false,
                    data: empResumeForm,
                    success: function() {
                    	alert("2차 통신성공");
                        opener.parent.location.reload();
                        window.close();
                    },
                    error: function() {
                        opener.parent.location.reload();
                        window.close();
                    }
                });
        	}
		}
</script>




</body>

</html>