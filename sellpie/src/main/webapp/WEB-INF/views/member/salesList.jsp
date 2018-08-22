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
<style type="text/css">
td{
cursor: pointer;
}
</style>
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
							<h2>판매 물품</h2>
							<hr>
							<table class="table w3-striped w3-hoverable">
								<thead>
									<tr>
										<th>판매량</th>
										<th>품명</th>
										<th>가격</th>
										<th colspan="2">수량</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${sList}">
										<tr>
											<td><c:out value="${item.salesRate}"/></td>
											<td><c:out value="${item.pName}"/></td>
											<td><c:out value="${item.price}"/></td>
											<c:if test="${item.iscraft eq 'Y'.charAt(0)}">
												<td>제작</td>
											</c:if>
											<c:if test="${item.iscraft eq 'N'.charAt(0)}">
												<td><c:out value="${item.pQuantity}"/></td>
											</c:if>
											<td align="right">
											<button onclick="javascript: location.href = 'productUpdateForm.do?pNo='+${item.pNo}"
													class="w3-theme w3-button w3-tiny w3-padding-small">수정</button>
											<button onclick="deleteProduct(${item.pNo});"
													class="w3-theme w3-button w3-tiny w3-padding-small">삭제</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							
						</div>
					</div>
					<br>
						<div class="w3-card w3-round w3-white">
							<div class="w3-container w3-padding">
							<h2>판매 정보</h2>
							<hr>
							<form onsubmit="return changeKeyword();" id="searchForm" action="salesList.do" method="post">
								<div class="w3-row">
									<div class="w3-third w3-margin-right">
						                <input class="w3-input w3-border w3-round" type="text" id="keyword" name="keyword" placeholder="검색어"/><br>
							            <input class="w3-check w3-border w3-round" type="checkbox" id="isChecked" name="isChecked" value="YES">
							            <label for="#isChecked">미처리</label>
									</div>
									<div class="w3-quarter w3-margin-right">
										<select class="w3-select w3-border w3-round" id="searchSelector">
											<option value="pName">품명</option>
											<option value="buyer">주문자</option>
											<!-- <option value="pName">주소</option> -->
										</select>
									</div>
									<input class="w3-theme w3-button" type="submit" value="검색"/>
								</div>
							</form>
							<table class="table w3-striped w3-hoverable">
							  <thead>
							    <tr>
							      <th scope="col">#</th>
							      <th scope="col">물품명</th>
							      <th scope="col">수량</th>
							      <th scope="col">주문자</th>
							      <th scope="col">주소</th>
							      <th scope="col">택배사</th>
							      <th scope="col">송장번호</th>
							      <th scope="col"></th>
							    </tr>
							  </thead>
							  <tbody id="itemList">
							  <c:forEach var="pIndex" items="${pList}" varStatus="status">
							    <tr class="pList" id="pList">
							      <th scope="row">${status.index}</th>
							      <td><c:out value="${pIndex.pName}"/></td>
							      <td><c:out value="${pIndex.quantity}"/></td>
							      <td><c:out value="${pIndex.buyer}"/></td>
							      <td><c:out value="${pIndex.addr}"/> <c:out value="${pIndex.addrDetail}"/></td>
							      
							      <c:if test="${pIndex.invNum != null }">
							      <td class="delivName"><c:out value="${pIndex.delivCode}"/></td>
							      <td colspan="2" class="invNum"><c:out value="${pIndex.invNum}"/></td>
							      <td style="display:none" class="tCode"><c:out value="${pIndex.delivCode}"/></td>
							      </c:if>
							      
							      <c:if test="${pIndex.invNum == null }">
							      <td id="delivList">
							      	<select class="delivCode" name="delivCode"></select>
							      </td>
							      <td class="invNumInput">
							      	<input type="text" class="invNum" name="invNum"/>
							      </td>
							      <td>
							      	<button onclick="updateDeliv(this, ${pIndex.cNo});" class="w3-theme w3-button w3-tiny w3-padding-small">등록</button>
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
//물품 삭제------------------------------------------------------------
function deleteProduct(pNo){
	if(confirm('혼또니??')){
		saveUrl();
		location.href = 'deleteProduct.do?pNo='+pNo;
	}
}
//검색-------------------------------------------------------------
function changeKeyword(){
	$('#keyword').attr('name',$('#searchSelector').val());
	$('#searchForm').submit();
	console.log($('#searchSelector').val());
	return true;
}
//송장번호 등록 --------------------------------------------------------
function updateDeliv(obj, cNoVal) {
	var pList = $(obj).closest(".pList");
	var delivCodeVal = pList.find('.delivCode option:selected').val();
	var invNumVal = pList.find('.invNum').val();
	
	/* console.log('pList='+pList);
	console.log('delivCode='+delivCodeVal);
	console.log('invNum='+invNumVal);
	console.log('cNoVal='+cNoVal); */
	
	$.ajax({
        type:"GET",
        dataType : "json",
        url:'updateinvNum.do',
        data:{delivCode:delivCodeVal,invNum:invNumVal,cNo:cNoVal},
        success:function(data){
        	alert('등록완료');
			location.href = location.href = 'salesList.do?email=email';
        }
	});
}
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
	   var myKey = "nbeEbTsubouLt0cxAval8w"; // sweet tracker에서 발급받은 자신의 키 넣는다.
	   
	      // 택배사 목록 조회 company-api
	        $.ajax({
	            type:"GET",
	            dataType : "json",
	            url:"http://info.sweettracker.co.kr/api/v1/companylist?t_key="+myKey,
	            success:function(data){
	                  
	                  // 방법 1. JSON.parse 이용하기
	                  var parseData = JSON.parse(JSON.stringify(data));
	                   //console.log(parseData.Company); // 그중 Json Array에 접근하기 위해 Array명 Company 입력
	                  
	                  // 방법 2. Json으로 가져온 데이터에 Array로 바로 접근하기
	                  var CompanyArray = data.Company; // Json Array에 접근하기 위해 Array명 Company 입력
	                  //console.log(CompanyArray); 
	                  
	                  var myData="";
	                  var dilvData="";
	                  $.each(CompanyArray,function(key,value) {
	                        myData += ('<option value='+value.Code+'>' +'key:'+key+', Code:'+value.Code+',Name:'+value.Name + '</option>');                    
	                        dilvData +=('<option value='+value.Code+'>'+value.Name + '</option>');
		                  $('.pList').each(function() {
		              		if(value.Code == $(this).find('.delivName').text()){
		                	  $(this).find('.delivName').text(value.Name);
		              		//console.log($(this).text());
		              			//$(this).text(value.Name);
		              		
		              		}
		              	});
	                  });
		              $(".delivCode").html(dilvData);
	                  $("#tekbeCompnayList").html(myData);
	            }
	        });

	   
	      // 배송정보와 배송추적 tracking-api
	
	        $(".pList").click(function() {
	        	var thisObj = $(this);
	        	console.log('태그리무브'+$(this).next('tr').hasClass('infoTag'));
	        	if($(this).next('tr').hasClass('infoTag')){
	        		$(this).next('tr').remove();
	        	}else{
	        		
	           var t_code = $(this).find('.tCode').text();
	           var t_invoice = $(this).find('.invNum').text();
	           console.log(t_code);
	                  var myTracking="";
	                  var header ="";
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
	                   var trackingDetails = data.trackingDetails;
	                   
	                   
	                  header += ('<tr class="infoTag"><td colspan="7">'); 
	                  header += ('<table>'); 
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
	                     myTracking += ('</td></tr>');                                
	                  });
	                   myTracking += ('</table>');
	                  console.log(header+myTracking);
	                  thisObj.after(header+myTracking);
	                	   
	                   }
	                   
	                }
	            });
	        	}
	        });
	});
</script>
</body>
</html>