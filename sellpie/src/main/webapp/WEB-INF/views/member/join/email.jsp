<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<link href="resources/css/joinCss/joinCss.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>회원가입-이메일</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<style>
.wrap-loading{

  width: 100%;  
 height: 100%;  
 top: 0px;
 left: 0px;
 position: fixed;  
 display: block;  
 opacity: 0.7;  
 background-color: #fff;  
 z-index: 99;  
 text-align: center;

}
.display-none{
	
	display:none;
}
</style>
<script>
	$(function(){
		$("#inputEmail").keyup(function(){
			var email = $(this).val();
			 var regex=/([a-z0-9]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-z-]+\.)+))([a-z]{2,4}|[0-9]{1,3})(\]?)$/;
			var flag = (email != '' && email != 'undefined' && regex.test(email));
			
			 
			if(!flag){
				$(this).css("border", "2px solid red"); 
				$("#confirm").text("이메일은 영어 소문자, 특수기호만 가능합니다.");
				$(".buttonNext1").prop("disabled", true);
				
			 }else{
				 $(this).css("border", "2px solid #ccc"); 
				 $("confirm").css("font-color","red");
					$("#confirm").text("올바른 이메일입니다.");
					$(".buttonNext1").prop("disabled", false);
			 }
			 
		});
		$(".test").hide();
		$(".buttonNext1").click(function(){
			// ㄹ로딩 화면?
				$.ajax({
					url : "checkEmail.do",
					data : {email : $("#inputEmail").val()},
					type : "get",
					success:function(data){
						if(data){
							alert("중복 된 이메일입니다...");
						}else{
							alert("인증 번호를 확인해 주세요!");
						 //인증번호 보내기 찾아보기
						 //세션에 이메일 저장..
						sessionStorage.setItem("email", $("#inputEmail").val());
						console.log(sessionStorage);
						console.log(sessionStorage.getItem("email")); 
						 
						 
						 //div 만들기
						 var $button = $("<button type='button' class='buttonNext2' disabled>></button>")
						 var $input = $("<input type='text' id='auNum' class='auNum' placeholder='인증번호를 입력해주세요' value=''>");
						 var $div = $("<div id='confirmNum'></div>");
						 $(".container").append($input);
						 $(".container").append($button);
						 $(".container").append($div);
						 
							
						}
					},
					beforeSend:function(){
						$('.wrap-loading').removeClass('display-none');
				    },
				    complete:function(){
				    	 $('.wrap-loading').addClass('display-none');
				    },
					error:function(e){
						console.log(e);
					}
				});
		});
		$(document).on("keyup",".auNum", function(){
			var auNum = $(this).val();
			var regex=/(^[0-9]{6,6}$)/;
			var flag = (auNum != '' && auNum != 'undefined' && regex.test(auNum));
			
			if(!flag){
				$(this).css("border", "2px solid red"); 
				$("#confirmNum").text("6자리 인증번호를 입력해주세요");
				$(".buttonNext2").prop("disabled", true);
				
			 }else{
				 $(this).css("border", "2px solid #ccc"); 
				 $("confirm").css("font-color","red");
					$("#confirmNum").text("멋지네요!");
					$(".buttonNext2").prop("disabled", false);
			 }
		});
		$(document).on("click",".buttonNext2", function(){
			//이메일 로 확인하고 누를경우 다음페이지로~인증번호 확인 구현 안했음
			location.href="/sellpie/getPwd.do";
			
		});
	});
	function sendEmail(email){
		//??
	}
</script>
</head>
<body>
	<div class="wrap-loading display-none">
		 <div><img src="resources/images/join/loading2.gif" /></div>
	</div>
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
    <div class="formTitle">이메일로 회원가입</div>
    <div class="container">
    <img src="resources/images/mainImg/sample9.png" />
    <form class="inputForm">
    	<div class="emailWrapper">
    		<input type="text" id="inputEmail" class="inputSt" placeholder="이메일을 입력해주세요 (sellpie@sellpie.net)" value="">
    		<button type="button" class="buttonNext1" disabled>></button>
    		<div id="confirm"></div>
   		</div>
    </form>
    </div>
    </div>
    <button class="test">Hover me !</button>
</body>
</html>