<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- glyphicon을 사용하기 위한 CDN방식의 link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
var imgIdx = 0;
var videoIdx = 0;

function fileUpload(inputFiles, condition){
   var files = inputFiles.files; //선택된 파일들
   var filesArr = Array.prototype.slice.call(files); //files 배열로 담음
   if(files!=null && filesArr.length!=0){//선택된 파일이 없거나 , 배열에 담긴 파일이 없을 때   
         filesArr.forEach(function(f){//배열에 담긴 파일 하나씩 올리기
            var reader = new FileReader();
            reader.onload = function (e) {
               var fileTag;//이미지나 비디오 태그 생성할 변수
               var newTag;//새로운 input file태그 생성할 변수
               if(condition == 0){//이미지버튼 클릭 후  파일 선택시 이미지 파일인지 확인
                  if(!(f.type.match("image.*"))){
                     alert('이미지파일을 선택해 주세요.');
                     return;
                  }
				  if(videoIdx!=0){
                	  alert('동영상 파일은 단독 업로드만 가능합니다.');
                	  return;
                  }else if(videoIdx==0){
	                  fileTag = $("<img/>");
	                  imgIdx = imgIdx+1;
	                  $("#imageFile").attr("id","img"+imgIdx);
	                  newTag = '<input type="file" name="file" id="imageFile" onchange="fileUpload(this,0);" accept="image/*" style="display:none" multiple/>';
                  }
               }else{
                  if(!(f.type.match("video.*"))){//동영상버튼 클릭 후  파일 선택시 동영상 파일인지 확인
                     alert('동영상파일을 선택해 주세요.');
                     return;
                  }
				  if(imgIdx!=0 || videoIdx!=0){
                	  alert('동영상 파일은 단독 업로드만 가능합니다.');
                	  return;
                  }else if(videoIdx==0){
	                  fileTag = $("<video/>");
	                  fileTag.attr("controll","true");
	                  videoIdx = videoIdx+1;
	                  $("#videoFile").attr("id","video"+videoIdx);
	                  newTag = '<input type="file" name="file" id="videoFile" onchange="fileUpload(this,1);" accept="video/*" style="display:none"/>';
                  }
               }            
               fileTag.css({"width":"100%","height":"100%"});
               fileTag.attr('src', e.target.result); //image or video 담긴 태그 생성
               //크기 같은 div에 담음
               var div = $("<div>").css({"width":"75px","height":"75px","display":"inline-block","border":"1px dashed gray","positioin":"relative","padding":"6.5px","margin-right":"3px"});
               var innerDiv = $("<div class='w3-right'>").css({"position":"absolute"});
               var innerA = '<a onclick="deleteFile(this,'+imgIdx+');"><i class="fa fa-close w3-text-black"></i></a>'
               
               innerDiv.append(innerA);
               div.append(innerDiv);
               div.append(fileTag);

               $('#uploadFile').append(div); 
               
               $("#board").append(newTag); 
               
            }
//             console.log(except);
	            //이미지를 data URL형태로 onload이벤트 콜백을 통해 생성한 파일태그의 src에 넣어줌
	            reader.readAsDataURL(f); //file내용을 읽어 data URL형식의 문자열로 저장
         });
      }
   }
   
	var delfile = "";
	function deleteFile(delBtn,image){
         console.log(delBtn);
      var rsrc = $(delBtn).parent().next().attr("src");
      delfile += rsrc + ",";
      $(delBtn).parent().parent().remove();
      
      $("#img"+image).remove();
	}
   
	$(function(){
		if("${insertFlag}"){
			alert("광고 신청 완료");
			window.close();
		}
	});
</script>
</head>
<body>
	<h3>광고 신청</h3>
	<hr>
	<form id="board" method="post"  action="/sellpie/insertBoard.do" onsubmit="validate();" enctype="multipart/form-data">
		<div class="form-group">
		<div name="board">
		</div>
    		<label for="contents">광고 내용</label>
    		<textarea class="form-control" rows="8" id="bcontent" name="bcontent"></textarea>
    		<input type="hidden" id="isad" name="isad" value='Y'/>
  		</div>
  		<div class="fileLInk background-white">
             <img src="resources/images/picture.JPG" width="30" height="30" onclick="imageFile.click()"/>
             <input type="file" name="file" id="imageFile" onchange="fileUpload(this,0);" accept="image/*" style="display:none" multiple/>
             <img src="resources/images/video.JPG" width="30" height="30" onclick="videoFile.click()"/>
             <input type="file" name="file" id="videoFile" onchange="fileUpload(this,1);" accept="video/*" style="display:none"/>
        </div>
        <br>
        <div class="uploadFile background-white" id="uploadFile">
       		<!-- 업로드한 이미지 표시 영역 사진 선택시 표시 하기 위함.-->
        </div>
        <button type="submit" class="btn btn-primary btn-block">게시</button>
	</form>
</body>
</html>