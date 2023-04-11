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
		
		<li class="nav-heading">회사별</li>
		<security:authorize access="hasAuthority('ROLE_ADMIN') or hasAuthority('ROLE_IYCNC')">
			<li class="nav-item">
				<a class="nav-link collapsed" data-bs-target="#iycnc-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>IYCNC</span><i class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="iycnc-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/empLedgerList">
							<i class="bi bi-circle"></i><span>인력기초원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/salesLedgerList">
							<i class="bi bi-circle"></i><span>매출원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/salesEstimationList">
							<i class="bi bi-circle"></i><span>추정</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/iycnc/salesResultList">
							<i class="bi bi-circle"></i><span>실적</span>
						</a>
					</li>
				</ul>
			</li><!-- End IYCNC Nav -->
		</security:authorize>
		
		<security:authorize access="hasAuthority('ROLE_ADMIN') or hasAuthority('ROLE_IBTS')">
			<li class="nav-item">
				<a class="nav-link collapsed" data-bs-target="#ibts-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>IBTS</span><i class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="ibts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
					<li>
						<a href="${pageContext.request.contextPath}/ibts/empLedgerList">
							<i class="bi bi-circle"></i><span>인력기초원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/ibts/salesLedgerList">
							<i class="bi bi-circle"></i><span>매출원장</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/ibts/salesEstimationList">
							<i class="bi bi-circle"></i><span>추정</span>
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/ibts/salesResultList">
							<i class="bi bi-circle"></i><span>실적</span>
						</a>
					</li>
				</ul>
			</li>
			<!-- End IBTS Nav -->
		</security:authorize>
		
		<security:authorize access="hasAuthority('ROLE_ADMIN') or hasAuthority('ROLE_IYS')">
			<li class="nav-item">
				<a class="nav-link collapsed" data-bs-target="#iys-nav" data-bs-toggle="collapse" href="#">
					<i class="bi bi-journal-text"></i><span>IYS</span><i class="bi bi-chevron-down ms-auto"></i>
				</a>
				<ul id="iys-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
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
			</li><!-- End IYS Nav -->
		</security:authorize>
		
		<security:authorize access="hasAuthority('ROLE_ADMIN')">
		
			<li class="nav-heading">관리자</li>
			<li class="nav-item">
				<a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/memberList">
					<i class="bi bi-person"></i>
					<span>회원관리</span>
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link collapsed" href="">
					<i class="bi bi-bar-chart"></i>
					<span>통계</span>
				</a>
			</li><!-- End 통합관리자 Nav -->
		</security:authorize>
	</ul>
</aside>