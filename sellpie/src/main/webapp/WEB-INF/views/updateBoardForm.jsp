<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<c:import url="header.jsp"></c:import>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>메인페이지</title>
<script>
$(function(){
	var msg = '<c:out value="${msg}"/>';
	if(msg.length!=0&&msg!=""){
		alert(msg);
	}
});
   
	var delfile = "";
   function deleteFile(delBtn){
	   var rsrc = $(delBtn).parent().next().attr("src");
	   delfile += rsrc + ",";
	   $(delBtn).parent().parent().remove();
	   console.log(delfile);
   }
   
function validate(){
    var str = $("#bcontent").text();
    $("#hiddenContent").val(str);
    $("#hiddenDelfile").val(delfile);
 }
</script>

<script>
var imgIdx = 0;
var videoIdx = 0;

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
                  newTag = '<input type="file" name="file" id="imageFile" onchange="fileUpload(this,0);" accept="image/*" style="display:none" multiple/>';
                  
               }else{
                  if(!(f.type.match("video.*"))){//동영상버튼 클릭 후  파일 선택시 동영상 파일인지 확인
                     alert('동영상파일을 선택해 주세요.');
                     return;
                  }
                  fileTag = $("<video/>");
                  fileTag.attr("controll","true");
                  videoIdx = videoIdx+1;
                  $("#videoFile").attr("id","video"+videoIdx);
                  newTag = '<input type="file" name="file" id="videoFile" onchange="fileUpload(this,1);" accept="video/*" style="display:none"/>';
               }            
               fileTag.css({"width":"100%","height":"100%"});
               fileTag.attr('src', e.target.result); //image or video 담긴 태그 생성
               //크기 같은 div에 담음
               var div = $("<div>").css({"width":"75px","height":"75px","float":"left","border":"1px dashed gray","positioin":"relative","padding":"6.5px","margin-right":"3px"});
               var innerDiv = $("<div class='w3-right'>").css({"position":"absolute"});
               var innerA = '<a onclick="deleteFile(this);"><i class="fa fa-close w3-text-black"></i></a>'
               innerDiv.append(innerA);
               div.append(innerDiv);
               div.append(fileTag);
               $('#uploadFile').append(div); 
               
               $("#board").append(newTag); 
            }
            //이미지를 data URL형태로 onload이벤트 콜백을 통해 생성한 파일태그의 src에 넣어줌
            reader.readAsDataURL(f); //file내용을 읽어 data URL형식의 문자열로 저장
         });
      }
   }
   
	function boardDelflag(bno){
	    location.href="boardDelflag.do?bno="+bno;
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
    
    <!-- Middle Column -->
    <div class="w3-col m7" style="margin-left:25%;" id="contentDiv">
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white" onclick="javascript:location.href='#contentOpen'">
            <div class="w3-container w3-padding">
              <h6 class="w3-opacity">게시물 작성</h6>
              <div contenteditable="true" class="w3-border w3-padding-16"> 
              </div>
              <button type="button" class="w3-button w3-theme"><i class="fa fa-pencil"></i> &nbsp; 게시</button> 
            </div>
          </div>
        </div>
      </div>
      

	<div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <c:if test="${!empty board }">
        <form id="board" method="post" action="/sellpie/updateBoard.do" onsubmit="validate();" enctype="multipart/form-data">
	        <input type="hidden" name="bno" value="<c:out value='${board.bno }'/>"/>
	        <input type="hidden" name="bcontent" id="hiddenContent"/>
	        <input type="hidden" name="delfile" id="hiddenDelfile"/>
	        <img src='<c:out value="${board.profileImg }"/>' alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:60px; height:60px;">
	        <h4><c:out value="${board.name }"/></h4><br>
	        <hr class="w3-clear">
	        <div contenteditable="true" class="w3-border w3-round" style="width:650px;" id="bcontent"><c:out value="${board.bcontent }"/></div>
	        
	        <div class="uploadFile background-white w3-margin-top" id="uploadFile" style="width:650px;  overflow-x: scroll;">
	         <!-- 업로드한 이미지 표시 영역 사진 선택시 표시 하기 위함.-->
	         <c:forEach items="${board.resource }" var="resource">
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
	        <br><br><hr>
	        <button type="button" class="btn btn-default" aria-label="Left Align" onclick="imageFile.click()">
 				 <span class="glyphicon glyphicon-picture" aria-hidden="true"></span>
			</button>
			<input type="file" name="file" id="imageFile" onchange="fileUpload(this,0);" accept="image/*" style="display:none" multiple/>
			
			<button type="button" class="btn btn-default" aria-label="Left Align" onclick="videoFile.click()">
 				 <span class="glyphicon glyphicon-facetime-video" aria-hidden="true"></span>
			</button>
			<input type="file" name="file" id="videoFile" onchange="fileUpload(this,1);" accept="video/*" style="display:none"/>

			<button type="button" class="w3-button w3-theme-d1 w3-margin-bottom w3-right w3-margin-left" onclick="boardDelflag('<c:out value='${board.bno }'/>');"><i class="glyphicon glyphicon-trash"></i> &nbsp;삭제
            </button>
            
	        <button type="submit" class="w3-button w3-theme-d1 w3-margin-bottom w3-right"><i class="glyphicon glyphicon-pencil"></i> &nbsp;수정
	        </button>
	          <br><br><br>
          </form>
          
          </c:if>
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




</body></html>
 