<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<c:import url="../header.jsp"></c:import>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<title>계정설정 변경</title>
<style>
	.container{
		margin-top:100px;
	}
	.userInfo_List{
		text-align:right;
	}
	.header{
		margin-top:16px;
	}
	.userInfo, .cancel{
		display:inline-block;
		margin-left:20px;
		margin-bottom:16px;
	}
	.user{
		display:inline-block;
	}
	.alertBorder{
		border:2px solid red;
	}
</style>
<script>
 $(function(){
	 
	 $(function(){
		 $(".cancel").click(function(){
			location.href="/sellpie/selectBoardList.do";	 
		 });
	 });
	 $(function(){
		$(".userInfo").click(function(){
			$(".userInfoArea").submit();
		}); 
	 });
		$(".genderInfut").each(function(){
			
			var userGender = "${sessionScope.user.gender}";
			if(userGender.charAt(0)==$(this).val()){
				$(this).prop("checked", true);	
			}
		});
		var userPhone = "${sessionScope.user.phone}";
		var phones =userPhone.split("-");
		$(".phone :input").each(function(index){
			$(this).val(phones[index]);
			console.log(index);
		});
		
 });
 function validate(){
	 $(".name").removeClass("alertBorder");
	 $("#nameCheck").empty();
	 $("#pwd").removeClass("alertBorder");
	 $("#pwdCheck").empty();
	 $("#pwdChk").removeClass("alertBorder");
	 $("#pwdCheck2").empty();
	 
	 $("input[id*='phone']").each(function(value, index){
			$(this).removeClass("alertBorder");
		});
	 $("#phoneCheck").empty();
	 
	 
	 var pwd = $("#pwd").val();
	 var regex=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/
	 var flag = (pwd != '' && pwd != 'undefined' && regex.test(pwd));
	 var pwdCheck = $("#pwdChk").val()==$("#pwd").val();
	 
	 var name = $(".name").val();
	 var nameRegex= /^[가-힣]{2,4}$/;
	 var nameFlag = (name != '' && name != 'undefined' && nameRegex.test(name));
	 
	 var phoneNum = new Array();
		$("input[id*='phone']").each(function(value, index){
			phoneNum.push($(this).val());
			
		});
		var phoneTest = phoneNum.join('');
		var phoneFinal = phoneNum.join('-');
		console.log(phoneTest);
		var regPhone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;
		console.log(regPhone.test(phoneTest));
		
	 if(!nameFlag){
		 	$(".name").addClass("alertBorder");
			$(".name").css("font-color", "red");
			$("#nameCheck").text("한글 4글자 이내로 입력해주세요.");
		 return false;
	 }
	 
	 
	 else if(!flag){
		$("#pwd").addClass("alertBorder");
		$("#pwdCheck").css("font-color", "red");
		$("#pwdCheck").text("비밀번호는8자리이상, 숫자, 문자, 특수문자가 있어야합니다.");
		return false;
	 }
	 else if(!pwdCheck){
		$("#pwdChk").addClass("alertBorder");
		$("#pwdCheck2").text("비밀번호가 맞지 않습니다.");
		return false;
	}
	 
	 else if(!(regPhone.test(phoneTest))){
		 $("input[id*='phone']").each(function(value, index){
				$(this).addClass("alertBorder");
			});
			$("#phoneCheck").text("핸드폰 번호를 확인 해주세요.");
			return false;
	 
	 }
	 $("#phoneResult").val(phoneFinal);
	 
	 return true;
 }
</script>
</head>
<body>
	<div class="w3-card container">
  			<header class="w3-container  header">
  				<h1 class="user"><c:out value="${sessionScope.user.name }"/></h1>
  				  <button type="submit" class="w3-btn w3-white w3-border w3-border-blue w3-round userInfo">수정 완료</button>
  				  <button class="w3-btn w3-white w3-border w3-border-red w3-round cancel">취소</button>
			</header>
			<hr>
			<div class="w3-container userInfo_board">
 				 <form class="w3-container w3-card w3-white w3-round w3-margin userInfoArea" action="modifyUserInfo.do" method="post" onsubmit="return validate();"><br>
                      <h1 align="center" >회원 정보 수정</h1>
                    <hr class="w3-clear">
                    <table id="fileTb" cellspacing="0" align="center" class="w3-margin-bottom">
                        <tbody>
                        <tr >
                            <td>
                                <h3><label>이-메일</label>
										<input class="w3-input" type="text" name="email" readonly value="<c:out value='${sessionScope.user.email }'/>"></h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 <h3 ><label>이름</label>
										<input class="w3-input w3-tooltip name" type="text"  name="name" value="<c:out value='${sessionScope.user.name }'/>"/> </h3>
										<span id="nameCheck"></span>
                            </td>
                        </tr>
                        <tr>
                        	<td >
                        		<h3><label for="pwd">비밀번호</label>
										<input class="w3-input" id="pwd" name="pwd" type="password"  required/></h3>
                        				<span id="pwdCheck" ></span>
                        	</td>
                        </tr>
                        <tr>
                        	<td>
                        	<h3><label for="pwdChk">비밀번호 확인</label>
										<input class="w3-input" id="pwdChk" type="password" required/></h3>
										<span id="pwdCheck2" ></span>
                        	</td>
                        </tr>
                        <tr>
                        	<td>
                        		<h3><label>핸드폰 번호</label><br></h3>
                        		<div class="phone" style="display:inline-block;">
										<input class="w3-input " id="phone1" type="text" style="width:32%; display:inline-block;"/>-
										<input class="w3-input " id="phone2" type="text" style="width:32%; display:inline-block;"/>-
										<input class="w3-input " id="phone3" type="text" style="width:32%; display:inline-block;" />
										<input type="hidden" name="phone" id="phoneResult"/>
										<span id="phoneCheck"></span>
                        		</div>
                        	</td>
                        </tr>
                        <tr>
                        	<td ><br>
								<label for="genderM">남자</label>
                        		<input class="w3-radio genderInfut" type="radio" name="gender" id="genderM" value="M" checked> 
								&nbsp;&nbsp;&nbsp;&nbsp;
								<label for="genderF">여자</label>	
								<input class="w3-radio genderInfut" type="radio" name="gender" id="genderF" value="F">
                        	</td>
                        </tr>
                    </tbody>
                  </table>
                </form>
			</div>
			
			</div>
<%-- <c:import url="../footer.jsp"></c:import> --%>
</body>
</html>