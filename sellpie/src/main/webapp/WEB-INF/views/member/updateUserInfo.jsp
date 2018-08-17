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
	.userInfo, .cancel{
		display:inline-block;
		margin-left:20px;
		margin-bottom:16px;
	}
	.user{
		display:inline-block;
	}
</style>
<script>
 $(function(){
	 $(function(){
		 $(".cancel").click(function(){
			location.href="/sellpie/updateMember.do";	 
		 });
	 });
 });
</script>
</head>
<body>
	<div class="w3-card container">
  			<header class="w3-container w3-blue header">
  				<h1 class="user"><c:out value="${sessionScope.user.name }"/></h1>
  				  <button class="w3-btn w3-white w3-border w3-border-blue w3-round userInfo">수정 완료</button>
  				  <button class="w3-btn w3-white w3-border w3-border-red w3-round cancel">취소</button>
			</header>
			<div class="w3-container userInfo_List">
 				 <h4>친구 :  XX 명</h4>
			</div>
			<hr>
			<div class="w3-container userInfo_board">
				 <h1>프로필 사진</h1>
 				 <h1>이메일</h1>
 				 <h1>비밀번호</h1>
 				 <h1>핸드폰 번호</h1>
			</div>
			</div>

</body>
</html>