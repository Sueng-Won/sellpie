<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:import url="header.jsp"></c:import>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>메인페이지</title>
<style>

    #bcontent{
        width:100%;
        height:70px;
        overflow-y: scroll;
    }
    
    #fileTb{
        width:98%;
        height:98%;
    }
    
</style>
<style>
.detail_content {
    position: fixed;
    z-index:3;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.7);
    opacity:0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
}
.detail_content:target {
    opacity:1;
    pointer-events: auto;
}
.detail_content > div {
	position: absolute;
	top: 9%;
	left: 15%;
	width: 890px;
	height: 520px;
	padding: 16px;
	background-color: rgba(0, 0, 0, 0.8);
	overflow: auto;	
}
</style>

<script>
$(function(){
  $("#insertForm").click(function(){
    location.href="#open2";  
  });
});   

var slideIndex = 1;

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  
  var src = x[slideIndex-1].src;
  $("#fileview>img").attr("src",src);
}
</script>
</head><body class="w3-theme-l5">


<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    	<c:import url="sideLeft.jsp"></c:import>
    <!-- End Left Column -->
    
    <!--    입력폼 포커스온-->
    <div class="detail_content" id="open2" >
         		<div>
         			<div style="text-align:right;">
    					<a href="#close">
    						<i class="fa fa-close w3-text-white"></i>
    					</a>
    				</div>
    				<div>입력폼!!</div>
				</div>
	</div>
	<!--   입력폼 끝-->
    
    <!-- Middle Column -->
    <div class="w3-col m7" style="margin-left:25%;">
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
              <h6 class="w3-opacity">게시물 작성</h6>
              <div contenteditable="true" class="w3-border w3-padding" name="bcontent" id="bcontent"> 
              </div>
              <button type="button" class="w3-button w3-theme" onclick="javascript:location.href='#open2'"><i class="fa fa-pencil"></i> &nbsp;Post</button> 
            </div>
          </div>
        </div>
      </div>
      
<!--                	// 상세보기 창(1개만 존재, hidden) -->
         	<div class="detail_content" id="open" >
         		<div>
         			<div style="text-align:right;">
    					<a href="#close">
    						<i class="fa fa-close w3-text-white"></i>
    					</a>
    				</div>
                    <div class="w3-row" style="height:90%;">
                        <div class="w3-col m7" style="height:94%;">
	                        <div class="w3-row" style="text-align:center; width:98%; height:98%;" >
	                        	<div class="w3-col" style="width:10%; height:95%;" onclick="plusDivs(-1);">
	                        		<br><br><br><br><br>
	                        		<img src="resources/images/header/nextLeft.png" style="width:28%; height:23%;">
	                        	</div>
	                        	<div class="w3-col" style="width:77%; height:95%; text-align:center;" id="fileview">
		                        	 <img src="resources/images/header/twice2.png" style="width:90%; height:95%;" class="w3-margin-bottom mySlides">
	                        	</div>
	                        	<div class="w3-col" style="width:10%; height:95%;" onclick="plusDivs(1);">
	                        		<br><br><br><br><br>
	                        		<img src="resources/images/header/nextRight.png" style="width:28%; height:23%;">
	                        	</div>
	                        </div>                             
	                        <div style="text-align:center">
	                                <img src="resources/images/header/twice1.png" style="width:7%; height:6%;" class="w3-margin-bottom mySlides">
	                                <img src="resources/images/header/twice2.JPG" style="width:7%; height:6%;" class="w3-margin-bottom mySlides">
	                                <img src="resources/images/header/twice2.png" style="width:7%; height:6%;" class="w3-margin-bottom mySlides">
	                        </div>
                        </div>
                        <div class="w3-col m4" style="width:36%;">
                            <div class="w3-container w3-card w3-white w3-round"><br>
                              <div class="w3-border-bottom" style="height:10%;">
                                   <img src="resources/images/header/twice2.png" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:40px; height:40px;">
                                    <span class="w3-right w3-opacity">32 min</span>
                                    <h4>Angie Jane</h4><br>
                              </div>
                               <div class="w3-margin-bottom" style="height:27%; overflow-y:scroll;"> 
                                    <p>Have you seen this?</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                               </div>
                               <div>
                                  <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom w3-align-right"><i class="fa fa-thumbs-up"></i> &nbsp;600</button>
                                   <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom w3-align-right" onclick="javascript:location.href='#open'"><i class="fa fa-comment"></i> &nbsp;128</button>  
                               </div>
                               <div style="height:30%; width:100%; overflow-y:scroll;">
                                   <div style="height:10%;">
                                       <img src="resources/images/header/twice2.png" alt="Avatar" class="w3-left w3-circle rounded-circle" style="width:20px; height:20px;">
    <!--                                    <span class="w3-right w3-opacity">32 min</span>-->
                                        &nbsp;<b style="font-size: 12px;">Angie Jane</b>
                                        <span style="font-size:12px;">정연이 등록한 댓글</span>
                                  </div>
                               </div>
                               <div class="w3-row w3-cell-bottom w3-margin-bottom">
                                       <div class="w3-col m1">
                                        <img src="resources/images/header/twice2.png" alt="Avatar" class="w3-left w3-circle rounded-circle w3-block" style="width:20px; height:20px;">
                                       </div>
                                       <div contenteditable="true" class="w3-border w3-col m9 w3-round">
                                      </div>
                                      <div class="w3-col m1" style="border-radius: 17px;  width:22px; height:22px; text-align: center;">
                                           <img src="resources/images/header/submitImg.jpg" alt="Avatar" class="w3-left w3-circle rounded-circle w3-block" style="width:22px; height:22px;">
                                      </div>
                               </div>
                            </div>
                        </div>
					</div>
				</div>
		    </div>
<!--		    상세보기창 끝-->
		    
      
      <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="resources/images/header/twice2.png" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:60px; height:60px;">
        <span class="w3-right w3-opacity">32 min</span>
        <h4>Angie Jane</h4><br>
        <hr class="w3-clear">
        <p>Have you seen this?</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
<!--        <img src="image/twice2.png" style="width:100%; height:500px;" class="w3-margin-bottom">-->
        <table id="fileTb" cellspacing="0" align="center" class="w3-margin-bottom">
            <tr>
                <td>
                    <img src="resources/images/header/twice2.png" style="width:100%; height:35%;">
                </td>
                <td>
                    <img src="resources/images/header/twice2.png" style="width:100%; height:35%;">
                </td>
            </tr>
            <tr>
                <td>
                    <img src="resources/images/header/twice2.png" style="width:100%; height:35%;">
                </td>
                <td>
                    <img src="resources/images/header/twice2.png" style="width:100%; height:35%;">
                </td>
            </tr>
        </table>
        &nbsp;
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i> &nbsp;600</button> 
          <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom" onclick="javascript:location.href='#open'"><i class="fa fa-comment"></i> &nbsp;128</button> 
      </div>  
      
    <!-- End Middle Column -->
    </div>
    
    <!-- Right Column -->
    
      <c:import url="sideRight.jsp"></c:import>
    <!-- End Right Column -->
    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>

<!-- Footer -->
<footer class="w3-container w3-theme-d3 w3-padding-16">
  <h5>Footer</h5>
</footer>

<footer class="w3-container w3-theme-d5">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>
 
<script>
// Accordion
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-theme-d1";
    } else { 
        x.className = x.className.replace("w3-show", "");
        x.previousElementSibling.className = 
        x.previousElementSibling.className.replace(" w3-theme-d1", "");
    }
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>


 
</body></html>