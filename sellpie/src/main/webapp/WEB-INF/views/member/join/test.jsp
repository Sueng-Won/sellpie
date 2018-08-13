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
</style>
<style type="text/css" id="s2126-0">

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
</style>

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

.signUpComponent__bodyWrapper__3ND {
  background-repeat: no-repeat;
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

.signUpComponent__footer__DSK {
  position: absolute;
  bottom: 70px;
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
    
    a{color:#000;}

.mask{width:100%; height:100%; position:fixed; left:0; top:0; z-index:10; background:#000; opacity:.5; filter:alpha(opacity=50);}

#modalLayer{display:none; position:relative;}
#modalLayer .modalContent{width:440px; height:200px; padding:20px; border:1px solid #ccc; position:fixed; left:50%; top:50%; z-index:11; background:#fff;}
#modalLayer .modalContent button{position:absolute; right:0; top:0; cursor:pointer;}
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
    .solidReasonInput__wrapper__28f {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  position: relative;
  width: 100%;
  height: 55px;
  border-radius: 6px;
  border: 1px solid #aeb8bd; }
  .solidReasonInput__textInput__ZZr {
  width: 100%;
  height: 100%;
  font-size: 14px;
  font-weight: 300;
  border-radius: 6px;
  padding-left: 20px;
  outline: none;
  border: none; }
  .signUpDetail__bodyContainer__vop{
  	padding-top:300px;
  }
</style>

<script>
  $(function(){
     var count = 0;
     var $view2 = $(".signUpComponent__backgroundImagesWrapper__VTf").children();
     setInterval(function(){
        if(count==7){
           $view2.eq(0).animate({opacity:"1"}, 2000);
        }
        if(count==8){
           count=0;
        }
        $view2.eq(count).animate({opacity:"0"}, 2000);
        count++
        $view2.eq(count).animate({opacity:"1"}, 2000);
        console.log(count);
     },4000);
     
     $("._5f5mN").click(function(){
    	location.href="/sellpie/signIn.do"; 
     });
     var modalLayer = $("#modalLayer");
     var modalLink = $(".modalLink");
     var modalCont = $(".modalContent");
     var marginLeft = modalCont.outerWidth()/2;
     var marginTop = modalCont.outerHeight()/2; 

     modalLink.click(function(){
       modalLayer.fadeIn("slow");
       modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
       $(this).blur();
       $(".modalContent > a").focus(); 
       return false;
     });

     $(".modalContent > button").click(function(){
       modalLayer.fadeOut("slow");
       modalLink.focus();
     });		
        
     });
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
                            <div class="signUpComponent__footer__DSK">
                                
                            <div class="solidButton__buttonWrapper__tkE">
                                <button type="submit" class="solidButton__button__15V   signUpComponent__btnEmail__25y">이메일로 시작하기</button>
                            </div>
                            
                            <div class="signUpComponent__hadAccount__gtQ"><span>이미 빙글을 사용하고 있나요? </span>
                                <span class="signUpComponent__login__3Iz"><a href="/sellpie/login.do"><span>로그인</span></a></span>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  모달 Test -->
    <div id="modalLayer">
  <div class="modalContent">
    <a href="#">모달창 테스트</a> 
  </div>
</div>
  </body>
</html>