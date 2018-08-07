<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
 <html>
<!-- Mirrored from www.vingle.net/users/sign_up/email by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Aug 2018 19:30:58 GMT -->
<head>
<meta charset="utf-8">
<title data-react-helmet="true">이메일로 가입하기 | SellPie</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css">
* {
  font-family: "Noto Sans KR", "Noto Sans", Helvetica, Arial, "Malgun Gothic", sans-serif; }

#sellpie-web {
  height: 100%;
  min-height: 100%; }
  #sellpie-web > div {
    height: 100%;
    min-height: 100%; }

img[data-role^="brochure"] {
  cursor: -webkit-zoom-in;
  cursor: zoom-in; }\
button:focus {
  outline: 0; }

button::-moz-focus-inner {
  border: 0; }

input[type="number"]::-webkit-inner-spin-button, input[type="number"]::-webkit-outer-spin-button {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  margin: 0; }


.clearfix:after {
  clear: both; }

.root__rootWrapper__1So {
  position: relative;
  height: 100%;
  min-height: 100%; }\

.solidButton__buttonWrapper__tkE {
  display: inline-block;
  vertical-align: top;
  max-width: 350px; }
  
  .solidButton__buttonWrapper__auNum {
  display: inline-block;
  vertical-align: top;
  max-width: 350px; 
  margin-left:40px;
  }

.solidButton__button__15V, .solidButton__button__auNum {
  height: 55px;
  line-height: 55px;
  border-radius: 100px;
  font-size: 14px;
  color: #fff;
  cursor: pointer;
  text-align: center; }
  .solidButton__button__15V.solidButton__disabled__15i{
    background-color: #aeb8bd;
    opacity: 0.4;
    pointer-events: none;
    cursor: not-allowed; }
    .solidButton__button__auNum.solidButton__disabled__15i{
    	background-color: #aeb8bd;
    opacity: 0.4;
    pointer-events: none;
    cursor: not-allowed; 
    }
    

.solidButton__gray__3Zy {
  background-color: #aeb8bd; }
  .solidButton__gray__3Zy:hover {
    background-color: #869197; }
  .solidButton__gray__3Zy:active {
    background-color: #59646a; }

.solidButton__blue__3Ui {
  background-color: #1cbcd7; }
  .solidButton__blue__3Ui:active {
    background-color: #008095; }

.solidButton__red__3k6 {
  background-color: #fb2942; }
  .solidButton__red__3k6:hover {
    background-color: #d52238; }
  .solidButton__red__3k6:active {
    background-color: #ad1326; }

.imageBrochure__brochureWrapper__LYY {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: #fafafa;
  z-index: 99999;
  visibility: hidden; }
  .imageBrochure__brochureWrapper__LYY.imageBrochure__show__2Ah {
    visibility: visible; }



.signUpDetail__rootWrapper__1D9 {
  height: 100%; }

.signUpDetail__bodyContainer__vop {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  height: calc(100% - 70px); }


.signupNavbar__navWrapper__186 {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  height: 70px;
  padding: 0 70px;
  border-bottom: 1px solid #e9eef0;
  background-color: #fff;
  z-index: 500; }

.signupNavbar__titleWrapper__4Iq {
  font-size: 16px;
  height: 26px;
  line-height: 34px;
  text-align: left;
  color: #fb2942; }

.signupNavbar__vingleLogo__3Ob {
  display: inline-block;
  vertical-align: top;
  margin-top: 3px;
  width: 70px;
  height: 26px; }
  .signupNavbar__vingleLogo__3Ob img {
    padding-left:10px;
    height: 26px; }

.signupNavbar__vingleLogo__3Ob + span {
  margin-left: 2px; }

span + .signupNavbar__vingleLogo__3Ob {
  margin-left: 2px; }

.signUpBody__content__1PG {
  width: 460px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center; }

    
  .signUpBody__content__1PG .signUpBody__formInput__1yh {
    width: 100%; }
    .signUpBody__content__1PG .signUpBody__formInput__1yh:nth-child(1) {
      margin-bottom: 12px; }
  .signUpBody__content__1PG .signUpBody__btnSignUp__Y5M {
    width: 156px;
    height: 55px;
    margin-top: 30px;
    margin-bottom: 22px;
    border: solid 1px #1cbcd7;
    color: #1cbcd7; }
  .signUpBody__content__1PG .signUpBody__nextButton__wU3 {
    width: 150px;
    height: 55px;
    border-radius: 100px;
    margin-top: 30px;
    border: solid 1px #394247;
    color: #394247; }
    
    .signUpBody__nextButton__auNum{
    width: 150px;
    height: 55px;
    border-radius: 100px;
    border: solid 1px #394247;
    color: #394247; 
    }


.signUpBody__emailHeader__TiN {
  margin-bottom: 70px; }

.signUpBody__emailUsernameHeader__3IY {
  margin-bottom: 55px; }

.signUpBody__facebookHeader__1ii {
  margin-bottom: 34px; }

.signUpBody__facebookUsernameHeader__2ug {
  margin-bottom: 25px; }


.titleWithVerify__head__3gv .titleWithVerify__title__1ix {
  height: 58px;
  font-size: 48px;
  font-weight: 200;
  line-height: 1.21;
  text-align: center;
  color: #1f2629; }

.titleWithVerify__head__3gv .titleWithVerify__verify__278 {
  margin-top: 16px;
  font-size: 16px;
  line-height: 1.62;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  color: #1cbcd7; }
  .titleWithVerify__head__3gv .titleWithVerify__verify__278 svg {
    margin-right: 6px;
    width: 18px;
    height: 26px; }
/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
.solidReasonInput__failedWrapper__2fu {
    background-color: #ffe6e9;
    border: solid 1px #f82d47;
}

.solidReasonInput__wrapper__28f {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  position: relative;
  width: 100%;
  height: 55px;
  border-radius: 6px;
  border: 1px solid #aeb8bd; }
  
  .solidReasonInput__wrapper__auNum{
  	display: -webkit-box;
  display: -ms-flexbox;
  display: inline-block;
  position: relative;
  width: 50%;
  height: 55px;
  border-radius: 6px;
  border: 1px solid #aeb8bd;
  margin-left:14px;
  }
  .solidReasonInput__wrapper__28f:hover, .solidReasonInput__wrapper__28f:active, .solidReasonInput__wrapper__28f:focus {
    border: solid 1px #394247; }

.solidReasonInput__textInput__ZZr {
  width: 100%;
  height: 100%;
  font-size: 14px;
  font-weight: 300;
  border-radius: 6px;
  padding-left: 20px;
  outline: none;
  border: none; }
  .solidReasonInput__textInput__auNum{
  	width: 100%;
  	height: 100%;
  	font-size: 14px;
  	font-weight: 300;
 	 border-radius: 6px;
  	padding-left: 20px;
  	outline: none;
  	border: none;
  	display:inline-block;
  }
  
  .solidReasonInput__textInput__ZZr::-webkit-input-placeholder {
    color: #aeb8bd; }

#logo_img{
	display:inline-block;
}
.solidReasonInput__rightItemsWrapper__Email, .solidReasonInput__rightItemsWrapper__Pwd, .solidReasonInput__rightItemsWrapper__AuNum {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    height: 100%;
    right: 10px;
    position: absolute;
}
.solidReasonInput__rightItemsWrapper__Email span, .solidReasonInput__rightItemsWrapper__Pwd span {
    height: 20px;
    font-size: 10px;
    line-height: 2;
    text-align: right;
    margin-right: 6px;
    color: #fb2942;
}
#loading {
 width: 100%;  
 height: 100%;  
 top: 0px;
 left: 0px;
 position: fixed;  
 display: none;  
 opacity: 0.7;  
 background-color: #fff;  
 z-index: 99;  
 text-align: center; 
 } 
  
#loading-image {  
 position: absolute;  
 top: 50%;  
 left: 50%; 
 z-index: 100; }
 
 .auNum_wrapper{
    width:100%;
 	display:inline-block;
 	padding-top:30px;
 }
</style>
<script>
	$(function(){
		<c:if test="${not empty sessionScope.user}">
		 location.href="/sellpie/main.do";
		</c:if>
		$(".solidReasonInput__textInput__ZZr").keyup(function(){
			var $msgEmail = $("<div class='solidReasonInput__rightItemsWrapper__Email'><span></span></div>");
			var $msgPwd = $("<div class='solidReasonInput__rightItemsWrapper__Pwd'><span></span></div>");
			
			var regexEmail =/([a-z0-9]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-z-]+\.)+))([a-z]{2,4}|[0-9]{1,3})(\]?)$/;
			var regexPwd =/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
			 
			if($(this).prop("id")=='email'){
				var email = $(this).val();
				var flagEmail = (email != '' && email != 'undefined' && regexEmail.test(email));
				
				
				if(!flagEmail){
					
						$(this).addClass("solidReasonInput__failedWrapper__2fu");
						if($(this).parent().children().length<2){
							$(this).parent().append($msgEmail);
							
						}
						$(".solidReasonInput__rightItemsWrapper__Email").children().css("color", "#fb2942");
						$(".solidReasonInput__rightItemsWrapper__Email").children().text("이메일 형식이 맞지 않습니다.");
						$(".solidButton__button__15V").prop("disabled", true);
					
				 }else{
							$(this).removeClass("solidReasonInput__failedWrapper__2fu");
							$(".solidReasonInput__rightItemsWrapper__Email").children().text("멋지네요!");
							$(".solidReasonInput__rightItemsWrapper__Email").children().css("color", "black");
					
				 }
				
			}else{
				var pwd = $(this).val();
				 var flagPwd = (pwd != '' && pwd != 'undefined' && regexPwd.test(pwd));
				
				 if(!flagPwd){
						$(this).addClass("solidReasonInput__failedWrapper__2fu");
						
						if($(this).parent().children().length<2){
							$(this).parent().append($msgPwd);
						}
						$(".solidReasonInput__rightItemsWrapper__Pwd").children().css("color", "#fb2942");
						$(".solidReasonInput__rightItemsWrapper__Pwd").children().text("특수문자, 영문, 숫자를 포함해야 합니다.");
						$(".solidButton__button__15V").prop("disabled", true);
					
				 }else{
							$(this).removeClass("solidReasonInput__failedWrapper__2fu");
							$(".solidReasonInput__rightItemsWrapper__Pwd").children().text("멋지네요!");
							$(".solidReasonInput__rightItemsWrapper__Pwd").children().css("color", "black");
							
					
				 }
			}
			var emailFinal = $("#email").val();
			var pwdFinal = $("#pwd").val();
			if((emailFinal != '' && emailFinal != 'undefined' && regexEmail.test(emailFinal)) && (pwdFinal != '' && pwdFinal != 'undefined' && regexPwd.test(pwdFinal))){
				$(".solidButton__button__15V").removeClass("solidButton__disabled__15i");
				$(".solidButton__button__15V").prop("disabled", false);
			}else{
				$(".solidButton__button__15V").addClass("solidButton__disabled__15i");
				$(".solidButton__button__15V").prop("disabled", true);
			}
			
			 
		});
		$(".solidButton__button__15V").click(function(){
			// ㄹ로딩 화면?
					console.log($("#email").val());
				$.ajax({
					/* 확인해보니 에러 메세지에서 javax.mail.authenticationfailedexception 534-5.7.14 
					이 부분으로 확인해보시면 동일한 증상으로 문제되는 사람들이 몇몇 있었네요.
					구글계정에 대한 보안수준이 낮은 앱에 접근성을 허용하는 부분에 대한 문제네요.
					https://www.google.com/settings/security/lesssecureapps 
					위 링크로 접속해서 로그인이 안되어있다면 로그인하시고 보안수준이 낮은 앱 설정을 
					사용안함에서 사용으로 적용해보시면 될듯합니다. */
					url : "checkEmail.do",
					data : {email : $("#email").val()},
					type : "get",
					success:function(data){
						console.log(data.result);
						if( data.result == "2" ){
							alert("이미 가입한 이메일 입니다..");
							/* var $auNum_wrapper = $("<div class='auNum_wrapper'></div>");
							 var $solidReasonInput_wrapper = $("<div class='solidReasonInput__wrapper__auNum undefined'></div>");
							 var $auNumInput = $("<input type='text' id='auNum' autofocus='' class='solidReasonInput__textInput__auNum' placeholder='인증번호 6자리를 입력해주세요.' value='''/>");
							 var $solidButton = $("<div class='solidButton__buttonWrapper__auNum'></div>");
							 var $auNumButton = $("<button type='button' class='solidButton__button__auNum  solidButton__disabled__15i signUpBody__nextButton__auNum' disabled style='background-color:rgba(0,0,0,0)'>제출</button>");
							
	 						$solidReasonInput_wrapper.append($auNumInput);
	 						$auNum_wrapper.append($solidReasonInput_wrapper);
	 						$solidButton.append($auNumButton);
							$auNum_wrapper.append($solidButton);
							$(".signUpBody__content__1PG").append($auNum_wrapper); */
							
							
						}else{
							alert("인증 번호를 확인해 주세요!");
							//이벤트 지워야한다..
						 //인증번호 보내기 찾아보기
						 //세션에 이메일 저장..
						 $(".solidButton__button__15V").addClass("solidButton__disabled__15i");
						sessionStorage.setItem("email", $("#email").val());
						sessionStorage.setItem("pwd", $("#pwd").val());
						
						 
						 
						 //div 만들기
						 var $auNum_wrapper = $("<div class='auNum_wrapper'></div>");
						 var $solidReasonInput_wrapper = $("<div class='solidReasonInput__wrapper__auNum undefined'></div>");
						 var $auNumInput = $("<input type='text' id='auNum' autofocus='' class='solidReasonInput__textInput__auNum' placeholder='인증번호 6자리를 입력해주세요.' value='''/>");
						 var $solidButton = $("<div class='solidButton__buttonWrapper__auNum'></div>");
						 var $auNumButton = $("<button type='button' class='solidButton__button__auNum  solidButton__disabled__15i signUpBody__nextButton__auNum' disabled style='background-color:rgba(0,0,0,0)'>제출</button>");
						
 						$solidReasonInput_wrapper.append($auNumInput);
 						$auNum_wrapper.append($solidReasonInput_wrapper);
 						$solidButton.append($auNumButton);
						$auNum_wrapper.append($solidButton);
						$(".signUpBody__content__1PG").append($auNum_wrapper);
						 
							
						}
					},
					beforeSend:function(){
						$('#loading').css('display','block');
				    },
				    complete:function(){
				    	 $('#loading').css('display','none');
				    },
					error:function(e){
						console.log(e);
					}
				});
		});
		$(document).on("keyup","#auNum", function(){
			var auNum = $(this).val();
			var regex=/(^[0-9]{6,6}$)/;
			var flag = (auNum != '' && auNum != 'undefined' && regex.test(auNum));
			var $msgAuNum = $("<div class='solidReasonInput__rightItemsWrapper__AuNum'><span></span></div>");
			
			if(!flag){
				$(this).addClass("solidReasonInput__failedWrapper__2fu");
				
				if($(this).parent().children().length<2){
					$(this).parent().append($msgAuNum);
				}
				$(".solidReasonInput__rightItemsWrapper__AuNum").children().css("color", "#fb2942");
				$(".solidReasonInput__rightItemsWrapper__AuNum").children().text("인증번호를 확인하세요.");
				$(".solidButton__button__auNum").addClass("solidButton__disabled__15i");
				$(".solidButton__button__auNum").prop("disabled", true);
				
			 }else{
					 $(this).removeClass("solidReasonInput__failedWrapper__2fu");
					$(".solidReasonInput__rightItemsWrapper__AuNum").children().text("멋지네요!");
					$(".solidReasonInput__rightItemsWrapper__AuNum").children().css("color", "black");
					$(".solidButton__button__auNum").removeClass("solidButton__disabled__15i");
					$(".solidButton__button__auNum").prop("disabled", false);
					
			 }
		});
		$(document).on("click",".solidButton__button__auNum", function(){
			//이메일 로 확인하고 누를경우 다음페이지로~인증번호 확인 구현 안했음
			location.href="/sellpie/getName.do";
			
		});
	});
</script>
      </head>
      <body>
      	<div id="loading"><img id="loading-image" src="resources/images/join/loading2.gif" /></div>
        <div id="sellpie-web">
          <div data-reactroot=""><div class="root__rootWrapper__1So">
          	<div class="commonView__container__2RU">
          		<div class="signUpDetail__rootWrapper__1D9">
          			<nav class="signupNavbar__navWrapper__186">
         				 <div class="signupNavbar__titleWrapper__4Iq">
          					<span>Welcome to </span>
          					<i class="icons__icon__2cq signupNavbar__vingleLogo__3Ob">
    							<img id="logo_img" src="resources/images/join/logo_sellpie2.png"/>
    						</i>
    					</div>
    				</nav>
    				<div class="signUpDetail__bodyContainer__vop">
    					<div class="signUpBody__emailBodyWrapper__20z">
    					    <div class="signUpBody__emailHeader__TiN">
    							<div class="titleWithVerify__head__3gv">
    								<div class="titleWithVerify__title__1ix">이메일로 회원가입</div>
    						   </div>
    						</div>
    						<div class="signUpBody__content__1PG"> <!--  form -> div  -->
    							<div class="signUpBody__formInput__1yh">
    								<div class="solidReasonInput__wrapper__28f undefined " >
    									<input type="text" id="email" autofocus="" class="solidReasonInput__textInput__ZZr " placeholder="이메일 주소를 입력해주세요. (sellpie@sellpie.net)" value=""  autocomplete="off"/>
    								</div>
    							</div>
    						<div class="signUpBody__formInput__1yh">
    							<div class="solidReasonInput__wrapper__28f undefined " >
    								<input type="password"  id="pwd" class="solidReasonInput__textInput__ZZr " placeholder="비밀번호를 입력해주세요." value=""/>
    							</div>
    						</div>
    						<div class="solidButton__buttonWrapper__tkE">
    							<button type="button" class="solidButton__button__15V  solidButton__disabled__15i signUpBody__nextButton__wU3" disabled style="background-color:rgba(0,0,0,0)">Next</button>
    						</div>
    						</div> <!-- button end (form) -->
    					</div>
    				</div>
    				</div>
    		</div>
    	</div>
    </div>
  </div> <!-- sellpie-web end -->
    
<!-- Mirrored from www.vingle.net/users/sign_up/email by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Aug 2018 19:30:58 GMT -->
</html>
  