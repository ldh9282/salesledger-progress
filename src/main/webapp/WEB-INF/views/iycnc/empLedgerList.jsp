<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>IYCNC 인력기초원장: IYF 인력기초원장/매출원장</title>
</head>

<body>
    <main id="main" class="main">
        <section>
            <div class="container">

                <!-- ======= 그리드에서 보여줄 필드 체크리스트 ======= -->
                <div class="checkbox-container mb-3">
                    <div class="row row-cols-4 mb-3">
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="all-check"
                                    checked>
                                <span class="form-check-label">ALL</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="check-client"
                                    checked>
                                <span class="form-check-label">거래처정보</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="check-emp-pool"
                                    checked>
                                <span class="form-check-label">인력풀정보</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="check-emp-ledger"
                                    checked>
                                <span class="form-check-label">인력기초원장정보</span>
                            </label>
                        </div>
                    </div>
                    <div class="row row-cols-4">
                        
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="progress"
                                    checked>
                                <span class="form-check-label">진행</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="result"
                                    checked>
                                <span class="form-check-label">결과</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="client" type="checkbox" name="column" value="sales_source"
                                    checked>
                                <span class="form-check-label">매출처</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="client" type="checkbox" name="column" value="client"
                                    checked>
                                <span class="form-check-label">거래처</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="client" type="checkbox" name="column" value="subcontract"
                                    checked>
                                <span class="form-check-label">도급내역</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="client" type="checkbox" name="column" value="project_name"
                                    checked>
                                <span class="form-check-label">프로젝트명</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="client" type="checkbox" name="column" value="business_department"
                                    checked>
                                <span class="form-check-label">사업부서</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="client" type="checkbox" name="column" value="business_manager"
                                    checked>
                                <span class="form-check-label">사업관리담당자</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input emp-pool" data-table="emp-pool" type="checkbox" name="column" value="sourcing_manager"
                                    checked>
                                <span class="form-check-label">소싱담당자</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="name" checked>
                                <span class="form-check-label">이름</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="phonenumber"
                                    checked>
                                <span class="form-check-label">전화번호</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="birthdate" checked>
                                <span class="form-check-label">생년월일</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="email" checked>
                                <span class="form-check-label">이메일</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="address" checked>
                                <span class="form-check-label">주소</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="education" checked>
                                <span class="form-check-label">학력</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="school_name"
                                    checked>
                                <span class="form-check-label">학교명</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="major" checked>
                                <span class="form-check-label">학과</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="career_years"
                                    checked>
                                <span class="form-check-label">경력</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="career_field"
                                    checked>
                                <span class="form-check-label">분야</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-pool" type="checkbox" name="column" value="career_level"
                                    checked>
                                <span class="form-check-label">등급</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="company"
                                    checked>
                                <span class="form-check-label">소속</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="assign_date" checked>
                                <span class="form-check-label">투입일</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="end_date" checked>
                                <span class="form-check-label">종료일</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="sales_mm" checked>
                                <span class="form-check-label">매출MM</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="purchase_mm" checked>
                                <span class="form-check-label">매입MM</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="sales_unit"
                                    checked>
                                <span class="form-check-label">매출단가</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="purchase_unit" checked>
                                <span class="form-check-label">매입단가</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="comments"
                                    checked>
                                <span class="form-check-label">비고</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="resume_submit_date"
                                    checked>
                                <span class="form-check-label">이력서제출날짜</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="resign_date"
                                    checked>
                                <span class="form-check-label">철수날짜</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input"data-table="emp-ledger" type="checkbox" name="column" value="i_contract_date"
                                    checked>
                                <span class="form-check-label">개인계약일</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="c_contract_date"
                                    checked>
                                <span class="form-check-label">업체계약일</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" data-table="emp-ledger" type="checkbox" name="column" value="issues"
                                    checked>
                                <span class="form-check-label">특이사항</span>
                            </label>
                        </div>
                    </div>
                </div>
                <!-- End 그리드에서 보여줄 필드 체크리스트-->

                <div class="d-flex mt-3 mb-3">
                    <button type="button" class="btn btn-primary ms-2" id="btnShowRegisterPage">인력투입예정페이지</button>
                </div>


                <div id="grid" style="width: 70vw;"></div>
            </div>
        </section>

    </main><!-- End #main -->



    <script>

        $(document).ready(function () {
            // 그리드 출력
            const grid = new tui.Grid({
                el: document.querySelector('#grid'),
                scrollX: true,
                scrollY: true,
                columnOptions: {
                    minWidth: 110,
                },
                columns: [
                    {
                        header: '진행',
                        name: 'progress',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '결과',
                        name: 'result',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '매출처',
                        name: 'sales_source',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '거래처',
                        name: 'client',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '도급내역',
                        name: 'subcontract',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '프로젝트명',
                        name: 'project_name',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '사업부서',
                        name: 'business_department',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '사업관리담당자',
                        name: 'business_manager',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '소싱담당자',
                        name: 'sourcing_manager',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '이름',
                        name: 'name',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '전화번호',
                        name: 'phonenumber',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '생년월일',
                        name: 'birthdate',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '이메일',
                        name: 'email',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '주소',
                        name: 'address',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '학력',
                        name: 'education',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '학교명',
                        name: 'school_name',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '학과',
                        name: 'major',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '경력',
                        name: 'career_years',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '분야',
                        name: 'career_field',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '등급',
                        name: 'career_level',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '소속',
                        name: 'company',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '투입일',
                        name: 'assign_date',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '종료일',
                        name: 'end_date',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '매출MM',
                        name: 'sales_mm',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '매입MM',
                        name: 'purchase_mm',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '매출단가',
                        name: 'sales_unit',
                        width: 'auto',
                        align: 'right',
                    },
                    {
                        header: '매입단가',
                        name: 'purchase_unit',
                        width: 'auto',
                        align: 'right',
                    },
                    {
                        header: '비고',
                        name: 'comments',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '이력서제출일자',
                        name: 'resume_submit_date',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '철수날짜',
                        name: 'resign_date',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '개인계약일',
                        name: 'i_contract_date',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '업체계약일',
                        name: 'c_contract_date',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '특이사항',
                        name: 'issues',
                        width: 'auto',
                        align: 'center',
                    },

                ]
            });
            // 그리드 테마
            tui.Grid.applyTheme('striped', {
                cell: {
                    header: {
                        background: '#eef'
                    },
                    evenRow: {
                        background: '#fee'
                    }
                }
            });
            
            
            // 그리드 데이터 ajax로 가져오기
            $.ajax({
                url: "${pageContext.request.contextPath}/empLedger.ajax/company/IYCNC" ,
                method: "GET",
                success: function (empLedgerList) {
                    // Date 년월일 Formatting
                    empLedgerList.forEach(empLedger => {
                        if (empLedger.birthdate) {
                            const birthdate = new Date(empLedger.birthdate);
                            empLedger.birthdate = birthdate.getFullYear() + '-' + String(Number(birthdate.getMonth() + 1)).padStart(2, '0') + '-' + String(birthdate.getDate()).padStart(2, '0');
                        }
                        if (empLedger.assign_date) {
                            const assign_date = new Date(empLedger.assign_date);
                            empLedger.assign_date = assign_date.getFullYear() + '-' + String(Number(assign_date.getMonth() + 1)).padStart(2, '0') + '-' + String(assign_date.getDate()).padStart(2, '0');
                        }
                        if (empLedger.end_date) {
                            const end_date = new Date(empLedger.end_date);
                            empLedger.end_date = end_date.getFullYear() + '-' + String(Number(end_date.getMonth() + 1)).padStart(2, '0') + '-' + String(end_date.getDate()).padStart(2, '0');
                        }
                        if (empLedger.resume_submit_date) {
                            const resume_submit_date = new Date(empLedger.resume_submit_date);
                            empLedger.resume_submit_date = resume_submit_date.getFullYear() + '-' + String(Number(resume_submit_date.getMonth() + 1)).padStart(2, '0') + '-' + String(resume_submit_date.getDate()).padStart(2, '0');
                        }
                        if (empLedger.resign_date) {
                            const resign_date = new Date(empLedger.resign_date);
                            empLedger.resign_date = resign_date.getFullYear() + '-' + String(Number(resign_date.getMonth() + 1)).padStart(2, '0') + '-' + String(resign_date.getDate()).padStart(2, '0');
                        }
                        if (empLedger.i_contract_date) {
                            const i_contract_date = new Date(empLedger.i_contract_date);
                            empLedger.i_contract_date = i_contract_date.getFullYear() + '-' + String(Number(i_contract_date.getMonth() + 1)).padStart(2, '0') + '-' + String(i_contract_date.getDate()).padStart(2, '0');
                        }
                        if (empLedger.c_contract_date) {
                            const c_contract_date = new Date(empLedger.c_contract_date);
                            empLedger.c_contract_date = c_contract_date.getFullYear() + '-' + String(Number(c_contract_date.getMonth() + 1)).padStart(2, '0') + '-' + String(c_contract_date.getDate()).padStart(2, '0');
                        }
                    });
                    grid.resetData(empLedgerList);
                }
            });

            // 모든 정보 체크해제시 이벤트: 컬럼 show 및 hide
            $('input[name=all-check]').click(function(){
                if (this.checked){
                    $('input[name=check-client]').prop('checked', true);
                    $('input[name=check-emp-pool]').prop('checked', true);
                    $('input[name=check-emp-ledger]').prop('checked', true);
                    $('input[name=column]').prop('checked', true);
                } else{
                    $('input[name=check-client]').prop('checked', false);
                    $('input[name=check-emp-pool]').prop('checked', false);
                    $('input[name=check-emp-ledger]').prop('checked', false);
                    $('input[name=column]').prop('checked', false);
                }
                updateColumns();
            });

            // 거래처 테이블 정보 체크해제시 이벤트: 컬럼 show 및 hide
            $('input[name=check-client]').click(function() {
                if (this.checked){
                    $('input[data-table=client]').prop('checked', true);
                } else{
                    $('input[data-table=client').prop('checked', false);
                }
                updateColumns('client');
            })

            // 인력풀 테이블 정보 체크해제시 이벤트: 컬럼 show 및 hide
            $('input[name=check-emp-pool]').click(function() {
                if (this.checked){
                    $('input[data-table=emp-pool]').prop('checked', true);
                } else{
                    $('input[data-table=emp-pool]').prop('checked', false);
                }
                updateColumns('emp-pool');
            })

            // 인력기초원장 테이블 정보 체크해제시 이벤트: 컬럼 show 및 hide
            $('input[name=check-emp-ledger]').click(function() {
                if (this.checked){
                    $('input[data-table=emp-ledger]').prop('checked', true);
                } else{
                    $('input[data-table=emp-ledger]').prop('checked', false);
                }
                updateColumns('emp-ledger');
            })

            // 개별 체크해제시 이벤트: 컬럼 show 및 hide
            $('input[name=column]').change(function(){
                updateColumns();
            });

            // 체크해제시 컬럼 show 및 hide
            function updateColumns(dataTable) {
                if (!dataTable) {
                    $('input[name=column]').each(function() {
                        if (this.checked) {
                            grid.showColumn(this.value);
                        } else {
                            grid.hideColumn(this.value);
                        }
                    });
                } else {
                    $('input[data-table=' + dataTable + ']').each(function() {
                        if (this.checked) {
                            grid.showColumn(this.value);
                        } else {
                            grid.hideColumn(this.value);
                        }
                    });
                }
            }
            
            // 인력투입예정페이지 버튼 클릭시 이벤트: 페이지팝업
            $('#btnShowRegisterPage').click(function() {
                const popupUrl = '${pageContext.request.contextPath}/iycnc/empLedgerRegister.do';
                const popupName = 'empLedgerRegister.do-popup';
                const popupWidth = 800;
                const popupHeight = 600;
                const left = (screen.width - popupWidth) / 2;
                const top = (screen.height - popupHeight) / 2;
                
                window.open(popupUrl, popupName, 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + left + ', top=' + top);
            });

            // 그리드 Row 더블 클릭시 이벤트: 상세정보페이지 팝업
            grid.on('dblclick', function(ev) {
                const empLedger = grid.getRow(ev.rowKey)
                const popupUrl = '${pageContext.request.contextPath}/iycnc/empLedgerDetail.do?emp_id='+ empLedger.emp_id;
                const popupName = 'empPoolDetail.do-popup';
                const popupWidth = 800;
                const popupHeight = 600;
                const left = (screen.width - popupWidth) / 2;
                const top = (screen.height - popupHeight) / 2;
                
                window.open(popupUrl, popupName, 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + left + ', top=' + top);
            });


        });



    </script>
</body>
<%@ include file="../footer.jsp"%>
</html>