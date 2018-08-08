<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래 이건 리스트야</title>
</head>
<body>
	<c:forEach var="seller" items="${sellerList}">
		판매자 번호 : ${seller.sno} <br>
	</c:forEach>
</body>
</html>