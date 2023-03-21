<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>URMS 유지보수 현황</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/common.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <style>
     body { font-family: 'Nanum Gothic', sans-serif;}
 h2 {text-align : center; padding : 50px 0 0 0;}
 table {
		margin : 0 auto;
		border-collapse : collapse;
		width : 60%;
		font-size : 16px;
 }
 tr { border : 1px solid silver;	}
 th { background : #F6F6F6 ; }
 tr, td, th {
		padding : 10px;
		text-align : center;
}
 caption {
		font-weight : bold;
		text-align : right;
		padding : 10px;
 }
</style>
<!-- <svg width="700" height="320"></svg> -->
<script src="https://d3js.org/d3.v4.min.js"></script>
<script>

</script>

  </head>
  <body>
  <%@ include file="/WEB-INF/include/menus.jsp" %>
   <div id="main" style="padding: 100px;">
		<table id="req">
			<h2>처리 진행중인 작업 현황</h2>
			<tr>
				<th>제목</th>
				<th>내용</th>
				<th>대상시스템</th>
				<th>요청유형</th>
				<th>작업시작일시</th>
				<th>작업완료예정일</th>
			</tr>		
			<c:forEach  var="req" items="${ vo }">
			<tr>
				<td>${ req.req_title }</td>
				<td>${ req.req_con }</td>
				<td>${ req.sys_info_nm }</td>
				<td>${ req.req_type }</td>
				<td>${ req.clear_st_dttm }</td>
				<td>${ req.clear_due_dttm }</td>
			</tr>
			</c:forEach>
		</table>
		<table id="reqNo">
		<h2>조치 미등록 현황</h2>
		<tr>
				<th>제목</th>
				<th>내용</th>
				<th>대상시스템</th>
				<th>요청유형</th>
				<th>접수일</th>
				<th>처리기한</th>
			</tr>		
			<c:forEach  var="req2" items="${ vo2 }">
			<tr>
				<td>${ req2.req_title }</td>
				<td>${ req2.req_con }</td>
				<td>${ req2.sys_info_nm }</td>
				<td>${ req2.req_type }</td>
				<td>${ req2.req_dttm }</td>
				<td>${ req2.req_end_dttm }</td>
			</tr>
			</c:forEach>
		</table>
   </div>
  </body>
</html>