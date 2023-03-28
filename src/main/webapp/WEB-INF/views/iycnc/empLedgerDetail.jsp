<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>IYCNC 인력기초원장 상세페이지: IYF 인력기초원장/매출원장</title>
    <meta content="" name="description">
    <meta content="" name="keywords">


</head>

<body>
    <main id="main" class="main">
        <section>
            <div class="container">
                <input type="hidden" id="emp_id" name="emp_id">
                <input type="hidden" id="emp_pool_id" name="emp_pool_id">
                <input type="hidden" id="project_assign" name="project_assign">
                <input type="hidden" id="client_id" name="client_id">
                <input type="hidden" id="del" name="del">
                
                <form id="progressForm">
                    <div class="form-group mb-3">
                        <label for="progress">진행:</label>
                        <input type="text" class="form-control" id="progress" name="progress" readonly>
                    </div>
                    
                    <div class="form-group mb-3">
                        <label for="progress_reason">진행사유:</label>
                        <input type="text" class="form-control" id="progress_reason" name="progress_reason">
                    </div>
                </form>


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
                <form id="employeeForm">


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
                </form>
                <hr>
                <form id="empLedgerForm">
                    <div class="form-group mb-3">
                        <label for="company">소속:</label>
                        <input type="text" class="form-control" id="company" name="company" value="IYCNC" readonly>
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

                </form>

                <form action="notImportantForm">
                    <div class="form-group mb-3">
                        <label for="result">결과:</label>
                        <input type="text" class="form-control" id="result" name="result">
                    </div>
                    <div class="form-group mb-3">
                        <label for="result_reason">결과사유:</label>
                        <input type="text" class="form-control" id="result_reason" name="result_reason">
                    </div>
                    <div class="form-group mb-3">
                        <label for="c_contract_date">특이사항:</label>
                        <input type="text" class="form-control" id="result_reason" name="result_reason">
                    </div>

                </form>
                

                <button type="button" class="btn btn-primary" id="btnConfirm">투입확정</button>
                <button type="button" class="btn btn-primary" id="btnDrop">드랍</button>
                <button type="button" class="btn btn-primary" id="btnUpdate">수정</button>
                <button type="button" class="btn btn-danger float-end" id="btnCancle">취소</button>
            </div>
        </section>
    
    </main><!-- End #main -->

    <script>
        $(document).ready(function() {
            const urlParmas = new URLSearchParams(window.location.search);
            const emp_Id = urlParmas.get('emp_id'); 
            // ajax 1: empLedger 상세정보 조회
            $.ajax({
                url: '${pageContext.request.contextPath}/empLedger.ajax/' + emp_Id,
                type: 'GET',
                dataType: 'json',
                success: function(empLedger) {
                    if (empLedger.progress === '진행') {
                    }
                    if (empLedger.progress === '드랍') {
                        $('#btnDrop').attr('disabled', true)
                    }
                    if (empLedger.progress === '투입') {
                        $('#btnConfirm').attr('disabled', true)
                    }
                    
                    // Date 년월일 Formatting
                    const assign_date = new Date(empLedger.assign_date);
                    empLedger.assign_date = assign_date.getFullYear() + '-' + String(Number(assign_date.getMonth() + 1)).padStart(2, '0') + '-' + String(assign_date.getDate()).padStart(2, '0');
                    // Date 년월일 Formatting
                    const end_date = new Date(empLedger.end_date);
                    empLedger.end_date = end_date.getFullYear() + '-' + String(Number(end_date.getMonth() + 1)).padStart(2, '0') + '-' + String(end_date.getDate()).padStart(2, '0');
                    // Date 년월일 Formatting
                    const resume_submit_date = new Date(empLedger.resume_submit_date);
                    empLedger.resume_submit_date = resume_submit_date.getFullYear() + '-' + String(Number(resume_submit_date.getMonth() + 1)).padStart(2, '0') + '-' + String(resume_submit_date.getDate()).padStart(2, '0');
                    // Date 년월일 Formatting
                    const resign_date = new Date(empLedger.resign_date);
                    empLedger.resign_date = resign_date.getFullYear() + '-' + String(Number(resign_date.getMonth() + 1)).padStart(2, '0') + '-' + String(resign_date.getDate()).padStart(2, '0');
                    // Date 년월일 Formatting
                    const i_contract_date = new Date(empLedger.i_contract_date);
                    empLedger.i_contract_date = i_contract_date.getFullYear() + '-' + String(Number(i_contract_date.getMonth() + 1)).padStart(2, '0') + '-' + String(i_contract_date.getDate()).padStart(2, '0');
                    // Date 년월일 Formatting
                    const c_contract_date = new Date(empLedger.c_contract_date);
                    empLedger.c_contract_date = c_contract_date.getFullYear() + '-' + String(Number(c_contract_date.getMonth() + 1)).padStart(2, '0') + '-' + String(c_contract_date.getDate()).padStart(2, '0');

                    

                    $('#emp_id').val(empLedger.emp_id);
                    $('#emp_pool_id').val(empLedger.emp_pool_id);
                    $('#client_id').val(empLedger.client_id);
                    $('#assign_date').val(empLedger.assign_date);
                    $('#end_date').val(empLedger.end_date);
                    $('#sales_mm').val(empLedger.sales_mm);
                    $('#purchase_mm').val(empLedger.purchase_mm);
                    $('#sales_unit').val(empLedger.sales_unit);
                    $('#purchase_unit').val(empLedger.purchase_unit);
                    $('#comments').val(empLedger.comments);
                    $('#resume_submit_date').val(empLedger.resume_submit_date);
                    $('#resign_date').val(empLedger.resign_date);
                    $('#i_contract_date').val(empLedger.i_contract_date);
                    $('#c_contract_date').val(empLedger.c_contract_date);
                    $('#progress').val(empLedger.progress);
                    $('#progress_reason').val(empLedger.progress_reason);
                    $('#result').val(empLedger.result);
                    $('#issues').val(empLedger.issues);

                    // ajax 2: client 상세정보 조회
                    $.ajax({
                        url: '${pageContext.request.contextPath}/client.ajax/' + empLedger.client_id,
                        type: 'GET',
                        dataType: 'json',
                        success: function(client) {
                            
                             $('#client_id').val(client.client_id);
                             $('#sales_source').val(client.sales_source);
                             $('#client').val(client.client);
                             $('#subcontract').val(client.subcontract);
                             $('#project_name').val(client.project_name);
                             $('#business_department').val(client.business_department);
                             $('#business_manager').val(client.business_manager);
                             
                            
                        }
                    });

                    // ajax 3: empPool 상세정보 조회
                    $.ajax({
                        url: '${pageContext.request.contextPath}/empPool.ajax/' + empLedger.emp_pool_id,
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
                            
                        }
                    })

                },
                error: function(xhr, status, error) {
                    
                }
            });


            $('#btnConfirm').click(function() {
                const emp_id = $('#emp_id').val();
                const progress = '투입'

                const emp_pool_id = $('#emp_pool_id').val();
                const project_assign = '투입';

                $.ajax({
                    type: 'PATCH',
                    url: '${pageContext.request.contextPath}/empLedger.ajax/' + emp_id + '/progress/' + progress,
                    success: function() {
                        $.ajax({
                            type: 'PATCH',
                            url: '${pageContext.request.contextPath}/empPool.ajax/' + emp_pool_id + '/project_assign/' + project_assign,
                            success: function() {
                                $.ajax({
                                type: 'PATCH',
                                url: '${pageContext.request.contextPath}/empLedger.ajax/' + emp_id + '/progress_reason/' + progress_reason,
                                success: function() {
                                    opener.parent.location.reload();
                                    window.close();
                                },
                                error: function() {
                                    opener.parent.location.reload();
                                    window.close();
                                }
                            });
                            },
                            error: function() {

                            }
                        });
                    },
                    error: function() {
                        
                    }
                });

                
            })

            $('#btnDrop').click(function() {
                const emp_id = $('#emp_id').val();
                const progress = '드랍';
                const progress_reason = $('#progress_reason').val();

                const emp_pool_id = $('#emp_pool_id').val();
                const project_assign = '대기';

                $.ajax({
                    type: 'PATCH',
                    url: '${pageContext.request.contextPath}/empLedger.ajax/' + emp_id + '/progress/' + progress,
                    success: function() {
                        $.ajax({
                            type: 'PATCH',
                            url: '${pageContext.request.contextPath}/empPool.ajax/' + emp_pool_id + '/project_assign/' + project_assign,
                            success: function() {
                                if (progress_reason) {
                                    $.ajax({
                                        type: 'PATCH',
                                        url: '${pageContext.request.contextPath}/empLedger.ajax/' + emp_id + '/progress_reason/' + progress_reason,
                                        success: function() {
                                            opener.parent.location.reload();
                                            window.close();
                                        },
                                        error: function() {
                                            opener.parent.location.reload();
                                            window.close();
                                        }
                                    });
                                } else {
                                    opener.parent.location.reload();
                                    window.close();
                                }
                                
                            },
                            error: function() {

                            }
                        });
                    },
                    error: function() {
                        
                    }
                });

                

                
            });


            $('#btnUpdate').click(function(){
                
                const jsonObject = {
                    "empLedger": {
                        "emp_id": $('input[name=emp_id]').val(),
                        "emp_pool_id": $('input[name=emp_pool_id]').val(),
                        "client_id": $('input[name=client_id]').val(),
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
                        "progress": $('input[name=progress]').val(),
                        "progress_reason": $('input[name=progress_reason]').val(),
                        "result": $('input[name=result]').val(),
                        "result_reason": $('input[name=result_reason]').val(),
                        "issues": $('input[name=issues]').val(),
                    },
                    "client": {
                        "sales_source": $('input[name=sales_source]').val(),
                        "client": $('input[name=client]').val(),
                        "subcontract": $('input[name=subcontract]').val(),
                        "project_name": $('input[name=project_name]').val(),
                        "business_department": $('input[name=business_department]').val(),
                        "business_manager": $('input[name=business_manager]').val()
                    },
                    "empPool": {
                        "sourcing_manager": $('input[name=sourcing_manager]').val(),
                        "name": $('input[name=name]').val(),
                        "phonenumber": $('input[name=phonenumber]').val(),
                        "birthdate": new Date($('input[name=birthdate]').val()),
                        "email": $('input[name=email]').val(),
                        "address": $('input[name=address]').val(),
                        "school_name": $('input[name=school_name]').val(),
                        "major": $('input[name=major]').val(),
                        "career_years": $('input[name=career_years]').val(),
                        "career_field": $('input[name=career_field]').val(),
                        "career_level": $('input[name=career_level]').val(),
                        "project_assign": $('input[name=project_assign]').val(),
                        "del": $('input[name=del]').val(),
                    }
                }
                $.ajax({
                    type: "PUT",
                    url: "${pageContext.request.contextPath}/empLedger.ajax",
                    contentType: "application/json",
                    data: JSON.stringify(jsonObject),
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

            $('#btnCancel').click(function() {
                opener.parent.location.reload();
                window.close();
            })

        });

    </script>

</body>

</html>