<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/css/joinCss/joinCss.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<style>
.inputSt {
	width:100px;
	padding: 12px 20px; 
	margin: 8px 0; 
	border: 2px solid #ccc; 
	border-radius: 4px;
	box-sizing: border-box;
	padding-top:20px;
	
}
p{
	height: 58px;
    font-size: 48px;
    font-weight: 200;
    line-height: 1.21;
    color: #1f2629;
    display:inline-block;
}

</style>
<script>
	$(function(){
		$("input[name*='phone']").keyup(function(){
			var phoneNum = new Array();
			$("input[name*='phone']").each(function(value, index){
				phoneNum.push($(this).val());
				
			});
			var phoneTest = phoneNum.join('');
			var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
			console.log(regPhone.test(phoneTest));
			if(regPhone.test(phoneTest)){
				$(".buttonNext1").prop("disabled", false);
				//세션에 저장 폰..
				var phoneFinal = phoneNum.join('-');
				sessionStorage.setItem("phone", phoneFinal);
				console.log(sessionStorage);
				console.log(sessionStorage.getItem("phone")); 
				console.log(phoneFinal);
			}
	
			
		});
		$(".buttonNext1").click(function(){
			location.href="/sellpie/birth.do";
		});
	});
</script>
</head>
<body>
	<div class="joinWrapper">
    <div class="formTitle">핸드폰 번호를 입력해주세요</div>
    <div class="container">
    <img src="resources/images/mainImg/sample9.png" />
    <form class="inputForm">
    	<div class="phoneWrapper">
    		<input type="text" id="inputPhone1" name="phone1" class="inputSt"  value=""><p>-</p>
    		<input type="text" id="inputPhone2" name="phone2" class="inputSt"  value=""><p>-</p>
    		<input type="text" id="inputPhone3" name="phone3" class="inputSt"  value="">
    		<button type="button" class="buttonNext1" disabled>></button>
    		<div id="confirm"></div>
   		</div>
    </form>
    </div>
    </div>
</body>
</html>