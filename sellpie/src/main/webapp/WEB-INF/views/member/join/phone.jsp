<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta charset="utf-8">
<title>SellPie</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style type="text/css" id="s1956-0">

  html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent; }
  body {
    line-height: 1; }
  

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
</style>
<style type="text/css" id="s2408-0">

.signUpBody__emailBodyWrapper__20z, .signUpBody__emailUsernameBodyWrapper__4PA, .signUpBody__facebookBodyWrapper__3ES, .signUpBody__facebookUsernameBodyWrapper__V_F {
  width: 780px;
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

.signUpBody__spinner__1Mm {
  display: inline-block;
  vertical-align: top;
  margin-top: 3px;
  height: 20px; }
  .signUpBody__spinner__1Mm svg {
    width: 20px;
    height: 20px; }

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
    display:inline-block;}
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

.signUpBody__noti__AS4 {
  margin-bottom: 20px; }
  .signUpBody__noti__AS4 .signUpBody__title__3x- {
    font-size: 24px;
    font-weight: 500;
    line-height: 1.42;
    text-align: center;
    color: #1f2629;
    margin-bottom: 4px; }

.signUpBody__graySmallText__1cY {
  font-size: 14px;
  line-height: 1.71;
  text-align: center;
  color: #869197;
  font-weight: 300; }

.signUpBody__underline__1Hn {
  text-decoration: underline; }

.signUpBody__emailHeader__TiN {
  margin-bottom: 70px; }

.signUpBody__emailUsernameHeader__3IY {
  margin-bottom: 55px; }

.signUpBody__facebookHeader__1ii {
  margin-bottom: 34px; }

.signUpBody__facebookUsernameHeader__2ug {
  margin-bottom: 25px; }

</style>
<style type="text/css" id="s2738-0">

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
   
</style>
<style type="text/css" id="s1656-0">

.solidReasonInput__wrapper__28f {

  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  position: relative;
  width: 100%;
  height: 55px;
  border-radius: 6px;
  border: 1px solid #aeb8bd; }
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
  .solidReasonInput__textInput__ZZr::-webkit-input-placeholder {
    color: #aeb8bd; }
  .solidReasonInput__textInput__ZZr:-ms-input-placeholder {
    color: #aeb8bd; }
  .solidReasonInput__textInput__ZZr::-ms-input-placeholder {
    color: #aeb8bd; }
  .solidReasonInput__textInput__ZZr::placeholder {
    color: #aeb8bd; }

.solidReasonInput__failedInput__3tj {
  background-color: #ffe6e9;
  width: 65%; }

.solidReasonInput__failedWrapper__2fu {
  background-color: #ffe6e9;
  border: solid 1px #f82d47; }

.solidReasonInput__rightItemsWrapper__vDh {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  height: 100%;
  right: 10px;
  position: absolute; }
  .solidReasonInput__rightItemsWrapper__vDh span {
    height: 20px;
    font-size: 10px;
    line-height: 2;
    text-align: right;
    margin-right: 6px;
    color: #fb2942; }
  .solidReasonInput__rightItemsWrapper__vDh .solidReasonInput__ok__Iuk {
    color: #59646a; }
  .solidReasonInput__rightItemsWrapper__vDh svg {
    width: 22px;
    height: 22px; }
</style>
<style type="text/css" id="s1658-0">
.solidButton__buttonWrapper__tkE {
  display: inline-block;
  vertical-align: top;
  max-width: 350px; }

.solidButton__button__15V {
  height: 55px;
  line-height: 55px;
  border-radius: 100px;
  font-size: 14px;
  color: #fff;
  cursor: pointer;
  text-align: center; }
  .solidButton__button__15V.solidButton__disabled__15i {
    background-color: #aeb8bd;
    opacity: 0.4;
    pointer-events: none;
    cursor: not-allowed; }

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
</style>
<script>
	$(function(){
		<c:if test="${not empty sessionScope.user}">
		 location.href="/sellpie/main.do";
		</c:if>
		$("input[id*='phoneNum']").keyup(function(){
			var phoneNum = new Array();
			$("input[id*='phoneNum']").each(function(value, index){
				phoneNum.push($(this).val());
				
			});
			var phoneTest = phoneNum.join('');
			console.log(phoneTest);
			var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
			console.log(regPhone.test(phoneTest));
			if(regPhone.test(phoneTest)){
				$(".solidButton__button__15V").removeClass("solidButton__disabled__15i");
				$(".solidButton__button__15V").prop("disabled", false);
				
				var phoneFinal = phoneNum.join('-');
				sessionStorage.setItem("phone", phoneFinal);
				//세션에 저장 폰..
				
			}else{
				$(".solidButton__button__15V").addClass("solidButton__disabled__15i");
				$(".solidButton__button__15V").prop("disabled", true);
			}
	
			
		});
			$(".solidButton__button__15V").click(function(){
				
				
				$("#email").val(sessionStorage.getItem("email"));
				$("#pwd").val(sessionStorage.getItem("pwd"));
				$("#name").val(sessionStorage.getItem("name"));
				$("#gender").val(sessionStorage.getItem("gender"));
				$("#phone").val(sessionStorage.getItem("phone"));
				$("#birth").val(sessionStorage.getItem("birth"));
			    $(".signUpBody__content__1PG").submit(); 
				console.log(sessionStorage);
			});
	});
</script>
</head>
      <body>
        <div id="vingle-web"><div>
            <div class="root__rootWrapper__1So">
                <div class="commonView__container__2RU">
                    <div class="fadingLayout__fadingLayoutWrapper__DNi">
                        <div class="interest__componentWrapper__IKf">
                            <div class="interest__progress__1qp">
                                <div color="#fb2942" min="0" max="3" mode="determinate" value="3" style="position: relative; height: 1px; display: block; width: 100%; border-radius: 2px; margin: 0px; overflow: hidden;">
                                    <div style="height: 100%; background-color: rgb(251, 41, 66); transition: width 0.3s linear 0ms; width: 100%;">
                                        <div></div>
                                        <div></div>
                                    </div>
                                    
                                </div>
                                
                            </div>
                            <div class="signUpDetail__bodyContainer__vop">
    					<div class="signUpBody__emailBodyWrapper__20z">
    					    <div class="signUpBody__emailHeader__TiN">
    							<div class="titleWithVerify__head__3gv">
    								<div class="titleWithVerify__title__1ix">핸드폰 번호를 입력 해주세요</div>
    						   </div>
    						</div>
    						<form class="signUpBody__content__1PG" action="/sellpie/signUp.do" method="post"> <!--  form -> div  -->
								<input type="hidden" name="email" id="email"/>
								<input type="hidden" name="pwd" id="pwd"/>
								<input type="hidden" name="name" id="name"/>
								<input type="hidden" name="gender" id="gender"/>
								<input type="hidden" name="phone" id="phone"/>
								<input type="hidden" name="birth" id="birth"/>
    							<div class="signUpBody__formInput__1yh">
    								<div class="solidReasonInput__wrapper__28f undefined " >
    									<input type="text" id="phoneNum1" class="solidReasonInput__textInput__ZZr " value=""  autocomplete="off"/>
    								</div>
    								<div class="solidReasonInput__wrapper__28f undefined " >
    									<input type="text" id="phoneNum2" class="solidReasonInput__textInput__ZZr " value=""  autocomplete="off"/>
    								</div>
    								<div class="solidReasonInput__wrapper__28f undefined " >
    									<input type="text" id="phoneNum3" class="solidReasonInput__textInput__ZZr " value=""  autocomplete="off"/>
    								</div>
    							</div>
    						<div class="solidButton__buttonWrapper__tkE">
    							<button type="button" class="solidButton__button__15V  solidButton__disabled__15i signUpBody__nextButton__wU3" disabled style="background-color:rgba(0,0,0,0)">Next</button>
    						</div>
    						</form> <!-- button end (form) -->
    					</div>
    				</div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
</body>
</html>