<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<c:import url="../header.jsp"></c:import>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>계정설정 변경</title>
<style>
	.container{
		margin-top:100px;
	}
	.userInfo_List{
		text-align:right;
	}
	.header{
		margin-top:16px;
	}
	.userInfo{
		display:inline-block;
		margin-left:20px;
		margin-bottom:16px;
	}
	.user{
		display:inline-block;
		margin-top: 55px;
	}
	#userProfile:hover{
		cursor:pointer;
		}
</style>
<script>
 $(function(){
	 $("#userImg").hide();
		$(".userImgArea").click(function(){
			$("#userImg").click();
		});
	$(".userInfo").click(function(){
		location.href="/sellpie/updateUserInfo.do";
	}); 
 });
 function printImage(obj){
		if(obj.files && obj.files[0]){
			var reader = new FileReader();
			var formData = new FormData();
			formData.set("img", obj.files[0]);
			formData.set("email", "${sessionScope.user.email}");
			console.log(formData.get("img"));
			console.log(formData.get("email"));
			reader.onload=function(e){
				$(".userImgArea").attr("src", e.target.result);
				$.ajax({
					url : "/sellpie/userImgUpload.do",
					type : "post",
					data : formData,
					processData : false,
					contentType : false,
					success : function(html) {
		                alert("파일 업로드하였습니다.");
		                
		            },
		            error : function(error) {
		                alert("파일 업로드에 실패하였습니다.");
		                console.log(error);
		                console.log(error.status);
		            }
				});
			}
			reader.readAsDataURL(obj.files[0]); 
		}
	}
</script>
</head>
<body>

	<div class="w3-card container" >
  			<header class="w3-container  header">
  			<img src="resources/images/userImg/${(sessionScope.user.profileImg eq null)?'profile.png':sessionScope.user.profileImg}" id="userProfile" name="userProfile"  class="w3-left w3-circle w3-margin-right rounded-circle userImgArea" style="width:116px; height:116px;">
  					<form id="uploadForm" enctype="multipart/form-data" method="POST" action="/sellpie/userImgUpload.do">
  						<input type="file" id="userImg" name="profileImg" onchange="printImage(this);"/>
  					</form>
  				<h1 class="user"><c:out value="${sessionScope.user.name }"/></h1>
  				  <button class="w3-btn w3-white w3-border w3-border-blue w3-round userInfo">정보 수정</button>
			</header>
			<div class="w3-container userInfo_List">
 				 <h4>친구 :  XX 명</h4>
			</div>
			<hr>
			<div class="w3-container userInfo_board">
 				 <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
                       <img src="resources/images/header/twice2.png" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:60px; height:60px;">
                    <span class="w3-right w3-opacity">32 min</span>
                    <h3> <c:out value="${sessionScope.user.name }"/></h3><br>
                    
                    <hr class="w3-clear">
                    <p>Have you seen this?</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <table id="fileTb" cellspacing="0" align="center" class="w3-margin-bottom">
                        <tr>
                            <td>
                                <img src="resources/images/header/twice2.png" style="width:100%; height:30%;">
                            </td>
                            <td>
                                <img src="resources/images/header/twice2.png" style="width:100%; height:30%;">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="resources/images/header/twice2.png" style="width:100%; height:30%;">
                            </td>
                            <td>
                                <img src="resources/images/header/twice2.png" style="width:100%; height:30%;">
                            </td>
                        </tr>
                    </table>
                    &nbsp;
                    <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i> &nbsp;600</button>
                    <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom" onclick="javascript:location.href="><i class="fa fa-comment"></i> &nbsp;128</button> 
                </div>
			</div>
			</div>

	
</body>
</html>