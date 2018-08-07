<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${product.pName} 상세 페이지</title>
</head>
<body>
	<img src="#">
	품명 : <label>${product.pName}</label><br>
	판매 태그 : <label>${product.selTag}</label><br>
	이미지 경로 : <label>${product.rUrl}</label><br>
	<c:if test="${product.isCraft eq 'N'}">
		수량 : <label>${product.pQuantity}</label><br>
	</c:if>
	가격 : <label>${product.price}</label><br>
	상세설명 : <label>${product.pDetail}</label><br>
</body>
</html>