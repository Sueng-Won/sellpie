<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>메인페이지</title>
<style>
   div{
      border:1px solid gray;
   }
   .wrap{
      width:1000px;
      height:900px;
      margin-left:auto;
      margin-right:auto;
   }
   .wrap>div{
      float:left;
      height:890px; 
   }
   .side{
      width:210px;
      margin:5px;
   }
   .left{
      text-align:center;
   }
   .center{
      width:530px;
      margin:10px;
   }
   .boardOne{
      width:500px;
      height:350px;
      margin-left:auto;
      margin-right:auto;
      margin:10px;
   }
   
   .boardForm{
      width:500px;
      height:120px;
      margin-left:auto;
      margin-right:auto;
      margin:10px;
   }
   
   .fileLInk>img{
      cursor:pointer;
   }
   
   .uploadFile{
      padding-left:5px;
   } 
   
    textarea {
	    width: 478px;
	    height: 50px;
	    color: rgb(73, 73, 73);
	    padding: 10px;
	    font: 14px 맑은고딕, "Malgun Gothic", Dotum, 돋움, sans-serif;
	    resize: none;
	}
	
	/*  [role="button"] {
	   padding:3px;
	   border: 1px solid #CCC;
	 	 }  */
 	 
	  [class="boardFormO"] {
    	    width: 500px;
		    height: 250px;
		    margin-left: auto;
		    margin-right: auto;
		    margin: 10px;
	  }
	  
	.boardFormO .board #content{
	 		width: 478px;
	    	height: 50px;
	    	color: rgb(73, 73, 73);
	    	padding: 10px;
	   		font: 14px 맑은고딕, "Malgun Gothic", Dotum, 돋움, sans-serif;
	    	resize: none;
	} 
	
	.boardForm .board .btn{
	    visibility: hidden;
	    display: none !important;
	}
	
	.btn{
	    display: inline-block;
	    width: 480px;
	    height: 20px;
	    text-align: center;
	    vertical-align: middle;
	    font: bold 16px/40px 맑은고딕, "Malgun Gothic", Dotum, 돋움, sans-serif;
	    border-width: 1px;
	    border-style: solid;
	    border-image: initial;
	    border-radius: 2px;
	    text-decoration: none;
	    background-color: #4267b2;
    	border-color: #4267b2;
	    -webkit-margin-before: 1em;
	    -webkit-margin-after: 1em;
	    -webkit-margin-start: 0px;
	    -webkit-margin-end: 0px;

	}
</style>
<!-- header에 jquery-min 선언 되있음 -->
<c:import url="header.jsp"/>
<script>
   function fileUpload(inputFiles, condition){
      var sel_files =[]; //다중 선택시 파일 담을 배열
      var files = inputFiles.files; //선택된 파일들
      var filesArr = Array.prototype.slice.call(files); //files 배열로 담음
      
      if(files!=null && filesArr.length!=0){//선택된 파일이 없거나 , 배열에 담긴 파일이 없을 때
         
         filesArr.forEach(function(f){//배열에 담긴 파일 하나씩 올리기
            var reader = new FileReader();

            reader.onload = function (e) {
               var fileTag;
               
               if(condition == 'image'){//이미지버튼 클릭 후  파일 선택시 이미지 파일인지 확인
                  if(!(f.type.match("image.*"))){
                     alert('이미지파일을 선택해 주세요.');
                     return;
                  }
                  fileTag = $("<img/>");
               }else{
                  if(!(f.type.match("video.*"))){//동영상버튼 클릭 후  파일 선택시 동영상 파일인지 확인
                     alert('동영상파일을 선택해 주세요.');
                     return;
                  }
                  fileTag = $("<video/>");
                  fileTag.attr("controll","true");
               }
               
               sel_files.push(f);
               
               fileTag.css({"width":"100%","height":"100%"});
               fileTag.attr('src', e.target.result); //image or video 담긴 태그 생성
               //크기 같은 div에 담음
               var div = $("<div>").css({"width":"80","height":"80","display":"inline-block","background":"black"});
               div.append(fileTag);
               $(".boardForm").css("height","300px"); //upload파일 추가 될 때 전체 form div도 늘리기
               $('#uploadFile').css("height","90px"); //upload파일 추가 될 때 upload file form div 늘리기
               $('#uploadFile').append(div); 
               
            }
            //이미지를 data URL형태로 onload이벤트 콜백을 통해 생성한 파일태그의 src에 넣어줌
            reader.readAsDataURL(f); //file내용을 읽어 data URL형식의 문자열로 저장
         });
            
      }
      
   }
   
 	//게시물 
   	function board_view(view_stat) {
         if($("#board_lay").hasClass("hide")) {
            $("#board_lay").removeClass("hide");
        	//클릭시 설정해 둿던 아이디 값에 hide 값 삭제
            $("#board_area").attr("class","boardFormO");
        	//초기값 hide로 만든 btnO 값을 btnc 값으로 바꾸면서 만들어 둿던 div를 화면에 띄워줌
         } else {
            $("#board_lay").addClass("hide");
            //다시 한번 클릭시 설정해 둿던 아이디 값에 hide 값 추가
            $("#board_area").attr("class","boardForm");
            //화면에 보여준 div를 다시 hide값으로 바꿈
         }
         
         if($("#btnH").hasClass("hide")){
        	 $("#btnH").removeClass("hide");
         }else{
        	 $("#btnH").addClass("hide");
         }
   	}

      /* $(function () {
	        $('.boardForm').on("click", function () {
	        	
	            $(this).toggleClass('on');
	            // .boardForm 클래스를 클릭 했을때 .boardForm 옆에 on을 붙임
	            $(this).siblings().removeClass('on');
	            // .boardForm 클래스가 닫힐때 on을 뗌
	        });
	    });  */
	    
	    
</script>
</head>
<body>
<!-- <button role="button" onclick="handleBtnClick(event)" onKeyUp="handleBtnKeyUp(event)" aria-pressed="false"> 안녕</button> -->
<div class="wrap">
   <div class="left side">
      <div class="profile" style="height:200px; margin-top:100px;">프로필 이미지</div>
      <p>회원 이름</p>
      <button>개인정보수정</button><br><br>
      <button>친구리스트</button>
   </div>
   
   <div class="center" >
   
      <div class="boardForm" id="board_area" onclick="board_view('')" >
         <form class="board hide" id="board_lay" >
            <textarea name="content" id="content" maxlength="3000" ></textarea>
            <div class="uploadFile" id="uploadFile">
<!--                업로드한 이미지 표시 영역 사진 선택시 표시 하기 위함.-->
            </div>
            <div class="fileLInk">
               <img src="resources/images/picture.JPG" width="30" height="30" onclick="pictureFile.click()"/>
               <input type="file" name="pictureFile" id="inputFile" onchange="fileUpload(this,'image');" accept="image/*" hidden multiple/>
               <img src="resources/images/video.JPG" width="30" height="30" onclick="videoFile.click()"/>
               <input type="file" name="videoFile" id="inputFile" onchange="fileUpload(this,'video');" accept="video/*" hidden/>
            </div>
            <input id="btnH" class="btn hide" value="게시물 등록" onclick=""/>
         </form>
      </div>
      
      <div class="boardOne">게시물영역</div>
   </div>
   
   <div class="right side">
      오른쪽 사이드
   </div>
</div>

<c:import url="footer.jsp"/>
</body>
</html>
