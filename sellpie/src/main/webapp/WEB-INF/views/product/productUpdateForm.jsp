<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../header.jsp"></c:import>
<meta charset="UTF-8">
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

//태그 생성----------------------------------------------------------------------
$(function() {
	 $("#tagInput").keyup(function(e) {
         if(e.keyCode == 32 && $(this).val().trim().length!=0){
        	 if($('#selTag').val().indexOf('!@#$%'+$(this).val().trim()) == -1){
        	 $('#sellTags').append('<div class="w3-button w3-theme w3-round-xxlarge" onclick="removeTag(this);">#'+$("#tagInput").val().replace(/ /g, '')+'<i class="fa fa-remove"></i></div>');
        	 $('#selTag').val($('#selTag').val() + '!@#$%'+$("#tagInput").val().replace(/ /g, '')) ;
        	 }
         	$('#tagInput').val('');
         }
     });
	 $("#tagInput").focusout(function(e) {
         if($('#tagInput').val().trim().length!=0){
        	 if($('#selTag').val().indexOf('!@#$%'+$(this).val().trim()) == -1){
        	 $('#sellTags').append('<div class="w3-button w3-theme w3-round-xxlarge" onclick="removeTag(this);">#'+$("#tagInput").val().replace(/ /g, '')+'<i class="fa fa-remove"></i></div>');
        	 $('#selTag').val($('#selTag').val() + '!@#$%'+$("#tagInput").val().replace(/ /g, '')) ;
        	 }
         	$('#tagInput').val('');
         }
     });
//제작 제품일 경우 수량 삭제-------------------------------------------------------------	 
	 $('#isCraft').click(function() {
		 if($(this).prop('checked')==true){
			 $('#pQuantity').attr('type', 'hidden');
			 $('#pQuantity').attr('value', 0);
		 }else{
			 $('#pQuantity').attr('type', 'number');
		 }
	});
	
});
//태그 삭제------------------------------------------------------------------------
function removeTag(obj){
    $(obj).remove();
    var tagName = '!@#$%' + $(obj).text().replace('#','');
    var changeTag = $("#selTag").val().replace(tagName, '');
    $("#selTag").val(changeTag);
    console.log(tagName);
    console.log(changeTag);
//    console.log($(obj).text());
//    console.log($('#sellTags > div').text());

}
//사진 삭제---------------------------------------------------------------------------
	var delfile = "";
   function deleteFile(delBtn){
	   var rsrc = $(delBtn).parent().next().attr("src");
	   delfile += rsrc + ",";
	   $(delBtn).parent().parent().remove();
	   console.log(delfile);
   }
//사진 등록---------------------------------------------------------------------------
var imgIdx = 0;
function fileUpload(inputFiles, condition){
	   var files = inputFiles.files; //선택된 파일들
	   var filesArr = Array.prototype.slice.call(files); //files 배열로 담음
	   
	   if(files!=null && filesArr.length!=0){//선택된 파일이 없거나 , 배열에 담긴 파일이 없을 때
	         
	         filesArr.forEach(function(f){//배열에 담긴 파일 하나씩 올리기
	            var reader = new FileReader();
	   			console.log(f);
	            reader.onload = function (e) {
	               var fileTag;//이미지나 비디오 태그 생성할 변수
	               var newTag;//새로운 input file태그 생성할 변수
	               
	               if(condition == 0){//이미지버튼 클릭 후  파일 선택시 이미지 파일인지 확인
	                  if(!(f.type.match("image.*"))){
	                     alert('이미지파일을 선택해 주세요.');
	                     return;
	                  }
	                  fileTag = $("<img/>");
	                  imgIdx = imgIdx+1;
	                  $("#imageFile").attr("id","img"+imgIdx);
	                  newTag = '<input type="file" name="file" id="imageFile" onchange="fileUpload(this,0);" accept="image/*" style="display:none;" multiple/>';
	               }
	               fileTag.css({"width":"100%","height":"100%"});
	               fileTag.attr('src', e.target.result); //image or video 담긴 태그 생성
	               //크기 같은 div에 담음
	               var div = $("<div>").css({"width":"80","height":"80","display":"inline-block","background":"black"});
	               var innerDiv = $("<div class='w3-right'>").css({"position":"absolute"});
	               var innerA = '<a onclick="deleteFile(this);"><i class="fa fa-close w3-text-black"></i></a>';
	            	innerDiv.append(innerA);
	            	div.append(innerDiv);
	               div.append(fileTag);
	               $('#uploadFile').append(div); 
	               
	               $("#applyForm").append(newTag); 
	            }
	            //이미지를 data URL형태로 onload이벤트 콜백을 통해 생성한 파일태그의 src에 넣어줌
	            reader.readAsDataURL(f); //file내용을 읽어 data URL형식의 문자열로 저장
	         });
	      }
	   }
$(function(){
	var msg = '<c:out value="${msg}"/>';
	if(msg.length!=0&&msg!=""){
		alert(msg);
	}
});
function validate(){
    if($('#selTag').val().trim().length==0){
    	alert('검색에 이용될 태그를 등록해주세요');
    	return false;
    }else if($('#price').val() <= 0){
    	alert('제품의 가격을 등록해주세요');
    	return false;
    }else if(!$('#isCraft').prop('checked') && $('#pQuantity').val() <= 0 ){
    	alert('제품의 판매 수량을 등록해주세요');
    	return false;
    }else if($('#pDetail').val().trim().length==0){
    	alert('제품의 상세내용을 등록해주세요');
    	return false;
    }else if($('#pName').val().trim().length == 0){
    	alert('제품의 이름을 등록해주세요');
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
                  <form id="UpdateForm" action="productUpdate.do" method="post" onsubmit="return validate();" enctype="multipart/form-data">
                      <h2 class="w3-border-bottom">물품 수정</h2><br>
                      <input class="w3-input w3-border w3-round" type="text" id="pName" name="pName" value="${product.pName }" placeholder="판매게시물명"><br>
                      <input type="hidden" name="pNo" value="${product.pNo }"/>
                      <input type="hidden" name="sNo" value="${product.sNo }"/>
                      <input type="hidden" name="rUrl" value="${product.rUrl }">
                      <input type="hidden" name="delfile" id="hiddenDelfile"/>
                      <input type="hidden" name="selTag" id="selTag" value="${product.selTag }">
                      <div id="sellTags">
                      <c:set var="selTags" value="${fn:split(product.selTag,'!@#$%') }"/>
                      <c:forEach var="tagItem" items="${selTags}">
                      	<div class="w3-button w3-theme w3-round-xxlarge" onclick="removeTag(this);">#${tagItem }<i class="fa fa-remove"></i></div>
                      </c:forEach>
                      </div>
                      
                      <input class="w3-input w3-border w3-round" id="tagInput" type="text" placeholder="판매 태그명" contenteditable="true"/><br>
                      <br>
                      <div class="uploadFile background-white w3-margin-top" id="uploadFile" style="width:650px;  overflow-x: scroll;">
						<!-- 업로드한 이미지 표시 영역 사진 선택시 표시 하기 위함.-->
						<c:forEach items="${product.resource }" var="resource">
				             <div style="width:75px; height:75px; float:left; border:1px dashed gray; position:relative; padding:6.5px; margin-right:3px;">
				                 <div class="w3-right" style="position:absolute">
				                          <a onclick="deleteFile(this);"> 
				                             <i class="fa fa-close w3-text-black"></i>
				                          </a>
				                 </div>
				                 <img src="<c:out value='${resource.rsrc }'/>" alt="Avatar" class="w3-left w3-margin-right" style="width:60px; height:60px;">
				             </div>
				         </c:forEach>
						</div>
						<hr>
						              
					<div class="fileLInk background-white">
						<img src="resources/images/picture.JPG" width="30" height="30" onclick="imageFile.click()"/><label>변경할 이미지를 선택해주세요</label>
						<input type="file" name="file" id="imageFile" onchange="fileUpload(this,0);" accept="image/*" style="display:none;" multiple/>
		            </div>
                      <input class="w3-input w3-border w3-round" type="number" style="width:30%" id="pQuantity" name="pQuantity" min="1" value="${product.pQuantity }" placeholder="수량"/><br>
                      <input class="w3-input w3-border w3-round" type="number" style="width:30%" id="price" name="price" min="1" value="${product.price }" placeholder="가격"/><br>
	                  <input class="w3-check w3-border w3-round" type="checkbox" id="isCraft" name="isCraft" value="Y" <c:if test="${product.isCraft eq 'Y'.charAt(0)}">checked</c:if> >
	                  <label>제작제품</label>
                      <textarea class="w3-input w3-border w3-round" id="pDetail" name="pDetail" placeholder="상세설명" rows="20" style="resize: none;">${product.pDetail }</textarea><br>

                    </form>
              <button onclick="javascript: $('#UpdateForm').submit();" class="w3-button w3-theme"><i class="fa fa-pencil"></i> &nbsp;수정</button> 
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

$(function() {
	if($('#isCraft').prop('checked')==true){
		 $('#pQuantity').attr('type', 'hidden');
		 $('#pQuantity').attr('value', 0);
	 }else{
		 $('#pQuantity').attr('type', 'number');
	 }
});

</script>


 
</body></html>