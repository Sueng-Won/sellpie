<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 구매 페이지</title>
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	window.resizeTo("width=500, height=400");
});
</script>
</head>
<body>
	<c:out value="${contract.quantity}"></c:out>
	<c:out value="${contract.pNo}"></c:out>
	<c:out value="${contract.sNo}"></c:out>
	<c:out value="${contract.email}"></c:out>
</body>
</html>