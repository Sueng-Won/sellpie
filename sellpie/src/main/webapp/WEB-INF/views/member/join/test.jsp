<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
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
<style type="text/css">
* {
  font-family: "Noto Sans KR", "Noto Sans", Helvetica, Arial, "Malgun Gothic", sans-serif; }

       
      
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
  

</style>
<style type="text/css" id="s2398-0">
@keyframes sharePopOver__bounceIn__1X_ {
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

.sharePopOver__popover__3iu {
  width: 300px;
  border-radius: 6px;
  background-color: #fff;
  -webkit-box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.18);
          box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.18);
  border: solid 1px #f5f5f5; }

.sharePopOver__menuWrapper__1tG {
  padding: 14px; }

.sharePopOver__menu__FGh {
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center; }

.sharePopOver__collectionImage__2wt {
  position: absolute;
  margin-right: 6px;
  top: 0;
  right: 0; }
  .sharePopOver__collectionImage__2wt i {
    margin-top: -3px; }
  .sharePopOver__collectionImage__2wt:hover img {
    -webkit-box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.5);
            box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.5); }

.sharePopOver__leftIcon__1xF {
  margin-right: 6px; }
  .sharePopOver__leftIcon__1xF i {
    display: inline-block;
    vertical-align: top;
    height: 20px; }
  .sharePopOver__leftIcon__1xF svg {
    width: 20px;
    height: 20px; }

.sharePopOver__rightIcon__228 {
  width: 3px; }
  .sharePopOver__rightIcon__228 i {
    display: inline-block;
    vertical-align: top;
    height: 40px; }
  .sharePopOver__rightIcon__228 svg {
    margin-top: 2.5px; }
</style>    
<style type="text/css" id="s1666-0">

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
</style>
<style type="text/css" id="s1953-0">/* New Vingle */
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
</style>
<style type="text/css" id="s2383-0">


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
    .solidButton__button__auNum.solidButton__disabled__15i{
    	background-color: #aeb8bd;
    opacity: 0.4;
    pointer-events: none;
    cursor: not-allowed; 
    }
    

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

<style type="text/css" id="s2726-0">/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */

.signUpComponent__footer__DSK .signUpComponent__btnFB__1uM, .signUpComponent__footer__DSK .signUpComponent__btnEmail__25y {
  width: 350px;
  height: 55px;
  border-radius: 100px; }

.signUpDetail__rootWrapper__1D9 {
  height: 100%; }

.signUpDetail__bodyContainer__vop {
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
    height: 100%;}
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
  line-height: 34px;
  text-align: left;
  color: #fb2942; }

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
    
    a{color:#000;}

.signupNavbar__vingleLogo__3Ob + span {
  margin-left: 2px; }

span + .signupNavbar__vingleLogo__3Ob {
  margin-left: 2px; }

.signUpBody__content__1PG {
  width: 460px;
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
           
  .signUpBody__content__1PG .signUpBody__formInput__1yh {
    width: 100%; }
    .signUpBody__content__1PG .signUpBody__formInput__1yh:nth-child(1) {
      margin-bottom: 12px; }
  .signUpBody__content__1PG .signUpBody__btnSignUp__Y5M {
    width: 156px;
    height: 55px;
    margin-top: 30px;
    margin-bottom: 22px;
    border: solid 1px #1cbcd7;
    color: #1cbcd7; }
  .signUpBody__content__1PG .signUpBody__nextButton__wU3 {
    width: 150px;
    height: 55px;
    border-radius: 100px;
    margin-top: 30px;
    border: solid 1px #394247;
    color: #394247; }
    
    .signUpBody__nextButton__auNum{
    width: 150px;
    height: 55px;
    border-radius: 100px;
    border: solid 1px #394247;
    color: #394247; 
    }


.signUpBody__emailHeader__TiN {
  margin-bottom: 70px; }

.signUpBody__emailUsernameHeader__3IY {
  margin-bottom: 55px; }

.signUpBody__facebookHeader__1ii {
  margin-bottom: 34px; }

.signUpBody__facebookUsernameHeader__2ug {
  margin-bottom: 25px; }


.titleWithVerify__head__3gv .titleWithVerify__title__1ix {
  height: 58px;
  font-size: 48px;
  font-weight: 200;
  line-height: 1.21;
  text-align: center;
  color: #1f2629; }

.titleWithVerify__head__3gv .titleWithVerify__verify__278 {
  margin-top: 16px;
  font-size: 16px;
  line-height: 1.62;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
  color: #1cbcd7; }
  .titleWithVerify__head__3gv .titleWithVerify__verify__278 svg {
    margin-right: 6px;
    width: 18px;
    height: 26px; }
/* New Vingle */
/* Old Vingle */
/* Component Specific colors */
/* font weights */
/* Element Sizes */
/* Z-indexs */
/* Animations */
.solidReasonInput__failedWrapper__2fu {
    background-color: #ffe6e9;
    border: solid 1px #f82d47;
}

.solidReasonInput__wrapper__28f {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  position: relative;
  width: 100%;
  height: 55px;
  border-radius: 6px;
  border: 1px solid #aeb8bd; }
  
  .solidReasonInput__wrapper__auNum{
  	display: -webkit-box;
  display: -ms-flexbox;
  display: inline-block;
  position: relative;
  width: 50%;
  height: 55px;
  border-radius: 6px;
  border: 1px solid #aeb8bd;
  margin-left:14px;
  }
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
  .solidReasonInput__textInput__auNum{
  	width: 100%;
  	height: 100%;
  	font-size: 14px;
  	font-weight: 300;
 	 border-radius: 6px;
  	padding-left: 20px;
  	outline: none;
  	border: none;
  	display:inline-block;
  }
  
  .solidReasonInput__textInput__ZZr::-webkit-input-placeholder {
    color: #aeb8bd; }

#logo_img{
	display:inline-block;
}
.solidReasonInput__rightItemsWrapper__Email, .solidReasonInput__rightItemsWrapper__Pwd, .solidReasonInput__rightItemsWrapper__AuNum {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    height: 100%;
    right: 10px;
    position: absolute;
}
.solidReasonInput__rightItemsWrapper__Email span, .solidReasonInput__rightItemsWrapper__Pwd span {
    height: 20px;
    font-size: 10px;
    line-height: 2;
    text-align: right;
    margin-right: 6px;
    color: #fb2942;
}
#loading {
 width: 100%;  
 height: 100%;  
 top: 0px;
 left: 0px;
 position: fixed;  
 display: none;  
 opacity: 0.7;  
 background-color: #fff;  
 z-index: 99;  
 text-align: center; 
 } 
  
#loading-image {  
 position: absolute;  
 top: 50%;  
 left: 50%; 
 z-index: 100; }
 
 .auNum_wrapper{
    width:100%;
 	display:inline-block;
 	padding-top:30px;
 }
</style>
<script>
	$(function(){
		$(".solidReasonInput__textInput__ZZr").keyup(function(){
			var $msgEmail = $("<div class='solidReasonInput__rightItemsWrapper__Email'><span></span></div>");
			var $msgPwd = $("<div class='solidReasonInput__rightItemsWrapper__Pwd'><span></span></div>");
			
			var regexEmail =/([a-z0-9]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-z-]+\.)+))([a-z]{2,4}|[0-9]{1,3})(\]?)$/;
			var regexPwd =/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
			 
			if($(this).prop("id")=='email'){
				var email = $(this).val();
				var flagEmail = (email != '' && email != 'undefined' && regexEmail.test(email));
				
				
				if(!flagEmail){
					
						$(this).addClass("solidReasonInput__failedWrapper__2fu");
						if($(this).parent().children().length<2){
							$(this).parent().append($msgEmail);
							
						}
						$(".solidReasonInput__rightItemsWrapper__Email").children().css("color", "#fb2942");
						$(".solidReasonInput__rightItemsWrapper__Email").children().text("이메일 형식이 맞지 않습니다.");
						$(".solidButton__button__15V").prop("disabled", true);
					
				 }else{
							$(this).removeClass("solidReasonInput__failedWrapper__2fu");
							$(".solidReasonInput__rightItemsWrapper__Email").children().text("멋지네요!");
							$(".solidReasonInput__rightItemsWrapper__Email").children().css("color", "black");
					
				 }
				
			}else{
				var pwd = $(this).val();
				 var flagPwd = (pwd != '' && pwd != 'undefined' && regexPwd.test(pwd));
				
				 if(!flagPwd){
						$(this).addClass("solidReasonInput__failedWrapper__2fu");
						
						if($(this).parent().children().length<2){
							$(this).parent().append($msgPwd);
						}
						$(".solidReasonInput__rightItemsWrapper__Pwd").children().css("color", "#fb2942");
						$(".solidReasonInput__rightItemsWrapper__Pwd").children().text("특수문자, 영문, 숫자를 포함해야 합니다.");
						$(".solidButton__button__15V").prop("disabled", true);
					
				 }else{
							$(this).removeClass("solidReasonInput__failedWrapper__2fu");
							$(".solidReasonInput__rightItemsWrapper__Pwd").children().text("멋지네요!");
							$(".solidReasonInput__rightItemsWrapper__Pwd").children().css("color", "black");
							
					
				 }
			}
			var emailFinal = $("#email").val();
			var pwdFinal = $("#pwd").val();
			if((emailFinal != '' && emailFinal != 'undefined' && regexEmail.test(emailFinal)) && (pwdFinal != '' && pwdFinal != 'undefined' && regexPwd.test(pwdFinal))){
				$(".solidButton__button__15V").removeClass("solidButton__disabled__15i");
				$(".solidButton__button__15V").prop("disabled", false);
			}else{
				$(".solidButton__button__15V").addClass("solidButton__disabled__15i");
				$(".solidButton__button__15V").prop("disabled", true);
			}
			
			 
		});
		$(".solidButton__button__15V").click(function(){
			// ㄹ로딩 화면?
					console.log($("#email").val());
				$.ajax({
					/* 확인해보니 에러 메세지에서 javax.mail.authenticationfailedexception 534-5.7.14 
					이 부분으로 확인해보시면 동일한 증상으로 문제되는 사람들이 몇몇 있었네요.
					구글계정에 대한 보안수준이 낮은 앱에 접근성을 허용하는 부분에 대한 문제네요.
					https://www.google.com/settings/security/lesssecureapps 
					위 링크로 접속해서 로그인이 안되어있다면 로그인하시고 보안수준이 낮은 앱 설정을 
					사용안함에서 사용으로 적용해보시면 될듯합니다. */
					url : "checkEmail.do",
					data : {email : $("#email").val()},
					type : "get",
					success:function(data){
						if(data){
							alert("이미 가입한 이메일 입니다..");
							/* var $auNum_wrapper = $("<div class='auNum_wrapper'></div>");
							 var $solidReasonInput_wrapper = $("<div class='solidReasonInput__wrapper__auNum undefined'></div>");
							 var $auNumInput = $("<input type='text' id='auNum' autofocus='' class='solidReasonInput__textInput__auNum' placeholder='인증번호 6자리를 입력해주세요.' value='''/>");
							 var $solidButton = $("<div class='solidButton__buttonWrapper__auNum'></div>");
							 var $auNumButton = $("<button type='button' class='solidButton__button__auNum  solidButton__disabled__15i signUpBody__nextButton__auNum' disabled style='background-color:rgba(0,0,0,0)'>제출</button>");
							
	 						$solidReasonInput_wrapper.append($auNumInput);
	 						$auNum_wrapper.append($solidReasonInput_wrapper);
	 						$solidButton.append($auNumButton);
							$auNum_wrapper.append($solidButton);
							$(".signUpBody__content__1PG").append($auNum_wrapper); */
							
							
						}else{
							alert("인증 번호를 확인해 주세요!");
						 //인증번호 보내기 찾아보기
						 //세션에 이메일 저장..
						 $(".solidButton__button__15V").addClass("solidButton__disabled__15i");
						sessionStorage.setItem("email", $("#email").val());
						sessionStorage.setItem("pwd", $("#pwd").val());
						
						 
						 
						 //div 만들기
						 var $auNum_wrapper = $("<div class='auNum_wrapper'></div>");
						 var $solidReasonInput_wrapper = $("<div class='solidReasonInput__wrapper__auNum undefined'></div>");
						 var $auNumInput = $("<input type='text' id='auNum' autofocus='' class='solidReasonInput__textInput__auNum' placeholder='인증번호 6자리를 입력해주세요.' value='''/>");
						 var $solidButton = $("<div class='solidButton__buttonWrapper__auNum'></div>");
						 var $auNumButton = $("<button type='button' class='solidButton__button__auNum  solidButton__disabled__15i signUpBody__nextButton__auNum' disabled style='background-color:rgba(0,0,0,0)'>제출</button>");
						
 						$solidReasonInput_wrapper.append($auNumInput);
 						$auNum_wrapper.append($solidReasonInput_wrapper);
 						$solidButton.append($auNumButton);
						$auNum_wrapper.append($solidButton);
						$(".signUpBody__content__1PG").append($auNum_wrapper);
						 
							
						}
					},
					beforeSend:function(){
						$('#loading').css('display','block');
				    },
				    complete:function(){
				    	 $('#loading').css('display','none');
				    },
					error:function(e){
						console.log(e);
					}
				});
		});
		$(document).on("keyup","#auNum", function(){
			var auNum = $(this).val();
			var regex=/(^[0-9]{6,6}$)/;
			var flag = (auNum != '' && auNum != 'undefined' && regex.test(auNum));
			var $msgAuNum = $("<div class='solidReasonInput__rightItemsWrapper__AuNum'><span></span></div>");
			
			if(!flag){
				$(this).addClass("solidReasonInput__failedWrapper__2fu");
				
				if($(this).parent().children().length<2){
					$(this).parent().append($msgAuNum);
				}
				$(".solidReasonInput__rightItemsWrapper__AuNum").children().css("color", "#fb2942");
				$(".solidReasonInput__rightItemsWrapper__AuNum").children().text("인증번호를 확인하세요.");
				$(".solidButton__button__auNum").addClass("solidButton__disabled__15i");
				$(".solidButton__button__auNum").prop("disabled", true);
				
			 }else{
					 $(this).removeClass("solidReasonInput__failedWrapper__2fu");
					$(".solidReasonInput__rightItemsWrapper__AuNum").children().text("멋지네요!");
					$(".solidReasonInput__rightItemsWrapper__AuNum").children().css("color", "black");
					$(".solidButton__button__auNum").removeClass("solidButton__disabled__15i");
					$(".solidButton__button__auNum").prop("disabled", false);
					
			 }
		});
		$(document).on("click",".solidButton__button__auNum", function(){
			//이메일 로 확인하고 누를경우 다음페이지로~인증번호 확인 구현 안했음
			location.href="/sellpie/getPwd.do";
			
		});
	});
	function test(){
		location.href="test.do";
	}
</script>
      </head>
      <body>
        <div id="vingle-web">
            <div>
                <div class="root__rootWrapper__1So">
                    <div class="commonView__container__2RU">
                        <div class="commonView__container__2RU">
                            <nav class="navbar__navWrapper__2mJ">
                                <div class="navbar__container__3tL clearfix">
                                	<ul class="navbar__left__2RB">
                                		<li><a href="mailto:ads@vingle.net"><span>관리자 페이지</span></a></li><li>
                                	</ul>
                                    <ul class="navbar__right__2FE">
                                            <li class="navbar__login__3ct"><a href="/sellpie/login.do"><span>로그인</span></a></li>
                                    </ul>
                                </div>
                            </nav>
                        <div class="signUpComponent__bodyWrapper__3ND">
                            <div class="signUpComponent__backgroundImagesWrapper__VTf">
                                <div class="signUpComponent__backgroundImage__3VS" style="opacity: 1; background-image: url('resources/images/mainImg/main1.jpg'); background-size: cover;"></div>
                                <div class="signUpComponent__backgroundImage__3VS" style="opacity: 0; background-image: url('resources/images/mainImg/main2.jpg'); background-size: cover;"></div>
                                <div class="signUpComponent__backgroundImage__3VS" style="opacity: 0; background-image: url('resources/images/mainImg/main3.jpg'); background-size: cover;"></div>
                                <div class="signUpComponent__backgroundImage__3VS" style="opacity: 0; background-image: url('resources/images/mainImg/main4.jpg'); background-size: cover;"></div>
                                <div class="signUpComponent__backgroundImage__3VS" style="opacity: 0; background-image: url('resources/images/mainImg/main5.jpg'); background-size: cover;"></div>
                                <div class="signUpComponent__backgroundImage__3VS" style="opacity: 0; background-image: url('resources/images/mainImg/main6.jpg'); background-size: cover;"></div>
                                <div class="signUpComponent__backgroundImage__3VS" style="opacity: 0; background-image: url('resources/images/mainImg/main7.jpg'); background-size: cover;"></div>
                                <div class="signUpComponent__backgroundImage__3VS" style="opacity: 0; background-image: url('resources/images/mainImg/main8.jpg');; background-size: cover;"></div>
                            </div>
                            <div class="signUpComponent__container__6PN">
                                <div class="signUpComponent__logo__3Im">
                                    <img src="resources/images/mainImg/sellpie.png" class="icons__icon__2cq"/>
                                </div>
                                    <div class="signUpComponent__comment__1Pa">내 친구가 좋아하는 것이 아닌<br><b>"내"</b>가 좋아하는 것을 즐기세요
                                    </div>
                            </div>
                            <div class="signUpDetail__bodyContainer__vop">
    					<div class="signUpBody__emailBodyWrapper__20z">
    					    <div class="signUpBody__emailHeader__TiN">
    							<div class="titleWithVerify__head__3gv">
    								<div class="titleWithVerify__title__1ix">이메일로 회원가입</div>
    						   </div>
    						</div>
    						<div class="signUpBody__content__1PG"> <!--  form -> div  -->
    							<div class="signUpBody__formInput__1yh">
    								<div class="solidReasonInput__wrapper__28f undefined " >
    									<input type="text" id="email" autofocus="" class="solidReasonInput__textInput__ZZr " placeholder="이메일 주소를 입력해주세요. (sellpie@sellpie.net)" value=""  autocomplete="off"/>
    								</div>
    							</div>
    						<div class="signUpBody__formInput__1yh">
    							<div class="solidReasonInput__wrapper__28f undefined " >
    								<input type="password"  id="pwd" class="solidReasonInput__textInput__ZZr " placeholder="비밀번호를 입력해주세요." value=""/>
    							</div>
    						</div>
    						<div class="solidButton__buttonWrapper__tkE">
    							<button type="button" class="solidButton__button__15V  solidButton__disabled__15i signUpBody__nextButton__wU3" disabled style="background-color:rgba(0,0,0,0)">Next</button>
    						</div>
    						</div> <!-- button end (form) -->
    					</div>
    				</div>
    				</div>
    		</div>
    	</div>
    </div>
  </div> <!-- sellpie-web end -->
    
<!-- Mirrored from www.vingle.net/users/sign_up/email by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 04 Aug 2018 19:30:58 GMT -->
</html>
  