<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>무제 문서</title>

<style type="text/css">
.searchDiv {
	border: 3px solid black;
	height: 36px;
}
</style>
<link href="resources/css/bootstrap-4.0.0.css" rel="stylesheet" type="text/css">
</head>

<body style="padding-top: 70px">
<nav class="navbar fixed-top navbar-expand-xs navbar-light bg-warning">
	<div style="margin-left: 35px;">
		<a class="navbar-brand" href="#"><em><strong style="font-size: 30px;">Sellfie</strong></em></a>
	</div>
	<nav class="navbar" style="margin-left: 35px;">
		<div class="searchDiv">
			<input type="text" size="60">
		</div>
		<div>
			<img src="resources/images/searchImg.jpg" width="35" height="36" alt=""/>
		</div>
	</nav>
	<div></div><div></div>
</nav>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/bootstrap-4.0.0.js"></script>
</body>
</html>