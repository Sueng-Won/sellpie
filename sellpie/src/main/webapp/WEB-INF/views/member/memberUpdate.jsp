<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<c:import url="../header.jsp"></c:import>
<meta charset="UTF-8">
<title>계정설정 변경</title>
<style>
.container{
	margin-left:auto;
	margin-right:auto;
}
.w3-card{
	height:200px;
	margin-bottom:20px;
}
.userInfo{
	padding-left:15px;
}
.user{
	display:inline-block;
}
</style>
</head>
<body>
	<div class="w3-container container">
	<div class="w3-panel">
  		<p>panel</p>
	</div> 
	<div class="w3-card">
  			<header class="w3-container w3-blue">
  				<h1 class="user">Header</h1>
  				<button class="w3-btn w3-white w3-border w3-border-blue w3-round userInfo">Button</button>
			</header>
		</div>
</div>




	<footer class="w3-container w3-theme-d3 w3-padding-16">
  <h5>Footer</h5>
</footer>

<footer class="w3-container w3-theme-d5">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>
</body>
</html>