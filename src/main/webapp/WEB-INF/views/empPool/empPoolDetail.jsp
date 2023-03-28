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
                <h1>인력 상세 페이지</h1>
                <form id="employeeForm">
                    <input type="hidden" id="emp_pool_id" name="emp_pool_id">
                    <input type="hidden" id="project_assign" name="project_assign">
                    <input type="hidden" id="del" name="del">
                    <div class="form-group mb-3">
                        <label for="sourcingManager">소싱담당자:</label>
                        <input type="text" class="form-control" id="sourcingManager" name="sourcing_manager" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="name">이름:</label>
                        <input type="text" class="form-control" id="name" name="name" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="phoneNumber">전화번호:</label>
                        <input type="text" class="form-control" id="phoneNumber" name="phonenumber" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="phoneNumber">전화번호:</label>
                        <input type="text" class="form-control" id="phoneNumber" name="phonenumber" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="birthdate">생년월일:</label>
                        <input type="date" class="form-control" id="birthdate" name="birthdate" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="email">이메일:</label>
                        <input type="email" class="form-control" id="email" name="email" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="address">주소:</label>
                        <input type="text" class="form-control" id="address" name="address" disabled="disabled">
                    </div>
                    <div class="form-group mb-3" id="empResumeDownBox">
                        <label for="empResumeDown">이력서 :</label>
                        <a id="empResumeDown"  download></a>
                    </div>
                    <div class="form-group mb-3" id="empResumeDownBoxNo">
                        <label for="empResumeDownNo">이력서 :</label>
                        <label for="empResumeDownNo">이력서 없음</label>
                    </div>
                    <div class="form-group mb-3" id="empResumeNewBox">
                        <label for="empResumeNew">이력서 변경:</label>
                        <input type="file" class="form-control" id="empResumeNew" name="empResumeNew" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="education">학력:</label>
                        <select class="form-control" id="education" name="education" disabled="disabled">
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
                        <input type="text" class="form-control" id="schoolName" name="school_name" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="major">학과:</label>
                        <input type="text" class="form-control" id="major" name="major" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="careerYears">경력:</label>
                        <input type="text" class="form-control" id="careerYears" name="career_years" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="careerField">분야:</label>
                        <input type="text" class="form-control" id="careerField" name="career_field" disabled="disabled">
                    </div>
                    <div class="form-group mb-3">
                        <label for="careerLevel">등급:</label>
                        <select class="form-control" id="careerLevel" name="career_level" disabled="disabled">
                            <option value="미기입">미기입</option>
                            <option value="초급">초급</option>
                            <option value="중급">중급</option>
                            <option value="고급">고급</option>
                            <option value="특급">특급</option>
                        </select>
                    </div>
                    <button type="button" class="btn btn-primary" id="btnUpdate">수정</button>
                    <button type="button" class="btn btn-secondary" id="btnCancel">취소</button>
                    <button type="button" class="btn btn-primary" id="btnSave">수정등록</button>
                    <button type="button" class="btn btn-secondary" id="btnSaveCancel">수정취소</button>
                    <button type="button" class="btn btn-danger float-end" id="btnDelete">삭제</button>
                </form>
            </div>
        </section>
    
    </main><!-- End #main -->

    <script>
        $(document).ready(function() {
            const urlParmas = new URLSearchParams(window.location.search);
            const empPoolId = urlParmas.get('emp_pool_id'); 
            
          	//이력서 정보 불러오기
          	$('#empResumeDownBoxNo').hide();
          	$('#empResumeNewBox').hide();
          	$.post('${pageContext.request.contextPath}/empResumeDetail.ajax', "empPoolId=" + empPoolId, function(data) { 
    			if(data == null || data == ""){
    				$('#empResumeDownBox').hide();
    				$('#empResumeDownBoxNo').show();
    			}else{
    				$('#empResumeDown').text(data);
    				$('#empResumeDown').attr("href", "${pageContext.request.contextPath}/resources/upload/"+data);	
    			}
            	
    		});
            
            
            
            
            //수정등록, 수정취소 버튼 시작시 숨김
            $('#btnSave').hide();
            $('#btnSaveCancel').hide();
            
            // 인력 상세 정보 조회
            $.ajax({
                url: '${pageContext.request.contextPath}/empPool.ajax/' + empPoolId,
                type: 'GET',
                dataType: 'json',
                success: function(empPool) {
                    // 생년월일 Formatting
                    const birthdate = new Date(empPool.birthdate);
                    empPool.birthdate = birthdate.getFullYear() + '-' + String(Number(birthdate.getMonth() + 1)).padStart(2, '0') + '-' + String(birthdate.getDate()).padStart(2, '0');

                    $('#emp_pool_id').val(empPool.emp_pool_id);
                    $('#sourcingManager').val(empPool.sourcing_manager);
                    $('#name').val(empPool.name);
                    $('#phoneNumber').val(empPool.phonenumber);
                    $('#birthdate').val(empPool.birthdate);
                    $('#email').val(empPool.email);
                    $('#address').val(empPool.address);
                    $('#education').val(empPool.education);
                    $('#schoolName').val(empPool.school_name);
                    $('#major').val(empPool.major);
                    $('#careerYears').val(empPool.career_years);
                    $('#careerField').val(empPool.career_field);
                    $('#careerLevel').val(empPool.career_level);
                    $('#project_assign').val(empPool.project_assign);
                    $('#del').val(empPool.del);
                },
                error: function(xhr, status, error) {
                    
                }
            });

            // 수정 버튼 클릭 이벤트
            $('#btnUpdate').click(function() {
            	//인풋태그의 disabled 속성 제거
            	$("input").removeAttr("disabled");
            	$("select").removeAttr("disabled");
            	$("#btnUpdate").hide();
            	$("#btnCancel").hide();
            	$('#btnSave').show();
            	$('#btnSaveCancel').show();
            	$('#empResumeNewBox').show();
            });
            
            // 수정취소 버튼 클릭 이벤트
            $('#btnSaveCancel').click(function() { 
            	//인풋태그의 disabled 속성 추가
            	$("input").attr("disabled",true);
            	$("select").attr("disabled",true);
            	$("#btnUpdate").show();
            	$("#btnCancel").show();
            	$('#btnSave').hide();
            	$('#btnSaveCancel').hide();
            	$('#empResumeNewBox').hide();
            });
            
            // 수정등록 버튼 클릭 이벤트
            $('#btnSave').click(function() {
                const empPool = {
                    emp_pool_id: $('#emp_pool_id').val(),
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
					project_assign: $('#project_assign').val(),
					del: $('#del').val()
				};
                $.ajax({
                    type: 'PUT',
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
                updateResume();
            })
            
            
            // 취소 버튼 클릭 시 이벤트
            $('#btnCancel').click(function() {
                window.close();
            })

            // 삭제 버튼 클릭 시 이벤트: 실제 삭제가 아니라 del 컬럼 'Y'로 수정
            $('#btnDelete').click(function() {
                const emp_pool_id = $('#emp_pool_id').val();
                const del = 'Y';
                $.ajax({
                    type: 'PATCH',
                    url: '${pageContext.request.contextPath}/empPool.ajax/' + emp_pool_id + '/del/' + del,
                    success: function() {
                        opener.parent.location.reload();
                        window.close();
                    },
                    error: function() {
                        opener.parent.location.reload();
                        window.close();
                    }
                });
            })
        });
		
        //수정버튼 클릭시 이력서 저장 
        function updateResume() {
    		var empResumeForm = new FormData();
        	var empResume = $('#empResumeNew').get(0).files[0];
        	var emp_pool_id = $('#emp_pool_id').val();
        	
        	empResumeForm.append('file', empResume);
        	empResumeForm.append('emp_pool_id',emp_pool_id);
        	
        	if(empResume != null){
            	$.ajax({
                    type: 'POST',
                    url: '${pageContext.request.contextPath}/empPoolResumeUpdate.ajax',
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