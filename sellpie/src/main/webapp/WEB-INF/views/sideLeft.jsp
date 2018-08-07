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

<body>
<div class="profileBar">
	<div class="text-center">
	  <img src="resources/images/mrlee.jpg" class="rounded-circle img-fluid" alt="Placeholder image" style="width:200px; height:200px;">
	</div>
	<div class="text-center">
<strong>memberName</strong>
	</div>
	<br>
	<div class="text-center">
		  <button type="button" class="btn btn-light">Light Button</button>
	</div>
	<div class="text-center">
		<button type="button" class="btn btn-light">Light Button</button>
	</div>
	<div class="text-center">
	  <button type="button" class="btn btn-light" onclick="javascript: location.href = 'sellerForm.do'">판매자등록</button>
	</div>
</div>
</body>
</html>