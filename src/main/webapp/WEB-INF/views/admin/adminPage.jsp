<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="../sidebar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지: IYF 인력기초원장/매출원장</title>
<script type="text/javascript">
function permit(username) {
	var con = confirm("승인 하시겠습니까?");
	if(con) {
		location.href="userPermit.do?username="+username;
	}
}

function chk(name) {
	var con = confirm(name + " 권한을 변경 하시겠습니까?");
	if(con) {
	
	}else{
		return false;
	}
}
</script>
</head>
<body>
<main id="main" class="main">
<h2>회원관리</h2>
	<table class="table table-hover">
			<tr class="table-primary">
				<th>이름</th>
				<th>아이디</th>
				<th>회사</th>
				<th>승인여부</th>
				<th>권한</th>
				<th colspan="2">권한설정</th>
			</tr>
			<c:if test="${empty userList }">
				<tr>
					<td colspan="6">회원이 없습니다.</td>
				</tr>
			</c:if>
			<c:if test="${not empty userList }">
				<c:forEach var="user" items="${userList }">
					<tr>
						<td>${user.name }</td>
						<td>${user.username }</td>
						<td>${user.company }</td>
						<td>
							<c:if test="${user.permit == 'N'}">
								<button onclick="permit('${user.username }')" class="btn btn-primary">승인</button>
							</c:if>
							<c:if test="${user.permit == 'Y'}">
								승인된 회원입니다.
							</c:if>
						</td>
						<td>
						<c:if test="${user.authority == 1}">관리자</c:if>
						<c:if test="${user.authority == 2}">IYCNC,IBTS,IYS 담당자</c:if>
						<c:if test="${user.authority == 3}">IYCNC,IBTS 담당자</c:if>
						<c:if test="${user.authority == 4}">IYCNC,IYS 담당자</c:if>
						<c:if test="${user.authority == 5}">IBTS,IYS 담당자</c:if>
						<c:if test="${user.authority == 6}">IYCNC 담당자</c:if>
						<c:if test="${user.authority == 7}">IBTS 담당자</c:if>
						<c:if test="${user.authority == 8}">IYS 담당자</c:if>
						<c:if test="${user.authority == 9}">인력 담당자</c:if>
						<c:if test="${user.authority == null}">권한설정필요</c:if>
						</td>
						<form action="authoritySetting.do" method="post" onsubmit="return chk(${user.name})">
						<td>
						<select name="authority">
							<option value="none">===== 선택 =====</option>
							<option value="1" <c:if test="${user.authority == 1}">selected="selected"</c:if>>관리자</option>
							<option value="2" <c:if test="${user.authority == 2}">selected="selected"</c:if>>IYCNC,IBTS,IYS 담당자</option>
							<option value="3" <c:if test="${user.authority == 3}">selected="selected"</c:if>>IYCNC,IBTS 담당자</option>
							<option value="4" <c:if test="${user.authority == 4}">selected="selected"</c:if>>IYCNC,IYS 담당자</option>
							<option value="5" <c:if test="${user.authority == 5}">selected="selected"</c:if>>IBTS,IYS 담당자</option>
							<option value="6" <c:if test="${user.authority == 6}">selected="selected"</c:if>>IYCNC 담당자</option>
							<option value="7" <c:if test="${user.authority == 7}">selected="selected"</c:if>>IBTS 담당자</option>
							<option value="8" <c:if test="${user.authority == 8}">selected="selected"</c:if>>IYS 담당자</option>
							<option value="9" <c:if test="${user.authority == 9}">selected="selected"</c:if>>인력풀 담당자</option>
						</select>
						</td>
						<td>
							<input name="username" type="hidden" value="${user.username}">
							<input type="submit">
						</td>
						</form>
					</tr>
				</c:forEach>
			</c:if>
	</table>
</main>
</body>
</html>