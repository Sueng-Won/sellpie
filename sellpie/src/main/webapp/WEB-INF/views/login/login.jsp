<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="resources/css/mainCss/mainCss.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>SellFie</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script>
  $(function(){
     var count = 0;
     var $view2 = $(".yOZjD").children();
     setInterval(function(){
        if(count==3){
           $view2.eq(0).animate({opacity:"1"}, 2000);
        }
        if(count==4){
           count=0;
        }
        $view2.eq(count).animate({opacity:"0"}, 2000);
        count++
        $view2.eq(count).animate({opacity:"1"}, 2000);
        console.log(count);
     },4000);
        
     });
</script>
</head>
<body>
<span id="react-root">
   <section class="9eogI E3X2T">
      <main class="SCxLW  o64aR" role="main">
         <article class="_4_yKc">
            <div class="yOZjD _80tAB">
               <div class="view2" style="background-image: url('resources/images/mainImg/sample11.jpg');  opacity:1; ">
               </div>
               <div class="view2" style="background-image: url('resources/images/mainImg/sample9.png');  opacity:0; ">
               </div>
               <div class="view2" style="background-image: url('resources/images/mainImg/sample8.jpg');  opacity:0; ">
               </div>
               <div class="view2" style="background-image: url('resources/images/mainImg/sample3.jpg');  opacity:0; ">
               </div>
            </div>
            
            <div class="rgFsT ">
               <div class="gr27e ">
                  <h1 class="NXVPg Szr5J">#Sellfie</h1>
                  <div class="EPjEi">
                     <form class="HmktE" method="post">
                        <div class="-MzZI">
                           <div class="_9GP1n   ">
                              <div class="f0n8F ">
                                 <input class="_2hvTZ pexuQ zyHYP" id="id" name="id" placeholder="아이디를 입력하세요" maxlength="75"  type="text" >
                              </div>
                              <div class="i24fI"></div>
                           </div>
                        </div>
                        
                        <div class="-MzZI">
                           <div class="_9GP1n">
                              <div class="f0n8F ">
                              <input class="_2hvTZ pexuQ zyHYP" id="pwd" name="pwd" placeholder="비밀번호 입력" type="password">
                              </div>
                              <div class="i24fI"></div>
                           </div>
                        </div>
                        <div>
                           <span class="Um91Z _1OSdk">
                              <button class="_5f5mN">로그인</button>
                           </span>
                        </div>
                        <a class="_2Lks6" href="#">비밀번호를 잊으셨나요?</a>
                     </form>
                  </div>
               </div>
               <div class="gr27e">
               <p class="izU2O">계정이 없으신가요? <a href="#">가입하기</a></p>
               </div>
            </div>
         </article>
      </main>
      
      <footer class="_8Rna9  _3Laht " role="contentinfo">
         <div class="iseBh  VWk7Y " style="max-width: 935px;">
            <nav class="uxKLF">
               <ul class="ixdEe">
               <li class="K5OFK"><a class="l93RR" href="#">#Sellfie 정보</a></li>
               <li class="K5OFK"><a class="l93RR" href="#">지원</a></li>
               <li class="K5OFK"><a class="l93RR" href="#">홍보 센터</a></li>
               <li class="K5OFK"><a class="l93RR" href="#">API</a></li>
               <li class="K5OFK"><a class="l93RR" href="#">채용 정보</a></li>
               <li class="K5OFK"><a class="l93RR" href="#">개인정보처리방침</a></li>
               <li class="K5OFK"><a class="l93RR" href="#">약관</a></li>
               <li class="K5OFK"><a class="l93RR" href="#">디렉터리</a></li>
               <li class="K5OFK"><a class="l93RR" href="#">프로필</a></li>
               <li class="K5OFK"><a class="l93RR" href="#">해시태그</a></li>
            </ul>
            </nav>
         <span class="DINPA">© 2018 #Sellfie</span>
         </div>
      </footer>
      
      <div class="MFkQJ ABLKx  _1-msl">
         <div class="GfkS6 V5UBK"></div>
         <div class="ZsSMR">
            <a class="z1VUo KD4vR ABLKx " href="#" role="alert">
               <section class="dZvHF  fvoD7">
                  <p class="xK6EF">#Sellfie</p>
                  <p class="_5b2Kp">홈페이지 방문을 환영합니다</p>
               </section>
               
               <section class="FMlV_">
                  <button class="_4IAxF">보기</button>
               </section>
            </a>
         </div>
      </div>
   </section>
</span>
</body>
</html>