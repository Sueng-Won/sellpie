<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<link href="resources/css/joinCss/joinCss.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>이름</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
		$("#inputName").keyup(function(){
			var name = $(this).val();
			 var regex= /^[가-힣]{2,4}$/;
			 var flag = (name != '' && name != 'undefined' && regex.test(name));
			
			 
			if(!flag){
				$(this).css("border", "2px solid red"); 
				$("#confirm").text("한글만 입력가능해요");
				$(".buttonNext1").prop("disabled", true);
				
			 }else{
				 $(this).css("border", "2px solid #ccc"); 
				 $("confirm").css("font-color","red");
					$("#confirm").text("멋지네요!");
					$(".buttonNext1").prop("disabled", false);
			 }
			 
		});
		$(".buttonNext1").click(function(){
			$(".joinWrapper").remove();
			var $p = $("<p>아이고..</p>")
			$("body").append($p);
			
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
    <div class="formTitle">이름을 입력해주세요</div>
    <div class="container">
    <img src="resources/images/mainImg/sample9.png" />
    <form class="inputForm">
    	<div class="pwdWrapper">
    		<input type="text" id="inputName" class="inputSt" placeholder="이름을 입력해주세요" value="">
    		<button type="button" class="buttonNext1" disabled>></button>
    		<div id="confirm"></div>
   		</div>
    </form>
    </div>
    </div>
</body>
</html>