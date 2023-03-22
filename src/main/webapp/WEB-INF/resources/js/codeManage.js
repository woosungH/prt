/**
* 제작자 : 황우성
* 제작일 : 2023-03-16
*/

var size = $('.code_nm').val();
var code_use = new Array();
for(i=1; i<=size; i++){
	code_use[i] = $('#code_use'+i).val();
	if (code_use[i] === "Y") {
		$('#use_select'+i).val('Y').prop("selected",true);
	} else {
		$('#use_select'+i).val('N').prop("selected",true);
	}
}

function code_edit() {

	var chkArray = new Array();
	
    var checkbox = $("input[name=code_check]:checked");
    var user_nm = "${ sessionScope.login.user_nm }";
    
    checkbox.each(function(i){
    	
        var tr = checkbox.parent().parent().eq(i);
        var td = tr.children();
        
        var code_info_type = td.eq(2).text();
        var use_yn = td.eq(4).children().val();

        chkArray.push(code_info_type + " " + use_yn + " " + user_nm);
    });
	
	if(chkArray.length < 1){
		alert("선택한 내용이 없습니다.");
		return;
	}
	$.ajax({
		  url :'/codeEdit',
		  type : 'post',
		  data : {
		  	"chkArray" : chkArray
		  },
		  success: function(data){
		  	alert("코드 수정에 성공했습니다.");
		  	location.reload();
		  }
	});
}

function code_add() {
	
	var trCount = $('#codeList > tbody tr').length + 1; // table 태그에서 tr의 개수를 불러와서 1 추가
	var code_type = $('#code_type').val(); // 코드 유형 불러오기
	var code_info_type = code_type + String.fromCharCode(64+trCount); // ABCD...순서대로 붙이기 위해 아스키 코드를 문자로 변환
	
	var insertTr;
	    insertTr += "<tr id='insertTr'>";
	    insertTr += "<th scope='row'></th>";
	    insertTr += "<td>"+trCount+"</td>";
	    insertTr += "<td>"+code_info_type+"</td>";
	    insertTr += "<td><input type='text' class='form-control' name='code_info_nm' placeholder='코드상세명을 입력하세요.' /></td>";
	    insertTr += "<td><div id='btn_group'>";
	    insertTr += "<button type='button' class='btn btn-outline-primary' onclick='reg()'>등록</button>";
	    insertTr += "<button type='button' class='btn btn-outline-danger' onclick='del(this)'>삭제</button>";
	    insertTr += "</div></td></tr>";
	    
	$('#codeList > tbody').append(insertTr);
	
	$('#button').hide();
}

function del(e) {
	e.closest('tr').remove();
	$('#button').show();
}

function reg() {
	
	var code_info_type = $('#insertTr').children().eq(2).text();
	var code_type = $('#code_type').val();
	var code_info_nm = $('input[name=code_info_nm]').val();
	var user_nm = "${ sessionScope.login.user_nm }";
	
	if(code_info_nm == "" || code_info_nm == null) {
		alert("코드 상세명을 입력하세요");
		return;
	}
	
	var message = "입력하신 내용을 확인하세요.\n\n"+"코드상세명 : " + code_info_nm;
	
	if(window.confirm(message)){
		var codeArray = new Array();
		codeArray.push(code_info_type + " " + code_type +  " " + code_info_nm +  " " + user_nm);
		
		$.ajax({
			  url :'/codeAdd',
			  type : 'post',
			  data : {
			  	"codeArray" : codeArray
			  },
			  success: function(data){
			  	alert("코드 등록에 성공했습니다.");
			  	location.reload();
			  }
		});
	} else {
		return;
	}
}

function search(){
	var code_info_type = $('input[name=code_info_type]').val();
	
	if(code_info_type == "" || code_info_type == null) {
		alert("코드를 입력하세요.");
		return;
	}
	var frm = document.searchForm;
	frm.submit();
}