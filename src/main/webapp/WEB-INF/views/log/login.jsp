<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />
	<style>
		a {text-decoration: none;}
		#gradtext{
			display : inline-block; 
			padding : 10px;
	        background: #55ffaa;
	        background: -webkit-linear-gradient(left, #55ff55, #29ffe8);
	        background:    -moz-linear-gradient(right, #55ff55, #55ffff);
	        background:      -o-linear-gradient(right, #55ff55, #55ffff);
	        background:         linear-gradient(to right, #55ff55, #55ffff);
	        -webkit-background-clip: text;
	                background-clip: text;
	        color: transparent;
	        font-size: 48px;
	        font-weight: bold;
		}
	</style>
</head>
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
                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                    <p class="text-center small">Enter your username & password to login</p>
                  </div>

                  <form action="/loginProcess" method="POST" name="loginForm" class="row g-3 needs-validation">

                    <div class="col-12">
                      <label for="yourUsername" class="form-label">Username</label>
                      <div class="input-group has-validation">
                        <input type="text" name="user_id" class="form-control" id="yourUsername" required>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="user_pw" class="form-control" id="yourPassword" required>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Remember me</label>
                      </div>
                    </div>
                    <div class="col-12" id="btn">
                      <button class="btn btn-primary w-100" onclick="login()">Login</button>
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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		function login() {
			var form = document.loginForm;
						
			if (form.user_id.value == "") {
				alert("아이디를 입력 해야 합니다!");
				form.user_id.focus();//포커스를 Password박스로 이동.
				return;
			}
			if (form.user_pw.value == "") {
				alert("패스워드를 입력 해야 합니다!");
				form.user_pw.focus();//포커스를 Password박스로 이동.
				return;
			}
					
			form.submit();
						
			/* 로그인 실패 시 해당 메시지 나오게 설정 */
			/* var insert;
			if (${msg} != "") {
			insert += "<div class='log_fail'>등록되지 않은 아이디이거나 아이디 또는 비밀번호를 잘못 입력했습니다.</div>"
			documnet.getElementById("btn").before(insert);
			} */
		}
	</script>
</body>
</html>