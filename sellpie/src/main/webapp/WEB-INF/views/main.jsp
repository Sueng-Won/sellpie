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
   overflow: hidden;   
}

.detail_content2 {
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

.detail_content2:target {
    opacity:1;
    pointer-events: auto;
}

.detail_content2 > div {
   position: absolute;
   top: 13%;
   left: 22%;
   width: 800px;
   height: 400px;
   padding: 16px;
   background-color: white;
   overflow: auto;   
}

.image_hide1 {
    background-color: rgba(0, 0, 0, .4);
    color: #fff;
    font-size: 35px;
    font-weight: normal;
   position: absolute;
   width: 350px;
   height: 240px;
   -webkit-margin-before: -6.9em;
}

.image_hide2 {
    display: table;
    height: 100%;
    width: 100%;
}

.image_hide3 {
    display: table-cell;
    text-align: center;
    vertical-align: middle;
}

.LoadMore{
   display: none;
}

</style>
<script>
$(function(){
   var msg = '<c:out value="${msg}"/>';
   if(msg.length!=0&&msg!=""){
      alert(msg);
   }
   
   var scroll = sessionStorage.getItem('scroll');
      if(null!=scroll&&scroll.length!=0&&scroll!=""){
         $(window).scrollTop(scroll);
         sessionStorage.removeItem('scroll');
   }
});
</script>
<script>  

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

   function getReply(bno){
      $.ajax({
         url:"selectReply.do",
         type:"get",
         data:{"bno":bno},
         success:function(data){
            for(var i=0; i<data.length; i++){
               var div = $("<div>");
               div.css({"height":"auto","width":"100%","margin-top":"5px"});
               var innerDiv1 = $("<div>");
               innerDiv1.css({"display":"inline-block","width":"28%"});   
               var img = '<img src="'+data[i].profileImg+'" alt="Avatar" class="w3-left w3-circle rounded-circle" style="width:20px; height:20px;">';
               innerDiv1.append(img);
               innerDiv1.append('&nbsp;<b style="font-size: 11px;">'+data[i].name+'</b>');
               div.append(innerDiv1);
               
               var innerDiv2 = $("<div>");
               innerDiv2.css({"background":"lightgray","display":"inline-block","padding":"3px","border-radius":"10px","margin-left":"6px","width":"70%"});
               
               innerDiv2.append('<span style="font-size:11px;">&nbsp;'+data[i].content+'&nbsp;</span>');
               div.append(innerDiv2);
               $("#replyInfo").append(div);
            }
            $("#rcount").text(data.length);
            
            if(data==null || data.length==0){
               $("#replyInfo").append("등록된 댓글이 없습니다.");
            }
               
         },error:function(e){
            console.log(e);
         }
      });
   }
   
   function openDetail(bno){
      $.ajax({
         url:"selectBoard.do",
         type:"get",
         data:{"bno":bno},
         success:function(data){
        	 
            var srcArr = data.resource;
            var detailInfo = $("<div class='w3-border-bottom'>");
            detailInfo.css({"height":"60px"});
            var profile = '<img src="'+data.profileImg+'" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:50px; height:50px;">';
            var name = '<span class="w3-large w3-margin-top">'+data.name+'</span><br>';
            detailInfo.append("<br>");
            detailInfo.append(profile);
            detailInfo.append(name);
            $("#detailBno").val(data.bno);
            var detailContent = $('<div class="w3-margin-bottom">');
            detailContent.css({"height":"130px"});
            var content = data.bcontent;
            detailContent.append(content);
            var tagDiv = '<div>'
            tagDiv += '<button type="button" class="w3-button w3-margin-bottom w3-align-right'
            	if(data.likeflag== 'T'){
            		console.log(data.likeflag);
            		tagDiv += ' w3-theme-d2'; 
            	}
            tagDiv += '" onclick="likeCheck(this);">'
            		  +'<i class="fa fa-thumbs-up"></i> &nbsp;'
					  +'<span>'+data.gcount+'</span>'
					  +'</button>'
					  +'<input type="hidden" name="bno" value="'+data.bno+'"/>'
            		  +'<button type="button" class="w3-button w3-theme-d2 w3-margin-bottom w3-align-right" onclick="javascript:$("#inputReply").focus();">'
            		  +'<i class="fa fa-comment"></i> &nbsp;'
                      +'<span id="rcount">'+data.rcount+'</span></button></div>';
                      	 
            if(srcArr.length!=0){
	            for(var i=0; i<srcArr.length; i++){
	               if(i==0){
	            	   if(srcArr[i].rsrc.indexOf("video__") == -1){
	            		   $("#fileview").append("<img src='"+srcArr[i].rsrc+"' style='width:90%; height:95%;' class='w3-margin-bottom mySlides'>");
	            	   }else{
	            		   $("#fileview").append("<video src='"+srcArr[i].rsrc+"' style='width:90%; height:95%;' class='w3-margin-bottom mySlides' controls='controls'></video>");
	            	   }
	               }
	               $("#subView").append("<img src='"+srcArr[i].rsrc+"' style='width:7%; height:6%;' class='w3-margin-bottom mySlides'>");
	            }
	            $("#infoView").prepend(tagDiv);
	            $("#infoView").prepend(detailContent);
	            $("#infoView").prepend(detailInfo);
            }else{
            	$("#resourceView").empty();
            	var div = $('<div class="w3-container w3-card w3-white w3-round">');
            	div.append(detailInfo);
            	detailContent.css({"height":"300px"});
            	div.append(detailContent);
            	div.append(tagDiv);
            	$("#resourceView").append(div);
            	$("#replyInfo").css({"height":"370px"});
            }
            
         },error:function(e){
            console.log(e);
         }
      });
      
      getReply(bno);
   
      location.href="#open";
   }

   function closeDetail(){
            $("#fileview").html('');
            $("#subView").html('');
            $("#replyInfo").html('');
            $("#detailInfo").html('');
            $("#detailContent").html('');
            var scrollTop = $(document).scrollTop();
            sessionStorage.setItem('scroll',scrollTop);
            location.href="selectBoardList.do";
   }
   
   $(document).ready(function(){
        //취소버튼
       $(".divC").click(function(){
             $("#uploadFile").empty();
             $("#content").html("");
       });
        
       setTimeout(function() {
                 location.href = "selectBoardList.do";
              }, 180000); // 3000ms(3초)가 경과하면 이 함수가 실행됩니다.
              
       //댓글 쓰고 엔터키 누를시 댓글 등록
       $("#inputReply").keyup(function(key) {
          if (key.keyCode == 13) {
             var content = $("#inputReply").text();
             $("#inputReply").text("");
              $("#inputReply").focus();
            $.ajax({
               url:"insertReply.do",
               type:"get",
               data:{"bno":$("#detailBno").val(), "content":content},
               success:function(data){
                  if(data != null){
                     $("#replyInfo").html("");
                     getReply(data);
                  }
               },error:function(e){
                  console.log("댓글 입력 에러",e);
               }
            });
          }

       });
              
       $("#inputReplyBtn").click(function(){
          var content = $("#inputReply").text();
         $("#inputReply").text("");
          $("#inputReply").focus();
         $.ajax({
            url:"insertReply.do",
            type:"get",
            data:{"bno":$("#detailBno").val(), "content":content},
            success:function(data){
               if(data != null){
                  $("#replyInfo").html("");
                  getReply(data);
               }
            },error:function(e){
               console.log("댓글 입력 에러",e);
            }
         });
       })
   }); 
      
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
   
   function validate(){
      var str = $("#bcontent").text();
      $("#hiddenContent").val(str);
      if(videoIdx >= 0){
    	  $("#videoFile").remove();
      }
   }
   
   function likeCheck(b){
      var likeBtn = b;
      var condition = "";
      var bno = $(likeBtn).next().val();
      if($(likeBtn).hasClass("w3-theme-d2")){
         $(likeBtn).removeClass("w3-theme-d2");
         condition = "sub"
      }else{
         $(likeBtn).addClass("w3-theme-d2");
         condition = "add"
      }
      
      $.ajax({
         url:"updateLike.do",
         type:"get",
         data:{"bno":bno,"condition":condition},
         success:function(data){
            var span = $(likeBtn).children()[1];
            $(span).text(data);
         },error:function(e){
            console.log("에러 : "+e);
         }
      });
   }
   
   $(function(){
	      $(".LoadMore").slice(0, 3).show(); // 최초 3개 선택
	         $("#load").click(function(e){ // Load More를 위한 클릭 이벤트e
	         e.preventDefault();
	            if($(".LoadMore:hidden").length == 0){ // 숨겨진 DIV가 있는지 체크
	                  alert("더 이상 항목이 없습니다.");
	                  location.href="selectBoardList.do";
	             }
	         $(".LoadMore:hidden").slice(0, 3).show(); // 숨김 설정된 다음 3개를 선택하여 표시
	      });
   });

</script>

</head><body class="w3-theme-l5">

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    	<c:import url="sideLeft.jsp"/>
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
      
<!--게시글보기 창 -->
         <form id="board" method="post"  action="/sellpie/insertBoard.do" onsubmit="validate();" enctype="multipart/form-data">
               <div class="detail_content2" id="contentOpen" >
<!--                나중에 세션정보로 바꾸기 -->
               <input type="hidden" name="email" value="<c:out value='${sessionScope.user.email }'/>"/> 
               <input type="hidden" name="bcontent" id="hiddenContent"/>
               <input type="hidden" name="exceptFile" id="exceptFile"/>
                  <div>
                     <div style="text-align:right;">
                        <a class="divC" href="#close"> 
                         <i class="fa fa-close w3-text-black"></i>
                      </a>
                   </div>
                   
                     <div class="w3-row-padding">
                       <div class="w3-col m12">
                         <div class="w3-card w3-round w3-white">
                           <div class="w3- container w3-padding">
                               <ul class="w3-ul" style="-webkit-margin-before: 0em; -webkit-margin-after: 0em; -webkit-margin-start: -30px; -webkit-margin-end: 0px;">
                                 <li class="w3-bar">
                                     <img src="resources/images/header/twice1.png" width="70" height="70" class="w3-bar-item w3-circle w3-hide-small" style="width:85px">
                                        <div class="w3-bar-item w3-padding-24">
                                           <span class="w3-large">트와이스</span><br>
                                        </div>
                                 </li>
                               </ul>
                                 <br>
                                 
                                <div>
                                   <div class="w3-padding-16" id="bcontent" aria-autocomplete="list" aria-controls="js_2ne" aria-describedby="placeholder-a0ec5" aria-multiline="true"  contenteditable="true" data-testid="status-attachment-mentions-input" role="textbox" spellcheck="true" style="/* outline: none; */ user-select: text; /* white-space: pre-wrap; */ word-wrap: break-word;">
                                   </div>
                                </div>
                                   <div class="uploadFile background-white" id="uploadFile">
                                    <!-- 업로드한 이미지 표시 영역 사진 선택시 표시 하기 위함.-->
                                   </div>
                                <hr>
                                
                                <div class="fileLInk background-white">
                                    <img src="resources/images/picture.JPG" width="30" height="30" onclick="imageFile.click()"/>
                                    <input type="file" name="file" id="imageFile" onchange="fileUpload(this,0);" accept="image/*" style="display:none" multiple/>
                                    <img src="resources/images/video.JPG" width="30" height="30" onclick="videoFile.click()"/>
                                    <input type="file" name="file" id="videoFile" onchange="fileUpload(this,1);" accept="video/*" style="display:none"/>
                                   </div>
                                   <br>
                                   
                             <button type="submit" class="w3-button w3-theme"><i class="fa fa-pencil"></i> &nbsp; 게시</button> 
                           </div>
                         </div>
                       </div>
                     </div>
               </div>
             </div>
          </form>
<!--게시글 보기창 끝-->
      
<!-- // 상세보기 창(1개만 존재, hidden) -->
            <div class="detail_content" id="open" >
            <input type='hidden' id='detailBno'/>
               <div>
                  <div style="text-align:right;">
                   <a onclick="closeDetail()">
                      <i class="fa fa-close w3-text-white"></i>
                   </a>
                </div>
                    <div class="w3-row" style="height:440px; overflow: hidden;">
                        <div class="w3-col m7" style="height:94%;">
                           <div class="w3-row" style="text-align:center; width:98%; height:98%;" >
                              <div class="w3-col" style="width:10%; height:95%;" onclick="plusDivs(-1);">
                                 <br><br><br><br><br>
                                 <img src="resources/images/header/nextLeft.png" style="width:28%; height:23%;">
                              </div>
                              <div class="w3-col" style="width:77%; height:95%; text-align:center;" id="fileview">
                              </div>
                              <div class="w3-col" style="width:10%; height:95%;" onclick="plusDivs(1);">
                                 <br><br><br><br><br>
                                 <img src="resources/images/header/nextRight.png" style="width:28%; height:23%;">
                              </div>
                           </div>                             
                           <div style="text-align:center" id="subView">
                           </div>
                        </div>
                        <div class="w3-col m4" style="width:36%; height:98%;">
                            <div class="w3-container w3-card w3-white w3-round w3-margin-left" id="infoView"><br>
                              
                               <div style="height:120px; width:100%; overflow-y:scroll;" id="replyInfo">
   <!--                                getReply에서 댓글 가져옴 -->
                               </div>
                               <div class="w3-row w3-cell-bottom w3-margin-bottom">
                                   <div class="w3-col m1">
                                  <img src="<c:out value='${sessionScope.user.profileImg}'/>" alt="Avatar" class="w3-left w3-circle rounded-circle w3-block" style="width:20px; height:20px;">
                                   </div>
                                   <div contenteditable="true" class="w3-border w3-col m9 w3-round" id="inputReply"></div>
                                   <div class="w3-col m1" style="border-radius: 17px;  width:22px; height:22px; text-align: center;">
                                        <img src="resources/images/header/submitImg.jpg" alt="Avatar" class="w3-left w3-circle rounded-circle w3-block" style="width:22px; height:22px;" id="inputReplyBtn">
                                   </div>
                               </div>
                             </div>
                        </div>
               </div>
            </div>
          </div>
<!--          상세보기창 끝-->
          
   <c:forEach var="board" items="${bList }" >
      <div class="w3-container w3-card w3-white w3-round w3-margin LoadMore"><br>
         <input type="hidden" name="bno" />
         
           <img src="<c:out value='${board.profileImg }'/>" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:60px; height:60px;">
           <span class="w3-right w3-opacity">
             <c:if test="${sessionScope.user.email eq board.email }">
              <button type="button" class="btn btn-default" aria-label="Left Align" onclick="javascript:location.href='updateForm.do?bno='+<c:out value='${board.bno }'/>">
                 <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
              </button>
              </c:if>
           </span>
           
           <h4><c:out value="${board.name }"></c:out></h4><br>
           <hr class="w3-clear">
           <p><c:out value="${board.bcontent }"></c:out></p>
           
           <table id="fileTb" cellspacing="0" class="w3-margin-bottom">
              <c:forEach var="resource" items="${board.resource }" varStatus="st">
                    
                    <!-- 사진 1개 -->
                    <c:if test="${board.resource.size() eq 1}">
                       <c:if test="${st.count eq 1}">
                       
                          <tr>
                               <td>
                                   <c:choose>
                                        <c:when test='${fn:contains(resource.rsrc,"video__") }'>
                                           <video src='${resource.rsrc}' style="width:720px; height:500px;" controls="controls"></video>
                                        </c:when>
                                        <c:otherwise>
                                           <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:720px; height:500px;" >
                                        </c:otherwise>
                                     </c:choose> 
                               </td>
                           </tr>
                            </c:if>
                     </c:if>
                     
                     <!-- 사진 2개 -->
                     <c:if test="${board.resource.size() eq 2}">
                        <c:if test="${st.count eq 1}">
                        <tr>
                            <td>
                                 <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:500px;">
                             </td>
                        </c:if>
                        <c:if test="${st.count eq 2}">
                            <td>
                                 <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:500px;">
                             </td>
                        </tr>
                        </c:if>
                     </c:if>
                     
                     <!-- 사진 3개 -->
                     <c:if test="${board.resource.size() eq 3}">
                        <c:if test="${st.count eq 1}">
                              <tr>
                                 <td colspan="2">
                                     <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:720px; height:240px;">
                                 </td>
                              </tr>
                        </c:if> 
                        <c:if test="${st.count >= 2}">
                            <c:if test="${st.count eq 2}">
                            <tr>
                                    <td>
                                       <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:240px;">
                                   </td>
                              </c:if>
                              <c:if test="${st.count eq 3}">
                                     <td>
                                         <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:240px;">
                                     </td>
                              </tr>
                               </c:if>
                        </c:if>
                     </c:if>
                     
                     <!-- 사진 4개 -->
                     <c:if test="${board.resource.size() eq 4}">
                        <c:if test="${st.count < 3}">
                            <c:if test="${st.count eq 1}">
                            <tr>
                                    <td>
                                       <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:240px;">
                                   </td>
                              </c:if>
                              <c:if test="${st.count eq 2}">
                                     <td>
                                         <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:240px;">
                                     </td>
                              </tr>
                               </c:if>
                        </c:if>
                        <c:if test="${st.count >= 3}">
                            <c:if test="${st.count eq 3}">
                            <tr>
                                    <td>
                                       <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:240px;">
                                   </td>
                              </c:if>
                              <c:if test="${st.count eq 4}">
                                     <td>
                                         <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:240px;">
                                     </td>
                              </tr>
                              </c:if>
                        </c:if>
                     </c:if>
                     
                     <!-- 사진 4개 이상-->
                     <c:if test="${board.resource.size() > 4}">
                        <c:if test="${st.count < 3}">
                            <c:if test="${st.count eq 1}">
                            <tr>
                                    <td>
                                       <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:240px;">
                                   </td>
                              </c:if>
                              <c:if test="${st.count eq 2}">
                                     <td>
                                         <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:240px;">
                                     </td>
                              </tr>
                               </c:if>
                        </c:if>
                        <c:if test="${st.count >= 3}">
                            <c:if test="${st.count eq 3}">
                            <tr>
                                    <td>
                                       <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:240px;">
                                   </td>
                              </c:if>
                              <c:if test="${st.count eq 4}">
                                     <td>
                                         <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:350px; height:240px;">
                                         <div class="image_hide1">
                                           <div class="image_hide2">
                                              <div class="image_hide3"><c:out value='${board.resource.size()-4}'></c:out>장+
                                              </div>
                                           </div>
                                           </div>
                                     </td>
                                     
                              </tr>
                              
                              </c:if>
                        </c:if>
                     </c:if>
 
              </c:forEach>
           </table>
           &nbsp;
           <button type="button" class="w3-button w3-margin-bottom w3-border  
           <c:if test="${fn:contains(board.likeflag, 'T') }">
               w3-theme-d2 
            </c:if>
            " onclick="likeCheck(this);"><i class="fa fa-thumbs-up"></i> &nbsp;          
              <span><c:out value="${board.gcount }"></c:out></span>
           </button>
           <input type="hidden" name="bno" value="<c:out value='${board.bno }'/>"/>
           <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom w3-border" onclick="openDetail('<c:out value="${board.bno }"/>')"><i class="fa fa-comment"></i> &nbsp;
            <c:out value="${board.rcount }"/>
           </button> 
       </div>
       </c:forEach> 
       <c:if test="${bList.size()>3 }">
    <div id="js-btn-wrap" class="btn-wrap" style="text-align:center;">
       		 <button type="button" class="btn btn-default btn-lg" id="load">
  				<span><h6>more</h6></span>
  				<span class="glyphicon glyphicon-triangle-bottom" aria-hidden="true"></span>
			 </button>
    </div>
    </c:if>
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
 