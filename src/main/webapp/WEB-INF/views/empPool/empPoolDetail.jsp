<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>인력풀: IYF 인력기초원장/매출원장</title>
    <meta content="" name="description">
    <meta content="" name="keywords">


    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- NiceAdmin: Vendor CSS Files -->
    <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/bootstrap/css/bootstrap.min.css"
        rel="stylesheet">
    <link
        href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/bootstrap-icons/bootstrap-icons.css"
        rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/boxicons/css/boxicons.min.css"
        rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/quill/quill.snow.css"
        rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/quill/quill.bubble.css"
        rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/remixicon/remixicon.css"
        rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/simple-datatables/style.css"
        rel="stylesheet">

    <!-- NiceAdmin: Template Main CSS File -->
    <link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/css/style.css" rel="stylesheet">

    <!-- toast-grid -->
    <link rel="stylesheet" href="https://uicdn.toast.com/grid/latest/tui-grid.css" />

    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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
                        <input type="text" class="form-control" id="sourcing_manager" name="sourcing_manager"
                        >
                    </div>
                    <div class="form-group mb-3">
                        <label for="name">이름:</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="form-group mb-3">
                        <label for="phoneNumber">전화번호:</label>
                        <input type="text" class="form-control" id="phonenumber" name="phonenumber">
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
                    
                    <div class="form-group mb-3" id="empResumeNewBox">
                        <label for="empResumeNew">이력서:</label>
                        <input type="file" class="form-control" id="empResumeNew" name="empResumeNew"
                        >
                    </div>
                    <div class="form-group mb-3">
                        <label for="education">학력:</label>
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
                        <input type="text" class="form-control" id="careerYears" name="career_years"
                        >
                    </div>
                    <div class="form-group mb-3">
                        <label for="careerField">분야:</label>
                        <input type="text" class="form-control" id="careerField" name="career_field"
                        >
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
                    <button type="button" class="btn btn-primary" id="btnUpdate">수정</button>
                    <button type="button" class="btn btn-danger float-end" id="btnDelete">삭제</button>
                    <button type="button" class="btn btn-secondary" id="btnCancel">취소</button>
                </form>
            </div>
        </section>

    </main><!-- End #main -->
    

    <script>
        $(document).ready(function () {
            const urlParmas = new URLSearchParams(window.location.search);
            const empPoolId = urlParmas.get('emp_pool_id');


            // 인력 상세 정보 조회
            $.ajax({
                url: '${pageContext.request.contextPath}/empPool.ajax/' + empPoolId,
                type: 'GET',
                dataType: 'json',
                success: function (empPool) {
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
                error: function (xhr, status, error) {

                }
            });

            // 수정 버튼 클릭 시 이벤트
            $('#btnUpdate').click(function() {
                const empPool = {
                    emp_pool_id: $('#emp_pool_id').val(),
                    sourcing_manager: $('#sourcing_manager').val(),
                    name: $('#name').val(),
                    phonenumber: $('#phonenumber').val(),
                    email: $('#email').val(),
                    address: $('#address').val(),
                    education: $('#education').val(),
                    school_name: $('#school_name').val(),
                    major: $('#major').val(),
                    career_years: $('#career_years').val(),
                    career_field: $('#career_field').val(),
                    career_level: $('#career_level').val(),
                    project_assign: $('#project_assign').val(),
                    birthdate: new Date($('#birthdate').val()),
                    del: $('#del').val(),
                }
                $.ajax({
                    type: 'PUT',
                    url: '${pageContext.request.contextPath}/empPool.ajax/',
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
                })
            });

            

            // 삭제 버튼 클릭 시 이벤트: 실제 삭제가 아니라 del 컬럼 'Y'로 수정
            $('#btnDelete').click(function () {
                const emp_pool_id = $('#emp_pool_id').val();
                const del = 'Y';

                if ($('#project_assign').val() === '투입대기') {
                    
                    $.ajax({
                        type: 'PATCH',
                        url: '${pageContext.request.contextPath}/empPool.ajax/' + emp_pool_id + '/del/' + del,
                        success: function () {
                            opener.parent.location.reload();
                            window.close();
                        },
                        error: function () {
                            opener.parent.location.reload();
                            window.close();
                        }
                    });
                } else {
                    alert('투입대기인 인력만 삭제할 수 있습니다...');
                }
            })

            // 취소 버튼 클릭 시 이벤트
            $('#btnCancel').click(function () {
                window.close();
            })
        });

    </script>


    

    <!-- Excel Export JS File-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.1/xlsx.full.min.js"></script>


    <!-- toast-grid -->
    <script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>

    <!-- Vendor JS Files -->
    <script
        src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script
        src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/chart.js/chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/echarts/echarts.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/quill/quill.min.js"></script>
    <script
        src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/tinymce/tinymce.min.js"></script>
    <script
        src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/php-email-form/validate.js"></script>

    <!-- NiceAdmin: Template Main JS File -->
    <script src="${pageContext.request.contextPath}/resources/NiceAdmin/assets/js/main.js"></script>

</body>

</html>