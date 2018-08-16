<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<c:import url="../header.jsp"></c:import>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>계정설정 변경</title>
<style>
	.container{
		margin-top:100px;
	}
	.userInfo_List{
		text-align:right;
	}
	.header{
		margin-top:16px;
	}
	.userInfo{
		display:inline-block;
	}
</style>
</head>
<body>
	<div class="w3-card container">
  			<header class="w3-container w3-blue header">
  				<h1 class="user">김모씨</h1>
  				  <button class="w3-btn w3-white w3-border w3-border-blue w3-round userInfo">정보 수정</button>
			</header>
			<div class="w3-container userInfo_List">
 				 <h4>친구 :  XX 명</h4>
			</div>
			<div class="w3-container userInfo_board">
 				 <h1>사진1</h1><h1>사진1</h1><h1>사진1</h1><h1>사진1</h1><h1>사진1</h1><h1>사진1</h1>
			</div>
			</div>

	
</body>
</html>