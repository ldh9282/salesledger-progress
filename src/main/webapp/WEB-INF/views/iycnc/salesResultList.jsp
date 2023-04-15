<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>IYCNC 매출실적: IYF 인력기초원장/매출원장</title>

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

    <!-- ======= Header ======= -->
    <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
    <!-- End Header -->

    <!-- ======= Sidebar ======= -->
    <jsp:include page="/WEB-INF/views/sidebar.jsp"></jsp:include>
    <!-- End Sidebar-->

    <main id="main" class="main">
        <section>
            <div class="container">
                <i class="ri-arrow-down-s-fill" id="toggle-icon"><span>접기/내리기</span></i>
                <div class="toggle-content mt-3" id="toggle-item">
                    <!-- ======= 그리드에서 보여줄 필드 체크리스트 ======= -->
                    <div class="checkbox-container mb-3">
                        <div class="row row-cols-4 mb-3">
                            <div class="col">
                                <label class="form-check">
                                    <input class="form-check-input" type="checkbox" name="all-check" checked>
                                    <span class="form-check-label">ALL</span>
                                </label>
                            </div>
                        </div>
                        <div class="row row-cols-4 mb-3">
                            <div class="col">
                               <label class="form-check">
                                   <input class="form-check-input" type="checkbox" data-table="sales-result" name="column" value="batch_month" checked>
                                   <span class="form-check-label">해당년월</span>
                               </label>
                            </div>
                            <div class="col">
                                <label class="form-check">
                                    <input class="form-check-input" type="checkbox" data-table="sales-result" name="column" value="company" checked>
                                    <span class="form-check-label">회사</span>
                                </label>
                            </div>
                            <div class="col">
                                <label class="form-check">
                                    <input class="form-check-input" type="checkbox" data-table="sales-result" name="column" value="company" checked>
                                    <span class="form-check-label">부서</span>
                                </label>
                            </div>
                            <div class="col">
                                <label class="form-check">
                                    <input class="form-check-input" type="checkbox" data-table="sales-result" name="column" value="sales_source" checked>
                                    <span class="form-check-label">매출처</span>
                                </label>
                            </div>
                            <div class="col">
                                <label class="form-check">
                                    <input class="form-check-input" type="checkbox" data-table="sales-result" name="column" value="client" checked>
                                    <span class="form-check-label">거래처</span>
                                </label>
                            </div>
                            <div class="col">
                                <label class="form-check">
                                    <input class="form-check-input" type="checkbox" data-table="sales-result" name="column" value="subcontract" checked>
                                    <span class="form-check-label">도급내역</span>
                                </label>
                            </div>
                            <div class="col">
                                <label class="form-check">
                                    <input class="form-check-input" type="checkbox" data-table="sales-result" name="column" value="project_name" checked>
                                    <span class="form-check-label">프로젝트</span>
                                </label>
                            </div>
                            <div class="col">
                                <label class="form-check">
                                    <input class="form-check-input" type="checkbox" data-table="sales-result" name="column" value="total_sales_amount" checked>
                                    <span class="form-check-label">매출가</span>
                                </label>
                            </div>
                            <div class="col">
                                <label class="form-check">
                                    <input class="form-check-input" type="checkbox" data-table="sales-result" name="column" value="total_purchase_amount" checked>
                                    <span class="form-check-label">매입가</span>
                                </label>
                            </div>
                            <div class="col">
                                <label class="form-check">
                                    <input class="form-check-input" type="checkbox" data-table="sales-result" name="column" value="total_margin_amount" checked>
                                    <span class="form-check-label">이익</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <!-- End 그리드에서 보여줄 필드 체크리스트-->
                </div>



                <div id="grid" style="width: 70vw;"></div>
            </div>
        </section>

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>


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
                        header: '해당년월',
                        name: 'batch_month',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '회사',
                        name: 'company',
                        width: 'auto',
                        align: 'center',
                    },
                    {//
                        header: '부서',
                        name: 'company',
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
                        header: '프로젝트',
                        name: 'project_name',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '매출가',
                        name: 'total_sales_amount',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '매입가',
                        name: 'total_purchase_amount',
                        width: 'auto',
                        align: 'center',
                    },
                    {
                        header: '이익',
                        name: 'total_margin_amount',
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
                url: "${pageContext.request.contextPath}/salesResult.ajax/company/IYCNC/batch_month/202304",
                method: "GET",
                success: function (salesResult) {
                	salesResult.forEach(item => {
                		item.total_margin_amount = Number(item.total_sales_amount) - Number(item.total_purchase_amount);
                	});
                    grid.resetData(salesResult);
                }
            });

            // 모든 정보 체크해제시 이벤트: 컬럼 show 및 hide
            $('input[name=all-check]').click(function () {
                if (this.checked) {
                    $('input[name=column]').prop('checked', true);
                } else {
                    $('input[name=column]').prop('checked', false);
                }
                updateColumns();
            });


            // 개별 체크해제시 이벤트: 컬럼 show 및 hide
            $('input[name=column]').change(function () {
                updateColumns();
            });

            // 체크해제시 컬럼 show 및 hide
            function updateColumns(dataTable) {
                if (!dataTable) {
                    $('input[name=column]').each(function () {
                        if (this.checked) {
                            grid.showColumn(this.value);
                        } else {
                            grid.hideColumn(this.value);
                        }
                    });
                } else {
                    $('input[data-table=' + dataTable + ']').each(function () {
                        if (this.checked) {
                            grid.showColumn(this.value);
                        } else {
                            grid.hideColumn(this.value);
                        }
                    });
                }
            }

            // 그리드 Row 더블 클릭시 이벤트: 상세정보페이지 팝업
            grid.on('dblclick', function (ev) {
                const salesLedger = grid.getRow(ev.rowKey)
                const popupUrl = '${pageContext.request.contextPath}/iycnc/salesLedgerDetail.do?sales_id=' + salesLedger.sales_id;
                const popupName = 'salesLedgerDetail.do-popup';
                const popupWidth = 800;
                const popupHeight = 600;
                const left = (screen.width - popupWidth) / 2;
                const top = (screen.height - popupHeight) / 2;

                window.open(popupUrl, popupName, 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + left + ', top=' + top);
            });

            
       		// 체크리스트 접기/내리기 토글 이벤트
            $("#toggle-icon").click(function () {
                if (document.querySelector('#toggle-icon').classList.value === 'ri-arrow-up-s-fill') {
                    document.querySelector('#toggle-icon').classList.remove('ri-arrow-up-s-fill');
                    document.querySelector('#toggle-icon').classList.add('ri-arrow-down-s-fill');
                    $('#toggle-item').slideDown();

                } else {
                    document.querySelector('#toggle-icon').classList.remove('ri-arrow-down-s-fill');
                    document.querySelector('#toggle-icon').classList.add('ri-arrow-up-s-fill');
                    $('#toggle-item').slideUp();


                }
            });


        });



    </script>

    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

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