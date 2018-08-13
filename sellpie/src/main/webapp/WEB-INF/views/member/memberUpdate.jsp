<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:import url="../header.jsp"></c:import>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>메인페이지</title>
<style>

    #bcontent{
        width:100%;
        height:70px;
        overflow-y: scroll;
    }
    
    #fileTb{
        width:98%;
        height:98%;
    }
    
</style>
<style>
.detail_content {
    position: fixed;
    z-index:3;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.7);
    opacity:0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
}
.detail_content:target {
    opacity:1;
    pointer-events: auto;
}
.detail_content > div {
	position: absolute;
	top: 9%;
	left: 15%;
	width: 890px;
	height: 520px;
	padding: 16px;
	background-color: rgba(0, 0, 0, 0.8);
	overflow: auto;	
}

.detail_content2 {
    position: fixed;
    z-index:3;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.7);
    opacity:0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
}

.detail_content2:target {
    opacity:1;
    pointer-events: auto;
}

.detail_content2 > div {
	position: absolute;
	top: 13%;
	left: 22%;
	width: 800px;
	height: 400px;
	padding: 16px;
	background-color: white;
	overflow: auto;	
}
.form-control{
	width:40%;
}
.photoArea{
	padding-top:20px;
	padding-bottom:25px;
}
.control-label{
	font-size:20px;
	color:#b3c0d3;
}
.w3-theme{
	margin-left:300px;
}
#userImg:hover{
	cursor:pointer;
}
.form-group{
	padding-bottom:20px;
}
</style>
<script>
$(function(){
	$("#userImg_area").hide();
	$("#userImg").click(function(){
		$("#userImg_area").click();
	});
});
function printImage(obj){
	if(obj.files && obj.files[0]){
		var reader = new FileReader();
		reader.onload=function(e){
				$("#userImg").attr("src", e.target.result);
		}
		reader.readAsDataURL(obj.files[0]);
	}
}
</script>
</head>
<body class="w3-theme-l5">

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <!-- End Left Column -->
    
    
    <!-- Middle Column -->
    <div class="w3-col m7" style="margin-left:25%;">
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white" onclick="javascript:location.href='#contentOpen'">
            <div class="w3-container w3-padding">
              <h2 class="w3-opacity">계정 설정</h2>
              <div class="w3-border w3-padding-16"> 
              	<form class="form-horizontal">
              	<div class="form-group photoArea">
              		<label for ="userImg" class="col-sm-2 control-label">내 사진</label>
              		<div class="col-sm-offset-2 col-sm-8">
      					<img src="resources/images/userImg/profile.png" class="img-circle" id="userImg" style="width:100px; height:100px;">
   				   		<input type="file" name="profile_img" id="userImg_area" onchange="printImage(this);"/>
   				   </div>
              	</div>
  				<div class="form-group">
    				<label for="inputEmail" class="col-sm-2 control-label">이메일</label>
    				<div class="col-sm-offset-2 col-sm-8">
      					<p class="form-control-static">유저이메일@유저.com</p>
   					 </div>
  				</div>
  				<div class="form-group">
    				<label for="name" class="col-sm-2 control-label">이름 변경</label>
   				    <div class="col-sm-offset-2 col-sm-8">
      					<input type="text" class="form-control" id="name" placeholder="이름">
   					 </div>
  				</div>
  				<div class="form-group">
    				<label class="col-sm-2 control-label">비밀번호</label>
    				<div class="col-sm-offset-2 col-sm-8">
      					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">비밀번호 변경하기</button>
    				</div>
 				 </div>
  				<div class="form-group">
  					<label class="col-sm-2 control-label">성별</label>
  					<div class="col-sm-offset-2 col-sm-8">
  						<label class="checkbox-inline" for="gender1">
  							<input type="radio" name="gender" id="gender1" value="M"> 남
						</label>
						<label class="checkbox-inline" for="gender2">
  							<input type="radio" name="gender" id="gender2" value="F"> 여
						</label>
  					</div>
  				</div>
			</form>
              </div>
              <button type="button" class="w3-button w3-theme"><i class="fa fa-pencil"></i> &nbsp; 수정</button> 
            </div>
          </div>
        </div>
      </div>
      
    <!-- End Middle Column -->
    </div>
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>

<!-- Footer -->
<footer class="w3-container w3-theme-d3 w3-padding-16">
  <h5>Footer</h5>
</footer>

<footer class="w3-container w3-theme-d5">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>

 <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      ...
    </div>
  </div>
</div>



</body></html>
 