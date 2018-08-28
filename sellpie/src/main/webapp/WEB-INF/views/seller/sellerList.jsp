<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:import url="../header.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태그 검색</title>
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
							#"${selTag}" 로 검색한 판매자 결과입니다.
							<div class="list-group">
									<c:forEach var="member" items="${sellerList}" varStatus="status">
										<c:forEach var="info" items="${sellerInfo}">
  											<c:if test="${info.email eq member.email}">
  											<a href="productList.do?sNo=${info.sNo}" class="list-group-item">
  												<img src="resources/images/userImg/${(empty member.profileImg)?'profile.png':member.profileImg}" class="w3-circle" style="height:50px;width:50px" alt="Avatar">
    											<b>${member.name}</b>
    											<span class="pull-right block">
    												판매 분야 : ${info.pCategory}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    										</span>
  											</a>
  											</c:if>
  										</c:forEach>
									</c:forEach>
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