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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
  line-height: 50px;
  text-align: left;
  color: #fb2942; }

.signupNavbar__vingleLogo__3Ob {
  display: inline-block;
  vertical-align: top;
  margin-top: 3px;
  width: 70px;
  height: 26px; }
  .signupNavbar__vingleLogo__3Ob img {
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
		location.href="/sellpie/signIn.do";
		</c:if>
		console.log(sessionStorage.getItem("userEmail"));
		$("#email").val(sessionStorage.getItem("userEmail"));
		$(".solidReasonInput__textInput__ZZr").keyup(function(){
			var $msgPwd = $("<div class='solidReasonInput__rightItemsWrapper__Pwd'><span></span></div>");
			var regexPwd =/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
			
			 
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
			
			var pwdFinal = $("#pwd").val();
			if((pwdFinal != '' && pwdFinal != 'undefined' && regexPwd.test(pwdFinal))){
				$(".solidButton__button__15V").removeClass("solidButton__disabled__15i");
				$(".solidButton__button__15V").prop("disabled", false);
			}else{
				$(".solidButton__button__15V").addClass("solidButton__disabled__15i");
				$(".solidButton__button__15V").prop("disabled", true);
			}
			
			 
		});
		$(".solidButton__button__15V").click(function(){
			
		});
	});
</script>
      </head>
      <body>
      	<div id="loading">
      		<img id="loading-image" src="resources/images/join/loading2.gif" />
      	</div>
        <div id="sellpie-web">
          <div data-reactroot=""><div class="root__rootWrapper__1So">
          	<div class="commonView__container__2RU">
          		<div class="signUpDetail__rootWrapper__1D9">
          			<nav class="signupNavbar__navWrapper__186">
         				 <div class="signupNavbar__titleWrapper__4Iq">
          					<span>Welcome to </span>
          					<i class="icons__icon__2cq signupNavbar__vingleLogo__3Ob">
    							<img style="width:120px; height:30px;"src="resources/images/join/logo_sellpie.png"/>
    						</i>
    					</div>
    				</nav>
    				<div class="signUpDetail__bodyContainer__vop">
    					<div class="signUpBody__emailBodyWrapper__20z">
    					    <div class="signUpBody__emailHeader__TiN">
    							<div class="titleWithVerify__head__3gv">
    								<div class="titleWithVerify__title__1ix">비밀번호 재설정</div>
    						   </div>
    						</div>
    						<form class="signUpBody__content__1PG" action="/sellpie/updateUserPwd.do" method="post"> <!--  form -> div  -->
    						<input type="hidden" id="email" name="email"/>
    						<div class="signUpBody__formInput__1yh">
    							<div class="solidReasonInput__wrapper__28f undefined " >
    								<input type="password"  id="pwd" name="pwd" class="solidReasonInput__textInput__ZZr " placeholder="비밀번호를 입력해주세요." value=""/>
    							</div>
    						</div>
    						<div class="solidButton__buttonWrapper__tkE">
    							<button type="submit" class="solidButton__button__15V  solidButton__disabled__15i signUpBody__nextButton__wU3" disabled style="background-color:rgba(0,0,0,0)">변경</button>
    						</div>
    						</form> <!-- button end (form) -->
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
  </div> <!-- sellpie-web end -->
    
<!-- Mirrored from www.vingle.net/users/sign_up/email by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Aug 2018 19:30:58 GMT -->
</html>
  