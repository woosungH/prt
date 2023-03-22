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
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="js/log.js"></script>
</head>
<style>
	#btn_group {
		display : flex;
		justify-content: space-between;
	}
	#btn_group button {
		width : 100px;
		height : 45px;
	}
	#btn_group button:first-child {
		width : 60px;
	}
	#btn_group button:first-child span {
		line-height : 30px;
	}
	#btn_group button:nth-child(2) {
		margin-left : 60px; 
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
                     <button class="btn btn-dark" type="reset">
                     	<span class="material-symbols-outlined">
						restart_alt
						</span>
				     </button>
                      <c:if test="${sessionScope.login.mod_dttm != null}">
	                      <button class="btn btn-primary" type="button" onclick="history.go(-1)">취소</button>
                      </c:if>
                      <button class="btn btn-outline-primary" type="button" onclick="mod()">수정</button>
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
</body>
</html>