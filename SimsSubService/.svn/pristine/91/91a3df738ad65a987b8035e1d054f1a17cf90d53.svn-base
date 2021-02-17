<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
    <head>
        <meta charset="utf-8">
        <title>
            SIMS 1.0.0
        </title>
        <meta name="description" content="Analytics Dashboard">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
        
        <!-- Call App Mode on ios devices -->
        <meta name="apple-mobile-web-app-capable" content="yes" />
        
        <!-- Remove Tap Highlight on Windows Phone IE -->
        <meta name="msapplication-tap-highlight" content="no">
        
        <!-- base css -->
        <!--===============================================================================================-->
        <link id="vendorsbundle" rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/vendors.bundle.css">
        <!--===============================================================================================-->
        <link id="appbundle" rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/app.bundle.css">
        <!--===============================================================================================-->
        <link id="mytheme" rel="stylesheet" media="screen, print" href="#">
        <!--===============================================================================================-->
        <link id="myskin" rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/skins/skin-master.css">
        <!--===============================================================================================-->
        
        <!-- Place favicon.ico in the root directory -->
        <!--===============================================================================================-->
        <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/resources/assets/smart/favicon/apple-touch-icon.png">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/resources/assets/smart/favicon/favicon-32x32.png">
        <!--===============================================================================================-->
        <link rel="mask-icon" href="${pageContext.request.contextPath}/resources/assets/smart/favicon/safari-pinned-tab.svg" color="#5bbad5">
        <!--===============================================================================================-->
        <link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/miscellaneous/reactions/reactions.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/miscellaneous/fullcalendar/fullcalendar.bundle.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/miscellaneous/jqvmap/jqvmap.bundle.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/datagrid/datatables/datatables.bundle.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/formplugins/bootstrap-datepicker/bootstrap-datepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart//statistics/dygraph/dygraph.css">
        <!--===============================================================================================-->
        
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/vendors.bundle.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/app.bundle.js"></script>        
        <!--===============================================================================================-->
        
        <!-- The order of scripts is irrelevant. Please check out the plugin pages for more details about these plugins below: -->
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/dependency/moment/moment.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/miscellaneous/fullcalendar/fullcalendar.bundle.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/statistics/sparkline/sparkline.bundle.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/statistics/easypiechart/easypiechart.bundle.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/statistics/flot/flot.bundle.js"></script> 
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/miscellaneous/jqvmap/jqvmap.bundle.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/statistics/peity/peity.bundle.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/datagrid/datatables/datatables.bundle.js"></script>
        <!--===============================================================================================-->        
        <script src="${pageContext.request.contextPath}/resources/js/smart/formplugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/formplugins/bootstrap-datepicker/bootstrap-datepicker.kr.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/statistics/dygraph/dygraph.js"></script>
        <!--===============================================================================================-->        
        <script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
        
        
        <!-- dependency for c3 charts : this dependency is a BSD license with clause 3 -->
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/statistics/d3/d3.js"></script>
        <!--===============================================================================================-->
        
        <!-- c3 charts : MIT license -->
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/statistics/c3/c3.js"></script>
        <!--===============================================================================================-->
        
        
        <script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/modules/windbarb.js"></script>
		<script src="https://code.highcharts.com/modules/pattern-fill.js"></script>
		<script src="https://code.highcharts.com/modules/exporting.js"></script>
		<script src="https://code.highcharts.com/modules/accessibility.js"></script>
		<link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    </head>
    
    <body class="mod-bg-1 mod-nav-link mod-skin-light header-function-fixed nav-function-fixed nav-function-hidden footer-function-fixed mod-main-boxed">
    
     <!-- DOC: script to save and load page settings -->
        <script>
            

        </script>    
        
        <!-- BEGIN Page Wrapper -->
        <div class="page-wrapper">
            <div class="page-inner">
                
                <!-- BEGIN Navigation -->
                <%-- <tiles:insertAttribute name="navigation"/> --%>
                <!-- END Navigation -->
                
                <div class="page-content-wrapper">
                
                    <!-- BEGIN Page Header -->
                    <tiles:insertAttribute name="header"/>
                    <!-- END Page Header -->
                    
                    <!-- BEGIN Page Content -->
                    <tiles:insertAttribute name="content"/>
                    <!-- END Page Content -->
                    
                    <!-- this overlay is activated only when mobile menu is triggered -->
                    <div class="page-content-overlay" data-action="toggle" data-class="mobile-nav-on"></div> 
                    
                    <!-- BEGIN Page Footer -->
                    <tiles:insertAttribute name="footer"/>
                    <!-- END Page Footer -->
                    
                    <!-- BEGIN Shortcuts -->
                    <div class="modal fade modal-backdrop-transparent" id="modal-shortcut" tabindex="-1" role="dialog" aria-labelledby="modal-shortcut" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-top modal-transparent" role="document">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <ul class="app-list w-auto h-auto p-0 text-left">
                                        <li>
                                            <a href="intel_introduction.html" class="app-list-item text-white border-0 m-0">
                                                <div class="icon-stack">
                                                    <i class="base base-7 icon-stack-3x opacity-100 color-primary-500 "></i>
                                                    <i class="base base-7 icon-stack-2x opacity-100 color-primary-300 "></i>
                                                    <i class="fal fa-home icon-stack-1x opacity-100 color-white"></i>
                                                </div>
                                                <span class="app-list-name">
                                                    Home
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="page_inbox_general.html" class="app-list-item text-white border-0 m-0">
                                                <div class="icon-stack">
                                                    <i class="base base-7 icon-stack-3x opacity-100 color-success-500 "></i>
                                                    <i class="base base-7 icon-stack-2x opacity-100 color-success-300 "></i>
                                                    <i class="ni ni-envelope icon-stack-1x text-white"></i>
                                                </div>
                                                <span class="app-list-name">
                                                    Inbox
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="intel_introduction.html" class="app-list-item text-white border-0 m-0">
                                                <div class="icon-stack">
                                                    <i class="base base-7 icon-stack-2x opacity-100 color-primary-300 "></i>
                                                    <i class="fal fa-plus icon-stack-1x opacity-100 color-white"></i>
                                                </div>
                                                <span class="app-list-name">
                                                    Add More
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END Shortcuts -->
                    <!-- BEGIN Color profile -->
                    <!-- this area is hidden and will not be seen on screens or screen readers -->
                    <!-- we use this only for CSS color refernce for JS stuff -->
                    <p id="js-color-profile" class="d-none">
                        <span class="color-primary-50"></span>
                        <span class="color-primary-100"></span>
                        <span class="color-primary-200"></span>
                        <span class="color-primary-300"></span>
                        <span class="color-primary-400"></span>
                        <span class="color-primary-500"></span>
                        <span class="color-primary-600"></span>
                        <span class="color-primary-700"></span>
                        <span class="color-primary-800"></span>
                        <span class="color-primary-900"></span>
                        <span class="color-info-50"></span>
                        <span class="color-info-100"></span>
                        <span class="color-info-200"></span>
                        <span class="color-info-300"></span>
                        <span class="color-info-400"></span>
                        <span class="color-info-500"></span>
                        <span class="color-info-600"></span>
                        <span class="color-info-700"></span>
                        <span class="color-info-800"></span>
                        <span class="color-info-900"></span>
                        <span class="color-danger-50"></span>
                        <span class="color-danger-100"></span>
                        <span class="color-danger-200"></span>
                        <span class="color-danger-300"></span>
                        <span class="color-danger-400"></span>
                        <span class="color-danger-500"></span>
                        <span class="color-danger-600"></span>
                        <span class="color-danger-700"></span>
                        <span class="color-danger-800"></span>
                        <span class="color-danger-900"></span>
                        <span class="color-warning-50"></span>
                        <span class="color-warning-100"></span>
                        <span class="color-warning-200"></span>
                        <span class="color-warning-300"></span>
                        <span class="color-warning-400"></span>
                        <span class="color-warning-500"></span>
                        <span class="color-warning-600"></span>
                        <span class="color-warning-700"></span>
                        <span class="color-warning-800"></span>
                        <span class="color-warning-900"></span>
                        <span class="color-success-50"></span>
                        <span class="color-success-100"></span>
                        <span class="color-success-200"></span>
                        <span class="color-success-300"></span>
                        <span class="color-success-400"></span>
                        <span class="color-success-500"></span>
                        <span class="color-success-600"></span>
                        <span class="color-success-700"></span>
                        <span class="color-success-800"></span>
                        <span class="color-success-900"></span>
                        <span class="color-fusion-50"></span>
                        <span class="color-fusion-100"></span>
                        <span class="color-fusion-200"></span>
                        <span class="color-fusion-300"></span>
                        <span class="color-fusion-400"></span>
                        <span class="color-fusion-500"></span>
                        <span class="color-fusion-600"></span>
                        <span class="color-fusion-700"></span>
                        <span class="color-fusion-800"></span>
                        <span class="color-fusion-900"></span>
                    </p>
                    <!-- END Color profile -->
                </div>
            </div>
        </div>
        <!-- END Page Wrapper -->
        
        <script type="text/javascript">
            /* Activate smart panels */
            $('#js-page-content').smartPanel();
        </script>
        
    </body>
    <!-- END Body -->
</html>
