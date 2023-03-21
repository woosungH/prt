<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Template Main CSS File -->
<link rel="stylesheet"href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="/css/report.css" />
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/js/bootstrap.bundle.min.js"></script>
<style>
 table {
		margin : 0 auto;
		border-collapse : collapse;
		width : 65%;
		font-size : 16px;
 }
 tr { border : 1px solid silver;	}
 th { background : #F6F6F6 ; }
 tr, td, th {
		padding : 10px;
		text-align : center;
}
  
  /* sort */
[data-sort]{
    padding:1em 2em;
    background:rgb(15, 16, 49);border-color:#fff;
    color:#fff;
    cursor:pointer;
}
 
[data-sort]::after{
    content:'▼';
    margin-left:1em;
    font-size:.5em;color:yellow;}
</style>
</head>

<body>	
		<%@ include file="/WEB-INF/include/menus.jsp" %>
	<div id="main">
		<h1>요청처리 보고서</h1>
		<form name="form1" action="/poiExcel?searchYtype=${map.searchYtype}&&searchMtype=${map.searchMtype}" method="post">
			<div id="down"><input type="submit" class="btn btn-outline-success" value="다운로드"/></div>
		</form>
		<form action="/report/search" method="GET">
		<div id="searchBox">	
			<select name="searchYtype" id="searchYtype">
			<option value="">==선택==</option>
			<option value="2023">2023년</option>
			</select>
			<input type="hidden" id ="year" value="${searchYtype }"/>
			<select name="searchMtype" id="searchMtype">
			<option value="">==선택==</option>
			<option value="-01">1월</option>
			<option value="-02">2월</option>
			<option value="-03">3월</option>
			<option value="-04">4월</option>
			<option value="-05">5월</option>
			<option value="-06">6월</option>
			<option value="-07">7월</option>
			<option value="-08">8월</option>
			<option value="-09">9월</option>
			<option value="-10">10월</option>
			<option value="-11">11월</option>
			<option value="-12">12월</option>
			</select>
			<input type="hidden" id ="mon" value="${searchMtype }"/>
			<div id="search"><input type="submit" class="btn btn-outline-secondary" value="조회"/></div>
		</div>
		</form>
		<table id="board1" class="table">
			<tr>
				<th class="sortTable_8">순번</th>
				<th class="sortTable_0">시스템</th>
				<th class="sortTable_1">요청유형</th>
				<th class="sortTable_2">제목</th>
				<th class="sortTable_3"style="cursor: pointer;"onclick="sortTable(3)">요청일↕</th>
				<th class="sortTable_4"style="cursor: pointer;"onclick="sortTable(4)">완료희망일↕</th>
				<th class="sortTable_5"style="cursor: pointer;"onclick="sortTable(5)">조치완료일↕</th>
				<th class="sortTable_6">적시요청결과</th>
			</tr>
		<c:forEach var="req" items="${ report }">
			<c:set var="i" value="${i+1 }"></c:set>
			<tr>
				<td>${ i }</td>
				<td class="td1">${ req.sys_info_nm }</td>
				<td class="td1">${ req.req_type }</td>
				<td class="td1" id="td1">${ req.req_title }</td>
				<td class="td1">${ req.req_dttm }</td>
				<td class="td1">${ req.req_end_dttm }</td>
				<td class="td1">${ req.result_reg_dttm }</td>
				<c:choose>
				<c:when test="${ req.req_end_dttm le req.result_reg_dttm}">
				<td>o</td>
				</c:when>
				<c:otherwise>
				<td>x</td>
				</c:otherwise>
				</c:choose>
			</tr>
		</c:forEach>				
		</table>
	</div>
<script>
function sortTable(n){
	var table, rows, switching, o, x, y, shouldSwitch, dir, switchcount = 0;
		table = document.getElementById("board1");
		switching = true;
		dir = "asc";
    
   while (switching) {
	   switching = false;
/* 	   rows = table.getElementTagName("tr"); */
	   rows = $('#board1 tr');
   
   for(o =1; o < (rows.length -1); o++){
	   shouldSwitch = false;
	   x = rows[o].getElementsByClassName("td1")[n];
	   y = rows[o + 1].getElementsByClassName("td1")[n];
	   
	   if(dir == "asc"){
		   if(x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()){
			   shouldSwitch = true;
			   break;
		   }
	   } else if (dir == "desc"){
		   if(x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()){
		   shouldSwitch = true;
		   break;
		   }
	   }
   	}
   
   if(shouldSwitch) {
	   rows[o].parentNode.insertBefore(rows[o+1], rows[o]);
	   switching = true;
	   switchcount ++;
   }else{
	   if(switchcount ==0 && dir =="asc"){
		   dir = "desc";
		   switching = true;
  		 }
	  }
   }
}
$(document).ready(function () {
	
	if($('#year').val() == '2023'){
		$('#searchYtype').val('2023').prop('selected',true);
	}
	
	if($('#mon').val() == '-01'){
		$('#searchMtype').val('-01').prop('selected',true);
	}else if($('#mon').val() == '-02'){
		$('#searchMtype').val('-02').prop('selected',true);
	}else if($('#mon').val() == '-03'){
		$('#searchMtype').val('-03').prop('selected',true);
	}else if($('#mon').val() == '-04'){
		$('#searchMtype').val('-04').prop('selected',true);
	}else if($('#mon').val() == '-05'){
		$('#searchMtype').val('-05').prop('selected',true);
	}else if($('#mon').val() == '-06'){
		$('#searchMtype').val('-06').prop('selected',true);
	}else if($('#mon').val() == '-07'){
		$('#searchMtype').val('-07').prop('selected',true);
	}else if($('#mon').val() == '-08'){
		$('#searchMtype').val('-08').prop('selected',true);
	}else if($('#mon').val() == '-09'){
		$('#searchMtype').val('-09').prop('selected',true);
	}else if($('#mon').val() == '-10'){
		$('#searchMtype').val('-10').prop('selected',true);
	}else if($('#mon').val() == '-11'){
		$('#searchMtype').val('-11').prop('selected',true);
	}else if($('#mon').val() == '-12'){
		$('#searchMtype').val('-12').prop('selected',true);
	}

});
</script>
</body>
</html>