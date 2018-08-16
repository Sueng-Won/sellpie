<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 신청</title>
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
   
   .sellerForm{
      width:600px;
      height:600px;
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
   
   /*  [role="button"] {
      padding:3px;
      border: 1px solid #CCC;
        }  */
     
     [class="boardFormO"] {
           width: 600px;
          height: 250px;
          margin-left: auto;
          margin-right: auto;
          margin: 10px;
     }

   #content{
          width: 598px;
          height: 80px;
          color: rgb(73, 73, 73);
          padding: 10px;
            font: 14px 맑은고딕, "Malgun Gothic", Dotum, 돋움, sans-serif;
          resize: none;
   } 
   
   .boardForm .board .btnA{
       visibility: hidden;
       display: none !important;
   }
   
   .boardForm .board .btnC{
       visibility: hidden;
       display: none !important;
   }
   
   .btnA{
       display: inline-block;
       width: 220px;
       height: 25px;
       text-align: center;
       vertical-align: middle;
       font: bold 16px/20px 맑은고딕, "Malgun Gothic", Dotum, 돋움, sans-serif;
       border-width: 1px;
       border-style: solid;
       border-image: initial;
       border-radius: 2px;
       text-decoration: none;
       background-color: #4267b2;
       border-color: #4267b2;
       -webkit-margin-before: 0.3em;
       -webkit-margin-after: 0.5em;
       -webkit-margin-start: 40px;
       -webkit-margin-end: 10px;
       cursor: pointer;
   }
   
   .btnC{
       display: inline-block;
       width: 220px;
       height: 25px;
       text-align: center;
       vertical-align: middle;
       font: bold 16px/20px 맑은고딕, "Malgun Gothic", Dotum, 돋움, sans-serif;
       border-width: 1px;
       border-style: solid;
       border-image: initial;
       border-radius: 2px;
       text-decoration: none;
       background: rgb(245, 248, 250);
       border-color: rgb(221, 221, 221);
       -webkit-margin-before: 0.3em;
       -webkit-margin-after: 0.5em;
       -webkit-margin-start: 70px;
       -webkit-margin-end: 10px;
       cursor: pointer;
   }
   
/*    #mask {  
     position:absolute;  
     z-index:9000;  
     background-color:#000;  
     display:none;  
     left:0;
     top:0;
   }
   .window{
     display: none;
     position:absolute;  
     left:100px;
     top:100px;
     z-index:10000;
   }    */
   
   /* ---------------------------------- */
   
   
</style>
<!-- header에 jquery-min 선언 되있음 -->

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
               $('#uploadFile').append(div); 
               
               $("#board").append(newTag);
            }
            //이미지를 data URL형태로 onload이벤트 콜백을 통해 생성한 파일태그의 src에 넣어줌
            reader.readAsDataURL(f); //file내용을 읽어 data URL형식의 문자열로 저장
         });
      }
   }
   
   function wrapWindowByMask(){
      //화면의 높이와 너비를 구한다.
      var maskHeight = $(document).height();  
      var maskWidth = $(window).width();  

      //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
      $('#mask').css({'width':maskWidth,'height':maskHeight});  

      //애니메이션 효과 - 일단 1초동안 까맣게 됐다가 80% 불투명도로 간다.
      $('#mask').fadeIn(1000);      
      $('#mask').fadeTo("slow",0.8);    

      //윈도우 같은 거 띄운다.
      $('.window').show();
      
   }
   
    //게시물 
      function board_view() {
         if($("#board").hasClass("hide")) {
            $("#board").removeClass("hide");
            
           //클릭시 설정해 둿던 아이디 값에 hide 값 삭제
            $("#board_area").attr("class","boardFormO");
           //초기값 hide로 만든 boardFormO 값 띄워줌
           
           $("#uploadFile").css("height","90px");
         }
         
         if($("#btnH").hasClass("hide")){
            $("#btnH").removeClass("hide");
         }/* else{
            $("#btnH").addClass("hide");
         } */
         
         if($("#btnC").hasClass("hide")){
            $("#btnC").removeClass("hide");
         }/* else{
            $("#btnC").addClass("hide");
         } */
         
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

<div>
<c:import url="../header.jsp"/>

<!-- <button role="button" onclick="handleBtnClick(event)" onKeyUp="handleBtnKeyUp(event)" aria-pressed="false"> 안녕</button> -->
   <div class="wrap">
      <div class="left side" style="height:600px;">
      <c:import url="../sideLeft.jsp"/>
      </div>
      
      <div class="center" >
         <div class="sellerForm">
         	<h1>판매자 신청</h1><br><br>
         	<label for="#bank">은행 : </label>
         	<select id="bank">
         		<option>NH 채움</option>
         		<option>신한</option>
         		<option>우리</option>
         		<option>하나</option>
         	</select>
         	<label for="bankNum">계좌번호 : </label>
         	<input type="text" placeholder="계좌번호(-없이 입력)"/><br>
         	<input type="text" placeholder="주소" readonly/><br>
         	<input type="text" placeholder="상세주소"/>
         	<textarea rows="10" cols="70" placeholder="품목 종류 : &#10;신청사유 : "></textarea>
         </div>
         
         
      </div>
      <div class="right side" style="height:600px;">
      <c:import url="../sideRight.jsp"/>
   </div>
   </div>

</div>
</body>
</html>