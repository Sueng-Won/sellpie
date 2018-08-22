<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인</title>
<!-- ../resources/adminCss/ -->

  <script src="../resources/adminCss/js/jquery.min.js"></script>
  <link href="../resources/adminCss/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/adminCss/fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="../resources/adminCss/css/animate.min.css" rel="stylesheet">
  <!-- Custom styling plus plugins -->
  <link href="../resources/adminCss/css/custom.css" rel="stylesheet">
  <link href="../resources/adminCss/css/icheck/flat/green.css" rel="stylesheet">

<script>
	function adminLogin(){
		$("#adminForm").submit();
	}
	function adminJoin(){
		$("#adminJoin").submit();
	}
	
</script>

</head>
<body style="background:#F7F7F7;">

  <div class="">
    <a class="hiddenanchor" id="toregister"></a>
    <a class="hiddenanchor" id="tologin"></a>

    <div id="wrapper">
      <div id="login" class="animate form">
        <section class="login_content">
          <form id="adminForm" action="/sellpie/admin/adminLogin.do" method="post">
            <h1>일하러 왔나요?</h1>
            <div>
              <input type="text" class="form-control" name="adminId" placeholder="아이디" required="" />
            </div>
            <div>
              <input type="password" class="form-control" name="adminPwd" placeholder="비밀번호" required="" />
            </div>
            <div>
              <a class="btn btn-default submit" onclick="adminLogin();">로그인</a>
            </div>
            <div class="clearfix"></div>
            <div class="separator">

              <p class="change_link">아이디 안찾아줍니다.
                <a href="#toregister" class="to_register"> 관리자 계정생성 </a>
              </p>
              <div class="clearfix"></div>
              <br />
              <div>
                <h1><i class="fa fa-paw" style="font-size: 26px;"></i> SellPie!</h1>

                <p>©2018 KH 정보 교육원</p>
              </div>
            </div>
          </form>
          <!-- form -->
        </section>
        <!-- content -->
      </div>
      <div id="register" class="animate form">
        <section class="login_content">
          <form id="adminJoin" action="/sellpie/admin/adminJoin.do" method="post">
            <h1>관리자 계정 생성(DB에 ADMIN 테이블 추가해야합니다..)</h1>
            <div>
              <input type="text" class="form-control" name="adminId" placeholder="관리자 아이디" required="" />
            </div>
            <div>
              <input type="password" class="form-control" name="adminPwd" placeholder="비번" required="" />
            </div>
            <div>
              <a class="btn btn-default submit " onclick="adminJoin();">가입</a>
            </div>
            <div class="clearfix"></div>
            <div class="separator">

              <p class="change_link">관리자임?
                <a href="#tologin" class="to_register"> 로그인 페이지로 </a>
              </p>
              <div class="clearfix"></div>
              <br />
              <div>
                <h1><i class="fa fa-paw" style="font-size: 26px;"></i> SellPie!</h1>

                <p>©2018 KH 정보 교육원</p>
              </div>
            </div>
          </form>
          <!-- form -->
        </section>
        <!-- content -->
      </div>
    </div>
  </div>

</body>
</html>