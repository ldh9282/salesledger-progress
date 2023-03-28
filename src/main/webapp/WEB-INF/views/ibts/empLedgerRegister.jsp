<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>IBTS 인력 투입예정: IYF 인력기초원장/매출원장</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

</head>

<body>

    <main id="main" class="main">

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <h1>인력 투입예정 페이지</h1>
                        <hr>
                        <form id="clientForm">
                            <div class="form-group mb-3">
                                <label for="sales_source">매출처:</label>
                                <input type="text" class="form-control" id="sales_source" name="sales_source">
                            </div>
                            <div class="form-group mb-3">
                                <label for="client">거래처:</label>
                                <input type="text" class="form-control" id="client" name="client">
                            </div>
                            <div class="form-group mb-3">
                                <label for="subcontract">도급내역:</label>
                                <input type="text" class="form-control" id="subcontract" name="subcontract">
                            </div>
                            <div class="form-group mb-3">
                                <label for="project_name">프로젝트명:</label>
                                <input type="text" class="form-control" id="project_name" name="project_name">
                            </div>
                            <div class="form-group mb-3">
                                <label for="business_department">사업부서:</label>
                                <input type="text" class="form-control" id="business_department" name="business_department">
                            </div>
                            <div class="form-group mb-3">
                                <label for="business_manager">사업관리담당자:</label>
                                <input type="text" class="form-control" id="business_manager" name="business_manager">
                            </div>
                        </form>
                        <hr>
                        <form id="empLedgerForm">
                            <div class="form-group mb-3">
                                <label for="company">소속:</label>
                                <input type="text" class="form-control" id="company" name="company" value="IBTS" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="assign_date">투입일:</label>
                                <input type="date" class="form-control" id="assign_date" name="assign_date">
                            </div>
                            <div class="form-group mb-3">
                                <label for="end_date">종료일:</label>
                                <input type="date" class="form-control" id="end_date" name="end_date">
                            </div>
                            <div class="form-group mb-3">
                                <label for="sales_mm">매출MM:</label>
                                <input type="text" class="form-control" id="sales_mm" name="sales_mm">
                            </div>
                            <div class="form-group mb-3">
                                <label for="purchase_mm">매입MM:</label>
                                <input type="text" class="form-control" id="purchase_mm" name="purchase_mm">
                            </div>
                            <div class="form-group mb-3">
                                <label for="sales_unit">매출단가(원):</label>
                                <input type="text" class="form-control" id="sales_unit" name="sales_unit" data-type="money" step="1000000">
                            </div>
                            <div class="form-group mb-3">
                                <label for="purchase_unit">매입단가(원):</label>
                                <input type="text" class="form-control" id="purchase_unit" name="purchase_unit" data-type="money" step="1000000">
                            </div>
                            <div class="form-group mb-3">
                                <label for="resume_submit_date">이력서제출일자:</label>
                                <input type="date" class="form-control" id="resume_submit_date" name="resume_submit_date">
                            </div>
                            <div class="form-group mb-3">
                                <label for="resign_date">철수날짜:</label>
                                <input type="date" class="form-control" id="resign_date" name="resign_date">
                            </div>
                            <div class="form-group mb-3">
                                <label for="i_contract_date">개인계약일:</label>
                                <input type="date" class="form-control" id="i_contract_date" name="i_contract_date">
                            </div>
                            <div class="form-group mb-3">
                                <label for="c_contract_date">업체계약일:</label>
                                <input type="date" class="form-control" id="c_contract_date" name="c_contract_date">
                            </div>

                            <button type="button" class="btn btn-primary" id="btnExpectedInsert" disabled>인력 투입예정</button>
                        </form>
                    </div>
                    <div class="col-md-5">
                        <h3 class="mb-3">인력 검색</h3>
                        <form id="searchForm">
                            <input type="hidden" id="emp_pool_id" name="emp_pool_id">
                            <div class="form-group mb-3">
                                <label for="name">이름:</label>
                                <input type="text" class="form-control" id="name" name="name">
                            </div>
                            <div class="form-group mb-3">
                                <label for="phoneNumber">전화번호:</label>
                                <input type="text" class="form-control" id="phoneNumber" name="phonenumber">
                            </div>
                            <div id="search-error" class="alert alert-danger d-none">조회 결과 없는 인력입니다...</div>
                            <button type="button" class="btn btn-primary mb-3" id="btnSearch">검색</button>
                        </form>
                        <hr>
                        <form id="empDetailForm">
                        	<div class="form-group mb-3">
                                <label for="career_level">현재투입여부:</label>
                                <input type="text" class="form-control" id="project_assign" name="project_assign" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="sourcing_manager">소싱담당자:</label>
                                <input type="text" class="form-control" id="sourcing_manager" name="sourcing_manager" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="name">이름:</label>
                                <input type="text" class="form-control" id="name" name="name" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="phonenumber">전화번호:</label>
                                <input type="text" class="form-control" id="phonenumber" name="phonenumber" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="birthdate">생년월일:</label>
                                <input type="date" class="form-control" id="birthdate" name="birthdate" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="email">이메일:</label>
                                <input type="email" class="form-control" id="email" name="email" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="address">주소:</label>
                                <input type="text" class="form-control" id="address" name="address" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="education">학력:</label>
                                <input type="text" class="form-control" id="education" name="education" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="school_name">학교명:</label>
                                <input type="text" class="form-control" id="school_name" name="school_name" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="major">학과:</label>
                                <input type="text" class="form-control" id="major" name="major" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="career_years">경력:</label>
                                <input type="text" class="form-control" id="career_years" name="career_years" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="career_field">분야:</label>
                                <input type="text" class="form-control" id="career_field" name="career_field" readonly>
                            </div>
                            <div class="form-group mb-3">
                                <label for="career_level">등급:</label>
                                <input type="text" class="form-control" id="career_level" name="career_level" readonly>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </section>

    </main><!-- End #main -->

    <script>
        $(document).ready(function () {
            // 인력 투입예정 버튼 클릭 이벤트
            $('#btnExpectedInsert').click(function () {
            	// ajax 1: empLedger 등록
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/empLedger.ajax",
                    contentType: "application/json",
                    data: JSON.stringify({
                        "empLedger": {
                            "emp_pool_id": $('input[name=emp_pool_id]').val(),
                            "company": $('input[name=company]').val(),
                            "assign_date": new Date($('input[name=assign_date]').val()),
                            "end_date": new Date($('input[name=end_date]').val()),
                            "sales_mm": $('input[name=sales_mm]').val() ? $('input[name=sales_mm]').val() : 0,
                            "purchase_mm": $('input[name=purchase_mm]').val() ? $('input[name=purchase_mm]').val() : 0,
                            "sales_unit": $('input[name=sales_unit]').val().replaceAll(',', '') ? $('input[name=sales_unit]').val().replaceAll(',', '') : 0,
                            "purchase_unit": $('input[name=purchase_unit]').val().replaceAll(',', '') ? $('input[name=purchase_unit]').val().replaceAll(',', '') : 0,
                            "comments": $('input[name=comments]').val(),
                            "resume_submit_date": new Date($('input[name=resume_submit_date]').val()),
                            "resign_date": new Date($('input[name=resign_date]').val()),
                            "i_contract_date": new Date($('input[name=i_contract_date]').val()),
                            "c_contract_date": new Date($('input[name=c_contract_date]').val()),
                        },
                        "client": {
                            "sales_source": $('input[name=sales_source]').val(),
                            "client": $('input[name=client]').val(),
                            "subcontract": $('input[name=subcontract]').val(),
                            "project_name": $('input[name=project_name]').val(),
                            "business_department": $('input[name=business_department]').val(),
                            "business_manager": $('input[name=business_manager]').val()
                        }
                    }),
                    success: function() {
                        opener.parent.location.reload();
                        window.close();
                    },
                    error: function() {
                        opener.parent.location.reload();
                        window.close();
                    }
                });
                
              
            });

            $('#btnSearch').click(function() {
                const name = $('input[name=name]').val();
                const phonenumber = $('input[name=phonenumber]').val();

                if (name && phonenumber) {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/empPool.ajax/name/" + name + "/phonenumber/" + phonenumber,
                        type: "GET",
                        success: function (empPool) {
                            if (!empPool) {
                                // ajax로 인력 조회값이 undefiend면 search-error 메시지 display
                                $('div#search-error').removeClass('d-none');
                                // 인력 정보값 초기화
                                $('input[name=emp_pool_id]').val('');
                                $('input[name=sourcing_manager]').val('');
                                $('input[name=name]').val('');
                                $('input[name=phonenumber]').val('');
                                $('input[name=birthdate]').val('');
                                $('input[name=email]').val('');
                                $('input[name=address]').val('');
                                $('input[name=education]').val('');
                                $('input[name=school_name]').val('');
                                $('input[name=major]').val('');
                                $('input[name=career_years]').val('');
                                $('input[name=career_field]').val('');
                                $('input[name=career_level]').val('');
                                // 인력 투입예정 버튼 비활성화
                                $('#btnExpectedInsert').attr('disabled', true);
                                return;
                            }
                            // ajax로 인력 조회를 하면 search-error 메시지 no display
                            $('div#search-error').addClass('d-none');

                            // formatting 생년월일
                            if (empPool.birthdate) {
                                const birthdate = new Date(empPool.birthdate);
                                empPool.birthdate = birthdate.getFullYear() + '-' + String(Number(birthdate.getMonth() + 1)).padStart(2, '0') + '-' + String(birthdate.getDate()).padStart(2, '0');
                            }

                            // 조회한 인력정보기입
                            $('input[name=emp_pool_id]').val(empPool.emp_pool_id);
                            $('input[name=sourcing_manager]').val(empPool.sourcing_manager);
                            $('input[name=name]').val(empPool.name);
                            $('input[name=phonenumber]').val(empPool.phonenumber);
                            $('input[name=birthdate]').val(empPool.birthdate);
                            $('input[name=email]').val(empPool.email);
                            $('input[name=address]').val(empPool.address);
                            $('input[name=education]').val(empPool.education);
                            $('input[name=school_name]').val(empPool.school_name);
                            $('input[name=major]').val(empPool.major);
                            $('input[name=career_years]').val(empPool.career_years);
                            $('input[name=career_field]').val(empPool.career_field);
                            $('input[name=career_level]').val(empPool.career_level);
                            $('input[name=project_assign]').val(empPool.project_assign);
                            // 인력 투입예정 버튼 활성화
                            $('#btnExpectedInsert').attr('disabled', false);;
                        },
                    });
                }

                


            })

            // 금액에 문자 입력 방지 및 세자리 단위 콤마로 디스플레이
            $('input[data-type="money"]').keyup(function(e) {
                let value = e.target.value;
                value = Number(value.replaceAll(',', ''))
                if (isNaN(value)) {
                    e.target.value = 0;
                    return;
                }
                let formattedValue = value.toLocaleString('ko-KR');
                e.target.value = formattedValue;
                
            });



        });
    </script>




</body>

</html>