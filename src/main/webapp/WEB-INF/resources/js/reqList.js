/**
* 제작자 : 황우성
* 제작일 : 2023-03-21
*/

 
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
					$('#sys_nm').append("<option value="+sysArr[i]+">"+sysArr[i]+"</option>");
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
					$('#sys_info_nm').append("<option value="+sysInfoArr[i]+">"+sysInfoArr[i]+"</option>");
				}
			}
		}
	});
}