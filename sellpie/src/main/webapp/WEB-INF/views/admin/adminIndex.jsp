<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
   
  <link href="../resources/adminCss/css/bootstrap.min.css" rel="stylesheet">

  <link href="../resources/adminCss/fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="../resources/adminCss/css/animate.min.css" rel="stylesheet">

  <!-- Custom styling plus plugins -->
  <link href="../resources/adminCss/css/custom.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="../resources/adminCss/css/maps/jquery-jvectormap-2.0.3.css" />
  <link href="../resources/adminCss/css/icheck/flat/green.css" rel="stylesheet">
  <link href="../resources/adminCss/css/floatexamples.css" rel="stylesheet" type="text/css" />

  <script src="../resources/adminCss/js/jquery.min.js"></script>
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
			
			<!-- 왼쪽사이드 -->
            <c:import url="part/sideBar.jsp"></c:import>
            	<!-- 왼쪽사이드 -->
        </div>
      </div>

      <!-- top navigation 탑 내비 -->
         <c:import url="part/topNavi.jsp"></c:import>
      <!-- /top navigation 탑 내비-->


      <!-- page content -->
      <div class="right_col" role="main">

        <br />
        <div class="">

          <div class="row top_tiles">
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
              <div class="tile-stats">
                <div class="icon"><i class="fa fa-caret-square-o-right"></i>
                </div>
                <div class="count">179</div>

                <h3>New Sign ups</h3>
                <p>Lorem ipsum psdea itgum rixt.</p>
              </div>
            </div>
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
              <div class="tile-stats">
                <div class="icon"><i class="fa fa-comments-o"></i>
                </div>
                <div class="count">179</div>

                <h3>New Sign ups</h3>
                <p>Lorem ipsum psdea itgum rixt.</p>
              </div>
            </div>
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
              <div class="tile-stats">
                <div class="icon"><i class="fa fa-sort-amount-desc"></i>
                </div>
                <div class="count">179</div>

                <h3>New Sign ups</h3>
                <p>Lorem ipsum psdea itgum rixt.</p>
              </div>
            </div>
            <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
              <div class="tile-stats">
                <div class="icon"><i class="fa fa-check-square-o"></i>
                </div>
                <div class="count">179</div>

                <h3>New Sign ups</h3>
                <p>Lorem ipsum psdea itgum rixt.</p>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2>Transaction Summary <small>Weekly progress</small></h2>
                  
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <div class="col-md-9 col-sm-12 col-xs-12">
                    <div class="demo-container" style="height:280px">
                      <div id="placeholder33x" class="demo-placeholder"></div>
                    </div>
                    

                  </div>

                  <div class="col-md-3 col-sm-12 col-xs-12">
                    <div>
                      <div class="x_title">
                        <h2>Top Profiles</h2>
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
                      <ul class="list-unstyled top_profiles scroll-view">
                        <li class="media event">
                          <a class="pull-left border-aero profile_thumb">
                            <i class="fa fa-user aero"></i>
                          </a>
                          <div class="media-body">
                            <a class="title" href="#">Ms. Mary Jane</a>
                            <p><strong>$2300. </strong> Agent Avarage Sales </p>
                            <p> <small>12 Sales Today</small>
                            </p>
                          </div>
                        </li>
                        <li class="media event">
                          <a class="pull-left border-green profile_thumb">
                            <i class="fa fa-user green"></i>
                          </a>
                          <div class="media-body">
                            <a class="title" href="#">Ms. Mary Jane</a>
                            <p><strong>$2300. </strong> Agent Avarage Sales </p>
                            <p> <small>12 Sales Today</small>
                            </p>
                          </div>
                        </li>
                        <li class="media event">
                          <a class="pull-left border-blue profile_thumb">
                            <i class="fa fa-user blue"></i>
                          </a>
                          <div class="media-body">
                            <a class="title" href="#">Ms. Mary Jane</a>
                            <p><strong>$2300. </strong> Agent Avarage Sales </p>
                            <p> <small>12 Sales Today</small>
                            </p>
                          </div>
                        </li>
                        <li class="media event">
                          <a class="pull-left border-aero profile_thumb">
                            <i class="fa fa-user aero"></i>
                          </a>
                          <div class="media-body">
                            <a class="title" href="#">Ms. Mary Jane</a>
                            <p><strong>$2300. </strong> Agent Avarage Sales </p>
                            <p> <small>12 Sales Today</small>
                            </p>
                          </div>
                        </li>
                        <li class="media event">
                          <a class="pull-left border-green profile_thumb">
                            <i class="fa fa-user green"></i>
                          </a>
                          <div class="media-body">
                            <a class="title" href="#">Ms. Mary Jane</a>
                            <p><strong>$2300. </strong> Agent Avarage Sales </p>
                            <p> <small>12 Sales Today</small>
                            </p>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>

                </div>
              </div>
            </div>
          </div>



          



          
        </div>

        <!-- footer content -->
           <c:import url="part/adminFooter.jsp"></c:import>
        <!-- /footer content -->

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
  <script src="../resources/adminCss/js/nicescroll/jquery.nicescroll.min.js"></script>

  <!-- bootstrap progress js -->
  <script src="../resources/adminCss/js/progressbar/bootstrap-progressbar.min.js"></script>
  <!-- icheck -->
  <script src="../resources/adminCss/js/icheck/icheck.min.js"></script>
  <!-- daterangepicker -->
 <!--  <script type="text/javascript" src="../resources/adminCss/js/moment/moment.min.js"></script> -->
  <!-- <script type="text/javascript" src="../resources/adminCss/js/datepicker/daterangepicker.js"></script> -->
  <!-- chart js -->
  <!-- <script src="../resources/adminCss/js/chartjs/chart.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
  <!-- sparkline -->
  <script src="../resources/adminCss/js/sparkline/jquery.sparkline.min.js"></script>

  <script src="../resources/adminCss/js/custom.js"></script>

  <!-- flot js -->
  <!--[if lte IE 8]><script type="text/javascript" src="js/excanvas.min.js"></script><![endif]-->
  <script type="text/javascript" src="../resources/adminCss/js/flot/jquery.flot.js"></script>
  <script type="text/javascript" src="../resources/adminCss/js/flot/jquery.flot.pie.js"></script>
  <script type="text/javascript" src="../resources/adminCss/js/flot/jquery.flot.orderBars.js"></script>
  <script type="text/javascript" src="../resources/adminCss/js/flot/jquery.flot.time.min.js"></script>
  <script type="text/javascript" src="../resources/adminCss/js/flot/date.js"></script>
  <script type="text/javascript" src="../resources/adminCss/js/flot/jquery.flot.spline.js"></script>
  <script type="text/javascript" src="../resources/adminCss/js/flot/jquery.flot.stack.js"></script>
  <script type="text/javascript" src="../resources/adminCss/js/flot/curvedLines.js"></script>
  <script type="text/javascript" src="../resources/adminCss/js/flot/jquery.flot.resize.js"></script>
  <!-- pace -->
  <script src="../resources/adminCss/js/pace/pace.min.js"></script>
  <!-- flot -->
  <script type="text/javascript">
    //define chart clolors ( you maybe add more colors if you want or flot will add it automatic )
    var chartColours = ['#96CA59', '#3F97EB', '#72c380', '#6f7a8a', '#f7cb38', '#5a8022', '#2c7282'];

    //generate random number for charts
    randNum = function() {
      return (Math.floor(Math.random() * (1 + 40 - 20))) + 20;
    }

    $(function() {
      var d1 = [];
      //var d2 = [];

      //here we generate data for chart
      for (var i = 0; i < 30; i++) {
        d1.push([new Date(Date.today().add(i).days()).getTime(), randNum() + i + i + 10]);
        //    d2.push([new Date(Date.today().add(i).days()).getTime(), randNum()]);
      }
      var chartMinDate = d1[0][0]; //first day
      var chartMaxDate = d1[7][0]; //last day

      var tickSize = [1, "day"];
      var tformat = "%d/%m/%y";

      //graph options
      var options = {
        grid: {
          show: true,
          aboveData: true,
          color: "#3f3f3f",
          labelMargin: 10,
          axisMargin: 0,
          borderWidth: 0,
          borderColor: null,
          minBorderMargin: 5,
          clickable: true,
          hoverable: true,
          autoHighlight: true,
          mouseActiveRadius: 100
        },
        series: {
          lines: {
            show: true,
            fill: true,
            lineWidth: 2,
            steps: false
          },
          points: {
            show: true,
            radius: 4.5,
            symbol: "circle",
            lineWidth: 3.0
          }
        },
        legend: {
          position: "ne",
          margin: [0, -25],
          noColumns: 0,
          labelBoxBorderColor: null,
          labelFormatter: function(label, series) {
            // just add some space to labes
            return label + '&nbsp;&nbsp;';
          },
          width: 40,
          height: 1
        },
        colors: chartColours,
        shadowSize: 0,
        tooltip: true, //activate tooltip
        tooltipOpts: {
          content: "%s: %y.0",
          xDateFormat: "%d/%m",
          shifts: {
            x: -30,
            y: -50
          },
          defaultTheme: false
        },
        yaxis: {
          min: 0
        },
        xaxis: {
          mode: "time",
          minTickSize: tickSize,
          timeformat: tformat,
          min: chartMinDate,
          max: chartMaxDate
        }
      };
      var plot = $.plot($("#placeholder33x"), [{
        label: "접속자 증감",
        data: d1,
        lines: {
          fillColor: "rgba(150, 202, 89, 0.12)"
        }, //#96CA59 rgba(150, 202, 89, 0.42)
        points: {
          fillColor: "#fff"
        }
      }], options);
    });
  </script>
  <!-- /flot -->
  <!--  -->
  <script>
    $('document').ready(function() {
      $(".sparkline_one").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 5, 6, 4, 5, 6, 3, 5, 4, 5, 4, 5, 4, 3, 4, 5, 6, 7, 5, 4, 3, 5, 6], {
        type: 'bar',
        height: '125',
        barWidth: 13,
        colorMap: {
          '7': '#a1a1a1'
        },
        barSpacing: 2,
        barColor: '#26B99A'
      });

      $(".sparkline11").sparkline([2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 6, 2, 4, 3, 4, 5, 4, 5, 4, 3], {
        type: 'bar',
        height: '40',
        barWidth: 8,
        colorMap: {
          '7': '#a1a1a1'
        },
        barSpacing: 2,
        barColor: '#26B99A'
      });

      $(".sparkline22").sparkline([2, 4, 3, 4, 7, 5, 4, 3, 5, 6, 2, 4, 3, 4, 5, 4, 5, 4, 3, 4, 6], {
        type: 'line',
        height: '40',
        width: '200',
        lineColor: '#26B99A',
        fillColor: '#ffffff',
        lineWidth: 3,
        spotColor: '#34495E',
        minSpotColor: '#34495E'
      });

      var doughnutData = [{
        value: 30,
        color: "#455C73"
      }, {
        value: 30,
        color: "#9B59B6"
      }, {
        value: 60,
        color: "#BDC3C7"
      }, {
        value: 100,
        color: "#26B99A"
      }, {
        value: 120,
        color: "#3498DB"
      }];

      Chart.defaults.global.legend = {
        enabled: false
      };

      var canvasDoughnut = new Chart(document.getElementById("canvas1i"), {
        type: 'doughnut',
        showTooltips: false,
        tooltipFillColor: "rgba(51, 51, 51, 0.55)",
        data: {
          labels: [
            "Symbian",
            "Blackberry",
            "Other",
            "Android",
            "IOS"
          ],
          datasets: [{
            data: [15, 20, 30, 10, 30],
            backgroundColor: [
              "#BDC3C7",
              "#9B59B6",
              "#455C73",
              "#26B99A",
              "#3498DB"
            ],
            hoverBackgroundColor: [
              "#CFD4D8",
              "#B370CF",
              "#34495E",
              "#36CAAB",
              "#49A9EA"
            ]

          }]
        }
      });

      var canvasDoughnut = new Chart(document.getElementById("canvas1i2"), {
        type: 'doughnut',
        showTooltips: false,
        tooltipFillColor: "rgba(51, 51, 51, 0.55)",
        data: {
          labels: [
            "Symbian",
            "Blackberry",
            "Other",
            "Android",
            "IOS"
          ],
          datasets: [{
            data: [15, 20, 30, 10, 30],
            backgroundColor: [
              "#BDC3C7",
              "#9B59B6",
              "#455C73",
              "#26B99A",
              "#3498DB"
            ],
            hoverBackgroundColor: [
              "#CFD4D8",
              "#B370CF",
              "#34495E",
              "#36CAAB",
              "#49A9EA"
            ]

          }]
        }
      });

      var canvasDoughnut = new Chart(document.getElementById("canvas1i3"), {
        type: 'doughnut',
        showTooltips: false,
        tooltipFillColor: "rgba(51, 51, 51, 0.55)",
        data: {
          labels: [
            "Symbian",
            "Blackberry",
            "Other",
            "Android",
            "IOS"
          ],
          datasets: [{
            data: [15, 20, 30, 10, 30],
            backgroundColor: [
              "#BDC3C7",
              "#9B59B6",
              "#455C73",
              "#26B99A",
              "#3498DB"
            ],
            hoverBackgroundColor: [
              "#CFD4D8",
              "#B370CF",
              "#34495E",
              "#36CAAB",
              "#49A9EA"
            ]

          }]
        }
      });
    });
  </script>
  <!-- -->
  <!-- datepicker -->
  
  <!-- /datepicker -->
</body>
</html>