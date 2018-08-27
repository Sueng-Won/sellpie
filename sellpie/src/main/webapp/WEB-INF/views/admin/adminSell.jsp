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

  <script src="../resources/adminCss/js/jquery.min.js"></script>
  <style type="text/css">
  	.sellerData{
  		cursor: pointer;
  	}
  </style>
</head>
<body class="nav-md">
  <div class="container body">
    <div class="main_container">
      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">
          <div class="navbar nav_title" style="border: 0;">
            <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentellela Alela!</span></a>
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
                        <h2>판매자 신청 현황</h2>
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
                          Responsive is an extension for DataTables that resolves that problem by optimising the table's layout for different screen sizes through the dynamic insertion and removal of columns from the table.
                        </p>
                        <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                          <thead>
                            <tr>
                              <th width="auto">신청자이메일</th>
                              <th>주소</th>
                              <th>은행</th>
                              <th>계좌번호</th>
                              <th>판매분류</th>
                            </tr>
                          </thead>
                          <tbody>
                          <c:forEach var="item" items="${list }">
	                          <tr class="sellerData" onclick="showModal('${item.reason}',${item.sNo });">
	                          	<td><c:out value="${item.email }"/></td>
	                          	<td><c:out value="${item.addr }"/> <c:out value="${item.addrDetail }"/></td>
	                          	<td><c:out value="${item.bank }"/></td>
	                          	<td><c:out value="${item.acNum }"/></td>
	                          	<td><c:out value="${item.pCategory }"/></td>
	                          	<td class="sellerNum" style="display:none"><c:out value="${item.sNo }"/></td>
	                          </tr>
                          </c:forEach>
                          </tbody>
                        </table>

                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
              <!-- 모달 영역 -->
              <div class="modal fade" id="detailModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">판매사유</h4>
				      </div>
				      <div class="modal-body" id="sellerReason">
				        ...
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				        <button onclick="confirmSeller();" type="button" class="btn btn-primary">판매자승인</button>
				      </div>
				    </div>
				  </div>
				</div>
              <!-- 모달 영역끝 -->
              
              
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
          TableManageButtons.init();
          /* var sellerHtml= "";
          $(function() {
			$.ajax({
				type:"GET",
		        dataType : "json",
		        url:'adminSellerList.do',
		        success:function(data){
		        	console.log(data);
		        	for(var key in data){
		        	sellerHtml += '<tr><td>'+data[key].email+'</td><td>'+data[key].addr+' '+data[key].addrDetail+'</td>'+
		        		'<td>'+data[key].bank+'</td><td>'+data[key].acNum+'</td><td>'+data[key].pCategory+'</td><td style="display:none">'+data[key].sNo+'</td></tr>';
		        		
		        	}
		        	$('#sellerData').append(sellerHtml);
		        }
			});
		}); */
		
		//모달표시------------------------------------------------------------
		var selectSno;
		function showModal(reason,sno) {
			selectSno = sno;
			console.log($(this).find('.sellerNum').text());
			console.log(reason);
			console.log(selectSno);
			$('#sellerReason').text(reason);
			$('#detailModal').modal('toggle');
		}
		function confirmSeller() {
			$.ajax({
				type:"GET",
		        dataType : "json",
		        url:'confirmSeller.do',
		        data:{sNo:selectSno},
		        success:function(data){
		        	console.log(data);
		        	if(1==data){
		        		alert('승인완료');
		        		location.href = '/sellpie/admin/adminSell.do';
		        	}else{
		        		alert('승인실패')	
		        	}
		        },
		        error:function(e){
		        	alert('ajax요청실패');
		        }
			});
		}
        </script>
</body>
</html>