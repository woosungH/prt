<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">


  <div id="header">
	<a href="/" id="title"><h1 id="gradtext">URMS</h1></a>
		 <div id="namebox">
		 	<ul>${ sessionScope.login.user_nm } 님, 환영합니다!</ul>
		 	<br />
		 	<a href="/userMod?user_Id=${sessionScope.login.user_id}">회원정보 관리</a>
		 	<b><font color="gray">｜</font></b>
			<a href="/logout">로그아웃</a>
		</div>
  </div>

  <nav role="navigation" id="nav">
	  <ul id="main-menu">
	    <li>
		 <a href="/">Home</a>
	    </li>   
	    <li>
		 <a href="/reqList">요청 목록</a>
	    </li>
	     <li>
		 <a href="#">요청 등록</a>
	    </li>
	    <li>
		 <a href="/codeManage">시스템관리</a> <!-- 메뉴 마우스 오버 시 하단으로 세부 메뉴 나오게 설정 -->
	    </li>
	  </ul>
   </nav>