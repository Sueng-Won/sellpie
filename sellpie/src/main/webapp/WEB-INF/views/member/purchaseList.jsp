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
<style type="text/css">
.glyphicon-star, .glyphicon-star-empty{
color:orange;
}
</style>
<script>
$(document).ready(function(){
   var myKey = "nbeEbTsubouLt0cxAval8w"; // sweet tracker에서 발급받은 자신의 키 넣는다.
   var length = "${fn:length(pList)}";
   var pList = new Array();
   <c:forEach var="purchaseItem" items="${pList}" varStatus="status">
   		var tempObj = {
   			sName : "${purchaseItem.sName}",
   			pName : "${purchaseItem.pName}",
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
                for (var i = 0; i < length; i++) {
                  $.each(CompanyArray,function(key,value) {
                	  if(pList[i].delivCode == value.Code){
                        myData = (value.Name);
                        $("#delivTd"+i).html(myData);
                	  }
                  });
				}
                  
            }
        });

      
        $(".pList").not('.review').click(function() {
        	var thisObj = $(this);
        	//console.log($(thisObj).text());
        	//console.log('태그리무브'+$(this).next('tr').hasClass('infoTag'));
        	//console.log($(this).hasClass(".review"));
	        	if($(this).next('tr').hasClass('infoTag')){
	        		$(this).next('tr').remove();
	        	}else{
	        		
	           var t_code = $(thisObj).find('.tCode').text();
	           var t_invoice = $(thisObj).find('.invNum').text();
	           console.log(t_code);
	           console.log(t_invoice);
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
	                   
	                },
	                error:function(e){
	                	alert('택배정보조회 실패');
	                }
	            });
	        }
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
							      <th scope="col">리뷰등록</th>
							    </tr>
							  </thead>
							  <tbody id="pTable">
							  <c:forEach var="pIndex" items="${pList}" varStatus="status">
							    <tr class="pList" id="pList">
							      <th scope="row">${status.count}</th>
							      <td><c:out value="${pIndex.sName}"/></td>
							      <td><c:out value="${pIndex.pName}"/></td>
							      <td><c:out value="${pIndex.quantity}"/></td>
							      <td class="delivName" id="delivTd${status.index}"></td>
							      <td class="invNum"><c:out value="${pIndex.invNum}"/></td>
							      <td style="display:none" class="tCode"><c:out value="${pIndex.delivCode}"/></td>
							      <td class="review">
							      	<button onclick="selectProductReview(${pIndex.pNo},${pIndex.cNo});" class="reviewBtn w3-theme w3-button w3-tiny w3-padding-small">리뷰등록</button>
							      </td>
							      <td class="thisCno" style="display:none"><c:out value="${pIndex.cNo}"/></td>
							    </tr>
							   </c:forEach>
							  </tbody>
							</table>
							<!--상품평 등록 모달--------------------------------------------------------------------------------------->
							  <div id="id01" class="w3-modal w3-animate-opacity">
							    <div class="w3-modal-content w3-card-4" style="width:300px">
							      <header class="w3-container w3-theme"> 
							        <span onclick="document.getElementById('id01').style.display='none'" 
							        class="w3-button w3-large w3-display-topright">&times;</span>
							        <h2 align="center">별점 등록</h2>
							      </header>
							      <div class="w3-container">
							      	<input name="REVIEWSTAR" type="hidden" value="0"/>
							      	<h1 align="center">
								      	<i id="star1" class="glyphicon glyphicon-star-empty"></i>
										<i id="star2" class="glyphicon glyphicon-star-empty"></i>
										<i id="star3" class="glyphicon glyphicon-star-empty"></i>
										<i id="star4" class="glyphicon glyphicon-star-empty"></i>
										<i id="star5" class="glyphicon glyphicon-star-empty"></i>
							      	</h1>
							      </div>
							      <footer class="w3-container w3-theme">
							        <button onclick="insertReview();" class="w3-light-grey w3-button w3-right">리뷰등록</button>
							      </footer>
							    </div>
							  </div>
							<!-------------------------------------------------------------------------------------------------->
							</div>
						</div>
					</div>
				</div>
			</div>
			


			<!-- Right Column -->
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

var reviewPno = 0;
var reviewCno = 0;
var checkStarNum = 0;
//리뷰선택시 전역변수에 값 저장-----------------------------------------
function selectProductReview(pno, cno) {
	reviewPno = pno;
	reviewCno = cno;
	console.log(reviewPno);
	console.log(reviewCno);
	document.getElementById('id01').style.display='block';
}

//리뷰 등록---------------------------------------------------------------------
function insertReview(){
	console.log('reviewPno='+reviewPno);
	console.log('checkStarNum='+checkStarNum);
	$.ajax({
		type:"GET",
        dataType : "json",
        data:{pNo:reviewPno, reviewStar:checkStarNum, cNo:reviewCno},
        url:'insertReview.do',
        success:function(data){
        	if(data == 0){
        	alert('리뷰 등록 실패');
        	}else{
        	alert('리뷰 등록 완료');
        	}
        	purchasePage();
        },
        error:function(e){
        	alert('review ajax 실패');
        }
	});
}
$(function() {
//리뷰등록 여부검사---------------------------------------------------------------
	$('.pList').each(function() {
		var checkResult = '';
		var thisObj = $(this);
		var reviewTag = $(thisObj).find('.review');
		var thisCno = $(thisObj).find('.thisCno').text();
		console.log('thisObj='+thisObj+' / thisCno='+thisCno);
		$.ajax({
			type:"GET",
	        dataType : "json",
	        data:{checkCno:thisCno},
	        url:'checkReview.do',
	        success:function(data){
	        	console.log(data);
	        	if(data!=0){
	        		$(reviewTag).find('.reviewBtn').remove();
	        		checkResult = '<h5>';
	        		for(var i=0; i<5; i++){
	        			if(i<data){
	        				checkResult+='<i class="glyphicon glyphicon-star"></i>'
	        			}else{
	        				checkResult+='<i class="glyphicon glyphicon-star-empty"></i>'
	        			}
	        		}
	        		checkResult += '<h5>';
	        	}
	        	console.log(checkResult);
	        	console.log(reviewTag);
	       		$(reviewTag).append(checkResult);
	        },
	        error:function(e){
	        	alert('review ajax 실패');
	        }
		});
	});
//별점선택 로직------------------------------------------------------------------------
	$('i[id^="star"]').hover(
	function() {
		checkStarNum = 0;
		console.log($(this).attr('id').replace('star',''));
		//받아온 별점을 숫자로 변환
		var starNum = Number($(this).attr('id').replace('star',''));
		console.log(starNum);
		for(var i=1; i <= 5; i++){
			if(i <= starNum){
				$('#star'+i).addClass('glyphicon-star');
				$('#star'+i).removeClass('glyphicon-star-empty');
			}else{
				$('#star'+i).removeClass('glyphicon-star');
				$('#star'+i).addClass('glyphicon-star-empty');
			}
		}
			$('#star'+starNum).click(function(){
				console.log('별점클릭');
				checkStarNum = starNum;
			});
	},
	function() {
		if(checkStarNum == 0){
			$('i[id^="star"]').addClass('glyphicon-star-empty');
			$('i[id^="star"]').removeClass('glyphicon-star');
		}
	});
	
});
</script>
</body>
</html>