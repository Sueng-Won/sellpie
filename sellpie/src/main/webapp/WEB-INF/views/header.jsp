<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html><head><title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="resources/js/jquery-3.3.1.min.js"></script>
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
</style>
<script type="text/javascript">
	function searchContent(){
		
		var searchContentStr = $("#searchText").val();
		if(searchContentStr == ""){
			alert("검색어를 입력해주세요.");
		}
		else{
			if(searchContentStr.charAt(0)=="#"){
				$("#searchText").val(searchContentStr.slice(1));
				$("#searchFrm").attr("action","tagSearch.do");
				$("#searchFrm").submit();
			}
			else{
				$("#searchFrm").attr("action","memberSearch.do");
				$("#searchFrm").submit();
			}
		}
	}
</script>
</head>

<body class="w3-theme-l5">

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="selectBoardList.do" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i>#Sellfie</a>
<<<<<<< HEAD
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><i class="fa fa-globe"></i></a>
=======
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News"><i class="fa fa-globe"></i></a>
>>>>>>> branch 'HaSungMi' of https://github.com/Sueng-Won/sellpie.git
  <a href="/sellpie/searchFriendForm.do?email=<c:out value='${user.email }'/>" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Account Settings"><i class="fa fa-user"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><i class="fa fa-envelope"></i></a>
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">3</span></button>     
<<<<<<< HEAD
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
=======
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
>>>>>>> branch 'HaSungMi' of https://github.com/Sueng-Won/sellpie.git
    </div>
    
  </div>
  	
  <a href="/sellpie/logout.do" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" title="My Account">
    <img src="resources/images/header/sellfieLogo.png" class="w3-circle" style="height:30px; width:30px" alt="Avatar">
  </a>
  <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-center top_search" style="margin-top:10px; margin-bottom:0px;">
                <div class="input-group">
                	<form action="#" method="get" id="searchFrm">
                  <input type="text" class="form-control" placeholder="Search for..." name="searchText" id="searchText">
                  </form>
                  <span class="input-group-btn">
                            <button class="btn btn-default" type="button" onclick="searchContent();">
                            <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </span>
                      
                </div>
     </div>
 </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
</div>
</body>
</html>