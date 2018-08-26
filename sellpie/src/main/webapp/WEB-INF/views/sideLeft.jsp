<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>무제 문서</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/popper.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
	.userImgArea{
		cursor:pointer;
	}
	.userInfo{
		margin-left:50px;
	}
</style>
<script>

function frientForm(){
   location.href="friendForm.do";
}
//Accordion
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-theme-d1";
    } else { 
        x.className = x.className.replace("w3-show", "");
        x.previousElementSibling.className = 
        x.previousElementSibling.className.replace(" w3-theme-d1", "");
    }
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
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
						swal("사진 전송완료!", "회원님의 프로필 사진이 없데이트 되었습니다. ", "success");
						setTimeout(function(){ location.href="/sellpie/selectBoardList.do" }, 2000); 
		                
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
<div class="w3-col m3 w3-sidebar" style="width:15%">
      <!-- Profile -->
      <div class="w3-card w3-round w3-white">
        <div class="w3-container">
	         <h4 class="w3-center">My Profile</h4>
	         
        	<c:choose>
        	
        	<c:when test="${!empty sessionScope.user}">
         	 <p class="w3-center"><img src="resources/images/userImg/${(sessionScope.user.profileImg eq null)?'profile.png':sessionScope.user.profileImg}" class="w3-circle userImgArea" style="height:106px;width:106px" alt="Avatar"/></p>
         	 <button class="w3-btn w3-white w3-border w3-border-blue w3-round userInfo">정보 수정</button>
         	 <form id="uploadForm" enctype="multipart/form-data" method="POST" action="/sellpie/userImgUpload.do">
  						<input type="file" id="userImg" name="profileImg" onchange="printImage(this);"/>
  			</form>
         	 <hr>
        	 <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i><c:out value="${sessionScope.user.email}"/></p>
       		 <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> 주 소</p>
        	 <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i><c:out value="${sessionScope.user.age}"/> </p>
         	</c:when>
         	<c:otherwise>
         		<p class="w3-center"><img src="resources/images/header/red1.jpg" class="w3-circle" style="height:106px;width:106px" alt="Avatar"/></p>
         	<hr>
         	<p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Designer, UI</p>
        	<p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> London, UK</p>
            <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> April 1, 1988</p>
         	
         	</c:otherwise>
        	</c:choose>
         	
         	
         
        </div>
      </div>
      <br>
      
      <!-- Accordion -->
      <div class="w3-card w3-round">
        <div class="w3-white">
          <button onclick="myFunction('Demo1')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-circle-o-notch fa-fw w3-margin-right"></i> My Page</button>
          <div id="Demo1" class="w3-hide w3-container">
          </div>
          <button onclick="myFunction('Demo2')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i> My Events</button>
          <div id="Demo2" class="w3-hide w3-container">
            <p>Some other text..</p>
          </div>
          <button onclick="frientForm();" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-users fa-fw w3-margin-right"></i>친구</button>
          <div id="Demo3" class="w3-hide w3-container">
         <div class="w3-row-padding">
         <br>
           <!-- <div class="w3-half">
             <img src="/w3images/lights.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/mountains.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/forest.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/snow.jpg" style="width:100%" class="w3-margin-bottom">
           </div> -->
         </div>
          </div>
        </div>      
      </div>
      <br>
      
      <!-- Interests --> 
      <div class="w3-card w3-round w3-white w3-hide-small">
        <div class="w3-container">
          <p>Interests</p>
          <p>
            <span class="w3-tag w3-small w3-theme-d5">News</span>
            <span class="w3-tag w3-small w3-theme-d4">W3Schools</span>
            <span class="w3-tag w3-small w3-theme-d3">Labels</span>
            <span class="w3-tag w3-small w3-theme-d2">Games</span>
            <span class="w3-tag w3-small w3-theme-d1">Friends</span>
            <span class="w3-tag w3-small w3-theme">Games</span>
            <span class="w3-tag w3-small w3-theme-l1">Friends</span>
            <span class="w3-tag w3-small w3-theme-l2">Food</span>
            <span class="w3-tag w3-small w3-theme-l3">Design</span>
            <span class="w3-tag w3-small w3-theme-l4">Art</span>
            <span class="w3-tag w3-small w3-theme-l5">Photos</span>
          </p>
        </div>
      </div>
      <br>
      
      <!-- Alert Box -->
      <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
          <i class="fa fa-remove"></i>
        </span>
        <p><strong>Hey!</strong></p>
        <p>People are looking at your profile. Find out who.</p>
      </div>
    
    <!-- End Left Column -->
    </div>
<script type="text/javascript">
//판매자 확인 후 마이페이지 버튼추가---------------------------------------------------------------------------
$(function() {
	$.ajax({
        type:"GET",
        dataType : "json",
        url:'sellerCheck.do',
        success:function(data){
        		$('#Demo1').append('<a class="w3-button w3-theme" onclick="purchasePage();">구매이력</a>');
        	if(data == 1){
        		$('#Demo1').append('<a class="w3-button w3-theme" onclick="productForm();">물품등록</a>');
        		$('#Demo1').append('<a class="w3-button w3-theme" onclick="javascript: location.href = '+"'salesList.do'"+'">판매관리</a>');
        	}else if(data == 0){
        		$('#Demo1').append('<a class="w3-button w3-theme" onclick="sellerForm();">판매자등록</a>');
        	}else if(data == 2){
        		$('#Demo1').append('<a class="w3-button w3-theme" disabled>판매자 신청진행중</a>');
        	}
        }
	});
	
});
//이전 경로가 필요할 경우 실행-----------------------------------------------------------------------------
function saveUrl(){
	var pathNames = $(location).attr('pathname').split('/');
	var prams = $(location).attr('search');
	var first = pathNames[1];
	var presentUrl = pathNames[2] + prams;
	console.log(first);
	console.log(presentUrl);
	$.ajax({
		type:"GET",
        dataType : "json",
        data:{url:presentUrl},
        url:'inputUrlToSession.do',
        success:function(data){
        	console.log(data);
        }
	});
	return;
}
//판매등록 페이지이동-------------------------------------------------------------------------------------
function productForm() {
	saveUrl();
	location.href = 'productForm.do';
}

function sellerForm() {
	saveUrl();
	location.href = 'sellerForm.do';
}

function purchasePage(){
	location.href = 'purchaseList.do';
}
</script>
</body>
</html>