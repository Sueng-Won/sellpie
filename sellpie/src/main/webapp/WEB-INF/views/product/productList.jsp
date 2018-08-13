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

<script type="text/javascript">
	function productDetail(pNo){
		location.href="sellpie/productDetail.do?pNo="+pNo;
	}
	
	function insertContract(){
		$("#contractFrm").submit();
	}
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
									<div class="sellerBtn">
										<button class="w3-button w3-theme" onclick="javascript: location.href = 'productForm.do'">판매 등록</button>
									</div>

									<div class="sellList">
										<c:forEach var="product" items="${productList}" varStatus="status">
											<div class="card"  onclick="javascript:location.href='#open'">
												<img class="sellImg" src="#" alt="${product.pName}" >
												<div class="container">
													<h4>
														<b>${product.pName}</b>
													</h4>
													<p style="width:250px;word-break:break-all;word-wrap:break-word;">${product.pDetail }</p>
												</div>
											</div>
			<!-- 상세보기 창(hidden) -->
         	<div class="detail_content" id="open" >
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
		                        	 <img src="resources/images/header/twice2.png" style="width:90%; height:95%;" class="w3-margin-bottom mySlides">
	                        	</div>
	                        	<div class="w3-col" style="width:10%; height:95%;" onclick="plusDivs(1);">
	                        		<br><br><br><br><br>
	                        		<img src="resources/images/header/nextRight.png" style="width:28%; height:23%;">
	                        	</div>
	                        </div>                             
	                        <div style="text-align:center">
	                                <img src="resources/images/header/twice1.png" style="width:7%; height:6%;" class="w3-margin-bottom mySlides">
	                                <img src="resources/images/header/twice2.JPG" style="width:7%; height:6%;" class="w3-margin-bottom mySlides">
	                                <img src="resources/images/header/twice2.png" style="width:7%; height:6%;" class="w3-margin-bottom mySlides">
	                        </div>
                        </div>
                        <div class="w3-col m4" style="width:36%;">
                            <div class="w3-container w3-card w3-white w3-round"><br>
                              <div class="w3-border-bottom" style="height:10%;">
                                   <img src="resources/images/header/twice2.png" alt="Avatar" class="w3-left w3-circle w3-margin-right rounded-circle" style="width:40px; height:40px;">
                                    <h4>${product.pName}</h4><br>
                              </div>
                               <div class="w3-margin-bottom" style="height:27%; overflow-y:scroll;"> 
                                    <p>${product.pDetail}</p>
                               </div>
                               
                               <div style="text-align:center;">
                               	<form id="contractFrm" action="insertContract.do" method="get">
                               	<label>수량 : <input type="number" id="quantity" name="quantity" min="1" max="${product.pQuantity}"/>개 / ${product.pQuantity}</label>
                               	<input type="hidden" id="pNo" name="pNo" value="${product.pNo}"/>
                               	<input type="hidden" id="sNo" name="sNo" value="${product.sNo}"/>
                               	<!-- <input type="hidden" id="email" name="email" value="${sessionScope.member.email}"/> -->
                               	<input type="hidden" id="email" name="email" value="aaa@aaa.com"/>
                               	</form>
                               </div>
                               <div>
                                  <button class="btn btn-primary btn-lg btn-block" type="button" onclick="insertContract()">구매하기</button>
                               </div>
                               
                               <div style="height:30%; width:100%; text-align:center;">
                               	<h3>해당 제품의 총 평점은?</h3>
                               		<h3>
                               			<c:forEach begin="1" end="5" step="1" var="i">
                                        <!-- 별 추가할 곳 -->
                                        <c:if test="${i <= star }">
	                                        <span class = "glyphicon glyphicon-star" style="color:#f49d46"></span>
	                                    </c:if>
	                                    <c:if test="${i > star }">
	                                        <span class = "glyphicon glyphicon-star-empty " style="color:#f49d46"></span>
	                                    </c:if>
	                                    </c:forEach>
	                                </h3>
	                                <h6>(총 <c:out value="${count}"/>명의 평균을 반올림 한 값입니다.)</h6>
                                  </div>
                               </div>
                            </div>
                        </div>
					</div>
				</div>
		    </div>
<!--		    상세보기창 끝-->
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
</html>