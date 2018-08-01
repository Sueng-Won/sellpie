<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<link href="resources/css/joinCss/joinCss.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>회원가입-이메일</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
		$("#inputEmail").keyup(function(){
			var email = $(this).val();
			 var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
			var flag = (email != '' && email != 'undefined' && regex.test(email));
			
			 
			if(!flag){
				$(this).css("border", "2px solid red"); 
				$("#confirm").text("이메일을 정확히 입력해 주셍.");
				$(".buttonNext").prop("disabled", true);
				
			 }else{
				 $(this).css("border", "2px solid #ccc"); 
				 $("confirm").css("font-color","red");
					$("#confirm").text("올바른 이메일입니다.");
					$(".buttonNext").prop("disabled", false);
			 }
			 
		});
		$(".test").hide();
		$(".buttonNext").click(function(){
			alert("dfdf?");
		});
	});
</script>
</head>
<body>
	<div class="joinWrapper">
		<div class="nav">
       	  <div class="navStyle V5UBK"></div>
      	   <div class="navInner">
       	     <a class="titleSt"  href="#" role="alert">
          	     <section class="title">
              	    <p class="homeTitle">#Sellfie</p>
             	     <p class="subTitle">홈페이지 방문을 환영합니다</p>
            	   </section>
         	   </a>
        	 </div>
      	</div>
    <div class="emailTitle">이메일로 회원가입</div>
    <div class="container">
    <img src="resources/images/mainImg/sample9.png" />
    <form class="emailForm">
    	<div class="emailWrapper">
    		<input type="text" id="inputEmail" class="inputEmail" placeholder="이메일을 입력해주세요 (vingle@vingle.net)" value="">
    		<button type="button" class="buttonNext" disabled>></button>
    		<div id="confirm"></div>
   		</div>
    </form>
    </div>
    </div>
    <button class="test">Hover me !</button>
</body>
</html>