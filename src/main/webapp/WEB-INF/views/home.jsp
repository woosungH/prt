<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   		<h1 style="display: block;">전체 요청 처리 현황<a href="/report" class="btn btn-outline-info">보고서</a></h1>
   		<table class="table" style="width: 33% ;float:left;">
   		<tr>
   			<th>전체</th>
   		</tr>
   		<tr>
   			<td>${ count }</td>
   		</tr>
   		</table>
   		<table class="table" style="width: 33%;float:left;">
   		<tr>
   			<th>미완료</th>
   		</tr>
   		<tr>
   			<td>${ req_no_count }</td>
   		</tr>
   		</table>
   		<table class="table" style="width: 33%;float:left;">
   		<tr>
   			<th>완료</th>
   		</tr>
   		<tr>
   			<td>${ req_yes_count }</td>
   		</tr>
   		</table>
		<table class="table">
			<h1>처리 진행중인 작업 현황</h1>
			<tr>
				<th class="sys_info_nm">대상시스템</th>
				<th class="req_type">요청유형</th>
				<th class="req_title">제목</th>
				<th class="clear_st_dttm">작업시작일</th>
				<th class="clear_due_dttm">작업완료예정일</th>
			</tr>		
			<c:forEach  var="req" items="${ vo }">
			<tr>
				<td class="sys_info_nm">${ req.sys_info_nm }</td>
				<td class="req_type">${ req.req_type }</td>
				<td class="req_title" id="req_title">${ req.req_title }</td>
				<td class="clear_st_dttm">${ req.clear_st_dttm }</td>
				<td class="clear_due_dttm">${ req.clear_due_dttm }</td>
			</tr>
			</c:forEach>
		</table>
		<table class="table">
		<h1>조치 미등록 현황</h1>
		<tr>
				<th class="sys_info_nm">대상시스템</th>
				<th class="req_type">요청유형</th>
				<th class="req_title">제목</th>
				<th class="clear_st_dttm">접수일</th>
				<th class="clear_due_dttm">처리기한</th>
			</tr>		
		<c:forEach  var="req2" items="${ vo2 }">
			<tr>
				<td class="sys_info_nm">${ req2.sys_info_nm }</td>
				<td class="req_type">${ req2.req_type }</td>
				<td class="req_title" id="req_title">${ req2.req_title }</td>
				<td class="clear_st_dttm">${ req2.req_dttm }</td>
				<td class="clear_due_dttm">${ req2.req_end_dttm }</td>
			</tr>
		</c:forEach>
		</table>
	</div>
</body>
</html>