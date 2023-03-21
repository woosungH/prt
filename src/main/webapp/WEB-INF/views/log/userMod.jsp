<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet"href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/common.css" />
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
</head>
<style>
	#btn_group {
		display : flex;
		justify-content : space-between;
	}
</style>
<body>
	<div id="main">
  	  <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
        		<a href="/" id="title" class="logo d-flex align-items-center w-auto">
			  		<span id="gradtext">URMS</span>
			  	</a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">회원정보 수정</h5>
                    <p class="text-center small">안전한 보안 관리를 위하여 패스워드를 다시 설정해주세요</p>
                  </div>

                  <form method="POST" name="userMod_form" class="row g-3 needs-validation">
                    <div class="col-12">
                      <label for="yourUsername" class="form-label">Username</label>
                      <div class="input-group has-validation">
                        <input type="text" class="form-control" id="yourUsername" value="${sessionScope.login.user_id}" readonly>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="user_pw" class="form-control" id="pwd" onchange="check_pw()" required>
                    </div>
                    <div class="col-12">
                      <label for="ConfirmPassword" class="form-label">Confirm Password</label>
                      <input type="password" name="confirm_pw" class="form-control" id="check_pwd" onchange="check_pw()" required>
                      <span id="check"></span>
                    </div>

                    <div class="col-12" id="btn_group">
                      <button class="btn btn-dark w-30" type="reset">초기화</button>
                      <button class="btn btn-primary w-50" type="button" onclick="mod()">수정</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    </div>
    <script>
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
	            window.alert('특수문자(!,@,#,$,%)가 존재하지 않습니다.')
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
		        alert("패스워드를 입력 해야 합니다!");
		        form.user_pw.focus();
		        return;
		    }
			if (check_pwd == "") {
		        alert("패스워드확인을 입력 해야 합니다!");
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
    </script>
</body>
</html>