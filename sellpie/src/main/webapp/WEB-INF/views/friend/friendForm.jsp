<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<c:import url="../header.jsp"></c:import>
<meta charset="UTF-8">
<title>친구 페이지</title>



<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/popper.min.js"></script>
</head>
<body class="w3-theme-l5">


<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
       <c:import url="../sideLeft.jsp"></c:import>
    <!-- End Left Column -->
    
    <!-- Middle Column -->
    <div class="w3-col m7" style="margin-left:25%;">
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
             <br>
         <h4 class="w3-margin-left" >친구</h4>
         <hr>          
              <div class="w3-container w3-padding-16 w3-row">
                 <c:forEach var="fList" items="${fList }">
                   <div class="w3-col m6 w3-container" >
                      <img src="resources/images/header/twice2.png" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:60px; height:60px;">
                       <button class="w3-btn w3-white w3-border w3-border-blue w3-round w3-right" style="margin-top:10px;">친구 삭제</button>
                       <br><h5><c:out value="${fList.name }"></c:out></h5>
                   </div>
                </c:forEach>
              </div>   
          </div>
        </div>
      </div>
      
      <div class="w3-row-padding w3-margin-top">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
             <br>
         <h4 class="w3-margin-left" >친구 신청 답하기</h4>
         <hr>          
              <div class="w3-container w3-padding-16 w3-row">
                <div class="w3-col m6 w3-container" >
                   <img src="resources/images/header/twice2.png" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:60px; height:60px;">
                    <button class="w3-btn w3-white w3-border w3-border-blue w3-round w3-right" style="margin-top:10px;">수락</button>
                    <button class="w3-btn w3-white w3-border w3-border-blue w3-round w3-right" style="margin-top:10px;">거절</button>
                    <br><h5>정인1</h5>
                </div>
                 
                <div class="w3-col m6 w3-container">
                   <img src="resources/images/header/twice2.png" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:60px; height:60px;">
                    <button class="w3-btn w3-white w3-border w3-border-blue w3-round w3-right" style="margin-top:10px;">친구 삭제</button>
                    <br><h5>정인2</h5>
                </div> 
              </div>   
                 
              </div>   
          </div>
        </div>
      </div>
    <!-- End Middle Column -->
    </div>
    <!-- Right Column -->
      <c:import url="../sideRight.jsp"></c:import>
    <!-- End Right Column -->
  <!-- End Grid -->
  </div>
<!-- End Page Container -->
</div>


</body>
</html>