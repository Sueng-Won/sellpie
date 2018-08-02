<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<c:import url="../header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 상세 페이지</title>
<style type="text/css">
	div{
		border:1px solid gray;
	}
	.wrap{
		width:1200px;
		height:auto;
		margin-left:auto;
		margin-right:auto;
	}
	.wrap>div{
		float:left;
		height:auto;
		background:white;
	}
	.side{
		width:269px;
		margin:5px;
		padding:30px;
		padding-top:65px;
		position:fixed;
		top:75px;
	}
	.left{
		text-align:center;
		left:130px;
	}
	
	.right{
		text-align:center;
		left:1170px;
	}
	.center{
		width:620px;
		margin:10px;
		position:relative;
		left:280px;
	}
	.boardOne{
		width:600px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
		margin:10px;
	}
	
	.boardForm{
		width:600px;
		height:auto;
		margin-left:auto;
		margin-right:auto;
		margin:10px;
	}
	.fileLink{
		height:34px;
	}
	.fileLInk>img{
		cursor:pointer;
	}
	.uploadFile{
		padding-left:5px;
	}
	.insertBtn{
		width:50px;
		height:30px;
	}
	.sellerBtn{
		margin-top: 10px;
	}
	.sellList{
		border: 0px;
		display: inline;
	}
	.card {
	    width: 250px;
	    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
	    transition: 0.3s;
	    border-radius: 5px;
	    float:left;
	    margin-right: 30px;
	    margin-top: 30px;
	}
	.card:hover {
    	box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
	}
	.container {
    	padding: 2px 16px;
	}
	.sellImg {
		witdh:250px;
		height:250px;
    	border-radius: 5px 5px 0 0;
	}
</style>
</head>
<body>
<div class="wrap">
	<div class="left side">
		<c:import url="../sideLeft.jsp"/>
	</div>
	
	<div class="center">
		<div class="sellerBtn">
			<button>판매 등록</button>
		</div>
		<div class="sellList">
			<div class="card">
  				<img class="sellImg" src="#" alt="Avatar">
  				<div class="container">
    				<h4><b>오늘의 한마디</b></h4> 
    				<p>성미야 나 만으로 25세야</p> 
  				</div>
			</div>
			<div class="card">
  				<img class="sellImg" src="#" alt="Avatar">
  				<div class="container">
    				<h4><b>오늘의 한마디</b></h4> 
    				<p>성미야 나 만으로 25세야</p> 
  				</div>
			</div>
			<br>
			<div class="card">
  				<img class="sellImg" src="#" alt="Avatar">
  				<div class="container">
    				<h4><b>오늘의 한마디</b></h4> 
    				<p>성미야 나 만으로 25세야</p> 
  				</div>
			</div>
			<div class="card">
  				<img class="sellImg" src="#" alt="Avatar">
  				<div class="container">
    				<h4><b>오늘의 한마디</b></h4> 
    				<p>성미야 나 만으로 25세야</p> 
  				</div>
			</div>
		</div>
	</div>
	
	<div class="right side" style="height:600px;">
		<c:import url="../sideRight.jsp"/>
	</div>
	
</div>
</body>
</html>