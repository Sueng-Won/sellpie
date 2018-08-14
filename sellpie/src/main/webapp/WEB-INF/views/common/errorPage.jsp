<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<style>
@-webkit-keyframes _404Style__bounceIn__11h {
  from, 20%, 40%, 60%, 80%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1); }
  0% {
    opacity: 0;
    -webkit-transform: scale3d(0.3, 0.3, 0.3);
            transform: scale3d(0.3, 0.3, 0.3); }
  20% {
    -webkit-transform: scale3d(1.5, 1.5, 1.5);
            transform: scale3d(1.5, 1.5, 1.5); }
  40% {
    -webkit-transform: scale3d(0.9, 0.9, 0.9);
            transform: scale3d(0.9, 0.9, 0.9); }
  60% {
    opacity: 1;
    -webkit-transform: scale3d(1.03, 1.03, 1.03);
            transform: scale3d(1.03, 1.03, 1.03); }
  80% {
    -webkit-transform: scale3d(0.97, 0.97, 0.97);
            transform: scale3d(0.97, 0.97, 0.97); }
  to {
    opacity: 1;
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1); } }
@keyframes _404Style__bounceIn__11h {
  from, 20%, 40%, 60%, 80%, to {
    -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1); }
  0% {
    opacity: 0;
    -webkit-transform: scale3d(0.3, 0.3, 0.3);
            transform: scale3d(0.3, 0.3, 0.3); }
  20% {
    -webkit-transform: scale3d(1.5, 1.5, 1.5);
            transform: scale3d(1.5, 1.5, 1.5); }
  40% {
    -webkit-transform: scale3d(0.9, 0.9, 0.9);
            transform: scale3d(0.9, 0.9, 0.9); }
  60% {
    opacity: 1;
    -webkit-transform: scale3d(1.03, 1.03, 1.03);
            transform: scale3d(1.03, 1.03, 1.03); }
  80% {
    -webkit-transform: scale3d(0.97, 0.97, 0.97);
            transform: scale3d(0.97, 0.97, 0.97); }
  to {
    opacity: 1;
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1); } }

._404Style__container__1q9 {
  height: 100%;
  min-height: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column; }

._404Style__contentContainer__3aY {
  -webkit-box-flex: 1;
      -ms-flex: 1;
          flex: 1 1; }

._404Style__contentWrapper__2it {
  position: relative;
  width: 780px;
  margin: auto;
  padding: 0 90px 100px 90px;
  background-color: #fff;
  border-radius: 8px;
  border: 1px solid #dce3e6; }

._404Style__spinner__1hR svg {
  width: 20px;
  height: 20px; }

._404Style__globalWarning__2ZY {
  background: #f8fafa;
  text-align: center; }
  ._404Style__globalWarning__2ZY span {
    width: 820px;
    line-height: 36px;
    font-size: 12px;
    color: #869197; }

._404Style__errorWrapper__9zS {
  position: fixed;
  width: 780px;
  text-align: center;
  margin: auto;
  top: 35%;
  left: 0;
  right: 0; }
  ._404Style__errorWrapper__9zS ._404Style__title__3Hc {
    font-size: 30px;
    font-weight: 600;
    color: #595959; }
  ._404Style__errorWrapper__9zS ._404Style__message__2H4 {
    height: 56px;
    font-size: 15px;
    color: #8c8c8c;
    margin-top: 17px;
    margin-bottom: 12px;
    line-height: 1.87; }
  ._404Style__errorWrapper__9zS ._404Style__btn__2XH {
    width: 119px;
    height: 42px;
    line-height: 42px;
    border-radius: 100px;
    background-image: -webkit-gradient(linear, left top, right top, from(#ff0d5b), to(#fb2942));
    background-image: linear-gradient(to right, #ff0d5b, #fb2942);
    margin: auto;
    font-size: 14px;
    color: #fff; }
</style>
</head>
<body>
	<div class="defaultLayout__contentContainer__1Gj">
		<div class="_404Style__container__1q9">
			<div>
				<div class="_404Style__errorWrapper__9zS">
					<h1 class="_404Style__title__3Hc">
						<span><c:out value="${msg}"/></span>
					</h1>
					<p class="_404Style__message__2H4">
					<span>죄송합니다. 자세한 문의 사항은 관리자에게 연락 바랍니다.</span>
					</p><a href="/sellpie/signIn.do" style="text-decoration:none">
					<div class="_404Style__btn__2XH">
						<span >홈으로 가기</span>
					</div>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>