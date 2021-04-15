<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
    <head>
        <meta charset="utf-8">
        <title>태양광 모니터링 시스템</title>
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
        <link rel='stylesheet' href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'  type='text/css'>
        <!--===============================================================================================-->
        <link rel="stylesheet" media="screen, print" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
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
        <link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/notifications/sweetalert2/sweetalert2.bundle.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/formplugins/select2/select2.bundle.css">
        <!--===============================================================================================-->
        
		<!--===============================================================================================-->
		<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/custom.css" />  
        <!--===============================================================================================-->
						
    </head>
    <!-- BEGIN Body -->
    <body class="mod-bg-1 mod-skin-light header-function-fixed nav-function-fixed footer-function-fixed">

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

	<!-- DOC: script to save and load page settings -->
	<script>
							
		/**
		 *	This script should be placed right after the body tag for fast execution 
		 *	Note: the script is written in pure javascript and does not depend on thirdparty library
		 **/
		'use strict';

		var classHolder = document.getElementsByTagName("BODY")[0],
		/** 
		 * Load from localstorage
		 **/
		themeSettings = (localStorage.getItem('themeSettings')) ? JSON
				.parse(localStorage.getItem('themeSettings')) : {}, themeURL = themeSettings.themeURL
				|| '', themeOptions = themeSettings.themeOptions || '';
		/** 
		 * Load theme options
		 **/
		if (themeSettings.themeOptions) {
			classHolder.className = themeSettings.themeOptions;
			console.log("%c✔ Theme settings loaded", "color: #148f32");
		} else {
			console
					.log(
							"%c✔ Heads up! Theme settings is empty or does not exist, loading default settings...",
							"color: #ed1c24");
		}
		if (themeSettings.themeURL && !document.getElementById('mytheme')) {
			var cssfile = document.createElement('link');
			cssfile.id = 'mytheme';
			cssfile.rel = 'stylesheet';
			cssfile.href = themeURL;
			document.getElementsByTagName('head')[0].appendChild(cssfile);

		} else if (themeSettings.themeURL && document.getElementById('mytheme')) {
			document.getElementById('mytheme').href = themeSettings.themeURL;
		}
		/** 
		 * Save to localstorage 
		 **/
		var saveSettings = function() {
			themeSettings.themeOptions = String(classHolder.className).split(
					/[^\w-]+/).filter(function(item) {
				return /^(nav|header|footer|mod|display)-/i.test(item);
			}).join(' ');
			if (document.getElementById('mytheme')) {
				themeSettings.themeURL = document.getElementById('mytheme')
						.getAttribute("href");
			}
			;
			localStorage
					.setItem('themeSettings', JSON.stringify(themeSettings));
		}
		/** 
		 * Reset settings
		 **/
		var resetSettings = function() {
			localStorage.setItem("themeSettings", "");
		}
	</script>

	<!-- BEGIN Page Wrapper -->
        <div class="page-wrapper">
            <div class="page-inner">
            	
            	<tiles:insertAttribute name="header"/>
            	
            	<tiles:insertAttribute name="site"/>
            	
                <div class="page-content-wrapper" id="page-content-wrapper">
                	 
					<tiles:insertAttribute name="content"/>
                		   
                	<tiles:insertAttribute name="footer"/>
                	
                </div>                
			</div>
		</div>		
		 	
		<div id="Progress_Bar" class="Progress_Bar">
			<button class="btn btn-danger rounded-pill waves-effect waves-themed Progress_Bar_Image" type="button" disabled="">
				<span class="spinner-grow spinner-grow-sm" role="status" aria-hidden="true"></span>
					Loading...
			</button>			
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