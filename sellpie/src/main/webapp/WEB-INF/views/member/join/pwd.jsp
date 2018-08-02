<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<link href="resources/css/joinCss/joinCss.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>패스워드</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
		$("#inputPwd").keyup(function(){
			var pwd = $(this).val();
			 var regex=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/
			 var flag = (pwd != '' && pwd != 'undefined' && regex.test(pwd));
			
			 
			if(!flag){
				$(this).css("border", "2px solid red"); 
				$("#confirm").text("비밀번호는8자리이상, 숫자, 문자, 특수문자가 있어야합니다.");
				$(".buttonNext1").prop("disabled", true);
				
			 }else{
				 $(this).css("border", "2px solid #ccc"); 
				 $("confirm").css("font-color","red");
					$("#confirm").text("멋지네요!");
					$(".buttonNext1").prop("disabled", false);
			 }
			 
		});
		$(".buttonNext1").click(function(){
			location.href="/sellpie/getName.do";
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
    <div class="formTitle">비밀번호를 입력해주세요</div>
    <div class="container">
    <img src="resources/images/mainImg/sample9.png" />
    <form class="inputForm">
    	<div class="pwdWrapper">
    		<input type="password" id="inputPwd" class="inputSt" placeholder="비밀번호를 입력해주세요." value="">
    		<button type="button" class="buttonNext1" disabled>></button>
    		<div id="confirm"></div>
   		</div>
    </form>
    </div>
    </div>
</body>
</html>