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
			sessionStorage.setItem("name", $("#inputName").val());
			console.log(sessionStorage);
			console.log(sessionStorage.getItem("name")); 
			$(".joinWrapper").remove();
			var $h1 = $("<h1>아이고..</h1>");
			var $h4 = $("<h4>간단한 정보 부탁드려요~</h4>");
			$("body").append($h1);
			$("body").append($h4);
			var contentDiv = $("<div class='content'>");
			var welcomeTextDiv = $("<div class='welcomeText'>");
			var welcomeDiv = $("<div class='welcome'>");
			var greetH1 = $("<h1 class='greet'>");
			greetH1.text("반갑습니다!");
			var subTextDiv = $("<div class='subText'>");
			var subTextsDiv = $("<div class='subTexts'>");
			var p1 = $("<p class='inform'>");
			var p2 = $("<p class='user'>");
			p1.text("간단한 정보입력 부탁드려요");
			p2.text("반가워요"+console.log(sessionStorage.getItem("name"))+"님" );
			
			welcomeDiv.append(greetH1);
			welcomeTextDiv.append(welcomeDiv);
			subTextsDiv.append(p1);
			subTextsDiv.append(p2);
			subTextDiv.append(subTextsDiv);
			welcomeDiv.append(subTextDiv);
			contentDiv.append(welcomeTextDiv);
			$("body").append(welcomeTextDiv);
			
			
			
			 /* setTimeout(function(){ location.href="/sellpie/getGender.do" }, 3000); */
		});
		
	});
	</script>
</head>
<body>
<div class="content">
			  <div class="welcomeText">
			    <div class="welcome">
			      <h1 class="greet">WELCOME</h1>
			    </div>
			    <div class="subText">
			      <div class="subTexts">
			        <p class="inform">Subscribe to our newsletter</p>
			        <p class="soon">We are launching soon</p>
			       </div>
			    </div>
			  </div>
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