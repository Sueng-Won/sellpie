<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>이름</title>
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
.solidReasonInput__rightItemsWrapper__name{
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
.solidReasonInput__rightItemsWrapper__name span{
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
@import url(http://weloveiconfonts.com/api/?family=brandico);
@import url(https://fonts.googleapis.com/css?family=Junge);



/* brandico */
[class*="brandico-"]:before {
  font-family: 'brandico', sans-serif;
}



.content{max-width:40%; max-height:50%;margin:100px auto;}

.welcomeText { width:100%; }
/*welcome text*/
.welcome{
  height:100px;
  position:relative;
  border-bottom:1px solid;
  overflow:hidden;
}

.greet{
  width:100%;
  height:100%;
  position:absolute;
  top:100%;
  font-size:50px;
  text-align:center;
  line-height:100px;
  transition:all .5s;
}
/*taglines*/
.subText{
  width:100%;
  height:100px;
  position:relative;
  font-size:30px;
  overflow:hidden;
}
.subText p{
  height:100%;
  line-height:100px;
  text-align:center;

}
.subTexts{
  width:100%;
  position:absolute;
  bottom:100%;
  text-align:center;
  overflow:hidden;
  transition:all .5s;
}
</style>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
	$(function(){
		<c:if test="${not empty sessionScope.user}">
		 location.href="/sellpie/main.do";
		</c:if>
		$("#name").keyup(function(){
			var name = $(this).val();
			 var regex= /^[가-힣]{2,4}$/;
			 var flag = (name != '' && name != 'undefined' && regex.test(name));
			 var $msg = $("<div class='solidReasonInput__rightItemsWrapper__name'><span></span></div>");
			
			 
			if(!flag){
				$(this).addClass("solidReasonInput__failedWrapper__2fu");
				if($(this).parent().children().length<2){
					$(this).parent().append($msg);
					
				}
				$(".solidReasonInput__rightItemsWrapper__name").children().css("color", "#fb2942");
				$(".solidReasonInput__rightItemsWrapper__name").children().text("한글만 입력 가능합니다.");
				$(".solidButton__button__15V").prop("disabled", true);
				$(".solidButton__button__15V").addClass("solidButton__disabled__15i");
				$(".solidButton__button__15V").prop("disabled", true);
				
			 }else{
					$(this).removeClass("solidReasonInput__failedWrapper__2fu");
					$(".solidReasonInput__rightItemsWrapper__name").children().text("멋지네요!");
					$(".solidReasonInput__rightItemsWrapper__name").children().css("color", "black");
					$(".solidButton__button__15V").removeClass("solidButton__disabled__15i");
					$(".solidButton__button__15V").prop("disabled", false);
			 }
			 
		});
		$(".solidButton__button__15V").click(function(){
			sessionStorage.setItem("name", $("#name").val());
			console.log(sessionStorage);
			$("#sellpie-web").remove();
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
			p2.text("반가워요 "+sessionStorage.getItem("name")+"님" );
			
			welcomeDiv.append(greetH1);
			welcomeTextDiv.append(welcomeDiv);
			subTextsDiv.append(p1);
			subTextsDiv.append(p2);
			subTextDiv.append(subTextsDiv);
			welcomeTextDiv.append(subTextDiv);
			contentDiv.append(welcomeTextDiv);
			$("body").append(contentDiv);
			
				$("*").css("margin","0");
				$("*").css("padding","0");
				$("html").css("width","100%");
				$("html").css("height","100%");
				$("body").css("width","100%");
				$("body").css("height","100%");
				$("body").css("text-align","center");
				$(".content").css("margin","auto");
				$(".content").css("padding-top","250px");
				
				  var welcome = document.querySelector('.greet'),
				      subtext = document.querySelector('.subTexts'),
				      delay = 1000; 
				  
				  
				  setTimeout(function(){welcome.style.top='0';},delay);
				  setTimeout(function(){subtext.style.bottom = '0%';},delay*2);
				  setTimeout(function(){subtext.style.bottom = '-100%';},delay*4);
				   
			
			
			    setTimeout(function(){ location.href="/sellpie/getGender.do" }, delay*6);  
		});
		
	});

	</script>
</head>
<body>
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
    								<div class="titleWithVerify__title__1ix">이름을 입력 해주세요</div>
    						   </div>
    						</div>
    						<div class="signUpBody__content__1PG"> <!--  form -> div  -->
    							<div class="signUpBody__formInput__1yh">
    								<div class="solidReasonInput__wrapper__28f undefined " >
    									<input type="text" id="name" autofocus="" class="solidReasonInput__textInput__ZZr " placeholder="이름이 어떻게 되시나요?" value=""  autocomplete="off"/>
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
    
</body>
</html>