<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
    <head>
        <meta charset="utf-8">
        <title>에너지진단조사표 입력시스템</title>
        <meta name="description" content="Projects">
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
        <link id="myskin" rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/skins/skin-master.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/formplugins/bootstrap-datepicker/bootstrap-datepicker.css">
        <!--===============================================================================================-->
        
        <!-- Place favicon.ico in the root directory -->
        <!--===============================================================================================-->
        <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/resources/assets/smart/favicon/apple-touch-icon.png">
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/resources/assets/smart/favicon/favicon-32x32.png">
        <!--===============================================================================================-->
        <link rel="mask-icon" href="${pageContext.request.contextPath}/resources/assets/smart/favicon/safari-pinned-tab.svg" color="#5bbad5">
        <!--===============================================================================================-->
        <link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/datagrid/datatables/datatables.bundle.css">        
        <!--===============================================================================================-->
                
       	<!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/vendors.bundle.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/app.bundle.js"></script>       
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/datagrid/datatables/datatables.bundle.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/formplugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/smart/formplugins/bootstrap-datepicker/bootstrap-datepicker.kr.js"></script>
        <!--===============================================================================================-->
		<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
		<!--===============================================================================================-->
		<script src="${pageContext.request.contextPath}/resources/js/datatable.kr.js"></script>
        <!--===============================================================================================-->
        <script src="${pageContext.request.contextPath}/resources/js/layerPopup.js"></script>
		<!--===============================================================================================-->
		
		<!--===============================================================================================-->
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/custom.css" /> 
        <!--===============================================================================================-->
		<style>
			.Progress_Bar {width: 100%;height: 100%;top: 0px;left: 0px;position: fixed;display: none;opacity: 0.7;background-color: #fff;z-index: 99;text-align: center;}
			.Progress_Bar_Image {position: absolute;top: 40%;left: 45%;z-index: 100; width:100px; height:100px;}
		</style>
		
    </head>
    <!-- BEGIN Body -->
    <body class="mod-bg-1 mod-nav-link nav-function-top header-function-fixed">        
        <!-- BEGIN Page Wrapper -->
        <div class="page-wrapper">
            <div class="page-inner">
            
            	<tiles:insertAttribute name="nav"/>
            	
                <div class="page-content-wrapper">
                
                	<tiles:insertAttribute name="header"/>
                	
                	<tiles:insertAttribute name="content"/>
                		   
                	<tiles:insertAttribute name="footer"/>
                	
                </div>                
			</div>
		</div>		
			
        <!-- <nav class="shortcut-menu d-none d-sm-block">
            <input type="checkbox" class="menu-open" name="menu-open" id="menu_open" />
            <label for="menu_open" class="menu-open-button ">
                <span class="app-shortcut-icon d-block"></span>
            </label>
            <a href="#" class="menu-item btn" data-toggle="tooltip" data-placement="left" title="스크롤 최상위 이동">
                <i class="fal fa-arrow-up"></i>
            </a>
            <a href="page_login.html" class="menu-item btn" data-toggle="tooltip" data-placement="left" title="로그아웃">
                <i class="fal fa-sign-out"></i>
            </a>
            <a href="/main/dashboard.do" class="menu-item btn" data-toggle="tooltip" data-placement="left" title="건물목록 이동">
                <i class="fal fa-list"></i>
            </a>
        </nav>      -->   
        	
		<div id="Progress_Bar" class="Progress_Bar">
			<button class="btn btn-danger rounded-pill waves-effect waves-themed Progress_Bar_Image" type="button" disabled="">
				<span class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>
					Loading...
			</button>
			<%-- <img class="Progress_Bar_Image" src="${pageContext.request.contextPath}/resources/assets/img/progress-icon.gif" alt="Loading..." /> --%>
		</div>

	<!-- modal alert -->
	<div class="modal modal-alert fade" id="confirm-modal-alert" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true"><i class="fal fa-times"></i></span>
					</button>
				</div>
				<div class="modal-body">Modal text description...</div>
				<div class="modal-footer">					
					<button type="button" class="btn btn-primary">예</button>
					<button type="button" class="btn btn-secondary" data-dismiss="modal">아니오</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>