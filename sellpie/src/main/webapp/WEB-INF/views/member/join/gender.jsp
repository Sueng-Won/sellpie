<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<link href="resources/css/joinCss/joinCss.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>패스워드</title>
<style>
.gender_f, .gender_m{
	height: 58px;
    font-size: 48px;
    font-weight: 200;
    line-height: 1.21;
    text-align: center;
    color: #e1e4f2;
    padding-top:80px;
	padding-bottom:20px;
    display: inline-block;
    
	padding-right:70px;
	padding-left:70px;

}
.gender_f:hover, .gender_m:hover{
	color:#1f2629;
	cursor:pointer;
}
</style>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
		
	});
	</script>
</head>
<body>
	<div class="joinWrapper">
    <div class="formTitle">성별을 선택해주세요</div>
    <div class="container">
    <img src="resources/images/mainImg/sample9.png" />
    <form class="inputForm">
    	<div class="pwdWrapper">
    		<p class="gender_m" >남</p>
    		<p class="gender_f">여</p>
    		<div id="confirm"></div>
   		</div>
    </form>
    </div>
    </div>
</body>
</html>