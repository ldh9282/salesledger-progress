<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<aside id="sidebar" class="sidebar">

   <ul class="sidebar-nav" id="sidebar-nav">

     <li class="nav-heading">공통</li>
     <li class="nav-item">
       <a class="nav-link collapsed" href="${pageContext.request.contextPath}/empPoolList.do">
         <i class="bi bi-person"></i>
         <span>인력풀</span>
       </a>
     </li><!-- End EmpPool Nav -->
	<c:if test="${sessionScope.userSession.authority < 9}"><!-- 9미만의 권한만 보기가능 -->
     <li class="nav-heading">회사별</li>
     	
	     <c:if test="${sessionScope.userSession.authority < 7}"><!-- 7미만의 권한만 보기가능 -->
	     <c:if test="${sessionScope.userSession.authority != 5}"><!-- 5 권한 보기 불가능 -->
		     <li class="nav-item">
		       <a class="nav-link collapsed" data-bs-target="#iycnc-nav" data-bs-toggle="collapse" href="#">
		         <i class="bi bi-journal-text"></i><span>IYCNC</span><i class="bi bi-chevron-down ms-auto"></i>
		       </a>
		       <ul id="iycnc-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
		         <li>
		           <a href="${pageContext.request.contextPath}/iycnc/empLedgerList.do">
		             <i class="bi bi-circle"></i><span>인력기초원장</span>
		           </a>
		         </li>
		         <li>
		           <a href="${pageContext.request.contextPath}/iycnc/salesLedgerList.do">
		             <i class="bi bi-circle"></i><span>매출원장</span>
		           </a>
		         </li>
		         <li>
		           <a href="${pageContext.request.contextPath}/iycnc/salesEstimationList.do">
		             <i class="bi bi-circle"></i><span>추정</span>
		           </a>
		         </li>
		         <li>
		           <a href="${pageContext.request.contextPath}/iycnc/salesResultList.do">
		             <i class="bi bi-circle"></i><span>실적</span>
		           </a>
		         </li>
		       </ul>
		     </li><!-- End IYCNC Nav -->
	     </c:if>
	     </c:if>
     
	     <c:if test="${sessionScope.userSession.authority < 8}"><!-- 8미만의 권한만 보기가능 -->
	     <c:if test="${sessionScope.userSession.authority != 6}"><!-- 6 권한 보기 불가능 -->
	     <c:if test="${sessionScope.userSession.authority != 4}"><!-- 4 권한 보기 불가능 -->
		     <li class="nav-item">
		       <a class="nav-link collapsed" data-bs-target="#ibts-nav" data-bs-toggle="collapse" href="#">
		         <i class="bi bi-journal-text"></i><span>IBTS</span><i class="bi bi-chevron-down ms-auto"></i>
		       </a>
		       <ul id="ibts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
		         <li>
		           <a href="${pageContext.request.contextPath}/ibts/empLedgerList.do">
		             <i class="bi bi-circle"></i><span>인력기초원장</span>
		           </a>
		         </li>
		         <li>
		           <a href="${pageContext.request.contextPath}/ibts/salesLedgerList.do">
		             <i class="bi bi-circle"></i><span>매출원장</span>
		           </a>
		         </li>
		         <li>
		           <a href="${pageContext.request.contextPath}/ibts/salesEstimationList.do">
		             <i class="bi bi-circle"></i><span>추정</span>
		           </a>
		         </li>
		         <li>
		           <a href="${pageContext.request.contextPath}/ibts/salesResultList.do">
		             <i class="bi bi-circle"></i><span>실적</span>
		           </a>
		         </li>
		       </ul>
		     </li>
	     </c:if>
	     </c:if>
	     </c:if>
     <!-- End IBTS Nav -->
     
	     <c:if test="${sessionScope.userSession.authority != 7}"><!-- 7 권한 보기 불가능 -->
	     <c:if test="${sessionScope.userSession.authority != 6}"><!-- 6 권한 보기 불가능 -->
	     <c:if test="${sessionScope.userSession.authority != 3}"><!-- 3 권한 보기 불가능 -->
		     <li class="nav-item">
		       <a class="nav-link collapsed" data-bs-target="#iys-nav" data-bs-toggle="collapse" href="#">
		         <i class="bi bi-journal-text"></i><span>IYS</span><i class="bi bi-chevron-down ms-auto"></i>
		       </a>
		       <ul id="iys-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
		         <li>
		           <a href="${pageContext.request.contextPath}/iys/empLedgerList.do">
		             <i class="bi bi-circle"></i><span>인력기초원장</span>
		           </a>
		         </li>
		         <li>
		           <a href="${pageContext.request.contextPath}/iys/salesLedgerList.do">
		             <i class="bi bi-circle"></i><span>매출원장</span>
		           </a>
		         </li>
		         <li>
		           <a href="${pageContext.request.contextPath}/iys/salesEstimationList.do">
		             <i class="bi bi-circle"></i><span>추정</span>
		           </a>
		         </li>
		         <li>
		           <a href="${pageContext.request.contextPath}/iys/salesResultList.do">
		             <i class="bi bi-circle"></i><span>실적</span>
		           </a>
		         </li>
		       </ul>
		     </li>
	     </c:if>
	     </c:if>
	     </c:if>
     </c:if>
     <!-- End IYS Nav -->
     
     <li class="nav-heading">모든 회사</li>
     <li class="nav-item">
       <a class="nav-link collapsed" data-bs-target="#chart-nav" data-bs-toggle="collapse" href="#">
         <i class="bi bi-bar-chart"></i><span>통계</span><i class="bi bi-chevron-down ms-auto"></i>
       </a>
       <ul id="chart-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
         <li>
           <a href="forms-elements.html">
             <i class="bi bi-circle"></i><span>인력기초원장</span>
           </a>
         </li>
         <li>
           <a href="forms-layouts.html">
             <i class="bi bi-circle"></i><span>매출원장</span>
           </a>
         </li>
         <li>
           <a href="forms-editors.html">
             <i class="bi bi-circle"></i><span>추정</span>
           </a>
         </li>
         <li>
           <a href="forms-validation.html">
             <i class="bi bi-circle"></i><span>실적</span>
           </a>
         </li>
       </ul>
     </li><!-- End Chart Nav -->
      <c:if test="${sessionScope.userSession.authority == 1}"><!-- 관리자만 보기 가능 -->
     <li class="nav-heading">관리자</li>
     <li class="nav-item">
       <a class="nav-link collapsed" href="${path}/adminPage.do">
         <i class="bi bi-person"></i>
         <span>회원관리</span>
       </a>
     </li>
     </c:if>
     <!-- End userManaging Nav -->
   </ul>
 </aside>
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
 