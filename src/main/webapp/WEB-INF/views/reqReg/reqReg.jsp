<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Template Main CSS File -->
<link rel="stylesheet"href="/css/bootstrap.min.css">
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet" href="/css/reqReg.css" />
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
<script type="text/javascript" src="js/reqList.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/include/menus.jsp" %>
	<div id="main">
	  <h1>요청 등록</h1>
		<form action="/reqRegSubmit" method="post">
			<table class="table table-bordered">
			<tr>
			  <th>요청자</th>
			  <td colspan="3"><input type="text" class="form-control" name="req_nm" placeholder="요청자를 입력하세요" /></td>
			</tr>
				<tr>
					<th>요청일</th>
					<td>
						<input type="date" class="form-control" name="req_start" />
					</td>
					<th>완료희망일</th>
					<td>
						<input type="date" class="form-control" name="req_end" />
					</td>
				</tr>
				<tr>
					<th>시스템 상세명</th>
					<td colspan="3">
						<!-- 프로젝트명 선택 되면 해당하는 세부 시스템명만 아래 옵션에 뜨게 설정 -->
						<div>
						<label for="prj_nm" class="form-label">프로젝트명</label>
							<select name="prj_nm" id="prj_nm" class="form-select" onchange="prjChange(this.value)">
								<option value="all">전체</option>
								<c:forEach items="${codeList}" var="list" >
									<c:if test ="${fn:contains(list.code_info_type,'04') and list.use_yn  eq 'Y'}">
										<option value="${list.code_info_type}">
											<c:out value="${list.code_info_nm}" />
										</option>
									</c:if>
								</c:forEach>
							</select>
						</div>
						<!-- 시스템명, 프로젝트명도 파라미터로 받아서 일치하는지 확인 필요 -->
						<div>
						<label for="sys_nm" class="form-label">시스템명</label>
							<select name="sys_nm"  id="sys_nm" class="form-select" onchange="sysChange(this.value)">
								<option value="all">전체</option>
							</select>
						</div>
						<div>
						<label for="sys_info_nm" class="form-label">시스템상세명</label>
							<select name="sys_info_nm" id="sys_info_nm" class="form-select">
								<option value="all">전체</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<th>요청유형</th>
					<td>
						<select name="req_type" id="req_type" class="form-select"> 
							<option value="all">전체</option>
							<c:forEach items="${codeList}" var="list" >
								<c:if test ="${fn:contains(list.code_info_type,'02') and list.use_yn  eq 'Y'}">
									<option value="${list.code_info_nm}">
										<c:out value="${list.code_info_nm}" />
									</option>
								</c:if>
							</c:forEach>
						</select>
					</td>
					<th>진행상태</th>
					<td>
						<select name="clear_now" id="clear_now" class="form-select">
							<option value="all">전체</option>
							<c:forEach items="${codeList}" var="list" >
								<c:if test ="${fn:contains(list.code_info_type,'03') and list.use_yn  eq 'Y'}">
									<option value="${list.code_info_nm}">
										<c:out value="${list.code_info_nm}" />
									</option>
								</c:if>
							</c:forEach>
						</select>
					</td>
				</tr>
					<tr>
			 		 <th>제목</th>
			 		 <td colspan="3"><input type="text" class="form-control" name="req_title" placeholder="제목을 입력하세요" /></td>
					</tr>
					<tr id="last">
						<th>요청내용</th>
						<td colspan="3" id="edt">
							<div id="editor">
							</div>
					</td>
				</tr>
			</table>
			<button type="submit" class="btn btn-outline-primary">저장</button>
		</form>
</div>
<script>
  var quill = new Quill('#editor', {
    theme: 'snow'
  });
</script>
	<%@ include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>