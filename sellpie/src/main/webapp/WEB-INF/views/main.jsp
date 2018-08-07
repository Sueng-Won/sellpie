<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<style>
	div{
		border:1px solid gray;
	}
	.wrap{
		width:1200px;
		height:auto;
		margin-left:auto;
		margin-right:auto;
	}
	.wrap>div{
		float:left;
		height:auto;
		background:white;
	}
	.side{
		width:269px;
		margin:5px;
		padding:30px;
		padding-top:65px;
		position:fixed;
		top:75px;
	}
	.left{
		text-align:center;
		left:130px;
	}
	
	.right{
		text-align:center;
		left:1170px;
	}
	.center{
		width:620px;
		margin:10px;
		position:relative;
		left:280px;
	}
	.boardOne{
		width:600px;
		height:350px;
		margin-left:auto;
		margin-right:auto;
		margin:10px;
	}
	
	.boardForm{
		width:600px;
		height:auto;
		margin-left:auto;
		margin-right:auto;
		margin:10px;
	}
	.fileLink{
		height:34px;
	}
	.fileLInk>img{
		cursor:pointer;
	}
	.uploadFile{
		padding-left:5px;
	}
	.insertBtn{
		width:50px;
		height:30px;
	}
	
</style>
<!-- header에 jquery-min 선언 되있음 -->
<c:import url="header.jsp"/>
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
						fileTag = $("<img/>");
						imgIdx = imgIdx+1;
						$("#imageFile").attr("id","img"+imgIdx);
						newTag = '<input type="file" name="file" id="imageFile" onchange="fileUpload(this,0);" accept="image/*" hidden multiple/>';
					}else{
						if(!(f.type.match("video.*"))){//동영상버튼 클릭 후  파일 선택시 동영상 파일인지 확인
							alert('동영상파일을 선택해 주세요.');
							return;
						}
						fileTag = $("<video/>");
						fileTag.attr("controll","true");
						videoIdx = videoIdx+1;
						$("#videoFile").attr("id","video"+videoIdx);
						newTag = '<input type="file" name="file" id="videoFile" onchange="fileUpload(this,1);" accept="video/*" hidden/>';
					}				
					fileTag.css({"width":"100%","height":"100%"});
					fileTag.attr('src', e.target.result); //image or video 담긴 태그 생성
					//크기 같은 div에 담음
					var div = $("<div>").css({"width":"80","height":"80","display":"inline-block","background":"black"});
					div.append(fileTag);
					$(".boardForm").css("height","220px"); //upload파일 추가 될 때 전체 form div도 늘리기
					$('#uploadFile').css("height","90px"); //upload파일 추가 될 때 upload file form div 늘리기
					$('#uploadFile').append(div); 
					
					$("#board").append(newTag);
					
				
				}
				//이미지를 data URL형태로 onload이벤트 콜백을 통해 생성한 파일태그의 src에 넣어줌
				reader.readAsDataURL(f); //file내용을 읽어 data URL형식의 문자열로 저장
			});
		
		}
	}
		
	

</script>
</head>
<body>

<div class="wrap">
	<div class="left side" style="height:600px;">
		<c:import url="sideLeft.jsp"/>
	</div>
	
	<div class="center">
		<div class="boardForm">
			<form id="board" action="/sellpie/insertBoard.do" method="post" enctype="multipart/form-data">
				<textarea rows="5" cols="77" name="content" placeholder="게시물을 올려보세요."></textarea>
				<div class="uploadFile" id="uploadFile">
<!-- 					업로드한 이미지 표시 영역 사진 선택시 표시 하기 위함.-->
				</div>
				<div class="fileLInk"> 
					<img src="resources/images/picture.JPG" width="30" height="30" onclick="javascript:$('#imageFile').click()"/>
					<input type="file" name="file" id="imageFile" onchange="fileUpload(this,0);" accept="image/*" hidden multiple/>
					<img src="resources/images/video.JPG" width="30" height="30" onclick="javascript:$('#videoFile').click()"/>
					<input type="file" name="file" id="videoFile" onchange="fileUpload(this,1);" accept="video/*" hidden/>
					<input type="submit" value="등록" id="insertBtn"/>
				</div>
			</form>
		</div>
		<div class="boardList">
		<div class="boardOne rounded">

		</div>
		<div class="boardOne rounded">

		</div>
			<div class="boardOne rounded">

		</div>
			<div class="boardOne rounded">

		</div>
			<div class="boardOne rounded">

		</div>
	</div>
</div>
	
	<div class="right side" style="height:600px;">
		<c:import url="sideRight.jsp"/>
	</div>
	

</div>

</body>
</html>

