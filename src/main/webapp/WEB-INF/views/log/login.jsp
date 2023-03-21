<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
	<div id="main">
	<h1 id="gradtext">URMS</h1>
	<h3>URMS시스템</h3>
	<form action="/loginProcess" method="POST">
     
     <table>
     	<tr><td>아이디</td><td> <input type="text" name="user_id" /></td></tr>
     	<tr><td>암호</td><td> <input type="password" name="user_pw"  /></td></tr>
     </table>
     <div>
       <input type="submit" value="로그인" />
     </div>
  	 </form>
	</div>
  </section>
</body>
</html>