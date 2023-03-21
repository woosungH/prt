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
<link rel="stylesheet"href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="/css/common.css" />
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
<style>
	form {
		width : 1000px;
		margin : 0 auto;
		display : flex;
	}
	table {
		width : 100%;
		border : 1px solid black;
		border-radius : 3px 3px 3px 3px;
		border-collapse : collapse;
	}
	
	tr,th,td{
		border : 1px solid black;
		padding : 10px;
	}
	
	th {
		text-align : center;
	}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/include/menus.jsp" %>
	
	<h1>요청 조회</h1>
	
	<form action="/reqSearch" method="post">
		<table>
			<tr>
				<th>요청일</th>
				<td>
					<input type="date" class="form-control" name="req_start" /> ~ <input type="date" class="form-control" name="req_end" />
				</td>
				<th>작업완료일</th>
				<td>
					<input type="date" class="form-control" name="res_start" /> ~ <input type="date" class="form-control" name="res_end" />
				</td>
			</tr>
			<tr>
				<th>시스템 상세명</th>
				<td colspan="3">
					<!-- 프로젝트명 선택 되면 해당하는 세부 시스템명만 아래 옵션에 뜨게 설정 -->
					<span>프로젝트명</span>
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
					<span>시스템명</span>
					<!-- 시스템명, 프로젝트명도 파라미터로 받아서 일치하는지 확인 필요 -->
					<select name="sys_nm"  id="sys_nm" class="form-select" onchange="sysChange(this.value)">
						<option value="all">전체</option>
					</select>
					<span>시스템상세명</span>
					<select name="sys_info_nm" id="sys_info_nm" class="form-select">
						<option value="all">전체</option>
					</select>
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
				<th>검색어</th>
				<td colspan="3">
					<select name="search_opt" id="search_opt" class="form-select">
						<option value="all">전체</option>
						<option value="req_title">제목</option>
						<option value="req_con">내용</option>
						<option value="req_nm">요청자</option>
						<option value="user_id">작업자</option>
					</select>
					<input type="text" class="form-control" name="text" placeholder="검색어를 입력하세요" />
				</td>
			</tr>
		</table>
		<input type="submit" class="btn btn-outline-primary"  value="검색" />
	</form>
	<!-- mapper 검색어 처리 및 페이징 처리 한번에  -->
	<!-- List 나오고 테이블의 각 제목들 옆에 정렬 아이콘 두고 누르면 정렬 바뀌게 설정 -->
	<script type="text/javascript">
		
		var prjChange = function(value) {
			var prj_nm = $.trim($("#prj_nm option:checked").text());
			
			$.ajax({
				url : "/reqList",
				type : "POST",
				data : {"prj_nm" : prj_nm},
				datatype : "json",
				success : function(data) {
					
					var dataArr = new Array(); 
					var sysArr = new Array();
					
					// 받아온 data를 배열에 저장
 					for(var i in data){
 						dataArr.push(data[i].sys_nm);
 					}
					
 					// 배열 내 중복값 제거
					dataArr.forEach(function(item, idx){
						if(!sysArr.includes(item)){
							sysArr.push(item);
						}
					})
					$('#sys_nm').empty();
					$('#sys_info_nm').empty();
					// option 추가
					// 받아온 데이터가 없으면 전체만 표시
					if(data == '') {
						$('#sys_nm').append("<option value='all'>전체</option>");
						$('#sys_info_nm').append("<option value='all'>전체</option>");
					} else {
						$('#sys_nm').append("<option value='all'>전체</option>");
						$('#sys_info_nm').append("<option value='all'>전체</option>");
						for(var i=0; i<sysArr.length; i++){
							$('#sys_nm').append("<option value='sysArr[i]'>"+sysArr[i]+"</option>");
						}
					}
				}
			});
		}
		var sysChange = function(value) {
			var prj_nm = $.trim($("#prj_nm option:checked").text());
 			var sys_nm = $.trim($("#sys_nm option:checked").text());
			
			$.ajax({
				url : "/reqList",
				type : "POST",
				data : {"prj_nm" : prj_nm, "sys_nm" : sys_nm},
				datatype : "json",
				success : function(data) {
					
					var dataArr = new Array();
					var dataInfoArr = new Array(); 
					var sysArr = new Array();
					var sysInfoArr = new Array();
					
					// 받아온 data를 배열에 저장
 					for(var i in data){
 						dataArr.push(data[i].sys_nm);
 						dataInfoArr.push(data[i].sys_info_nm);
 					}
 					// 배열 내 중복값 제거
 					dataArr.forEach(function(item, idx){
						if(!sysArr.includes(item)){
							sysArr.push(item);
							console.log(sysArr);
						}
					})
					dataInfoArr.forEach(function(item, idx){
						if(!sysInfoArr.includes(item)){
							sysInfoArr.push(item);
							console.log(sysInfoArr);
						}
					})
					$('#sys_info_nm').empty();
					// option 추가
					// 받아온 데이터가 없으면 전체만 표시
					if(data == '') {
						$('#sys_info_nm').append("<option value='all'>전체</option>");
					} else {
						$('#sys_info_nm').append("<option value='all'>전체</option>");
						for(var i=0; i<sysInfoArr.length; i++){
							$('#sys_info_nm').append("<option value='sysInfoArr[i]'>"+sysInfoArr[i]+"</option>");
						}
					}
				}
			});
		}
	</script>
</body>
</html>