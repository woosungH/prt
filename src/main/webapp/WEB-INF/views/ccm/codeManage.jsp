<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet"href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/common.css" />
	<link rel="stylesheet" href="css/codeManage.css" />
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
</head>
<body>
  <%@ include file="/WEB-INF/include/menus.jsp" %>
  
	<div id="main">
	<h1>공통코드 관리</h1>
	<div id="searchBox">
		<div class="search">
			<form action="/codeSearch" method="post" name="searchForm">
				<label for="code_info_type" class="col-sm-2 col-form-label">코드검색</label>
				<input class="form-control" type="text" name="code_info_type" id="code_info_type" placeholder="코드를 입력하세요." />
				<button class="btn btn-outline-primary" type="button" onclick="search()" >코드검색</button>
			</form>
		</div>
		<div id="searchResultBox">
			<table class="table">
	  	    	<tr>
	  	    		<th>코드유형</th>
	  	    		<th>코드유형명</th>
	  	    		<th>코드유형 상세코드</th>
	  	    		<th>코드유형 상세명</th>
	  	    		<th>사용여부</th>
	  	    	<tr>
	  	    	<c:choose>
	  	    		<c:when test="${fn:length(codeList) ne 0}">
			  	    	<c:forEach items="${codeList}" var="res" >
			  	    		<tr>
			  	    			<td><c:out value="${res.code_type}" /></td>
			  	    			<td><c:out value="${res.code_nm}" /></td>
			  	    			<td><c:out value="${res.code_info_type}" /></td>
			  	    			<td><c:out value="${res.code_info_nm}" /></td>
			  	    			<td><c:out value="${res.use_yn}" /></td>
			  	    		</tr>
			  	    	</c:forEach>
	  	    		</c:when>
	  	    		<c:otherwise>
	  	    			<tr>
	  	    				<td colspan="5">검색 내용이 존재하지 않습니다.</td>
	  	    			</tr>
	  	    		</c:otherwise>
	  	    	</c:choose>
	  	    </table>
		</div>
	</div>
	<aside id="codeType" class="card">
		<!-- Default Accordion -->
        <div class="card-body" id="code_type_card">
        	<h3 class="card-title">공통코드유형</h3>
          <div>
            <ul>
            <c:choose>
            	<c:when test="${codeTypeList != null}">
	         		<c:forEach items="${codeTypeList}" var="list">
	                	<li>
	                		<a href="http://localhost:8080/codeInfo?type=${list.code_type}">
	                			<c:out value="${list.code_nm}" />
	                		</a>
	                	</li>
		         	</c:forEach>
		         </c:when>
	         </c:choose>
            </ul>
          </div>
        </div><!-- End Default Accordion Example -->
	</aside>
	
	<section>
		<div id="type_info" class="card">
	       <div class="card-body" id="code_type_card">
	       	 <h3 class="card-title">코드 유형 정보</h3>
	         <c:choose>
	         	<c:when test="${codeList != null || voList == null}">
		         <!-- Multi Columns Form -->
		          <form class="row g-3">
		            <div class="col-md-6">
		              <label for="code_type" class="form-label">코드유형</label>
		              <input type="text" class="form-control" id="code_type" readonly />
		            </div>
		            <div class="col-md-6">
		              <label for="code_nm" class="form-label">코드유형명</label>
		              <input type="text" class="form-control" id="code_nm" readonly />
		            </div>
		          </form><!-- End Multi Columns Form -->
	         	</c:when>
	          	<c:when test="${voList != null}">
	         		<c:forEach items="${voList}" var="list" begin="0" end="0">
	                	<form class="row g-3">
				           <div class="col-md-6">
				             <label for="code_type" class="form-label">코드유형</label>
				             <input type="text" class="form-control" id="code_type" value="${ list.code_type }" readonly />
				           </div>
				           <div class="col-md-6">
				             <label for="code_nm" class="form-label">코드유형명</label>
				             <input type="text" class="form-control" id="code_nm" value="${ list.code_nm }" readonly />
				           </div>
				         </form><!-- End Multi Columns Form -->
		         	</c:forEach>
		         </c:when>
	         </c:choose>
	       </div>
	     </div>
	     
	     <div id="code_info" class="card">
	        <div class="card-body">
	          <h3 class="card-title">코드 상세 정보</h3>
	
	          <!-- Default Table -->
	          <table class="table" id="codeList">
	            <thead>
	              <tr>
	              	<th scope="col"></th>
	                <th scope="col">순서</th>
	                <th scope="col">코드상세유형</th>
	                <th scope="col">코드상세명</th>
	                <th scope="col">사용여부</th>
	              </tr>
	            </thead>
	            <tbody>
	            <!-- list 5개만 나오게하고 페이징 처리 -->
	            <c:choose>
	                <c:when test="${codeList == null && voList != null}">
	         	        <c:forEach items="${voList}" var="list"  varStatus="status">
			              <tr>
			                <th scope="row"><input type="checkBox" name="code_check" /></th>
			                <td><c:out value="${status.count}" /></td>
			                <td><c:out value="${list.code_info_type}" /></td>
			                <td><c:out value="${list.code_info_nm}" /></td>
			                <td>
			                	<select id="use_select${status.count}" class="form-select" name="use_yn">
			                		<option value="Y">Y</option>
			                		<option value="N">N</option>
			                	</select>
			                </td>
			              </tr>
				          <input type="hidden" id="code_use${status.count}" value="${list.use_yn}" />
				          <input type="hidden" class="code_nm" value="${num}" />
			            </c:forEach>
	            	</c:when>
	            	<c:otherwise>
	            		<tr class="noneList">
	            			<th scope="row"></th>
			                <td></td>
			                <td></td>
			                <td></td>
			                <td></td>
	            	</c:otherwise>
	            </c:choose>
	            </tbody>
	          </table>
	          <!-- End Default Table Example -->
	          <div id="button">
		          <c:if test="${voList != null}">
			          <button class="btn btn-outline-warning" onclick="code_edit()">코드 수정</button>
			          <button class="btn btn-outline-primary" onclick="code_add()">코드 추가</button>
		          </c:if>
	          </div>
	        </div>
	      </div>
    </section>
    </div>
    <%@ include file="/WEB-INF/include/footer.jsp" %>
<script type="text/javascript" src="js/codeManage.js"></script>
</body>
</html>