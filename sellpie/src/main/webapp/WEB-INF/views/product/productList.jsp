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

<script type="text/javascript">
	function productDetail(int pNo){
		location.href="sellpie/productDetail.do?pNo="+pNo;
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
								<div class="detail_content">
									<div class="sellerBtn">
										<button>판매 등록</button>
									</div>

									<div class="sellList">
										<c:forEach var="product" items="${productList}" varStatus="status">
											<div class="card" onclick="productDetail('${product.pNo}');">
												<img class="sellImg" src="#" alt="${product.pName}" >
												<div class="container">
													<h4>
														<b>${product.pName}</b>
													</h4>
													<p>${product.pDetail }</p>
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

			<c:import url="../sideRight.jsp"></c:import>
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
		<p>
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				target="_blank">w3.css</a>
		</p>
	</footer>
</body>
</html>