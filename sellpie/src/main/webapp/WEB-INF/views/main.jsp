<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>메인페이지</title>
<style>
	div{
		border:1px solid gray;
	}
	.wrap{
		width:1000px;
		height:900px;
		margin-left:auto;
		margin-right:auto;
	}
	.wrap>div{
		float:left;
		height:890px; 
	}
	.side{
		width:210px;
		margin:5px;
	}
	.left{
		text-align:center;
	}
	.center{
		width:530px;
		margin:10px;
	}
	.boardOne{
		width:500px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
		margin:10px;
	}
	
	.boardForm{
		width:500px;
		height:120px;
		margin-left:auto;
		margin-right:auto;
		margin:10px;
	}
</style>
</head>
<body>
<c:import url="header.jsp"/>

<div class="wrap">
	<div class="left side">
		<div class="img-div" style="height:200px; margin-top:100px;">프로필 이미지</div>
		<p>회원 이름</p>
		<button>개인정보수정</button><br><br>
		<button>친구리스트</button>
	</div>
	
	<div class="center">
		<div class="boardForm">
			게시물 작성 폼
		</div>
		<div class="boardOne">게시물영역</div>
	</div>
	
	<div class="right side">
		오른쪽 사이드
	</div>
</div>

<c:import url="footer.jsp"/>
</body>
</html>