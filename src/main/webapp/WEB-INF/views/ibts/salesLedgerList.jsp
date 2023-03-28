<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Charts / Chart.js - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

</head>

<body>
 <main id="main" class="main">
 <h1>IBTS 매출원장</h1>
        <section>
	        <div class="container">
	        	<div class="d-flex mt-3 mb-3">
					<button type="button" class="btn btn-primary ms-2" id="btnSalesLedgerRegisterPage">매출원장등록페이지</button>
	        	</div>
	            <div class="container">
	                <div id="grid" style="width: 70vw;"></div>
	            </div>
	        </div>
        </section>
		<!-- 그리드 end -->
		
</main><!-- End #main -->

    <script>

        $(document).ready(function () {
            // 그리드 출력
            const grid = new tui.Grid({
                el: document.getElementById('grid'),
                scrollX: true,
                scrollY: true,
                columnOptions: {
                    minWidth: 120
                },
                columns: [
                    {
                        header: '매출번호',
                        name: 'sales_id',
                        width: 'auto'
                    },
                    {
                        header: '거래처',
                        name: 'client',
                        width: 'auto'
                    },
                    {
                        header: '매출처',
                        name: 'sales_source',
                        width: 'auto'
                    },
                    {
                        header: '프로젝트명',
                        name: 'project_name',
                        width: 'auto'
                    },
                    {
                        header: '사업관리담당',
                        name: 'business_manager',
                        width: 'auto'
                    },
                    {
                        header: '이름',
                        name: 'name',
                        width: 'auto'
                    },
                    {
                        header: '부대비용항목',
                        name: 'extra_expense',
                        width: 'auto'
                    },
                    {
                        header: '부대비용금액',
                        name: 'extra_expense_amount',
                        width: 'auto'
                    },
                    /* 동시 프로젝트 유무 칼럼필요*/
                    {
                        header: '직급',
                        name: 'job_level',
                        width: 'auto'
                    },
                    {
                        header: '직무',
                        name: 'job_role',
                        width: 'auto'
                    },
                    {
                        header: '분야',
                        name: 'job_field',
                        width: 'auto'
                    },
                    {
                        header: '등급',
                        name: 'career_level',
                        width: 'auto'
                    },
                    {
                        header: '투입일',
                        name: 'assign_date',
                        width: 'auto'
                    },
                    {
                        header: '종료일',	// null이오면 미정으로
                        name: 'end_date',
                        width: 'auto'
                    },
                    {
                        header: '매출단가',
                        //1달 동안 매출단가
                        name: 'sales_unit',
                        width: 'auto'
                    },
                    {
                        header: '매출MM',
                        //날짜 차이로 계산 if 이번달에 들어왔으면 (이번달 말일 - 투입일)/이번달 일수 else 1MM
                        name: 'sales_mm',
                        width: 'auto'
                    },
                    {
                        header: 'MM매출',
                        //1달 동안 매출단가*매출MM 청구와 같다.
                        name: 'mm_sales_unit',
                        width: 'auto'
                    },
                    {
                        header: '청구금액',
                        //매출MM*매출단가 -------------계산
                        name: 'chungu',
                        width: 'auto'
                    },
                    {
                        header: '누적청구금액',
                        //(현재 날짜- 투입일) * 매출단가  -------------계산 
                        name: 'nuzukChungu',
                        width: 'auto'
                    },
                    //여기부터 인력풀 컬럼
                    {
                        header: '잔액청구금액',
                        //(종료일- 현재날짜) * 매출단가 -------------계산 -1이 오면 미정으로
                        name: 'zanekChungu',
                        width: 'auto'
                    },
                    {
                        header: '원가단가',
                        //매입단가
                        name: 'purchase_unit',
                        width: 'auto'
                    },
                    {
                        header: '원가MM',
                        //(이번달 말일 - 투입일)/이번달 일수 else 1MM 다를수있대... 왜?
                        name: 'purchase_mm',
                        width: 'auto'
                    },
                    {
                        header: 'MM원가',
                        //매입MM * 매입단가
                        name: 'mm_purchase_unit',
                        width: 'auto'
                    },
                    {
                        header: '누적원가금액',
                      	//(현재 날짜- 투입일) * 매입단가 -------------계산
                        name: 'nuzukWonga',
                        width: 'auto'
                    },
                    {
                        header: '잔액원가금액',
                      	//(종료일 - 현재날짜) * 매입단가 -------------계산  -1이오면 미정으로
                        name: 'zanekWonga',
                        width: 'auto'
                    },
                    {
                        header: '차액',
                        //매출MM*매출단가 (청구금액) - 원가MM*매입단가 -------------계산
                        name: 'chaek',
                        width: 'auto'
                    },
                    {
                        header: '이익률',
                        // 차액/청구금액 에러뜨면 0 -------------계산
                        name: 'iiglyul',
                        width: 'auto'
                    },
                    {
                        header: '비율',
                        // 청구금액/원가 에러뜨면 0 -------------계산
                        name: 'biyul',
                        width: 'auto'
                    },
                    {
                        header: '소싱담당자',
                        name: 'sourcing_manager',
                        width: 'auto'
                    },
                    {
                        header: '비고',
                        name: 'comments',
                        width: 'auto'
                    },
                    {
                        header: '육아휴직비고',
                        name: 'baby_leave_comments',
                        width: 'auto'
                    },
                    {
                        header: '고용형태',
                        //프리(미지급)도 있음, IYS,IBTS 도 드감
                        name: 'emp_type',
                        width: 'auto'
                    },
                    {
                        header: '하도개인법인 구분',
                        // 개인사업, 법인 구분
                        name: 'i_c_class',
                        width: 'auto'
                    },
                    {
                        header: '하도업체명',
                        //IYS, IBTS는 고용형태로 따로
                        name: 'i_c_company_name',
                        width: 'auto'
                    },
                    {
                        header: '급여지급날',
                        name: 'payday',
                        width: 'auto'
                    },
                    {
                        header: '최근금액히스토리',
                        name: 'recent_amount_history',
                        width: 'auto'
                    },
                    {
                        header: '수정자',
                        name: 'modifier',
                        width: 'auto'
                    },
                    {
                        header: 'MM합',
                        //추가 질문필요-----------계산필요 0이오면 미정으로
                        name: 'MMhap',
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
            
         	// 그리드 Row 더블 클릭시 이벤트: 상세정보페이지 팝업
            grid.on('dblclick', function(ev) {
                const salesLedger = grid.getRow(ev.rowKey)
                const popupUrl = '${pageContext.request.contextPath}/ibts/salesLedgerDetail.do?sales_id='+ salesLedger.sales_id;
                debugger;
                const popupName = 'salesLedgerDetail.do-popup';
                const popupWidth = 800;
                const popupHeight = 600;
                const left = (screen.width - popupWidth) / 2;
                const top = (screen.height - popupHeight) / 2;
                
                window.open(popupUrl, popupName, 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + left + ', top=' + top);
            });
            
            
            // 그리드 데이터 ajax로 가져오기
            $.ajax({
                url: "${pageContext.request.contextPath}/salesLedgerList.ajax/company/IBTS",
                method: "GET",
                success: function (salesLedgerList) {
                	//empLedger에 company 칼럼을 받아 IBTS만 거른다 일단은 salesLedgerAjaxController에서 넣겠다.
                    salesLedgerList = salesLedgerList.filter(function(salesLedger) {
                        return salesLedger.company == 'IBTS';
                    });
                 	// 생년월일 Formatting
                    salesLedgerList.forEach(salesLedger => {
                        if (salesLedger.end_date == null) {
                       		salesLedger.end_date = '미정' 
                        }
                        if(salesLedger.zanekChungu == -1){
                        	salesLedger.zanekChungu = '미정'
                        }
                        if(salesLedger.zanekWonga == -1){
                        	salesLedger.zanekWonga = '미정'
                        }
                        if(salesLedger.MMhap == 0){
                        	salesLedger.MMhap = '미정'
                        }
                        
                        
                    });
                	
                    grid.resetData(salesLedgerList);
                }
            });
            
         	// 매출원장등록페이지 버튼 클릭 이벤트: 매출원장등록페이지 팝업
            $('#btnSalesLedgerRegisterPage').click(function () {
                const popupUrl = '${pageContext.request.contextPath}/ibts/salesLedgerRegister.do';
                const popupName = 'salesLedgerRegister.do-popup';
                const popupWidth = 1000;
                const popupHeight = 600;
                const left = (screen.width - popupWidth) / 2;
                const top = (screen.height - popupHeight) / 2;
                
                window.open(popupUrl, popupName, 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + left + ', top=' + top);
            });
        });



    </script>
</body>

</html>