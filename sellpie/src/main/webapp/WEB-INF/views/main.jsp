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
	.fileLInk>img{
		cursor:pointer;
	}
</style>
<!-- header에 jquery-min 선언 되있음 -->
<c:import url="header.jsp"/>

</head>
<body>

<div class="wrap">
	<div class="left side">
		<div class="profile" style="height:200px; margin-top:100px;">프로필 이미지</div>
		<p>회원 이름</p>
		<button>개인정보수정</button><br><br>
		<button>친구리스트</button>
	</div>
	
	<div class="center">
		<div class="boardForm">
			<form>
				<textarea rows="5" cols="72" placeholder="게시물을 올려보세요."></textarea>
				<div class="uploadImg">
<!-- 					업로드한 이미지 표시 영역 사진 선택시 표시 하기 위함.-->
				</div>
				<div class="fileLInk">
					<img src="resources/images/picture.JPG" width="30" height="30" onclick="pictureFile.click()"/>
					<input type="file" name="pictureFile" id="inputFile" onchange="fileUpload();" accept="image/*" hidden/>
					<img src="resources/images/video.JPG" width="30" height="30" onclick="videoFile.click()"/>
					<input type="file" name="videoFile" id="inputFile" onchange="fileUpload();" accept="video/*" hidden/>
				</div>
			</form>
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