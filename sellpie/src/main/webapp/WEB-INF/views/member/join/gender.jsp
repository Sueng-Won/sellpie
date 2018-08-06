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
* {
  font-family: "Noto Sans KR", "Noto Sans", Helvetica, Arial, "Malgun Gothic", sans-serif; }

 
  html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, 
  cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul,
   li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, 
   details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio,
    video {
    margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent; }
  body {
    line-height: 1; }
 
 

button {
  padding: 0;
  margin: 0;
  border: 0;
  background-color: transparent; }


button {
  padding: 0;
  margin: 0; }

button:focus {
  outline: 0; }

button::-moz-focus-inner {
  border: 0; }
    
</style>

 <style type="text/css" id="s1666-0">

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


</style>
<style type="text/css" id="s2718-0">

.gender__componentWrapper__E1U {
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

.gender__progress__1WQ {
  position: absolute;
  top: 0;
  left: 0;
  right: 0; }

.gender__skipButton__2f5 {
  position: absolute;
  top: 70px;
  right: 70px;
  font-weight: 300;
  z-index: 1;
  font-size: 14px;
  line-height: 1.71;
  text-align: center;
  color: #869197; }

.gender__contentWrapper__2Ot {
  width: 780px; }

.gender__title__3jc {
  width: 780px;
  height: 58px;
  -o-object-fit: contain;
     object-fit: contain;
  font-size: 48px;
  font-weight: 200;
  line-height: 1.21;
  text-align: center;
  margin-bottom: 52px;
  color: #1f2629; }

.gender__genderItemsWrapper__Dv2 {
  width: 780px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center; }

.gender__genderItem__KGf {
  width: 164px;
  height: 164px;
  font-size: 32px;
  font-weight: 200;
  line-height: 1.38;
  text-align: center;
  border-radius: 50%;
  color: #aeb8bd;
  outline: none;
  cursor: pointer; }
  .gender__genderItem__KGf:hover {
    color: #1f2629; }


</style>
<script>
$(function(){
	<c:if test="${not empty sessionScope.user}">
	 location.href="/sellpie/main.do";
	</c:if>
});
function getGender(type){
	sessionStorage.setItem("gender", type);
	location.href="/sellpie/getBirth.do";
	
}
</script>
     </head>
      <body>
        <div id="vingle-web"><div>
        <div class="root__rootWrapper__1So">
        	<div class="commonView__container__2RU">
        		<div class="fadingLayout__fadingLayoutWrapper__DNi">
        			<div class="gender__componentWrapper__E1U">
        				<div class="gender__progress__1WQ">
        					<div color="#fb2942" min="0" max="3" mode="determinate" value="1" style="position: relative; height: 1px; display: block; width: 100%; border-radius: 2px; margin: 0px; overflow: hidden;"><div style="height: 100%; background-color: rgb(251, 41, 66); transition: width 0.3s linear 0ms; width: 33.33%;">
        						<div></div>
        						<div></div>
        					</div>
        				</div>
        			</div>
        			<div class="gender__contentWrapper__2Ot">
        				<h1 class="gender__title__3jc">성별을 선택해주세요</h1>
        					<div class="gender__genderItemsWrapper__Dv2">
        						<button type="button" class="gender__genderItem__KGf " onclick="getGender('M');">남자</button>
        						<button type="button" class="gender__genderItem__KGf " onclick="getGender('F');" >여자</button>
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