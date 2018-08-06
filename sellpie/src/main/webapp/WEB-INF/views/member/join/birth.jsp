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
<style type="text/css">
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

<style type="text/css" id="s1956-0">
 {
  }
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
</style>
<style type="text/css" id="s2743-0">
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

.signUpBody__usernameForm__3OT {
  width: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center; }
</style>
<style type="text/css" id="s2738-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes titleWithVerify__bounceIn__3aD {
  from, 20%, 40%, 60%, 80%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1); }
  0% {
    opacity: 0;
    -webkit-transform: scale3d(0.3, 0.3, 0.3);
            transform: scale3d(0.3, 0.3, 0.3); }
  20% {
    -webkit-transform: scale3d(1.5, 1.5, 1.5);
            transform: scale3d(1.5, 1.5, 1.5); }
  40% {
    -webkit-transform: scale3d(0.9, 0.9, 0.9);
            transform: scale3d(0.9, 0.9, 0.9); }
  60% {
    opacity: 1;
    -webkit-transform: scale3d(1.03, 1.03, 1.03);
            transform: scale3d(1.03, 1.03, 1.03); }
  80% {
    -webkit-transform: scale3d(0.97, 0.97, 0.97);
            transform: scale3d(0.97, 0.97, 0.97); }
  to {
    opacity: 1;
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1); } }


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
</style>
<style type="text/css" id="s1656-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */

@keyframes solidReasonInput__bounceIn__Mlb {
  from, 20%, 40%, 60%, 80%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1); }
  0% {
    opacity: 0;
    -webkit-transform: scale3d(0.3, 0.3, 0.3);
            transform: scale3d(0.3, 0.3, 0.3); }
  20% {
    -webkit-transform: scale3d(1.5, 1.5, 1.5);
            transform: scale3d(1.5, 1.5, 1.5); }
  40% {
    -webkit-transform: scale3d(0.9, 0.9, 0.9);
            transform: scale3d(0.9, 0.9, 0.9); }
  60% {
    opacity: 1;
    -webkit-transform: scale3d(1.03, 1.03, 1.03);
            transform: scale3d(1.03, 1.03, 1.03); }
  80% {
    -webkit-transform: scale3d(0.97, 0.97, 0.97);
            transform: scale3d(0.97, 0.97, 0.97); }
  to {
    opacity: 1;
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1); } }

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
<style type="text/css" id="s1658-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes solidButton__bounceIn__3m_ {
  from, 20%, 40%, 60%, 80%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1); }
  0% {
    opacity: 0;
    -webkit-transform: scale3d(0.3, 0.3, 0.3);
            transform: scale3d(0.3, 0.3, 0.3); }
  20% {
    -webkit-transform: scale3d(1.5, 1.5, 1.5);
            transform: scale3d(1.5, 1.5, 1.5); }
  40% {
    -webkit-transform: scale3d(0.9, 0.9, 0.9);
            transform: scale3d(0.9, 0.9, 0.9); }
  60% {
    opacity: 1;
    -webkit-transform: scale3d(1.03, 1.03, 1.03);
            transform: scale3d(1.03, 1.03, 1.03); }
  80% {
    -webkit-transform: scale3d(0.97, 0.97, 0.97);
            transform: scale3d(0.97, 0.97, 0.97); }
  to {
    opacity: 1;
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1); } }
@keyframes solidButton__bounceIn__3m_ {
  from, 20%, 40%, 60%, 80%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1); }
  0% {
    opacity: 0;
    -webkit-transform: scale3d(0.3, 0.3, 0.3);
            transform: scale3d(0.3, 0.3, 0.3); }
  20% {
    -webkit-transform: scale3d(1.5, 1.5, 1.5);
            transform: scale3d(1.5, 1.5, 1.5); }
  40% {
    -webkit-transform: scale3d(0.9, 0.9, 0.9);
            transform: scale3d(0.9, 0.9, 0.9); }
  60% {
    opacity: 1;
    -webkit-transform: scale3d(1.03, 1.03, 1.03);
            transform: scale3d(1.03, 1.03, 1.03); }
  80% {
    -webkit-transform: scale3d(0.97, 0.97, 0.97);
            transform: scale3d(0.97, 0.97, 0.97); }
  to {
    opacity: 1;
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1); } }

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

</style>
<style type="text/css" id="s1945-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */


.birth__componentWrapper__3FM {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  height: 100%; }

.birth__progress__3fA {
  position: absolute;
  top: 0;
  left: 0;
  right: 0; }

.birth__contentWrapper__F8o {
  width: 780px; }

.birth__skipButton__14a {
  position: absolute;
  top: 70px;
  right: 70px;
  z-index: 1;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.71;
  text-align: center;
  color: #869197; }

.birth__title__21f {
  width: 780px;
  height: 58px;
  font-size: 48px;
  font-weight: 200;
  line-height: 1.21;
  text-align: center;
  color: #1f2629; }

.birth__birthForm__uv1 {
  margin-top: 80px;
  display: block; }

.birth__birthInputWrapper__1k- {
  width: 200px;
  border-bottom: 1px solid #1f2629;
  margin: 0 auto;
  padding-bottom: 14px; }

.birth__birthInput__syT {
  display: block;
  width: 200px;
  border: none;
  font-size: 50px;
  font-weight: 600;
  line-height: 1.2;
  text-align: center;
  color: #1f2629;
  outline: none; }
  .birth__birthInput__syT::-webkit-input-placeholder {
    color: #e9eef0; }
  .birth__birthInput__syT:-ms-input-placeholder {
    color: #e9eef0; }
  .birth__birthInput__syT::-ms-input-placeholder {
    color: #e9eef0; }
  .birth__birthInput__syT::placeholder {
    color: #e9eef0; }

.birth__submitButtonWrapper__I3J {
  width: 150px;
  margin: 0 auto;
  margin-top: 80px; }
  .birth__submitButtonWrapper__I3J .birth__submitButton__8gG {
    width: 150px;
    border: solid 1px #394247;
    color: #394247; }

.birth__spinner__HXZ {
  display: inline-block;
  vertical-align: top;
  margin-top: 3px;
  height: 20px; }
  .birth__spinner__HXZ svg {
    width: 20px;
    height: 20px; }
</style>
<script>
	$(function(){
		<c:if test="${not empty sessionScope.user}">
		 location.href="/sellpie/main.do";
		</c:if>
		$(".birth__birthInput__syT").keyup(function(){
			var regExp = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))/;
			var birth = $(this).val();
			console.log(regExp.test(birth));
			if(regExp.test(birth)){
				$(".solidButton__button__15V").removeClass("solidButton__disabled__15i");
				$(".solidButton__button__15V").prop("disabled", false);
				
			 }else{
				 $(".solidButton__button__15V").addClass("solidButton__disabled__15i");
				 $(".solidButton__button__15V").prop("disabled", true);
			 }
		});
		$(".solidButton__button__15V").click(function(){
			sessionStorage.setItem("birth", $(".birth__birthInput__syT").val());
			location.href="/sellpie/getPhone.do";
			/* $("#email").val(sessionStorage.getItem("email"));
			$("#pwd").val(sessionStorage.getItem("pwd"));
			$("#name").val(sessionStorage.getItem("name"));
			$("#gender").val(sessionStorage.getItem("gender"));
			$("#phone").val(sessionStorage.getItem("phone"));
			$("#birth").val(sessionStorage.getItem("birth"));
			 $(".inputForm").submit();  */
		});
	});

</script>
</head>
<body>
        <div id="vingle-web">
        	<div>
        		<div class="root__rootWrapper__1So">
        			<div class="commonView__container__2RU">
        				<div class="fadingLayout__fadingLayoutWrapper__DNi">
        					<div class="birth__componentWrapper__3FM">
        						<div class="birth__progress__3fA">
        							<div color="#fb2942" min="0" max="3" mode="determinate" value="2" style="position: relative; height: 1px; display: block; width: 100%; border-radius: 2px; margin: 0px; overflow: hidden;"><div style="height: 100%; background-color: rgb(251, 41, 66); transition: width 0.3s linear 0ms; width: 66.67%;">
        								<div></div>
        								<div></div>
        								</div>
        							</div>
        						</div>
        						<div class="birth__contentWrapper__F8o">
        							<h1 class="birth__title__21f">주민번호 앞자리를 입력 해주세요</h1>
        							<div class="birth__birthForm__uv1">
        								<div class="birth__birthInputWrapper__1k-">
        									<input type="text" placeholder="911225" class="birth__birthInput__syT" value="">
        								</div>
        									<div class="birth__submitButtonWrapper__I3J">
        										<div class="solidButton__buttonWrapper__tkE">
        											<button type="button" id="birth" class="solidButton__button__15V  solidButton__disabled__15i birth__submitButton__8gG" disabled style="background-color: rgba(0, 0, 0, 0);"><span>다음</span></button>
        										</div>
        									</div>
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