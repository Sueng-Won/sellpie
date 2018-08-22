<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:import url="../header.jsp"></c:import>
<meta charset="UTF-8">
<title>판매자 신청</title>
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
input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}
</style>

<script>
$(function(){
  $("#insertForm").click(function(){
    location.href="#open2";  
  });
});   
function validate(){
    if($('#bank').val() == null){
    	alert('은행을 입력해주세요');
    	return false;
    }else if($('#acNum').val().trim().length<12){
    	alert('계좌를 정확히 입력해주세요');
    	return false;
    }else if($('#addr').val().trim().length==0){
    	alert('주소를 입력해주세요');
    	return false;
    }else if($('#addrdetail').val().trim().length==0){
    	alert('상세주소를 입력해주세요');
    	return false;
    }else if($('#pcategory').val().trim().length==0){
    	alert('품목종류를 입력해주세요');
    	return false;
    }else if($('#reason').val().trim().length == 0){
    	alert('신청이유를 등록해주세요');
    	return false;
    }
    	return true;
 }
</script>
</head><body class="w3-theme-l5">


<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    	<c:import url="../sideLeft.jsp"/>
    <!-- End Left Column -->
    <div id="midContent">
	    <!--    입력폼 포커스온-->
	    
	    <!-- Middle Column -->
	    <div class="w3-col m7" style="margin-left:25%;">
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
                  <form id="applyForm" action="sellerApply.do" method="post" onsubmit="return validate();" enctype="multipart/form-data">
                      <h2 class="w3-border-bottom">판매자 신청서</h2><br>
						  <select class="w3-select w3-border w3-round" style="width: 50%;" id="bank" name="bank">
						  	<option disabled selected>은행선택</option>
						  	<option value="kb국민은행">KB국민은행</option>
						  	<option value="한국씨티은행">한국씨티은행</option>
						  	<option value="우리은행">우리은행</option>
						  	<option value="신한은행">신한은행</option>
						  	<option value="KEB하나은행">KEB하나은행</option>
						  	<option value="수협은행">수협은행</option>
						  	<option value="IBK기업은행">IBK기업은행</option>
						  	<option value="SC제일은행">SC제일은행</option>
						  </select>
	                      <input class="w3-input w3-border w3-round" style="width: 50%;" type="number" id="acNum" name="acNum" placeholder="계좌번호"/>
                      <br>
                      <div class="w3-row">
	                      <input class="w3-input w3-border w3-round w3-half"  type="text" id="addr" name="addr" placeholder="주소" readonly/>
	                      <a class="w3-button w3-theme w3-round-medium">주소검색</a><br>
                      </div>
                      <input type="hidden" id="zipcode"name="zipcode"/>
                      <input class="w3-input w3-border w3-round" type="text" style="width:50%" id="addrdetail" name="addrdetail" placeholder="상세주소"/><br>
                      <input class="w3-input w3-border w3-round" type="text" style="width:50%" id="pcategory" name="pcategory" placeholder="품목 종류"/>
                      <textarea class="w3-input w3-border w3-round" id="reason" name="reason" placeholder="신청이유" rows="20" style="resize: none;"></textarea><br>
                    </form>
              <button onclick="javascript: $('#applyForm').submit();" class="w3-button w3-theme"><i class="fa fa-pencil"></i> &nbsp;등록</button> 
              <button onclick="javascript: history.back();" class="w3-button w3-theme"><i class="fa fa-close"></i> &nbsp;취소</button> 
            </div>
          </div>
        </div>
      </div>
       
      
    <!-- End Middle Column -->
    </div>
    </div>
    
    <!-- Right Column -->
    
      <c:import url="../sideRight.jsp"></c:import>
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