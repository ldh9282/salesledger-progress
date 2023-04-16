<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">
		<li class="nav-heading">공통</li>
		<security:authorize access="isAuthenticated()">
			<li class="nav-item">
				<a class="nav-link collapsed" href="${pageContext.request.contextPath}/empPoolList">
					<i class="bi bi-person"></i>
					<span>인력풀</span>
				</a>
			</li><!-- End EmpPool Nav -->
		</security:authorize>
		
		<!-- Start IYCNC Nav  -->
		<security:authorize access="hasAuthority('통합 관리자') or hasAuthority('IYCNC 관리자')">
			<li class="nav-heading">IYCNC</li>
			<li class="nav-item">
				<a class="nav-link collapsed" data-bs-target="#iycnc-ito-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>ITO</span><i class="bi bi-chevron-down ms-auto"></i>
				</a>
				
				<ul id="iycnc-ito-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
				
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/empLedgerList">
							<i class="bi bi-circle"></i><span>인력기초원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/salesLedgerList">
							<i class="bi bi-circle"></i><span>매출원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/salesEstimationList">
							<i class="bi bi-circle"></i><span>추정</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/salesResultList">
							<i class="bi bi-circle"></i><span>실적</span>
						</a>
					</li>
				</ul>
			</li><!-- End ITO Nav -->
			<li class="nav-item">
				<a class="nav-link collapsed" data-bs-target="#iycnc-infra-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>인프라</span><i class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="iycnc-infra-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
					<li>
						<a href="${pageContext.request.contextPath}/iys/empLedgerList">
							<i class="bi bi-circle"></i><span>인력기초원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iys/salesLedgerList">
							<i class="bi bi-circle"></i><span>매출원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iys/salesEstimationList">
							<i class="bi bi-circle"></i><span>추정</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iys/salesResultList">
							<i class="bi bi-circle"></i><span>실적</span>
						</a>
					</li>
				</ul>
			</li><!-- End INFRA Nav -->
		</security:authorize>
		<!-- End IYCNC Nav  -->
		
		<!-- Start IBTS Nav  -->
		<security:authorize access="hasAuthority('통합 관리자') or hasAuthority('IBTS 관리자')">
			<li class="nav-heading">IBTS</li>
			<li class="nav-item">
				<a class="nav-link collapsed" data-bs-target="#ibts-ito-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>ITO</span><i class="bi bi-chevron-down ms-auto"></i>
				</a>
				
				<ul id="ibts-ito-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
				
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/empLedgerList">
							<i class="bi bi-circle"></i><span>인력기초원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/salesLedgerList">
							<i class="bi bi-circle"></i><span>매출원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/salesEstimationList">
							<i class="bi bi-circle"></i><span>추정</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/salesResultList">
							<i class="bi bi-circle"></i><span>실적</span>
						</a>
					</li>
				</ul>
			</li><!-- End ITO Nav -->
			<li class="nav-item">
				<a class="nav-link collapsed" data-bs-target="#ibts-infra-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>인프라</span><i class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="ibts-infra-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
					<li>
						<a href="${pageContext.request.contextPath}/iys/empLedgerList">
							<i class="bi bi-circle"></i><span>인력기초원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iys/salesLedgerList">
							<i class="bi bi-circle"></i><span>매출원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iys/salesEstimationList">
							<i class="bi bi-circle"></i><span>추정</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iys/salesResultList">
							<i class="bi bi-circle"></i><span>실적</span>
						</a>
					</li>
				</ul>
			</li><!-- End INFRA Nav -->
		</security:authorize>
		<!-- End IBTS Nav  -->
		
		<!-- Start IYS Nav  -->
		<security:authorize access="hasAuthority('통합 관리자') or hasAuthority('IYS 관리자')">
			<li class="nav-heading">IYS</li>
			<li class="nav-item">
				<a class="nav-link collapsed" data-bs-target="#iys-ito-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>ITO</span><i class="bi bi-chevron-down ms-auto"></i>
				</a>
				
				<ul id="iys-ito-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
				
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/empLedgerList">
							<i class="bi bi-circle"></i><span>인력기초원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/salesLedgerList">
							<i class="bi bi-circle"></i><span>매출원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/salesEstimationList">
							<i class="bi bi-circle"></i><span>추정</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/ito/salesResultList">
							<i class="bi bi-circle"></i><span>실적</span>
						</a>
					</li>
				</ul>
			</li><!-- End ITO Nav -->
			<li class="nav-item">
				<a class="nav-link collapsed" data-bs-target="#iys-infra-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>인프라</span><i class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="iys-infra-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
					<li>
						<a href="${pageContext.request.contextPath}/iys/empLedgerList">
							<i class="bi bi-circle"></i><span>인력기초원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iys/salesLedgerList">
							<i class="bi bi-circle"></i><span>매출원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iys/salesEstimationList">
							<i class="bi bi-circle"></i><span>추정</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iys/salesResultList">
							<i class="bi bi-circle"></i><span>실적</span>
						</a>
					</li>
				</ul>
			</li><!-- End INFRA Nav -->
		</security:authorize>
		<!-- End IYS Nav  -->
			
		
		<security:authorize access="hasAuthority('통합 관리자')">
		
			<li class="nav-heading">관리자</li>
			<li class="nav-item">
				<a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/memberList">
					<i class="bi bi-person"></i>
					<span>회원관리</span>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/salesResultChart">
					<i class="bi bi-bar-chart"></i>
					<span>통계</span>
				</a>
			</li><!-- End 통합관리자 Nav -->
		</security:authorize>
	</ul>
</aside>