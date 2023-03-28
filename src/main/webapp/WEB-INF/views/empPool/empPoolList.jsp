<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>
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

                <!-- ======= 그리드에서 보여줄 필드 체크리스트 ======= -->
                <div class="checkbox-container mb-3">
                    <div class="row row-cols-4">
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="project_assign"
                                    checked>
                                <span class="form-check-label">현재투입여부</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="sourcing_manager"
                                    checked>
                                <span class="form-check-label">소싱담당자</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="name" checked>
                                <span class="form-check-label">이름</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="phonenumber"
                                    checked>
                                <span class="form-check-label">전화번호</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="birthdate" checked>
                                <span class="form-check-label">생년월일</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="email" checked>
                                <span class="form-check-label">이메일</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="address" checked>
                                <span class="form-check-label">주소</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="education" checked>
                                <span class="form-check-label">학력</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="school_name"
                                    checked>
                                <span class="form-check-label">학교명</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="major" checked>
                                <span class="form-check-label">학과</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="career_years"
                                    checked>
                                <span class="form-check-label">경력</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="career_field"
                                    checked>
                                <span class="form-check-label">분야</span>
                            </label>
                        </div>
                        <div class="col">
                            <label class="form-check">
                                <input class="form-check-input" type="checkbox" name="column" value="career_level"
                                    checked>
                                <span class="form-check-label">등급</span>
                            </label>
                        </div>
                    </div>
                </div>
                <!-- End 그리드에서 보여줄 필드 체크리스트-->



                <div class="d-flex mt-3 mb-3">
                    <button type="button" class="btn btn-primary ms-2" id="btnShowRegisterPage">인력등록페이지</button>
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
                    minWidth: 120
                },
                columns: [
                    {
                        header: '현재투입여부',
                        name: 'project_assign',
                        width: 'auto'
                    },
                    {
                        header: '소싱담당자',
                        name: 'sourcing_manager',
                        width: 'auto'
                    },
                    {
                        header: '이름',
                        name: 'name',
                        width: 'auto'
                    },
                    {
                        header: '전화번호',
                        name: 'phonenumber',
                        width: 'auto'
                    },
                    {
                        header: '생년월일',
                        name: 'birthdate',
                        width: 'auto'
                    },
                    {
                        header: '이메일',
                        name: 'email',
                        width: 'auto'
                    },
                    {
                        header: '주소',
                        name: 'address',
                        width: 'auto'
                    },
                    {
                        header: '학력',
                        name: 'education',
                        width: 'auto'
                    },
                    {
                        header: '학교명',
                        name: 'school_name',
                        width: 'auto'
                    },
                    {
                        header: '학과',
                        name: 'major',
                        width: 'auto'
                    },
                    {
                        header: '경력',
                        name: 'career_years',
                        width: 'auto'
                    },
                    {
                        header: '분야',
                        name: 'career_field',
                        width: 'auto'
                    },
                    {
                        header: '등급',
                        name: 'career_level',
                        width: 'auto'
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
                url: "${pageContext.request.contextPath}/empPool.ajax",
                method: "GET",
                success: function (empPoolList) {
                    // del이 Y인 것을 필터링
                    empPoolList = empPoolList.filter(function(empPool) {
                        return empPool.del !== 'Y';
                    });

                    // 생년월일 Formatting
                    empPoolList.forEach(empPool => {
                        if (empPool.birthdate) {
                            const birthdate = new Date(empPool.birthdate);
                            empPool.birthdate = birthdate.getFullYear() + '-' + String(Number(birthdate.getMonth() + 1)).padStart(2, '0') + '-' + String(birthdate.getDate()).padStart(2, '0');
                        }
                    });
                    grid.resetData(empPoolList);
                    
                    //받은거
                    
                }
            });

            // 그리드에서 보여줄 필드 체크리스트 체크 및 체크해제 시 이벤트: 컬럼 show 및 hide
            $('input[name=column]').change(function (e) {
                if (e.target.checked) {
                    grid.showColumn(e.target.value)
                } else {
                    grid.hideColumn(e.target.value)
                }
            });

            // 인력등록페이지 버튼 클릭 이벤트: 인력등록페이지 팝업
            $('#btnShowRegisterPage').click(function () {
                const popupUrl = '${pageContext.request.contextPath}/empPoolRegister.do';
                const popupName = 'empPoolRegister.do-popup';
                const popupWidth = 800;
                const popupHeight = 600;
                const left = (screen.width - popupWidth) / 2;
                const top = (screen.height - popupHeight) / 2;
                
                window.open(popupUrl, popupName, 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + left + ', top=' + top);
            });

            // 그리드 Row 더블 클릭시 이벤트: 상세정보페이지 팝업
            grid.on('dblclick', function(ev) {
                const empPool = grid.getRow(ev.rowKey)
                const popupUrl = '${pageContext.request.contextPath}/empPoolDetail.do?emp_pool_id='+ empPool.emp_pool_id;
                debugger;
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