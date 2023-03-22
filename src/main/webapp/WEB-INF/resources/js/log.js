/**
* 제작자 : 황우성
* 제작일 : 2023-03-22
*/
 

function check_pw(){
    var pw = document.getElementById('pwd').value;
    var SC = ["!","@","#","$","%"];
    var check_SC = 0;

    if(pw.length < 6 || pw.length>16){
        window.alert('6자 이상, 16자 이하를 입력해야합니다.');
        document.getElementById('pwd').value='';
    }
    for(var i=0;i<SC.length;i++){
        if(pw.indexOf(SC[i]) != -1){
            check_SC = 1;
        }
    }
    if(check_SC == 0){
        window.alert('특수문자(!,@,#,$,%)가 존재하지 않습니다.');
        document.getElementById('pwd').value='';
    }
    if(document.getElementById('pwd').value !='' && document.getElementById('check_pwd').value!=''){
        if(document.getElementById('pwd').value==document.getElementById('check_pwd').value){
            document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
            document.getElementById('check').style.color='blue';
        }
        else{
            document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
            document.getElementById('check').style.color='red';
        }
    }
}

function mod() {
	var form = document.userMod_form;
	var pwd = document.getElementById('pwd').value;
	var check_pwd = document.getElementById('check_pwd').value;
	
	if (pwd == "") {
        alert("비밀번호를 입력 해야 합니다!");
        form.user_pw.focus();
        return;
    }
	if (check_pwd == "") {
        alert("비밀번호 확인을 입력 해야 합니다!");
        form.confirm_pw.focus();
        return;
    }
	
	if(pwd != check_pwd) {
		/* form 태그 안에 type이 없는 button태그가 한개만 존재한다면 자동으로 form이 제출되기 때문에 type=button을 설정해야된다. */
		alert("비밀번호가 일치하지 않습니다.\n다시 한번 확인해 주십시오.");
		return;
	} else {
		form.action ="/userMod";
		form.submit();
	}
}