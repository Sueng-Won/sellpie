<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:import url="../header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 상세 페이지</title>
<!-- glyphicon을 사용하기 위한 CDN방식의 link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
  <script src="resources/js/jquery.min.js"></script>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function searchAddr(){
	    var searchAddr = new daum.Postcode({
	        oncomplete: function(data) {
	            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
                
             // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                $("#addrLabel").text(fullRoadAddr);
                $("#addr").val(fullRoadAddr);
	        }
	    }).open();
	}
	
	function insertContract(pNo){
		if($("#addrDetail").val() == ""){
			var addrDetail = window.prompt("상세주소를 입력해주세요.");
    		$("#addrLabel").append(", "+addrDetail);
    		$("#addrDetail").val(addrDetail);
		}
			alert("구매가 완료되었습니다.");
			$("#contractFrm"+pNo).submit();
	}
</script>
<style type="text/css">
.sellerBtn {
	margin-top: 10px;
}

.sellList {
	border: 0px;
	display: inline;
}

.card {
	width: 250px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	transition: 0.3s;
	border-radius: 5px;
	float: left;
	margin-right: 30px;
	margin-top: 30px;
}

.card:hover {
	box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
}

.container {
	padding: 2px 16px;
}

.sellImg {
	witdh: 250px;
	height: 250px;
	border-radius: 5px 5px 0 0;
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
	overflow: auto;	
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
									<div class="sellerBtn">
										<button class="w3-button w3-theme" onclick="javascript: location.href = 'productForm.do'">판매 등록</button>
									</div>

									<div class="sellList">
										<c:forEach var="product" items="${productList}" varStatus="status">
											<div class="card"  onclick="javascript:location.href='#${product.pNo}open'">
												<img class="sellImg" src="#" alt="${product.pName}" >
												<div class="container">
													<h4>
														<b>${product.pName}</b>
													</h4>
													<p style="width:250px;word-break:break-all;word-wrap:break-word;">${product.pDetail }</p>
												</div>
											</div>
											<!-- 상세보기 창(hidden) -->
								         	<div class="detail_content" id="${product.pNo}open" >
								         		<div>
								         			<div style="text-align:right;">
								    					<a href="#close">
								    						<i class="fa fa-close w3-text-white"></i>
								    					</a>
								    				</div>
								                    <div class="w3-row" style="height:90%;">
								                        <div class="w3-col m7" style="height:94%;">
									                        <div class="w3-row" style="text-align:center; width:98%; height:98%;" >
									                        	<div class="w3-col" style="width:10%; height:95%;" onclick="plusDivs(-1);">
									                        		<br><br><br><br><br>
									                        		<img src="resources/images/header/nextLeft.png" style="width:28%; height:23%;">
									                        	</div>
									                        	<div class="w3-col" style="width:77%; height:95%; text-align:center;" id="fileview">
										                        	 <img src="${product.resource[0].rsrc }" style="width:90%; height:95%;" class="w3-margin-bottom mySlides">
									                        	</div>
									                        	<div class="w3-col" style="width:10%; height:95%;" onclick="plusDivs(1);">
									                        		<br><br><br><br><br>
									                        		<img src="resources/images/header/nextRight.png" style="width:28%; height:23%;">
									                        	</div>
									                        </div>
								                        </div>
								                        <div class="w3-col m4" style="width:36%;">
								                            <div class="w3-container w3-card w3-white w3-round"><br>
								                              <div class="w3-border-bottom" style="height:10%;">
								                                   <img src="resources/images/header/twice2.png" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:40px; height:40px;">
								                                   <c:if test="${sessionScope.sNo == product.sNo}">
									                                    <button class="w3-button w3-theme w3-right" onclick="javascript: location.href = 'productUpdateForm.do?pNo='+${product.pNo}">수정</button>
								                                   </c:if>
								                                    <h4>${product.pName}</h4><br>
								                              </div>
								                               <div class="w3-margin-bottom" style="height:27%; overflow-y:scroll;"> 
								                                    <p>${product.pDetail}</p>
								                               </div>
								                               <form id="contractFrm${product.pNo}" action="insertContract.do" method="post">
								                               <div style="text-align:center;">
								                               	<c:if test="${product.isCraft eq 'N'.charAt(0)}">
								                               	<label>수량 : <input type="number" id="quantity" name="quantity" min="1" max="${product.pQuantity}"/>개 / ${product.pQuantity}</label>
								                               	</c:if>
								                               	<c:if test="${product.isCraft eq 'Y'.charAt(0)}">
								                               		<label>개인 제작 상품은 1개만 구매 가능합니다.</label>
								                               		<input type="hidden" id="quantity" name="quantity" value="1"/>
								                               	</c:if>
								                               	<input type="hidden" id="pNo" name="pNo" value="${product.pNo}"/>
								                               	<input type="hidden" id="sNo" name="sNo" value="${product.sNo}"/>
								                               	<input type="hidden" id="email" name="email" value="${sessionScope.user.email}"/>
								                               </div>
								                               <div style="text-align:center;">
								                               <h5>
								                               	<label id="addrLabel">주소를 검색해주세요</label>
								                               </h5>
								                               <input id="addr" name="addr" type="hidden" value=""/>
								                               <input id="addrDetail" name="addrDetail" type="hidden" value=""/>
								                               	<a class="btn ptn-primary btn-sm btn-block" onclick="searchAddr();">주소검색</a>
								                               </div>
								                               </form>
								                               <button class="btn btn-primary btn-lg btn-block" type="button" onclick="insertContract(${product.pNo})">구매하기</button>
								                               
								                               <c:if test="${countList[status.index] eq 0}">
								                               		<h4 align="center">해당 제품의 리뷰가 없습니다.</h4>
								                               </c:if>
								                               <c:if test="${countList[status.index] ne 0 }">
								                               <div style="height:30%; width:100%; text-align:center;">
								                               	<h3>해당 제품의 총 평점은?</h3>
								                               		<h3>
								                               			<c:forEach begin="1" end="5" step="1" var="i">
								                                        <!-- 별 추가할 곳 -->
								                                        <c:if test="${i <= starList[status.index]}">
									                                        <span class = "glyphicon glyphicon-star" style="color:#f49d46"></span>
									                                    </c:if>
									                                    <c:if test="${i > starList[status.index] }">
									                                        <span class = "glyphicon glyphicon-star-empty " style="color:#f49d46"></span>
									                                    </c:if>
									                                    </c:forEach>
									                                </h3>
									                                <h6>(총 <c:out value="${countList[status.index]}"/>명의 평균을 반올림 한 값입니다.)</h6>
								                                  </div>
								                               </c:if>
								                               </div>
								                            </div>
								                        </div>
													</div>
												</div>
												<c:if test="${status.count mod 2 eq 0}">
													<br>
												</c:if>
										</c:forEach>
									</div>
								</div>
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
</html>