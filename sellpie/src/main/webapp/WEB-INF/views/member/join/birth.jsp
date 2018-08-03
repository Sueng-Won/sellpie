<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<link href="resources/css/joinCss/joinCss.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<script src="resources/js/jquery-3.3.1.min.js"></script>
<title>태어난 연도</title>
<style>
#birth {
  font-size: 40px;
  padding: 0.5rem 1rem;
  border:none;
  width:200px;
}
</style>
<script>
	$(function(){
		$("#birth").keyup(function(){
			var regExp = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))/;
			var birth = $(this).val();
			if(!regExp.test(birth)){
				$(this).css("border", "2px solid red"); 
				$("#confirm").text("주민번호 앞자리 입력 부탁드려요");
				$(".buttonNext1").prop("disabled", true);
				
			 }else{
				 $(this).css("border", "2px solid #ccc"); 
				 $("confirm").css("font-color","red");
				 $("#confirm").text("멋지네요!");
				 $(".buttonNext1").prop("disabled", false);
			 }
		});
		$(".buttonNext1").click(function(){
			sessionStorage.setItem("birth", $("#birth").val());
			console.log(sessionStorage);
			console.log(sessionStorage.getItem("birth")); 
			
			$("#email").val(sessionStorage.getItem("email"));
			$("#pwd").val(sessionStorage.getItem("pwd"));
			$("#name").val(sessionStorage.getItem("name"));
			$("#gender").val(sessionStorage.getItem("gender"));
			$("#phone").val(sessionStorage.getItem("phone"));
			$("#birth").val(sessionStorage.getItem("birth"));
			 $(".inputForm").submit(); 
		});
	});

</script>
</head>
<body>
	<div class="joinWrapper">
    <div class="formTitle">주민번호 앞자리! 입력부탁드려요</div>
    <div class="container">
    <img src="resources/images/mainImg/sample9.png" />
    <form class="inputForm" action="signUp.do" method="post">
    	<div class="phoneWrapper">
    		<input type="hidden" id="email" name="email" >
    	<input type="hidden" id="pwd" name="pwd" >
    	<input type="hidden" id="name" name="name" >
    	<input type="hidden" id="gender" name="gender" >
    	<input type="hidden" id="phone" name="phone" >
    		<input type="text" id="birth" name="birth" placeholder="000000" class="inputSt" >
    		<button type="button" class="buttonNext1" disabled>></button>
    		<div id="confirm"></div>
   		</div>
    </form>
    </div>
    </div>
</body>
</html>