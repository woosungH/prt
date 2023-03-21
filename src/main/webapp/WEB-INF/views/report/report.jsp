<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="/img/favicon.ico" />
<link rel="stylesheet" href="/css/common.css" />
<link rel="stylesheet" href="/js/SlickGrid/slick.grid.css" type="text/css"/>
<link rel="stylesheet" href="/js/SlickGrid/css/smoothness/jquery-ui.css" type="text/css"/>
<script src="/js/SlickGrid/lib/firebugx.js"></script>
<script src="/js/SlickGrid/lib/jquery-3.1.0.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sortablejs/Sortable.min.js"></script>
<script src="/js/SlickGrid/slick.core.js"></script>
<script src="/js/SlickGrid/slick.dataview.js"></script>
<script src="/js/SlickGrid/slick.interactions.js"></script>
<script src="/js/SlickGrid/slick.grid.js"></script>
<script src="/js/SlickGrid/plugins/slick.state.js"></script>
<script src="/js/SlickGrid/controls/slick.columnpicker.js"></script>
<script>
$(document).ready(function () {
	// 컬럼
	var columns = [
	    {id: "no", name: "No", field: "no", sortable: true},
	    {id: "sys_info_nm", name: "시스템", field: "sys_info_nm", width:300, sortable: true},
	    {id: "req_type", name: "요청자유형", field: "req_type", width:150, sortable: false},
	    {id: "req_dttm", name: "요청일", field: "req_dttm", width:150, sortable: false},
	    {id: "req_end_dttm", name: "완료희망일", field: "req_end_dttm", width:150, sortable: false},
	    {id: "result_reg_dttm", name: "조치완료일", field: "result_reg_dttm", width:150, sortable: false},
	    {id: "timely", name: "적시요청결과", field: "timely", width:150, sortable: false}
	];
	
	// 옵션
	var options = {
		enableColumnReorder: false,
		multiColumnSort: true
	};
	
	// 데이터(json)
	var data = new Array();
	<c:forEach items="${report}" var="item">
	<c:set var="i" value="${i+1 }"></c:set>
	data.push("${i}");
	data.push("${item.sys_info_nm}");
	data.push("${item.req_type}");
	data.push("${item.req_title}");
	data.push("${item.req_dttm}");
	data.push("${item.req_end_dttm}");
	data.push("${item.result_reg_dttm}");
	data.push("x");
	</c:forEach>
	// SlickGrid 생성
	var grid = new Slick.Grid("#myGrid", data, columns, options);
	
	// 정렬
	grid.onSort.subscribe(function (e, args) {
		
		var cols = args.sortCols;

		data.sort(function (dataRow1, dataRow2) {
			for (var i = 0, l = cols.length; i < l; i++) {
				var field = cols[i].sortCol.field;
				var sign = cols[i].sortAsc ? 1 : -1;
				var value1 = dataRow1[field], value2 = dataRow2[field];
				var result = (value1 == value2 ? 0 : (value1 > value2 ? 1 : -1)) * sign;
				if (result != 0) {
					return result;
				}
			}
			return 0;
		});
		grid.invalidate();
		grid.render();
	});
});

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

</script>
<style>
 body { font-family: 'Nanum Gothic', sans-serif;}
 h2 {text-align : center; padding : 50px 0 0 0;}
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
 caption {
		font-weight : bold;
		text-align : right;
		padding : 10px;
 }
 #board td:nth-of-type(1) {width : 130px; text-align: center;}
 #board td:nth-of-type(2) {width : 130px; }
 #board td:nth-of-type(3) {width : 130px; text-align: center;}
 #board td:nth-of-type(4) {width : 160px; text-align: center;}
 #board td:nth-of-type(5) {width : 130px; text-align: center;}

 #Atitle { text-decoration:none; color:black; }
 #Atitle:hover {color:skyblue;}
 #write {
		text-decoration:none; color:black;
	}
 #write {
    font-family: Arial;
    text-decoration-line: none;
    display:inline-block;
    width: 70px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 0 auto;
	padding : 4px;
    text-align:center;
    border: none;
    background-size: 300% 100%;

    border-radius: 50px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
	background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
	box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
	}
 #write:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
  }
 #write:focus {
    outline: none;
 } 
 #searchBox {
	width : 19%;
	margin : 0 auto; 
	padding : 10px 0 30px 1000px ;
 }
 input[type=submit] {-webkit-appearance:none;
	width: 70px;
	font-size: 17px;
	font-weight: 600;
	color: #fff;
	cursor: pointer;
	margin: 5px;
	height: 30px;
	text-align:center;
	border: none;
	background-size: 300% 100%;
	border-radius: 50px;
	moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
	background-image: linear-gradient(to right, #29323c, #485563, #2b5876, #4e4376);
    box-shadow: 0 4px 15px 0 rgba(45, 54, 65, 0.75);
  }   
  input[type=submit]:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
  }
  input[type=submit]:focus {
    outline: none;
  }
  #popup {
   text-align: center;
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
	<div id="myGrid" style="width:600px;height:500px;"></div>
</body>
</html>