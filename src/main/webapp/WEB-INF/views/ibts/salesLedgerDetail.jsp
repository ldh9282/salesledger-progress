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
<body>
<div class="container" align="center">
<h2>${salesLedger.name} 매출 상세정보</h2>
	<table class ="table table-Info table-bordered table-striped">
		<tr>
		<th>이름</th>
		<td>${salesLedger.name}</td>
		<th>투입일</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>업체명</th>
		<td>${salesLedger.name}</td>
		<th>종료일</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>프로젝트명</th>
		<td>${salesLedger.name}</td>
		<th>매출단가</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>사업관리담당</th>
		<td>${salesLedger.name}</td>
		<th>매입단가</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>직무</th>
		<td>${salesLedger.name}</td>
		<th>매출MM</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>비고</th>
		<td>${salesLedger.name}</td>
		<th>매입MM</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>청구금액</th>
		<td>${salesLedger.name}</td>
		<th>MM원가</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>누적청구금액</th>
		<td>${salesLedger.name}</td>
		<th>누적원가금액</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>잔액원가금액</th>
		<td>${salesLedger.name}</td>
		<th>누적원가금액</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>부대비용항목</th>
		<td>${salesLedger.name}</td>
		<th>부대비용금액</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>차액</th>
		<td>${salesLedger.name}</td>
		<th>이익률</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>비율</th>
		<td>${salesLedger.name}</td>
		<th>육아휴직비고</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>고용형태</th>
		<td>${salesLedger.name}</td>
		<th>하도개인법인 구분</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>하도업체명</th>
		<td>${salesLedger.name}</td>
		<th>급여지급날</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>최근금액히스토리</th>
		<td>${salesLedger.name}</td>
		<th>수정자</th>
		<td>${salesLedger.assign_date}</td>
		</tr>
		
		<tr>
		<th>MM합</th>
		<td>${salesLedger.name}</td>
		<th></th>
		<td></td>
		</tr>
		
	</table>
</div>
</body>
</html>