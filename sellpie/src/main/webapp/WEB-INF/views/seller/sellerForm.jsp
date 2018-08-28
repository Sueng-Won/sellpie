<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:import url="../header.jsp"></c:import>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
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
    location.href="applySeller.do";
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
    }else if($('#addrDetail').val().trim().length==0){
    	alert('상세주소를 입력해주세요');
    	return false;
    }else if($('#pCategory').val().trim().length==0){
    	alert('품목종류를 입력해주세요');
    	return false;
    }else if($('#reason').val().trim().length == 0){
    	alert('신청이유를 등록해주세요');
    	return false;
    }
	$('#reason').val($('#reason').val().split(/\n/g).join(' '));
    	return true;
 }
 
function openAddressPopup() {
	var themeObj = {
 		   bgColor: "#162525", //바탕 배경색
 		   searchBgColor: "#162525", //검색창 배경색
 		   contentBgColor: "#162525", //본문 배경색(검색결과,결과없음,첫화면,검색서제스트)
 		   pageBgColor: "#162525", //페이지 배경색
 		   textColor: "#FFFFFF", //기본 글자색
 		   queryTextColor: "#FFFFFF", //검색창 글자색
 		   //postcodeTextColor: "", //우편번호 글자색
 		   //emphTextColor: "", //강조 글자색
 		   outlineColor: "#444444" //테두리
 		};
	new daum.Postcode({
 	   theme: themeObj,
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }
            
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            $("#zipcode").val(data.zonecode);//5자리 새우편번호 사용
            $("#addr").val(fullAddr);

            // 커서를 상세주소 필드로 이동한다.
            $("#addrDetail").focus();
            searchAddr = fullAddr;
        }
        
    }).open();
	
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
                      <input type="hidden" id="email" name="email" value="${sessionScope.email}"/>
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
	                      <input class="w3-input w3-border w3-round w3-half" type="text" id="addr" name="addr" placeholder="주소" readonly/>
	                      <a class="w3-button w3-theme w3-round-medium" onclick="openAddressPopup();">주소검색</a><br>
                      </div>
                      <input type="hidden" id="zipcode"name="zipcode"/>
                      <input class="w3-input w3-border w3-round" type="text" style="width:50%" id="addrDetail" name="addrDetail" placeholder="상세주소"/><br>
                      <input class="w3-input w3-border w3-round" type="text" style="width:50%" id="pCategory" name="pCategory" placeholder="품목 종류"/>
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