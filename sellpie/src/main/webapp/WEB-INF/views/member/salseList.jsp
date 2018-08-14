<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:import url="../header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매현황</title>

</head>
<body class="w3-theme-l5">
	<!-- Page Container -->
	<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 80px">
		<!-- The Grid -->
		<div class="w3-row">
			<!-- Left Column -->
			<c:import url="../sideLeft.jsp"></c:import>
			<!-- End Left Column -->

			<!-- Middle Column -->
			<div class="w3-col m7" style="margin-left: 25%;">

				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card w3-round w3-white">
							<div class="w3-container w3-padding">
							판매현황
<span id="tekbeCompnayName">택배회사명: </span>
<select id="tekbeCompnayList" name="tekbeCompnayList"></select><br/><br/>

<span id="invoiceNumber">운송장번호: </span>
<input type="text" id="invoiceNumberText" name="invoiceNumberText"><br/><br/>
<button id="myButton1">택배 조회하기 </button>
<br/>
<br/>
<div>
   <table id="myPtag"></table>
</div>
<br/>
<div>
   <table id="myPtag2"></table>
</div>
							<table class="table">
							  <thead>
							    <tr>
							      <th scope="col">#</th>
							      <th scope="col">판매자</th>
							      <th scope="col">물품명</th>
							      <th scope="col">수량</th>
							      <th scope="col">택배사</th>
							      <th scope="col">송장번호</th>
							      <th scope="col"></th>
							    </tr>
							  </thead>
							  <tbody>
							  <c:forEach var="pIndex" items="${pList}" varStatus="status">
							    <tr id="pList">
							      <th scope="row">${status.index}</th>
							      <td><c:out value="${pIndex.sNo}"/></td>
							      <td><c:out value="${pIndex.pNo}"/></td>
							      <td><c:out value="${pIndex.quantity}"/></td>
							      
							      <c:if test="${pIndex.invNum == '' }">
							      <td><c:out value="${pIndex.delivCode}"/></td>
							      <td><c:out value="${pIndex.invNum}"/></td>
							      </c:if>
							      
							      <c:if test="${pIndex.invNum != '' }">
							      <td id="delivCode">
							      	<select id="delivList"></select>
							      </td>
							      <td id="invNum">
							      	<input type="text"/>
							      </td>
							      <td>
							      	<button class="w3-theme w3-button w3-tiny w3-padding-small">등록</button>
							      </td>
							      </c:if>
							      
							    </tr>
							   </c:forEach>
							  </tbody>
							</table>
							</div>
						</div>
					</div>
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
	<!-- <footer class="w3-container w3-theme-d3 w3-padding-16">
		<h5>Footer</h5>
	</footer>

	<footer class="w3-container w3-theme-d5">
		<p>
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				target="_blank">w3.css</a>
		</p>
	</footer> -->
</body>
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
$(document).ready(function(){
	   var myKey = "fMRb63gXbA5qym8Hl18qCw"; // sweet tracker에서 발급받은 자신의 키 넣는다.
	   
	      // 택배사 목록 조회 company-api
	        $.ajax({
	            type:"GET",
	            dataType : "json",
	            url:"http://info.sweettracker.co.kr/api/v1/companylist?t_key="+myKey,
	            success:function(data){
	                  
	                  // 방법 1. JSON.parse 이용하기
	                  var parseData = JSON.parse(JSON.stringify(data));
	                   console.log(parseData.Company); // 그중 Json Array에 접근하기 위해 Array명 Company 입력
	                  
	                  // 방법 2. Json으로 가져온 데이터에 Array로 바로 접근하기
	                  var CompanyArray = data.Company; // Json Array에 접근하기 위해 Array명 Company 입력
	                  console.log(CompanyArray); 
	                  
	                  var myData="";
	                  var dilvData="";
	                  $.each(CompanyArray,function(key,value) {
	                        myData += ('<option value='+value.Code+'>' +'key:'+key+', Code:'+value.Code+',Name:'+value.Name + '</option>');                    
	                        dilvData +=('<option value='+value.Code+'>'+value.Name + '</option>');
	                  });
	                  $("#tekbeCompnayList").html(myData);
	                  $("#delivList").html(dilvData);
	            }
	        });

	      // 배송정보와 배송추적 tracking-api
	        $("#myButton1").click(function() {
	           var t_code = $('#tekbeCompnayList option:selected').attr('value');
	           var t_invoice = $('#invoiceNumberText').val();
	            $.ajax({
	                type:"GET",
	                dataType : "json",
	                url:"http://info.sweettracker.co.kr/api/v1/trackingInfo?t_key="+myKey+"&t_code="+t_code+"&t_invoice="+t_invoice,
	                success:function(data){
	                   console.log(data);
	                   var myInvoiceData = "";
	                   if(data.status == false){
	                      myInvoiceData += ('<p>'+data.msg+'<p>');
	                   }else{
	                     myInvoiceData += ('<tr>');               
	                     myInvoiceData += ('<th>'+"보내는사람"+'</td>');                 
	                     myInvoiceData += ('<th>'+data.senderName+'</td>');                 
	                     myInvoiceData += ('</tr>');     
	                     myInvoiceData += ('<tr>');               
	                     myInvoiceData += ('<th>'+"제품정보"+'</td>');                 
	                     myInvoiceData += ('<th>'+data.itemName+'</td>');                 
	                     myInvoiceData += ('</tr>');     
	                     myInvoiceData += ('<tr>');               
	                     myInvoiceData += ('<th>'+"송장번호"+'</td>');                 
	                     myInvoiceData += ('<th>'+data.invoiceNo+'</td>');                 
	                     myInvoiceData += ('</tr>');     
	                     myInvoiceData += ('<tr>');               
	                     myInvoiceData += ('<th>'+"송장번호"+'</td>');                 
	                     myInvoiceData += ('<th>'+data.receiverAddr+'</td>');                 
	                     myInvoiceData += ('</tr>');                                    
	                   }
	                 
	                   
	                   $("#myPtag").html(myInvoiceData)
	                   
	                   var trackingDetails = data.trackingDetails;
	                   
	                   
	                  var myTracking="";
	                  var header ="";
	                  header += ('<tr>');               
	                  header += ('<th>'+"시간"+'</th>');
	                  header += ('<th>'+"장소"+'</th>');
	                  header += ('<th>'+"유형"+'</th>');
	                  header += ('<th>'+"전화번호"+'</th>');                 
	                 header += ('</tr>');     
	                  
	                  $.each(trackingDetails,function(key,value) {
	                     myTracking += ('<tr>');               
	                     myTracking += ('<td>'+value.timeString+'</td>');
	                     myTracking += ('<td>'+value.where+'</td>');
	                     myTracking += ('<td>'+value.kind+'</td>');
	                     myTracking += ('<td>'+value.telno+'</td>');                 
	                     myTracking += ('</tr>');                                
	                  });
	                  
	                  $("#myPtag2").html(header+myTracking);
	                   
	                }
	            });
	        });
	$('#pList').each(function() {
		console.log($(this).text());
		if(!$(this).text() != ''){
			$(this).$('#invNum').attr('text', '<input type="text"/>');
		}
	});
	});
</script>
</body>
</html>