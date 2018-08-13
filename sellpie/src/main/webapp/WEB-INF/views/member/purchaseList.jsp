<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:import url="../header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매현황</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
   var myKey = "fMRb63gXbA5qym8Hl18qCw"; // sweet tracker에서 발급받은 자신의 키 넣는다.
   var length = "${fn:length(pList)}";
   var pList = new Array();
   <c:forEach var="purchaseItem" items="${pList}" varStatus="status">
   		var tempObj = {
   			sNo : "${purchaseItem.sNo}",
			pNo : "${purchaseItem.pNo}",
			quantity : "${purchaseItem.quantity}",
			delivCode : "${purchaseItem.delivCode}",
			invNum : "${purchaseItem.invNum}"
   		};
   		pList["${status.index}"] = tempObj;
   </c:forEach>
   /* <th scope="row">${status.index}</th>
   <td><c:out value="${pIndex.sNo}"/></td>
   <td><c:out value="${pIndex.pNo}"/></td>
   <td><c:out value="${pIndex.quantity}"/></td>
   <td id="delivTd"><input type="hidden" value="${pIndex.delivCode}"/ id="${status.index}+h"></td>
   <td><c:out value="${pIndex.invNum}"/></td> */
      // 택배사 목록 조회 company-api
        $.ajax({
            type:"GET",
            dataType : "json",
            url:"http://info.sweettracker.co.kr/api/v1/companylist?t_key="+myKey,
            success:function(data){
                  
                  // 방법 1. JSON.parse 이용하기
                  var parseData = JSON.parse(JSON.stringify(data));
                  // 그중 Json Array에 접근하기 위해 Array명 Company 입력
                  // 방법 2. Json으로 가져온 데이터에 Array로 바로 접근하기
                  var CompanyArray = data.Company; // Json Array에 접근하기 위해 Array명 Company 입력
                  var myData="";
                  console.log(pList);
                for (var i = 0; i < length; i++) {
                	console.log(pList[i].delivCode);
                  $.each(CompanyArray,function(key,value) {
                	  if(pList[i].delivCode == value.Code){
                        myData = (value.Name);
                        $("#delivTd"+i).html(myData);
                	  }
                  });
				}
                  
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
      
});


</script>


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
							구매현황
							<table class="table">
							  <thead>
							    <tr>
							      <th scope="col">#</th>
							      <th scope="col">판매자</th>
							      <th scope="col">물품명</th>
							      <th scope="col">수량</th>
							      <th scope="col">택배사</th>
							      <th scope="col">송장번호</th>
							    </tr>
							  </thead>
							  <tbody id="pTable">
							  <c:forEach var="pIndex" items="${pList}" varStatus="status">
							    <tr>
							      <th scope="row">${status.count}</th>
							      <td><c:out value="${pIndex.sNo}"/></td>
							      <td><c:out value="${pIndex.pNo}"/></td>
							      <td><c:out value="${pIndex.quantity}"/></td>
							      <td id="delivTd${status.index}"></td>
							      <td><c:out value="${pIndex.invNum}"/></td>
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
</script>
</body>
</html>