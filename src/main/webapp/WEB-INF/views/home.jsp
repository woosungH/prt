<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>URMS 유지보수 현황</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet" href="/css/home.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/include/menus.jsp" %>
    <div id="main">
		<section class="sec1">
			<div class="head">
			    <h1 style="display: block;">전체 요청 처리 현황</h1>
			    <a href="/report" class="btn btn-outline-info">보고서</a>
			</div>
			<div class="con">
				<div>
			   		<div>
			   			<span>전체</span>
			   		</div>
			   		<div>
			   			<span>${ count }</span>
			   		</div>
		   		</div>
		   		<div>
			   		<div>
			   			<span>미완료</span>
			   		</div>
			   		<div>
			   			<span>${ req_no_count }</span>
			   		</div>
		   		</div>
		   		<div>
			   		<div>
			   			<span>완료</span>
			   		</div>
			   		<div>
			   			<span>${ req_yes_count }</span>
			   		</div>
		   		</div>
			</div>
        </section>
        
        <section class="sec2">
			<h1>처리 진행중인 작업 현황</h1>
			<table class="table">
				<tr>
					<th class="sys_info_nm">대상시스템</th>
					<th class="req_type">요청유형</th>
					<th class="req_title">제목</th>
					<th class="clear_st_dttm">작업시작일</th>
					<th class="clear_due_dttm">작업완료예정일</th>
				</tr>
				<c:choose>
					<c:when test="${fn:length(vo) ne 0}">
						<c:forEach var="req" items="${ vo }">
							<tr>
								<td class="sys_info_nm">${ req.sys_info_nm }</td>
								<td class="req_type">${ req.req_type }</td>
								<td class="req_title" id="req_title">${ req.req_title }</td>
								<td class="clear_st_dttm">${ req.clear_st_dttm }</td>
								<td class="clear_due_dttm">${ req.clear_due_dttm }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr class="none_list">
							<td colspan="5">처리 중인 작업이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</table>
        </section>
        
        <section class="sec3">
			<h1>조치 미등록 현황</h1>
			<table class="table">
			<tr>
				<th class="sys_info_nm">대상시스템</th>
				<th class="req_type">요청유형</th>
				<th class="req_title">제목</th>
				<th class="clear_st_dttm">접수일</th>
				<th class="clear_due_dttm">처리기한</th>
			</tr>
			<c:choose>
				<c:when test="${fn:length(vo2) ne 0}">
					<c:forEach  var="req2" items="${ vo2 }">
						<tr>
							<td class="sys_info_nm">${ req2.sys_info_nm }</td>
							<td class="req_type">${ req2.req_type }</td>
							<td class="req_title" id="req_title">${ req2.req_title }</td>
							<td class="clear_st_dttm">${ req2.req_dttm }</td>
							<td class="clear_due_dttm">${ req2.req_end_dttm }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr class="none_list">
						<td colspan="5">미등록된 요청이 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
			</table>
        </section>
	</div>
	<%@ include file="/WEB-INF/include/footer.jsp" %>
</body>
</html>