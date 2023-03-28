<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>매출원장: IYF 인력기초원장/매출원장</title>
    <meta content="" name="description">
    <meta content="" name="keywords">   
</head>
<script type="text/javascript">
	$(document).ready(function(){
		//취소버튼 클릭
		$('#btnCancel').click(function() {
            window.close();
        })
		$.ajax({
	        url : "${pageContext.request.contextPath}/empLedgerListIBTS.ajax",
	        method :"GET",
	        success : function(empLedgerList){
	        	/* 해당되는 empLedger중 company가 'IBTS',  진행상태가 투입, */
	            grid.resetData(empLedgerList);
	        } 
	    });
		
		var grid = new tui.Grid({
	        el: document.getElementById('grid'),
	        bodyHeight: 700,
	        scrollX: true,
	        scrollY: true,
	        columnOptions: {
                minWidth: 120
            },
	        columns: [
	          {
	            header: '인력원장키',
	            name: 'emp_id'
	          },
	          {
	            header: '인력키',
	            name: 'emp_pool_id',
	          },
	          {
	            header: '거래처키',
	            name: 'client_id',
	            
	          },
	          {
	              header: '이름',
	              name: 'name',
	              filter: 'select',
	          },
	          {
	              header: '전화번호',
	              name: 'phonenumber',
	              filter: 'select',
	          },
	          {
	              header: '진행상태',
	              name: 'progress'
	          },
	          {
	            header: '회사',
	            name: 'company'
	          },          
	          {
	        	  header: '투입일',
	              name: 'assign_date',
	              filter: 'select',
	              sortingType: 'desc',
	              sortable: true
	          },
	          {
	        	  header: '종료일',
	              name: 'end_date',
	              filter: 'select',
	              sortingType: 'desc',
	              sortable: true
	          },
	          {
	              header: '매출단가',
	              name: 'sales_unit'
	          },
	          {
	            header: '매입단가',
	            name: 'purchase_unit',
	          },
	          {
	            header: '매출처',
	            name: 'sales_source',
	            filter: 'select'
	           },
	           {
	               header: '거래처',
	               name: 'client',
	               filter: 'select'
	           },
	            {
	               header: '프로젝트명',
	               name: 'project_name',
	               filter: 'select'
	           },
	            {
	               header: '사업관리담당',
	               name: 'business_manager',
	               filter: 'select',
	               width: 'auto',
	           },
	        ]			
	      });
		grid.hideColumn('emp_id');
		grid.hideColumn('emp_pool_id');
		grid.hideColumn('client_id');
		
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
		
        /* 더블 클릭 시 해당하는 행의  empno를 가져온다. */
		grid.on('dblclick', (ev) => {
			const empLedger = grid.getRow(ev.rowKey)
			$('#emp_id').attr('value',empLedger.emp_id);
			$('#name').attr('value',empLedger.name);
			$('#clickChk').attr('value',1);
			
		});
        
		$('#btnRegister').click(function() {
			var clickChk = $('#clickChk').val();
			if(clickChk != 1){
				alert("인력을 선택하세요")
				return false;
			};
			
            const salesLedger = {
            	emp_id: $('#emp_id').val(),
				name: $('#name').val(),
				tech_support: $('#tech_support').val(),
				extra_expense: $('#extra_expense').val(),
				extra_expense_amount: $('#extra_expense_amount').val(),
				job_level: $('#job_level').val(),
				job_role: $('#job_role').val(),
				job_field: $('#job_field').val(),
				baby_leave_comments: $('#baby_leave_comments').val(),
				emp_type: $('#emp_type').val(),
				i_c_class: $('#i_c_class').val(),
				payday: $('#payday').val(),		
			};
           
           $.ajax({
               type: 'POST',
               url: '${pageContext.request.contextPath}/salesLedgerRegister.ajax',
               data: JSON.stringify(salesLedger),
               contentType: 'application/json',
               success: function() { 
            	   alert("입력성공!")
                   opener.parent.location.reload();
                   window.close();
               },
               error: function() {
                   opener.parent.location.reload();
                   window.close();
               }
           });               
       });
	});
</script>
<body>

    <main id="main" class="main">
    	<div class="container show-grid">
    		<div class="row">
		      <div class="col-md-6 " >
		        <section>
		            <div class="container">
		                <h1>매출원장 등록 페이지</h1>
		                	<input type="hidden" id="clickChk" value="0">
		                    <div class="form-group mb-3">
							<input type="hidden" name ="emp_id" id="emp_id">
		                        <label for="name">투입인력</label>
		                        <input type="text" class="form-control" id="name" name="name">
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="tech_support">기술지원여부 :</label>
		                        <select class="form-control" id="tech_support" name="tech_support">
		                            <option value="Y">지원</option>
		                            <option value="N">지원안함</option>
		                        </select>
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="extra_expense">부대비용항목 :</label>
		                        <input type="text" class="form-control" id="extra_expense" name="extra_expense">
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="extra_expense_amount">부대비용금액 :</label>
		                        <input type="number" class="form-control" id="extra_expense_amount" name="extra_expense_amount" value="0">
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="job_level">직급:</label>
		                        <input type="text" class="form-control" id="job_level" name="job_level">
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="job_role">직무 :</label>
		                        <input type="text" class="form-control" id="job_role" name="job_role">
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="job_field">분야:</label>
		                        <input type="text" class="form-control" id="job_field" name="job_field">
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="baby_leave_comments">육아휴직비고:</label>
		                        <textarea class="form-control" id="baby_leave_comments" name="baby_leave_comments"></textarea>
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="emp_type">고용형태:</label>
		                        <select class="form-control" id="emp_type" name="emp_type">
		                            <option value="정규">정규</option>
		                            <option value="정규연구">정규연구</option>
		                            <option value="하도">하도</option>
		                            <option value="프리">프리</option>
		                            <option value="IYS">IYS</option>
		                            <option value="IBTS">IBTS</option>
		                        </select>
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="i_c_class">하도개인법인구분</label>
		                        <select class="form-control" id="tech_support" name="tech_support">
		                        	<option value="N">하도아님</option>
		                            <option value="G">개인사업자</option>
		                            <option value="B">법인</option>
		                        </select>
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="i_c_company_name">하도업체명:</label>
		                        <input type="text" class="form-control" id="i_c_company_name" name="i_c_company_name" placeholder="하도아니면 작성마시오">
		                    </div>
		                    <div class="form-group mb-3">
		                        <label for="payday">급여지급날:</label>
		                        <input type="text" class="form-control" id="payday" name="payday">
		                    </div>		                    
		                    <button type="submit" class="btn btn-primary" id="btnRegister">매출원장 등록</button>
		                    <button type="button" class="btn btn-secondary" id="btnCancel">취소</button>
		            </div>
		         </section>
		        </div>
	         <div class="col-md-6 border-left border">
	         <h3>투입예정인력</h3>
	         <div id="grid"></div>
	         
	         </div>
         </div>
       </div>
    </main><!-- End #main -->
</body>
</html>