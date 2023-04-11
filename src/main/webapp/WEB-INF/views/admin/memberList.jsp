<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>IYCNC 인력기초원장: IYF 인력기초원장/매출원장</title>
    
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
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">회원목록</h5>
							<p>
								<select name="rowAmountPerPage" id="rowAmountPerPage">
									<option value="10">10개</option>
									<option value="20">20개</option>
									<option value="50">50개</option>
									<option value="100">100개</option>
								</select>
							</p>
							<select name="scope" id="scope">
								<option value="I">아이디</option>
								<option value="N">이름</option>
								<option value="C">회사명</option>
							</select>
							<input type="text" name="keyword" id="keyword" placeholder="키워드 입력">
							<button type="button" id="btnKeywordSearch">검색</button>
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">아이디</th>
										<th scope="col">이름</th>
										<th scope="col">회사명</th>
										<th scope="col">권한</th>
										<th scope="col">승인</th>
									</tr>
								</thead>
		
								<tbody id="memberTbody">	
								</tbody>	
							</table>
							<!-- End Default Table Example -->
						</div>
					</div>
		
		
		
				</div>
			</div>
			
			<nav aria-label="Page navigation example">
			  <ul class="pagination" style="justify-content:center;">
			    <c:if test="${pagingCreator.prev }">
					<li class="page-item">
						<a class="page-link" href="?pageNum=1&rowAmountPerPage=${param.rowAmountPerPage}&scope=${param.scope}&keyword=${param.keyword}">First</a>
					</li>
				</c:if>
				<c:if test="${pagingCreator.prev }">
					<li class="page-item">
						<a class="page-link" href="${pageContext.request.contextPath}/member/list_admin?pageNum=${pagingCreator.startPagingNum - 1}&rowAmountPerPage=${param.rowAmountPerPage}&scope=${param.scope}&keyword=${param.keyword}">Previous</a>
					</li>
				</c:if>
				
				<c:forEach var="pageNum" begin="${pagingCreator.startPagingNum }" end="${pagingCreator.endPagingNum }">
					<li class="page-item">
						<a class="page-link" href="${pageContext.request.contextPath}/member/list_admin?pageNum=${pageNum}&rowAmountPerPage=${param.rowAmountPerPage}&scope=${param.scope}&keyword=${param.keyword}">${pageNum}</a>
					</li>
				</c:forEach>
				
				<c:if test="${pagingCreator.next }">
					<li class="page-item">
						<a class="page-link" href="${pageContext.request.contextPath}/member/list_admin?pageNum=${pagingCreator.endPagingNum + 1}&rowAmountPerPage=${param.rowAmountPerPage}&scope=${param.scope}&keyword=${param.keyword}">Next</a>
					</li>
				</c:if>
				
				<c:if test="${pagingCreator.next }">
					<li class="page-item">
						<a class="page-link" href="${pageContext.request.contextPath}/member/list_admin?pageNum=${pagingCreator.lastPageNum}&rowAmountPerPage=${param.rowAmountPerPage}&scope=${param.scope}&keyword=${param.keyword}">End</a>
					</li>
				</c:if>
			  </ul>
			</nav>
			
			
	
	
		</section>

    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>


    
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