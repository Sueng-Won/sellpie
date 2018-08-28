<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>SellPie</title>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> <!-- 스윗알람 CDN -->
<style type="text/css" id="s1956-0">

@-webkit-keyframes root__bounceIn__3s4 {
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
@keyframes root__bounceIn__3s4 {
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

* {
  font-family: "Noto Sans KR", "Noto Sans", Helvetica, Arial, "Malgun Gothic", sans-serif; }

 {
  /*
html5doctor.com Reset Stylesheet
v1.6.1
Last Updated: 2010-09-17
Author: Richard Clark - http://richclarkdesign.com
Twitter: @rich_clark
*/
  /* change colours to suit your needs */
  /* change colours to suit your needs */
  /* change border colour to suit your needs */
  /**
 * Draft v0.10.0
 *
 * Copyright (c) 2013-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */ }
  html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent; }
  body {
    line-height: 1; }
  article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
    display: block; }
  nav ul {
    list-style: none; }
  blockquote, q {
    quotes: none; }
  blockquote:before, blockquote:after, q:before, q:after {
    content: "";
    content: none; }
  a {
    margin: 0;
    padding: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent; }
  ins {
    background-color: #ff9;
    color: #000;
    text-decoration: none; }
  mark {
    background-color: #ff9;
    color: #000;
    font-style: italic;
    font-weight: 600; }
  del {
    text-decoration: line-through; }
  abbr[title], dfn[title] {
    border-bottom: 1px dotted;
    cursor: help; }
  table {
    border-collapse: collapse;
    border-spacing: 0; }
  hr {
    display: block;
    height: 1px;
    border: 0;
    border-top: 1px solid #cccccc;
    margin: 1em 0;
    padding: 0; }
  input, select {
    vertical-align: middle; }
  .DraftEditor-editorContainer, .DraftEditor-root, .public-DraftEditor-content {
    height: inherit;
    text-align: initial; }
  .public-DraftEditor-content[contenteditable="true"] {
    -webkit-user-modify: read-write-plaintext-only; }
  .DraftEditor-root {
    position: relative; }
  .DraftEditor-editorContainer {
    background-color: rgba(255, 255, 255, 0);
    border-left: 0.1px solid transparent;
    position: relative;
    z-index: 1; }
  .public-DraftEditor-block {
    position: relative; }
  .DraftEditor-alignLeft .public-DraftStyleDefault-block {
    text-align: left; }
  .DraftEditor-alignLeft .public-DraftEditorPlaceholder-root {
    left: 0;
    text-align: left; }
  .DraftEditor-alignCenter .public-DraftStyleDefault-block {
    text-align: center; }
  .DraftEditor-alignCenter .public-DraftEditorPlaceholder-root {
    margin: 0 auto;
    text-align: center;
    width: 100%; }
  .DraftEditor-alignRight .public-DraftStyleDefault-block {
    text-align: right; }
  .DraftEditor-alignRight .public-DraftEditorPlaceholder-root {
    right: 0;
    text-align: right; }
  .public-DraftEditorPlaceholder-root {
    color: #9197a3;
    position: absolute;
    z-index: 0; }
  .public-DraftEditorPlaceholder-hasFocus {
    color: #bdc1c9; }
  .DraftEditorPlaceholder-hidden {
    display: none; }
  .public-DraftStyleDefault-block {
    position: relative;
    white-space: pre-wrap; }
  .public-DraftStyleDefault-ltr {
    direction: ltr;
    text-align: left; }
  .public-DraftStyleDefault-rtl {
    direction: rtl;
    text-align: right; }
  .public-DraftStyleDefault-listLTR {
    direction: ltr; }
  .public-DraftStyleDefault-listRTL {
    direction: rtl; }
  .public-DraftStyleDefault-ol, .public-DraftStyleDefault-ul {
    margin: 16px 0;
    padding: 0; }
  .public-DraftStyleDefault-depth0.public-DraftStyleDefault-listLTR {
    margin-left: 1.5em; }
  .public-DraftStyleDefault-depth0.public-DraftStyleDefault-listRTL {
    margin-right: 1.5em; }
  .public-DraftStyleDefault-depth1.public-DraftStyleDefault-listLTR {
    margin-left: 3em; }
  .public-DraftStyleDefault-depth1.public-DraftStyleDefault-listRTL {
    margin-right: 3em; }
  .public-DraftStyleDefault-depth2.public-DraftStyleDefault-listLTR {
    margin-left: 4.5em; }
  .public-DraftStyleDefault-depth2.public-DraftStyleDefault-listRTL {
    margin-right: 4.5em; }
  .public-DraftStyleDefault-depth3.public-DraftStyleDefault-listLTR {
    margin-left: 6em; }
  .public-DraftStyleDefault-depth3.public-DraftStyleDefault-listRTL {
    margin-right: 6em; }
  .public-DraftStyleDefault-depth4.public-DraftStyleDefault-listLTR {
    margin-left: 7.5em; }
  .public-DraftStyleDefault-depth4.public-DraftStyleDefault-listRTL {
    margin-right: 7.5em; }
  .public-DraftStyleDefault-unorderedListItem {
    list-style-type: square;
    position: relative; }
  .public-DraftStyleDefault-unorderedListItem.public-DraftStyleDefault-depth0 {
    list-style-type: disc; }
  .public-DraftStyleDefault-unorderedListItem.public-DraftStyleDefault-depth1 {
    list-style-type: circle; }
  .public-DraftStyleDefault-orderedListItem {
    list-style-type: none;
    position: relative; }
  .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-listLTR:before {
    left: -36px;
    position: absolute;
    text-align: right;
    width: 30px; }
  .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-listRTL:before {
    position: absolute;
    right: -36px;
    text-align: left;
    width: 30px; }
  .public-DraftStyleDefault-orderedListItem:before {
    content: counter(ol0) ". ";
    counter-increment: ol0; }
  .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-depth1:before {
    content: counter(ol1) ". ";
    counter-increment: ol1; }
  .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-depth2:before {
    content: counter(ol2) ". ";
    counter-increment: ol2; }
  .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-depth3:before {
    content: counter(ol3) ". ";
    counter-increment: ol3; }
  .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-depth4:before {
    content: counter(ol4) ". ";
    counter-increment: ol4; }
  .public-DraftStyleDefault-depth0.public-DraftStyleDefault-reset {
    counter-reset: ol0; }
  .public-DraftStyleDefault-depth1.public-DraftStyleDefault-reset {
    counter-reset: ol1; }
  .public-DraftStyleDefault-depth2.public-DraftStyleDefault-reset {
    counter-reset: ol2; }
  .public-DraftStyleDefault-depth3.public-DraftStyleDefault-reset {
    counter-reset: ol3; }
  .public-DraftStyleDefault-depth4.public-DraftStyleDefault-reset {
    counter-reset: ol4; }

#sellpie-web {
  height: 100%;
  min-height: 100%; }
  #sellpie-web > div {
    height: 100%;
    min-height: 100%; }

.post-show-dialog-content > div {
  border-radius: 8px !important;
  background-color: #fff !important;
  -webkit-box-shadow: 0 4px 10px 4px rgba(0, 0, 0, 0.05), 0 1px 1px 0 rgba(0, 0, 0, 0.1) !important;
          box-shadow: 0 4px 10px 4px rgba(0, 0, 0, 0.05), 0 1px 1px 0 rgba(0, 0, 0, 0.1) !important;
  border: solid 1px #dce3e6 !important; }

.post-show-dialog-body {
  overflow: hidden !important; }

img[data-role^="brochure"] {
  cursor: -webkit-zoom-in;
  cursor: zoom-in; }

html, body {
  height: 100%;
  min-height: 100%;
  color: #333;
  overflow-anchor: none; }

.wf-inactive {
  visibility: visible; }

.wf-active {
  visibility: visible; }

button {
  padding: 0;
  margin: 0;
  border: 0;
  background-color: transparent; }

* {
  -webkit-box-sizing: border-box;
          box-sizing: border-box; }

a {
  color: inherit;
  cursor: pointer;
  text-decoration: none; }

ul {
  list-style: none; }

button {
  padding: 0;
  margin: 0; }

button:focus {
  outline: 0; }

button::-moz-focus-inner {
  border: 0; }

input[type="number"]::-webkit-inner-spin-button, input[type="number"]::-webkit-outer-spin-button {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  margin: 0; }

.clearfix:before, .clearfix:after {
  content: " ";
  display: table; }

.clearfix:after {
  clear: both; }

.root__rootWrapper__1So {
  position: relative;
  height: 100%;
  min-height: 100%; }

.root__sidebarSliderEnter__2T_ {
  -webkit-transition: -webkit-transform 200ms cubic-bezier(0.4, 0, 0.6, 1);
  transition: -webkit-transform 200ms cubic-bezier(0.4, 0, 0.6, 1);
  transition: transform 200ms cubic-bezier(0.4, 0, 0.6, 1);
  transition: transform 200ms cubic-bezier(0.4, 0, 0.6, 1), -webkit-transform 200ms cubic-bezier(0.4, 0, 0.6, 1);
  -webkit-transform: translate3d(100%, 0, 0);
          transform: translate3d(100%, 0, 0); }

.root__sidebarSliderEnterActive__5BV {
  -webkit-transform: translate3d(0, 0%, 0);
          transform: translate3d(0, 0%, 0); }

.root__sidebarSliderLeave__1FE {
  -webkit-transition: -webkit-transform 150ms cubic-bezier(0.4, 0, 0.6, 1);
  transition: -webkit-transform 150ms cubic-bezier(0.4, 0, 0.6, 1);
  transition: transform 150ms cubic-bezier(0.4, 0, 0.6, 1);
  transition: transform 150ms cubic-bezier(0.4, 0, 0.6, 1), -webkit-transform 150ms cubic-bezier(0.4, 0, 0.6, 1);
  -webkit-transform: translate3d(0, 0%, 0);
          transform: translate3d(0, 0%, 0); }

.root__sidebarSliderLeaveActive__1Lf {
  -webkit-transform: translate3d(100%, 0, 0);
          transform: translate3d(100%, 0, 0); }

input::-ms-clear {
  display: none; }
</style><style type="text/css" id="s1954-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes commonView__bounceIn__3xf {
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
@keyframes commonView__bounceIn__3xf {
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

.commonView__container__2RU {
  height: 100%;
  min-height: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column; }

.commonView__contentContainer__1hs {
  -webkit-box-flex: 1;
      -ms-flex: 1;
          flex: 1 1; }

.commonView__contentWrapper__3rJ {
  position: relative;
  width: 780px;
  margin: auto;
  padding: 0 90px 100px 90px;
  background-color: #fff;
  border-radius: 8px;
  border: 1px solid #dce3e6; }

.commonView__spinner__1vO svg {
  width: 20px;
  height: 20px; }

.commonView__globalWarning__1xf {
  background: #f8fafa;
  text-align: center; }
  .commonView__globalWarning__1xf span {
    width: 820px;
    line-height: 36px;
    font-size: 12px;
    color: #869197; }
</style><style type="text/css" id="s2731-0"></style><style type="text/css" id="s2722-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes navbar__bounceIn__1gD {
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
@keyframes navbar__bounceIn__1gD {
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

.navbar__navWrapper__2mJ {
  position: absolute;
  width: 100%;
  height: 84px;
  z-index: 500;
  text-transform: uppercase;
  color: #fff;
  font-size: 14px;
  line-height: 24px;
  margin-top: 40px; }
  .navbar__navWrapper__2mJ button {
    color: #fff; }
  .navbar__navWrapper__2mJ a {
    color: #fff;
    cursor: pointer; }
  .navbar__navWrapper__2mJ .navbar__container__3tL {
    position: relative;
    height: 35px;
    line-height: 33px; }
    .navbar__navWrapper__2mJ .navbar__container__3tL .navbar__left__2RB {
      display: inline-block;
      vertical-align: top;
      list-style: none;
      padding-left: 0;
      float: left; }
      .navbar__navWrapper__2mJ .navbar__container__3tL .navbar__left__2RB li {
        display: inline-block;
        margin-left: 60px;
        line-height: 36px; }
    .navbar__navWrapper__2mJ .navbar__container__3tL .navbar__right__2FE {
      display: inline-block;
      vertical-align: top;
      list-style: none;
      padding-left: 0;
      float: right; }
      .navbar__navWrapper__2mJ .navbar__container__3tL .navbar__right__2FE li {
        margin-right: 40px;
        display: inline-block;
        cursor: pointer;
        text-align: center;
        line-height: 36px; }
        .navbar__navWrapper__2mJ .navbar__container__3tL .navbar__right__2FE li.navbar__login__3ct {
          height: 40px;
          width: 80px;
          border-radius: 100px;
          border: 1px solid #fff; }
          .navbar__navWrapper__2mJ .navbar__container__3tL .navbar__right__2FE li.navbar__login__3ct:hover {
            background-color: rgba(255, 255, 255, 0.1); }
</style><style type="text/css" id="s2729-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes mobileDialog__bounceIn__3EK {
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
@keyframes mobileDialog__bounceIn__3EK {
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

.mobileDialog__mobileDownloadContainer__1Ag {
  height: 322px; }

.mobileDialog__mobileDownloadTitle__kym {
  height: 88px;
  font-size: 30px;
  font-weight: 300;
  line-height: 1.47;
  text-align: center;
  color: #1f2629;
  white-space: pre-line;
  margin-top: 30px;
  margin-bottom: 54px; }

.mobileDialog__imageWrapper__2_E {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  height: 60px;
  width: 220px;
  margin: auto; }

.mobileDialog__imageWrapper__2_E + .mobileDialog__imageWrapper__2_E {
  margin-top: 10px; }
</style><style type="text/css" id="s1581-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes vingleDialog__bounceIn__1-o {
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
@keyframes vingleDialog__bounceIn__1-o {
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

.vingleDialog__closeButtonWrapper__32J {
  position: absolute;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  top: 13px;
  right: 10px;
  z-index: 53;
  width: 22px;
  height: 22px; }
  .vingleDialog__closeButtonWrapper__32J svg {
    width: 22px;
    height: 22px; }

.vingleDialog__cancelButton__2W_ {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  width: 80px;
  height: 32px;
  border-radius: 4px;
  margin-left: 6px;
  font-size: 14px;
  color: #59646a;
  background-color: #fff;
  border: 1px solid #aeb8bd; }
  .vingleDialog__cancelButton__2W_:hover {
    cursor: pointer; }

.vingleDialog__submitButton__2Qg {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  width: 80px;
  height: 32px;
  border-radius: 4px;
  margin-left: 6px;
  font-size: 14px;
  color: #fff;
  background-color: #fb2942;
  font-weight: 600; }
  .vingleDialog__submitButton__2Qg:hover {
    cursor: pointer; }

.vingleDialog__disableButton__9i8 {
  pointer-events: none;
  position: relative; }
  .vingleDialog__disableButton__9i8:before {
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    border-radius: 4px;
    background-color: rgba(255, 255, 255, 0.5); }

/*
  Just Don't touch it and don't ask why please
  Because this uses the Paper component of Material-ui inside of the component,
  There is no way to access and override style without !important
  */
.vingleDialog__contentWrapper__3dF > div {
  border-radius: 10px !important;
  -webkit-box-shadow: rgba(0, 0, 0, 0.18) 0px 1px 2px !important;
          box-shadow: rgba(0, 0, 0, 0.18) 0px 1px 2px !important; }

.vingleDialog__dialogTitle__3Al {
  font-size: 18px;
  font-weight: bold;
  line-height: 1.44;
  color: #333;
  word-break: keep-all; }

.vingleDialog__basicDialogSize__3b7 {
  bottom: 64px;
  width: 360px;
  min-height: 160px;
  max-height: 600px;
  border-radius: 10px !important;
  -webkit-box-shadow: rgba(0, 0, 0, 0.18) 0px 1px 2px !important;
          box-shadow: rgba(0, 0, 0, 0.18) 0px 1px 2px !important; }

.vingleDialog__dialogBodyWrapper__53c {
  font-size: 14px;
  line-height: 1.57;
  color: #333; }

.vingleDialog__dialogRoot__2GU {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center; }
</style><style type="text/css" id="s2726-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes signUpComponent__bounceIn__1DV {
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
@keyframes signUpComponent__bounceIn__1DV {
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

.signUpComponent__footer__DSK .signUpComponent__btnFB__1uM, .signUpComponent__footer__DSK .signUpComponent__btnEmail__25y {
  width: 350px;
  height: 55px;
  border-radius: 100px; }

.signUpComponent__bodyWrapper__3ND {
  background-repeat: no-repeat;
  background-size: cover;
  height: 100%;
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  overflow: scroll; }
  .signUpComponent__bodyWrapper__3ND .signUpComponent__backgroundImage__3VS {
    position: absolute;
    width: 100%;
    height: 100%;
    -webkit-transition: opacity 2s cubic-bezier(0, 0, 0.2, 1);
    transition: opacity 2s cubic-bezier(0, 0, 0.2, 1); }
  .signUpComponent__bodyWrapper__3ND .signUpComponent__backgroundImagesWrapper__VTf {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: -1; }
    .signUpComponent__bodyWrapper__3ND .signUpComponent__backgroundImagesWrapper__VTf::after {
      content: "";
      position: absolute;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.2);
      z-index: 1; }
  .signUpComponent__bodyWrapper__3ND .signUpComponent__container__6PN {
    position: absolute;
    top: 200px;
    left: 0;
    right: 0;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column; }
    @media (max-height: 740px) {
      .signUpComponent__bodyWrapper__3ND .signUpComponent__container__6PN {
        top: 124px; } }
    .signUpComponent__bodyWrapper__3ND .signUpComponent__container__6PN .signUpComponent__logo__3Im {
      width: 210px;
      height: 78px; }
      .signUpComponent__bodyWrapper__3ND .signUpComponent__container__6PN .signUpComponent__logo__3Im svg {
        width: 210px;
        height: 78px; }
    .signUpComponent__bodyWrapper__3ND .signUpComponent__container__6PN .signUpComponent__comment__1Pa {
      width: 780px;
      height: 117px;
      font-weight: 200;
      font-size: 32px;
      line-height: 1.5;
      text-align: center;
      color: #fff;
      margin-top: 20px;
      -webkit-animation: signUpComponent__fade__2ze 3s infinite;
              animation: signUpComponent__fade__2ze 3s infinite; }
      .signUpComponent__bodyWrapper__3ND .signUpComponent__container__6PN .signUpComponent__comment__1Pa .signUpComponent__title__xzN {
        font-size: 48px;
        line-height: 1.21;
        margin-bottom: 14px; }
      .signUpComponent__bodyWrapper__3ND .signUpComponent__container__6PN .signUpComponent__comment__1Pa .signUpComponent__subTitle__135 {
        font-size: 26px;
        line-height: 1.38; }
      .signUpComponent__bodyWrapper__3ND .signUpComponent__container__6PN .signUpComponent__comment__1Pa .signUpComponent__small__bDV {
        font-size: 29px;
        line-height: 1.34; }
      .signUpComponent__bodyWrapper__3ND .signUpComponent__container__6PN .signUpComponent__comment__1Pa b {
        font-weight: 400; }

.signUpComponent__footer__DSK {
  position: absolute;
  bottom: 130px;
  left: 0;
  right: 0;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column; }
  @media (max-height: 740px) {
    .signUpComponent__footer__DSK {
      top: 400px; } }
  .signUpComponent__footer__DSK .signUpComponent__btnFB__1uM {
    background-color: #3b559d;
    margin-bottom: 12px; }
    .signUpComponent__footer__DSK .signUpComponent__btnFB__1uM:hover {
      background-color: #314a90; }
  .signUpComponent__footer__DSK .signUpComponent__btnEmail__25y {
    border: solid 1px #fff;
    background-color: #fff;
    color: #394247; }
  .signUpComponent__footer__DSK .signUpComponent__hadAccount__gtQ {
    width: 350px;
    font-size: 14px;
    font-weight: 400;
    text-align: center;
    color: #fff;
    margin-top: 40px; }
    .signUpComponent__footer__DSK .signUpComponent__hadAccount__gtQ .signUpComponent__login__3Iz {
      text-decoration: underline; }

@-webkit-keyframes signUpComponent__fade__2ze {
  0% {
    opacity: 0; }
  25% {
    opacity: 1; }
  50% {
    opacity: 1; }
  75% {
    opacity: 1; }
  100% {
    opacity: 0; } }

@keyframes signUpComponent__fade__2ze {
  0% {
    opacity: 0; }
  25% {
    opacity: 1; }
  50% {
    opacity: 1; }
  75% {
    opacity: 1; }
  100% {
    opacity: 0; } }
</style><style type="text/css" id="s1471-0">.icons__icon__2cq .stroke-only {
  fill: none !important; }

.icons__icon__2cq .fill-only {
  stroke: none !important; }

.icons__iconWrapper__2yw {
  display: inline-block; }
  .icons__iconWrapper__2yw i {
    display: block;
    width: 100%;
    height: 100%; }
</style><style type="text/css" id="s1658-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes solidButton__bounceIn__3m_ {
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
@keyframes solidButton__bounceIn__3m_ {
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

.solidButton__buttonWrapper__tkE {
  display: inline-block;
  vertical-align: top;
  max-width: 350px; }

.solidButton__button__15V {
  height: 55px;
  line-height: 55px;
  border-radius: 100px;
  font-size: 14px;
  color: #fff;
  cursor: pointer;
  text-align: center; }
  .solidButton__button__15V.solidButton__disabled__15i {
    background-color: #aeb8bd;
    opacity: 0.4;
    pointer-events: none;
    cursor: not-allowed; }

.solidButton__gray__3Zy {
  background-color: #aeb8bd; }
  .solidButton__gray__3Zy:hover {
    background-color: #869197; }
  .solidButton__gray__3Zy:active {
    background-color: #59646a; }

.solidButton__blue__3Ui {
  background-color: #1cbcd7; }
  .solidButton__blue__3Ui:active {
    background-color: #008095; }

.solidButton__red__3k6 {
  background-color: #fb2942; }
  .solidButton__red__3k6:hover {
    background-color: #d52238; }
  .solidButton__red__3k6:active {
    background-color: #ad1326; }
</style><style type="text/css" id="s1669-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes verificationDialog__bounceIn__27T {
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
@keyframes verificationDialog__bounceIn__27T {
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

.verificationDialog__subcontentWrapper__77I {
  margin-top: 14px;
  color: #4d4d4d;
  font-size: 14px;
  line-height: 1.71;
  text-decoration: underline; }
</style><style type="text/css" id="s1945-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes toast__bounceIn__3YU {
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
@keyframes toast__bounceIn__3YU {
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

.toast__wrapper__3bM {
  position: fixed;
  top: 100px;
  left: 0;
  right: 0;
  height: auto;
  z-index: 200;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  pointer-events: none; }

.toast__toastEnter__H0- {
  opacity: 0.01;
  -webkit-transform: translate3d(0, -100%, 0);
          transform: translate3d(0, -100%, 0); }

.toast__toastEnterActive__2jp {
  opacity: 1;
  -webkit-transform: translate3d(0, 0, 0);
          transform: translate3d(0, 0, 0);
  -webkit-transition: all 200ms cubic-bezier(0, 0, 0.2, 1);
  transition: all 200ms cubic-bezier(0, 0, 0.2, 1); }

.toast__toastLeave__2_J {
  opacity: 1;
  -webkit-transform: translate3d(0, 0, 0);
          transform: translate3d(0, 0, 0); }

.toast__toastLeaveActive__1n2 {
  -webkit-transform: translate3d(0, -100%, 0);
          transform: translate3d(0, -100%, 0);
  max-height: 0 !important;
  -webkit-transition: all 150ms cubic-bezier(0.4, 0, 1, 1);
  transition: all 150ms cubic-bezier(0.4, 0, 1, 1);
  opacity: 0.01; }
  .toast__toastLeaveActive__1n2 .toast__itemWrapper__2yM {
    -webkit-transition: all 150ms cubic-bezier(0.4, 0, 1, 1);
    transition: all 150ms cubic-bezier(0.4, 0, 1, 1);
    padding: 0;
    min-height: 0; }

/* toast Item */
.toast__container__1KJ {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  margin-bottom: 24px; }

.toast__itemWrapper__2yM {
  position: relative;
  display: inline-block;
  vertical-align: top;
  min-height: 54px;
  min-width: 409px;
  max-width: 725px;
  padding: 14px 68px;
  overflow: hidden;
  border-radius: 12px;
  -webkit-box-shadow: 0 5px 6px 0 rgba(134, 145, 151, 0.4);
          box-shadow: 0 5px 6px 0 rgba(134, 145, 151, 0.4); }

.toast__message__17V {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  text-align: center;
  height: 100%;
  color: #fff;
  text-align: center;
  font-size: 15px;
  font-weight: 500;
  line-height: 1.67;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
  word-break: keep-all;
  white-space: pre; }

.toast__info__1mn {
  background-color: #59646a; }

.toast__success__277 {
  background-color: #1cbcd7; }

.toast__danger__1mk {
  background-color: #fb2942; }

.toast__closeButtonWrapper__NkQ {
  position: absolute;
  top: 0;
  right: 21px;
  width: 14px;
  height: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  cursor: pointer; }
  .toast__closeButtonWrapper__NkQ svg {
    width: 14px;
    height: 14px; }
    .toast__closeButtonWrapper__NkQ svg g g {
      fill: #fff; }
</style><style type="text/css" id="s1651-0">.signUp__rootWrapper__MUH {
  padding-top: 0 !important; }

@media (min-height: 763px) {
  .signUp__contentWrapper__3Al {
    bottom: 64px; } }

@media (max-height: 763px) {
  .signUp__contentWrapper__3Al {
    -webkit-transform: translate(0, 0) !important;
            transform: translate(0, 0) !important; } }

.signUp__contentWrapper__3Al > div {
  border-radius: 10px !important; }
</style><style type="text/css" id="s1666-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes signUpDialog__bounceIn__1rX {
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
@keyframes signUpDialog__bounceIn__1rX {
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

.signUpDialog__bodyWrapper__1mD, .signUpDialog__header__1ER, .signUpDialog__container__1vX {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center; }

.signUpDialog__container__1vX .signUpDialog__btnFB__3U9, .signUpDialog__container__1vX .signUpDialog__btnEmail__279 {
  width: 350px;
  height: 55px;
  border-radius: 100px; }

.signUpDialog__header__1ER {
  margin-top: 100px;
  margin-bottom: 104px; }
  .signUpDialog__header__1ER .signUpDialog__logo__vGO {
    width: 210px;
    height: 78px; }
    .signUpDialog__header__1ER .signUpDialog__logo__vGO svg {
      width: 210px;
      height: 78px; }
  .signUpDialog__header__1ER .signUpDialog__slogan__16W {
    font-weight: 300;
    text-align: center;
    color: #1f2629;
    margin-top: 23px; }
    .signUpDialog__header__1ER .signUpDialog__slogan__16W .signUpDialog__title__39D {
      font-size: 32px;
      line-height: 1.31;
      margin-bottom: 8px; }
    .signUpDialog__header__1ER .signUpDialog__slogan__16W .signUpDialog__subTitle__3Dg {
      font-size: 14px;
      line-height: 1.71; }

.signUpDialog__container__1vX {
  margin-bottom: 40px; }
  .signUpDialog__container__1vX .signUpDialog__btnFB__3U9 {
    background-color: #3b559d;
    margin-bottom: 12px; }
    .signUpDialog__container__1vX .signUpDialog__btnFB__3U9:hover {
      background-color: #314a90; }
  .signUpDialog__container__1vX .signUpDialog__btnEmail__279 {
    border: solid 1px #394247;
    color: #1f2629;
    margin-bottom: 22px; }

.signUpDialog__graySmallText__3nh {
  font-size: 14px;
  line-height: 1.71;
  font-weight: 300;
  text-align: center;
  color: #869197; }

.signUpDialog__underline__3RK {
  text-decoration: underline; }

.signUpDialog__hadAccount__2jN {
  width: 350px;
  font-size: 14px;
  font-weight: 500;
  text-align: center;
  color: #1f2629;
  margin-bottom: 30px;
  margin-top: 1px; }
  .signUpDialog__hadAccount__2jN .signUpDialog__login__3ek {
    text-decoration: underline; }
</style><style type="text/css" id="s1953-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes imageBrochure__bounceIn__zFQ {
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
@keyframes imageBrochure__bounceIn__zFQ {
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

.imageBrochure__brochureWrapper__LYY {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background-color: #fafafa;
  z-index: 99999;
  visibility: hidden; }
  .imageBrochure__brochureWrapper__LYY.imageBrochure__show__2Ah {
    visibility: visible; }

.imageBrochure__header__2Lj {
  background-color: #fff;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  height: 70px;
  padding: 0 70px;
  border-bottom: 1px solid #e9eef0; }
  .imageBrochure__header__2Lj .imageBrochure__icon__RE0 {
    width: 34px;
    height: 34px;
    cursor: pointer; }
  .imageBrochure__header__2Lj .imageBrochure__userWrapper__24O {
    -webkit-box-flex: 1;
        -ms-flex: 1;
            flex: 1 1; }
  .imageBrochure__header__2Lj .imageBrochure__positionWrapper__Znc {
    -webkit-box-flex: 1;
        -ms-flex: 1;
            flex: 1 1;
    text-align: center;
    font-size: 13px;
    color: #1f2629; }
  .imageBrochure__header__2Lj .imageBrochure__menuWrapper__1tQ {
    -webkit-box-flex: 1;
        -ms-flex: 1;
            flex: 1 1;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: end;
        -ms-flex-pack: end;
            justify-content: flex-end; }
    .imageBrochure__header__2Lj .imageBrochure__menuWrapper__1tQ .imageBrochure__closeWrapper__3al {
      margin-left: 20px; }

.imageBrochure__contentWrapper__2o- {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  width: 100%;
  height: calc(100% - 70px); }
  .imageBrochure__contentWrapper__2o- .imageBrochure__background__1Ng {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    z-index: 0; }
  .imageBrochure__contentWrapper__2o- .imageBrochure__content__31K {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
        -ms-flex-pack: center;
            justify-content: center;
    -webkit-box-align: center;
        -ms-flex-align: center;
            align-items: center;
    overflow: scroll;
    z-index: 1;
    -ms-overflow-style: none;
    overflow: -moz-scrollbars-none; }
    .imageBrochure__contentWrapper__2o- .imageBrochure__content__31K::-webkit-scrollbar {
      display: none; }
  .imageBrochure__contentWrapper__2o- .imageBrochure__leftArrow__16f, .imageBrochure__contentWrapper__2o- .imageBrochure__rightArrow__pe1 {
    position: absolute;
    width: 60px;
    height: 60px;
    cursor: pointer;
    z-index: 1; }
  .imageBrochure__contentWrapper__2o- .imageBrochure__leftArrow__16f {
    left: 70px; }
  .imageBrochure__contentWrapper__2o- .imageBrochure__rightArrow__pe1 {
    right: 70px; }
</style><style type="text/css" id="s1937-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes notification__bounceIn__RGf {
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
@keyframes notification__bounceIn__RGf {
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

.notification__moreDropdownContainer__3ak {
  width: 360px !important;
  border-radius: 6px;
  -webkit-box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.18);
          box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.18);
  border: solid 1px #dce3e6;
  overflow: visible; }
  .notification__moreDropdownContainer__3ak .notification__arrow__20Q {
    position: absolute;
    top: -13px;
    right: 90px;
    width: 26px;
    height: 26px; }

.notification__tabWrapper__3o8 {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  color: #666;
  font-size: 14px; }

.notification__title__3BK {
  padding-top: 26px;
  font-size: 14px;
  font-weight: bold;
  color: #1f2629; }

.notification__infiniteWrapper__zON {
  overflow-y: scroll;
  padding: 0px 30px; }

.notification__tabItem__2kS {
  display: inline-block;
  vertical-align: top;
  -webkit-box-flex: 1;
      -ms-flex-positive: 1;
          flex-grow: 1;
  text-align: center;
  height: 33px;
  line-height: 33px;
  border-bottom: 1px solid #f0f0f0; }
  .notification__tabItem__2kS.notification__active__1Ga {
    color: #fb2942;
    border-bottom: 3px solid #fb2942; }

.notification__spinnerWrapper__1ko {
  position: relative;
  display: inline-block;
  width: 100%;
  height: 40px;
  vertical-align: top;
  overflow: hidden; }

.notification__spinner__2TL {
  position: absolute;
  left: 50%;
  margin: 10px 0 10px -10px; }
  .notification__spinner__2TL svg {
    width: 20px;
    height: 20px; }

.notification__showAllWrapper__3di {
  bottom: 0;
  text-align: center;
  font-size: 13px;
  line-height: 31px;
  color: #fb2942;
  border-top: 1px solid #dbdbdb;
  background-color: #ebebeb; }
  .notification__showAllWrapper__3di:hover {
    text-decoration: underline; }

.notification__noDataWrapper__33x {
  width: 100%;
  height: calc(100% - 40px);
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
      -ms-flex-direction: column;
          flex-direction: column; }
  .notification__noDataWrapper__33x .notification__noData__3gw {
    width: 320px;
    height: 180px; }
  .notification__noDataWrapper__33x span {
    margin-top: 10px;
    font-size: 16px;
    line-height: 1.56;
    text-align: center;
    color: #aeb8bd;
    white-space: pre; }

.notification__noMore__w-X {
  font-size: 12px;
  line-height: 1.83;
  padding: 30px 0px;
  color: #aeb8bd;
  text-align: center; }
</style><style type="text/css" id="s1949-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes externalShareDialog__bounceIn__1dl {
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
@keyframes externalShareDialog__bounceIn__1dl {
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

.externalShareDialog__facebookIcon__2-7, .externalShareDialog__twitterIcon__m2b, .externalShareDialog__bandIcon__3IE, .externalShareDialog__copyIcon__1HF {
  margin-right: 20px;
  cursor: pointer; }
  .externalShareDialog__facebookIcon__2-7 i, .externalShareDialog__twitterIcon__m2b i, .externalShareDialog__bandIcon__3IE i, .externalShareDialog__copyIcon__1HF i {
    display: inline-block;
    vertical-align: top;
    width: 42px;
    height: 42px; }
  .externalShareDialog__facebookIcon__2-7 svg, .externalShareDialog__twitterIcon__m2b svg, .externalShareDialog__bandIcon__3IE svg, .externalShareDialog__copyIcon__1HF svg {
    width: 42px;
    height: 42px; }
  .externalShareDialog__facebookIcon__2-7:last-of-type, .externalShareDialog__twitterIcon__m2b:last-of-type, .externalShareDialog__bandIcon__3IE:last-of-type, .externalShareDialog__copyIcon__1HF:last-of-type {
    margin-right: 0; }

.externalShareDialog__iconsWrapper__ULQ {
  margin-top: 13px;
  margin-bottom: 10px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center; }

.externalShareDialog__facebookIcon__2-7:hover circle {
  stroke: #3f66b7; }

.externalShareDialog__twitterIcon__m2b:hover circle {
  stroke: #5fa9dd; }

.externalShareDialog__bandIcon__3IE:hover circle {
  stroke: #42b067; }

.externalShareDialog__copyIcon__1HF:hover circle {
  stroke: #869197; }
</style>
<style type="text/css" id="s1663-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes signIn__bounceIn__Ale {
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
@keyframes signIn__bounceIn__Ale {
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

.signIn__signInWrapper__1Wg {
  width: 350px;
  margin: 0 auto;
  margin-top: 94px; }

.signIn__spinner__3gR {
  height: 20px; }
  .signIn__spinner__3gR svg {
    width: 20px;
    height: 20px; }

.signIn__headLine__SGa {
  height: 58px;
  font-size: 48px;
  font-weight: 200;
  line-height: 1.21;
  text-align: center;
  margin-bottom: 55px;
  color: #1f2629; }

.signIn__form__2cu {
  display: block; }
  .signIn__form__2cu .signIn__loginButton__1dS {
    width: 350px;
    border: solid 1px #394247;
    color: #394247; }

.signIn__facebookLoginButton__2lI {
  width: 350px;
  margin-bottom: 12px;
  background-color: #3b559d; }
  .signIn__facebookLoginButton__2lI:hover {
    background-color: #314a90; }

.signIn__googleLoginButton__gfn {
  width: 350px;
  background-color: #dd4b3d; }
  .signIn__googleLoginButton__gfn:hover {
    background-color: #cd4638; }

.signIn__twitterLoginButton__2qq {
  width: 170px;
  background-color: #50abf4; }
  .signIn__twitterLoginButton__2qq:hover {
    background-color: #449ade; }

.signIn__formControl__35V + .signIn__formControl__35V {
  margin-top: 12px; }

.signIn__divider__sz8 {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  color: #869197;
  text-align: center;
  font-size: 14px;
  margin: 35px 0;
  height: 24px; }
  .signIn__divider__sz8:after {
    content: "";
    position: absolute;
    top: 12px;
    left: 0;
    width: 150px;
    border-top: 1px solid #ccd5d9; }
  .signIn__divider__sz8:before {
    content: "";
    position: absolute;
    top: 12px;
    right: 0;
    width: 150px;
    border-top: 1px solid #ccd5d9; }

.signIn__loginInformation__3Nk {
  font-size: 12px;
  line-height: 1.83;
  text-align: center;
  color: #1f2629;
  margin: 20px 0; }

.signIn__bottomLinkWrapper__ndb {
  text-align: center;
  margin-top: 20px;
  height: 24px;
  font-size: 14px;
  line-height: 1.71;
  font-weight: 300;
  color: #869197; }
  .signIn__bottomLinkWrapper__ndb a {
    display: inline-block;
    vertical-align: top; }
  .signIn__bottomLinkWrapper__ndb a + a {
    margin-left: 14px; }
</style><style type="text/css" id="s2408-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes signupNavbar__bounceIn__1d6 {
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
@keyframes signupNavbar__bounceIn__1d6 {
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

.signupNavbar__navWrapper__186 {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  height: 70px;
  padding: 0 70px;
  border-bottom: 1px solid #e9eef0;
  background-color: #fff;
  z-index: 500; }

.signupNavbar__titleWrapper__4Iq {
  font-size: 16px;
  height: 26px;
  line-height: 26px;
  text-align: left;
  color: #fb2942; }

.signupNavbar__vingleLogo__3Ob {
  display: inline-block;
  vertical-align: top;
  margin-top: 3px;
  width: 70px;
  height: 26px; }
  .signupNavbar__vingleLogo__3Ob svg {
    width: 70px;
    height: 26px; }

.signupNavbar__vingleLogo__3Ob + span {
  margin-left: 2px; }

span + .signupNavbar__vingleLogo__3Ob {
  margin-left: 2px; }
</style><style type="text/css" id="s1662-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes signInDialog__bounceIn__3t1 {
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
@keyframes signInDialog__bounceIn__3t1 {
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

.signInDialog__signInWrapper__kAV {
  width: 350px;
  margin: 32px auto 26px auto; }

.signInDialog__spinner__1kQ {
  height: 20px; }
  .signInDialog__spinner__1kQ svg {
    width: 20px;
    height: 20px; }

.signInDialog__headLine__1lO {
  height: 58px;
  font-size: 44px;
  font-weight: 200;
  line-height: 1.21;
  text-align: center;
  margin-bottom: 53px;
  color: #1f2629; }

.signInDialog__form__3QD {
  display: block; }
  .signInDialog__form__3QD .signInDialog__loginButton__16a {
    width: 350px;
    border: solid 1px #394247;
    color: #394247; }

.signInDialog__facebookLoginButton__YVO {
  width: 350px;
  margin-bottom: 12px;
  background-color: #3b559d; }
  .signInDialog__facebookLoginButton__YVO:hover {
    background-color: #314a90; }

.signInDialog__googleLoginButton__GvP {
  width: 350px;
  background-color: #dd4b3d; }
  .signInDialog__googleLoginButton__GvP:hover {
    background-color: #cd4638; }

.signInDialog__twitterLoginButton__fPB {
  width: 170px;
  background-color: #50abf4; }
  .signInDialog__twitterLoginButton__fPB:hover {
    background-color: #449ade; }

.signInDialog__formControl__wLG + .signInDialog__formControl__wLG {
  margin-top: 12px; }

.signInDialog__divider__4TQ {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  color: #869197;
  text-align: center;
  margin: 20px 0;
  height: 24px; }
  .signInDialog__divider__4TQ:after {
    content: "";
    position: absolute;
    top: 12px;
    left: 0;
    width: 150px;
    border-top: 1px solid #ccd5d9; }
  .signInDialog__divider__4TQ:before {
    content: "";
    position: absolute;
    top: 12px;
    right: 0;
    width: 150px;
    border-top: 1px solid #ccd5d9; }

.signInDialog__loginInformation__2yA {
  font-size: 12px;
  line-height: 1.83;
  text-align: center;
  color: #1f2629;
  margin-top: 20px;
  margin-bottom: 21px; }

.signInDialog__bottomLinkWrapper__2Yl {
  text-align: center;
  font-weight: 300;
  margin-top: 20px;
  height: 24px;
  font-size: 14px;
  line-height: 1.71;
  color: #869197; }
  .signInDialog__bottomLinkWrapper__2Yl a {
    display: inline-block;
    vertical-align: top; }
  .signInDialog__bottomLinkWrapper__2Yl a + a {
    margin-left: 14px; }

.signInDialog__fbSignUpBody__XEe {
  white-space: pre-line; }
</style><style type="text/css" id="s1656-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
@-webkit-keyframes solidReasonInput__bounceIn__Mlb {
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
@keyframes solidReasonInput__bounceIn__Mlb {
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

.solidReasonInput__wrapper__28f {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  position: relative;
  width: 100%;
  height: 55px;
  border-radius: 6px;
  border: 1px solid #aeb8bd; }
  .solidReasonInput__wrapper__28f:hover, .solidReasonInput__wrapper__28f:active, .solidReasonInput__wrapper__28f:focus {
    border: solid 1px #394247; }

.solidReasonInput__textInput__ZZr {
  width: 100%;
  height: 100%;
  font-size: 14px;
  font-weight: 300;
  border-radius: 6px;
  padding-left: 20px;
  outline: none;
  border: none; }
  .solidReasonInput__textInput__ZZr::-webkit-input-placeholder {
    color: #aeb8bd; }
  .solidReasonInput__textInput__ZZr:-ms-input-placeholder {
    color: #aeb8bd; }
  .solidReasonInput__textInput__ZZr::-ms-input-placeholder {
    color: #aeb8bd; }
  .solidReasonInput__textInput__ZZr::placeholder {
    color: #aeb8bd; }

.solidReasonInput__failedInput__3tj {
  background-color: #ffe6e9;
  width: 65%; }

.solidReasonInput__failedWrapper__2fu {
  background-color: #ffe6e9;
  border: solid 1px #f82d47; }

.solidReasonInput__rightItemsWrapper__vDh {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  height: 100%;
  right: 10px;
  position: absolute; }
  .solidReasonInput__rightItemsWrapper__vDh span {
    height: 20px;
    font-size: 10px;
    line-height: 2;
    text-align: right;
    margin-right: 6px;
    color: #fb2942; }
  .solidReasonInput__rightItemsWrapper__vDh .solidReasonInput__ok__Iuk {
    color: #59646a; }
  .solidReasonInput__rightItemsWrapper__vDh svg {
    width: 22px;
    height: 22px; }
</style>
<script>
	
	$(function(){
		<c:if test="${not empty sessionScope.user}">
		location.href="/sellpie/signIn.do";
		</c:if>
		$(".solidButton__button__15V").click(function(){
			$.ajax({
				url : "userLogin.do", 
				data : {email : $("#email").val(), pwd : $("#pwd").val(), isUseCookie : $("#isUseCookie").prop("checked")},
				type : "post",
				success:function(data){
					console.log(data.result);
					if( data.result == "1" ){
						 location.href="/sellpie/selectBoardList.do"; 
						
					}else{
						swal("","이메일 혹은 비밀번호를 확인 해주세요!", "error");
					}
				},
				error:function(e){
					console.log(e);
				}
			});
		});
	
	});
</script>
</head>
      <body>
        <div id="sellpie-web"><div>
        	<div class="root__rootWrapper__1So">
        		<div class="commonView__container__2RU">
        			<div>
        				<nav class="signupNavbar__navWrapper__186">
        					<div class="signupNavbar__titleWrapper__4Iq">
        						<span>Welcome to</span> <i class="icons__icon__2cq signupNavbar__vingleLogo__3Ob"><img style="width:120px; height:30px;"src="resources/images/join/logo_sellpie.png"/></i>
        					</div></nav>
        					<div class="signIn__signInWrapper__1Wg">
        					<h1 class="signIn__headLine__SGa">로그인</h1>
        					<div>
        						<div>
        						</div>
        					</div>
        					<div class="signIn__divider__sz8">또는</div>
        						<div class="signIn__form__2cu" >
        							<div class="signIn__formControl__35V">
        								<div class="solidReasonInput__wrapper__28f undefined ">
        									<input type="text"  name="email" id="email" class="solidReasonInput__textInput__ZZr " placeholder="이메일" value="">
        								</div>
        							</div>
        							<div class="signIn__formControl__35V">
        								<div class="solidReasonInput__wrapper__28f undefined ">
        									<input type="password" name="pwd"  id="pwd" class="solidReasonInput__textInput__ZZr " placeholder="비밀번호" value="">
        								</div>
        							</div>
        							<div class="signIn__loginInformation__3Nk">공용 PC 이용 후 개인정보 보호를 위해 로그아웃 해주세요.</div>
        							<div class="signIn__loginInformation__3Nk">자동 로그인 <input type="checkbox" id="isUseCookie" name="isUseCookie"/></div>
        							<div class="solidButton__buttonWrapper__tkE" data-cy="login">
        								<button type="button" class="solidButton__button__15V  signIn__loginButton__1dS" style="background-color: rgba(0, 0, 0, 0);">로그인</button>
        							</div>
        							<div class="signIn__bottomLinkWrapper__ndb">
        								<a href="/sellpie/changePwd.do">비밀번호 찾기</a><a>|</a><a href="/sellpie/memberJoin.do">회원가입</a>
        							</div>
        						</div><!-- div 00form -->
        					</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
       </body>
      </html>