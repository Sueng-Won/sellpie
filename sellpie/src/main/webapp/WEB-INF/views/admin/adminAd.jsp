<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>광고 관리</title>
<!-- Bootstrap core CSS -->

  <link href="../resources/adminCss/css/bootstrap.min.css" rel="stylesheet">

  <link href="../resources/adminCss/fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="../resources/adminCss/css/animate.min.css" rel="stylesheet">

  <!-- Custom styling plus plugins -->
  <link href="../resources/adminCss/css/custom.css" rel="stylesheet">
  <link href="../resources/adminCss/css/icheck/flat/green.css" rel="stylesheet">

  <link href="../resources/adminCss/js/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
  <link href="../resources/adminCss/js/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="../resources/adminCss/js/datatables/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="../resources/adminCss/js/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="../resources/adminCss/js/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="../resources/adminCss/css/switchery/switchery.min.css">
  <script src="../resources/adminCss/js/jquery.min.js"></script>
  <script src="../resources/adminCss/js/switchery/switchery.min.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body class="nav-md">
  <div class="container body">
    <div class="main_container">
      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">
          <div class="navbar nav_title" style="border: 0;">
            <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>SellPie</span></a>
          </div>
          <div class="clearfix"></div>

          <!-- menu prile quick info -->
           <c:import url="part/sideBar.jsp"></c:import>
          <!-- /menu footer buttons -->
        </div>
      </div>

      <!-- top navigation -->
       <c:import url="part/topNavi.jsp"></c:import>
      <!-- /top navigation -->

      <!-- page content -->
      <div class="right_col" role="main">
        <div class="">
          <div class="page-title">
            <div class="title_left">
              <h3>
                    Users
                    <small>
                        Some examples to get you started
                    </small>
                </h3>
            </div>

            <div class="title_right">
              <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search for...">
                  <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Go!</button>
                        </span>
                </div>
              </div>
            </div>
          </div>
          <div class="clearfix"></div>

          <div class="row">

            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>광고 신청 현황<small>Users</small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a href="#"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a>
                        </li>
                        <li><a href="#">Settings 2</a>
                        </li>
                      </ul>
                    </li>
                    <li><a href="#"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <p class="text-muted font-13 m-b-30">
                    DataTables has most features enabled by default, so all you need to do to use it with your own tables is to call the construction function: <code>$().DataTable();</code>
                  </p>
                  <table id="datatable" class="table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th>신청자</th>
                        <th>신청번호</th>
                        <th>희망품목(?)</th>
                        <th>이름</th>
                        <th>신청 일자</th>
                        <th>처리여부(버튼)</th>
                      </tr>
                    </thead>
                    <tbody>
                    	<c:forEach items="${sellerList}" var="sellerList">
                      <tr>
                        <td><c:out value="${sellerList.email}"/></td>
                        <td><c:out value="${sellerList.sNo}"/></td>
                        <td><c:out value="${sellerList.acNum}"/></td>
                        <td>61</td>
                        <td>2011/04/25</td>
                        <td align="center">
                        	<button type="button" class="btn btn-success" onclick="approveAdmin(this)">승인</button>
                        	<button type="button" class="btn btn-primary" >취소</button>
                        </td>
                      </tr>
        				</c:forEach>
                    </tbody>
                    
                  </table>
                </div>
              </div>
            </div>
</div>
            
              </div>
              
				<c:import url="part/adminFooter.jsp"></c:import> <!-- 푸터 -->
            </div>
            <!-- /page content -->
          </div>

        </div>

        <div id="custom_notifications" class="custom-notifications dsp_none">
          <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
          </ul>
          <div class="clearfix"></div>
          <div id="notif-group" class="tabbed_notifications"></div>
        </div>

        <script src="../resources/adminCss/js/bootstrap.min.js"></script>

        <!-- bootstrap progress js -->
        <script src="../resources/adminCss/js/progressbar/bootstrap-progressbar.min.js"></script>
        <script src="../resources/adminCss/js/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- icheck -->
        <script src="../resources/adminCss/js/icheck/icheck.min.js"></script>

        <script src="../resources/adminCss/js/custom.js"></script>


        <!-- Datatables -->
        <!-- <script src="js/datatables/js/jquery.dataTables.js"></script>
  <script src="js/datatables/tools/js/dataTables.tableTools.js"></script> -->

        <!-- Datatables-->
        <script src="../resources/adminCss/js/datatables/jquery.dataTables.min.js"></script>
        <script src="../resources/adminCss/js/datatables/dataTables.bootstrap.js"></script>
        <script src="../resources/adminCss/js/datatables/dataTables.buttons.min.js"></script>
        <script src="../resources/adminCss/js/datatables/buttons.bootstrap.min.js"></script>
        <script src="../resources/adminCss/js/datatables/jszip.min.js"></script>
        <script src="../resources/adminCss/js/datatables/pdfmake.min.js"></script>
        <script src="../resources/adminCss/js/datatables/vfs_fonts.js"></script>
        <script src="../resources/adminCss/js/datatables/buttons.html5.min.js"></script>
        <script src="../resources/adminCss/js/datatables/buttons.print.min.js"></script>
        <script src="../resources/adminCss/js/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="../resources/adminCss/js/datatables/dataTables.keyTable.min.js"></script>
        <script src="../resources/adminCss/js/datatables/dataTables.responsive.min.js"></script>
        <script src="../resources/adminCss/js/datatables/responsive.bootstrap.min.js"></script>
        <script src="../resources/adminCss/js/datatables/dataTables.scroller.min.js"></script>


        <!-- pace -->
        <script src="../resources/adminCss/js/pace/pace.min.js"></script>
        <script>
        function approveAdmin(obj){
        	var userEmail = $(obj).parent().parent().children().eq(0).text();
        	var approveNum = $(obj).parent().parent().children().eq(1).text();
        	var adminMsg = $(obj).parent();
        	
        	swal({
        		  title: "승인 처리를 하시겠습니까??",
        		  text: "승인 처리 완료 후엔 변경 할 수 없습니다.",
        		  icon: "warning",
        		  buttons: true,
        		  dangerMode: true,
        		})
        		.then((willDelete) => {
        		  if (willDelete) {
        			  $.ajax({
        					url : "approveAdmin.do", 
        					data : {email : userEmail, sNo : approveNum},
        					type : "post",
        					success:function(data){
        						swal("처리가 완료 되었습니다.", {
        		        		      icon: "success",
        		        		    });
        						console.log(data);
        						$(obj).parent().children().remove();
        						adminMsg.text("처리완료");
        					},
        					error:function(e){
        						console.log(e);
        					}
        				});  
        		    
        		  } else {
        		    swal("취소하셨습니다.");
        		  }
        		});
        	
        	
        	console.log(adminMsg);
        	  
        }
        
        
          var handleDataTableButtons = function() {
              "use strict";
              0 !== $("#datatable-buttons").length && $("#datatable-buttons").DataTable({
                dom: "Bfrtip",
                buttons: [{
                  extend: "copy",
                  className: "btn-sm"
                }, {
                  extend: "csv",
                  className: "btn-sm"
                }, {
                  extend: "excel",
                  className: "btn-sm"
                }, {
                  extend: "pdf",
                  className: "btn-sm"
                }, {
                  extend: "print",
                  className: "btn-sm"
                }],
                responsive: !0
              })
            },
            TableManageButtons = function() {
              "use strict";
              return {
                init: function() {
                  handleDataTableButtons()
                }
              }
            }();
        </script>
        <script type="text/javascript">
          $(document).ready(function() {
            $('#datatable').dataTable();
            $('#datatable-keytable').DataTable({
              keys: true
            });
            $('#datatable-responsive').DataTable();
            $('#datatable-scroller').DataTable({
              ajax: "js/datatables/json/scroller-demo.json",
              deferRender: true,
              scrollY: 380,
              scrollCollapse: true,
              scroller: true
            });
            var table = $('#datatable-fixed-header').DataTable({
              fixedHeader: true
            });
          });
        </script>
</body>
</html>