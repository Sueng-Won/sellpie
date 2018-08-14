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
</style>
<script>
$(function(){
	var msg = '<c:out value="${msg}"/>';
	if(msg.length!=0&&msg!=""){
		alert(msg);
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
				for(var i=0; i<srcArr.length; i++){
					if(i==0){
						$("#fileview").append("<img src='"+srcArr[i].rsrc+"' style='width:90%; height:95%;' class='w3-margin-bottom mySlides'>");
					}
					$("#subView").append("<img src='"+srcArr[i].rsrc+"' style='width:7%; height:6%;' class='w3-margin-bottom mySlides'>");
				}
				
				var profile = '<img src="'+data.profileImg+'" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:50px; height:50px;">';
				var name = '<span class="w3-large w3-margin-top">'+data.name+'</span><br>';
				$("#detailInfo").append(profile);
				$("#detailInfo").append(name);
				$("#detailBno").val(data.bno);
				
				var content = data.bcontent;
				$("#detailContent").append(content);
				
				
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
		location.href="#close";
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
       });
       
       

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
			   console.log($(span).text(data));
		   },error:function(e){
			   console.log("에러 : "+e);
		   }
	   });
   }
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
               <input type="hidden" name="email" value="test2@naver.com"/> 
               <input type="hidden" name="bcontent" id="hiddenContent"/>
                  <div>
                     <div style="text-align:right;">
                        <a class="divC" onclick="#close"> 
                         <i class="fa fa-close w3-text-black"></i>
                      </a>
                   </div>
                   
                   
                     <div class="w3-row-padding">
                       <div class="w3-col m12">
                         <div class="w3-card w3-round w3-white">
                           <div class="w3-container w3-padding">
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
                            <div class="w3-container w3-card w3-white w3-round"><br>
	                              <div class="w3-border-bottom" style="height:60px;" id="detailInfo">
	<!--                               	ajax에서 프로필 정보 가져옴 -->
	                              </div>
	                               <div class="w3-margin-bottom" style="height:130px; overflow-y:scroll;" id="detailContent"> 
	<!--                                     ajax에서 내용 가져옴 -->
	                               </div>
	                               <div>
	                                  <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom w3-align-right"><i class="fa fa-thumbs-up"></i> &nbsp;600</button>
	                                   <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom w3-align-right" onclick="javascript:$('#inputReply').focus();"><i class="fa fa-comment"></i> &nbsp;
	                                   		<span id="rcount"></span>
	                                   </button>  
	                               </div>
	                           
	                            <div style="height:120px; width:100%; overflow-y:scroll;" id="replyInfo">
	<!--                             	getReply에서 댓글 가져옴 -->
	                            </div>
	                            <div class="w3-row w3-cell-bottom w3-margin-bottom">
		                             <div class="w3-col m1">
		                                     <img src="resources/images/header/twice2.png" alt="Avatar" class="w3-left w3-circle rounded-circle w3-block" style="width:20px; height:20px;">
	<!-- 	       세션에 정보 생기면 이걸로 바꾸기                              <img src="<c:out value='${user.profileImg}'/>" alt="Avatar" class="w3-left w3-circle rounded-circle w3-block" style="width:20px; height:20px;"> -->
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
          
      
    <c:forEach var="board" items="${bList }">
   <div class="w3-container w3-card w3-white w3-round w3-margin"><br>
        <img src="<c:out value='${board.profileImg }'/>" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:60px; height:60px;">
        <span class="w3-right w3-opacity">32 min</span>
        
        <h4><c:out value="${board.name }"></c:out></h4><br>
        <hr class="w3-clear">
        <p><c:out value="${board.bcontent }"></c:out></p>
        
        <table id="fileTb" cellspacing="0" class="w3-margin-bottom">
           <c:forEach var="resource" items="${board.resource }" varStatus="st">
                 
                 <c:if test="${board.resource.size() eq 1}">
                    <c:if test="${st.count eq 1}">
                       <tr>
                            <td>
                                <img src="<c:out value='${resource.rsrc}'></c:out>" style="width:720px; height:500px;" >
                            </td>
                        </tr>
                     </c:if>
                  </c:if>
                  
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
 



</body></html>
 