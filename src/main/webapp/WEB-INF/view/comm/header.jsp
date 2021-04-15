<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
<script src="${pageContext.request.contextPath}/resources/js/smart/notifications/sweetalert2/sweetalert2.bundle.js"></script>
<!--===============================================================================================-->
					
<header class="page-header bg-fusion-500" id="page-header" role="banner">

	<!-- we need this logo when user switches to nav-function-top -->
	<div class="page-logo bg-fusion-500">
		<a href="#" class="page-logo-link press-scale-down d-flex align-items-center position-relative" data-toggle="modal" data-target="#modal-shortcut"> 
			<img src="${pageContext.request.contextPath}/resources/assets/smart/logo.png" alt="SmartAdmin WebApp" aria-roledescription="logo"> 
			<span class="page-logo-text mr-1">SmartAdmin WebApp</span> 
			<span class="position-absolute text-white opacity-50 small pos-top pos-right mr-2 mt-n2"></span>
			<i class="fal fa-angle-down d-inline-block ml-1 fs-lg color-primary-300"></i>
		</a>
	</div>

	<!-- DOC: nav menu layout change shortcut -->
	<div class="hidden-md-down dropdown-icon-menu position-relative">
		<a href="#" class="header-btn btn js-waves-off" data-action="toggle" data-class="nav-function-hidden" title="Hide Navigation"> 
			<i class="ni ni-menu"></i>
		</a>
		<!-- <ul>
			<li>
				<a href="#" class="btn js-waves-off" data-action="toggle" data-class="nav-function-minify" title="Minify Navigation"> 
					<i class="ni ni-minify-nav"></i>
				</a>
			</li>
			<li>
				<a href="#" class="btn js-waves-off" data-action="toggle" data-class="nav-function-fixed" title="Lock Navigation"> 
					<i class="ni ni-lock-nav"></i>
				</a>
			</li>
		</ul> -->
	</div>

	<!-- DOC: mobile button appears during mobile width -->
	<div class="hidden-lg-up">
		<a href="#" class="header-btn btn press-scale-down"
			data-action="toggle" data-class="mobile-nav-on"> <i
			class="ni ni-menu"></i>
		</a>
	</div>
	
	<nav class="navbar navbar-expand-lg navbar-light">
		
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
			
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
				
			<ul class="navbar-nav mr-auto">
			
				<c:set var="isChild"	value="0" />
				
				<c:forEach items="${menuList}" var="row" varStatus="i">
				
					<c:if test="${empty row.upperMenuId and  row.childCnt eq 0 and isChild eq '1'}">
						</div></a></li>
						<c:set var="isChild"	value="0" />
					</c:if>
					
					<c:if test="${row.childCnt > 0 }">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle fw-700 text-white mr-2" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="fal fa-cogs mr-1"></span> ${row.menuName} </a>
							<div class="dropdown-menu bg-fusion-500" aria-labelledby="navbarDropdown">
						
						<c:set var="isChild"	value="1" />
					</c:if>
					
					<c:if test="${not empty row.upperMenuId and isChild eq '1'}">
						<a class="dropdown-item fw-700 text-white mr-2" href="${row.url}"><span class="fal ${row.tag} mr-1"></span>${row.menuName}</a>						 
					</c:if>
					
					<c:if test="${row.childCnt eq 0 and row.lv eq 0}">
						<li class="nav-item">
							<a class="nav-link fw-700 text-white mr-2" href="${row.url}"><span class="fal ${row.tag} mr-1"></span>${row.menuName}</a>
						</li>
					</c:if>
					
				</c:forEach>
				
			</ul>
		</div>
	</nav>
	
	<div class="ml-auto d-flex">
		
		<!-- app settings -->
		<div class="hidden-md-down">
			<a href="#" class="header-icon" data-toggle="modal" data-target=".js-modal-settings">
				<i class="fal fa-cog text-white"></i>
			</a>
		</div>
                            
		<div>
			<a href="#" data-toggle="dropdown" title="admin@sqisoft.com"
				class="header-icon d-flex align-items-center justify-content-center ml-2">
				<img
				src="${pageContext.request.contextPath}/resources/assets/smart/demo/avatars/avatar-m.png"
				class="profile-image rounded-circle" alt="${usrInfo.usrNm}">
			</a>
			<div class="dropdown-menu dropdown-menu-animated dropdown-lg">
				<div
					class="dropdown-header bg-trans-gradient d-flex flex-row py-4 rounded-top">
					<div
						class="d-flex flex-row align-items-center mt-1 mb-1 color-white">
						<span class="mr-2"> <img
							src="${pageContext.request.contextPath}/resources/assets/smart/demo/avatars/avatar-m.png"
							class="rounded-circle profile-image" alt="${usrInfo.usrNm}">
						</span>
						<div class="info-card-text">
							<div class="fs-lg text-truncate text-truncate-lg">${usrInfo.usrNm}</div>
							<span class="text-truncate text-truncate-md opacity-80">${usrInfo.email}</span>
						</div>
					</div>
				</div>

				<a class="dropdown-item fw-500 pt-3 pb-3" href="page_login.html">
					<span data-i18n="drpdwn.page-logout">개인정보</span>
				</a>
				
				<a href="#" class="dropdown-item" data-action="app-fullscreen">
					<span data-i18n="drpdwn.fullscreen">전체화면</span>
					<i class="float-right text-muted fw-n">F11</i>
				</a>
                                    
				<div class="dropdown-divider m-0"></div>
					<a class="dropdown-item fw-500 pt-3 pb-3" href="/logOut.do">
					<span data-i18n="drpdwn.page-logout">로그아웃</span>
				</a>
			</div>
		</div>
	</div>
</header>

<!-- BEGIN Page Settings -->
<div class="modal fade js-modal-settings modal-backdrop-transparent" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-dialog-right modal-md">
		<div class="modal-content">
			<div class="dropdown-header bg-trans-gradient d-flex justify-content-center align-items-center w-100">
				<h4 class="m-0 text-center color-white">레이아웃 설정</h4>
				<button type="button" class="close text-white position-absolute pos-top pos-right p-2 m-1 mr-2" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true"><i class="fal fa-times"></i></span>
				</button>
			</div>
			<div class="modal-body p-0">
				<div class="settings-panel">
					<div class="mt-4 d-table w-100 pl-5 pr-3">
						<div class="d-table-cell align-middle">
							<h5 class="p-0">글자크기</h5>
						</div>
					</div>
					<div class="list mt-1">
						<div class="btn-group btn-group-sm btn-group-toggle my-2" data-toggle="buttons">
							<label class="btn btn-default btn-sm" data-action="toggle-swap" data-class="root-text-sm" data-target="html"> 
								<input type="radio" name="changeFrontSize"> 작게
							</label> 
							<label class="btn btn-default btn-sm" data-action="toggle-swap" data-class="root-text" data-target="html"> 
								<input type="radio" name="changeFrontSize" checked> 중간
							</label> 
							<label class="btn btn-default btn-sm" data-action="toggle-swap" data-class="root-text-lg" data-target="html"> 
								<input type="radio" name="changeFrontSize"> 크게
							</label> 
							<label class="btn btn-default btn-sm" data-action="toggle-swap" data-class="root-text-xl" data-target="html"> 
								<input type="radio" name="changeFrontSize"> 매우크게
							</label>
						</div>
					</div>
					<hr class="mb-0 mt-4">
					
					
					<div class="mt-4 d-table w-100 pl-5 pr-3">
                                <div class="d-table-cell align-middle">
                                    <h5 class="p-0 pr-2 d-flex">테마 색상 설정</h5>
                                </div>
                            </div>
                            <div class="expanded theme-colors pl-5 pr-3">
                                <ul class="m-0">
                                    <li>
                                        <a href="#" id="myapp-0" data-action="theme-update" data-themesave data-theme="" data-toggle="tooltip" data-placement="top" title="Wisteria (base css)" data-original-title="Wisteria (base css)"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-1" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-1.css" data-toggle="tooltip" data-placement="top" title="Tapestry" data-original-title="Tapestry"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-2" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-2.css" data-toggle="tooltip" data-placement="top" title="Atlantis" data-original-title="Atlantis"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-3" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-3.css" data-toggle="tooltip" data-placement="top" title="Indigo" data-original-title="Indigo"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-4" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-4.css" data-toggle="tooltip" data-placement="top" title="Dodger Blue" data-original-title="Dodger Blue"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-5" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-5.css" data-toggle="tooltip" data-placement="top" title="Tradewind" data-original-title="Tradewind"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-6" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-6.css" data-toggle="tooltip" data-placement="top" title="Cranberry" data-original-title="Cranberry"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-7" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-7.css" data-toggle="tooltip" data-placement="top" title="Oslo Gray" data-original-title="Oslo Gray"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-8" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-8.css" data-toggle="tooltip" data-placement="top" title="Chetwode Blue" data-original-title="Chetwode Blue"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-9" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-9.css" data-toggle="tooltip" data-placement="top" title="Apricot" data-original-title="Apricot"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-10" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-10.css" data-toggle="tooltip" data-placement="top" title="Blue Smoke" data-original-title="Blue Smoke"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-11" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-11.css" data-toggle="tooltip" data-placement="top" title="Green Smoke" data-original-title="Green Smoke"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-12" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-12.css" data-toggle="tooltip" data-placement="top" title="Wild Blue Yonder" data-original-title="Wild Blue Yonder"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-13" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-13.css" data-toggle="tooltip" data-placement="top" title="Emerald" data-original-title="Emerald"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-14" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-14.css" data-toggle="tooltip" data-placement="top" title="Supernova" data-original-title="Supernova"></a>
                                    </li>
                                    <li>
                                        <a href="#" id="myapp-15" data-action="theme-update" data-themesave data-theme="${pageContext.request.contextPath}/resources/css/smart/themes/cust-theme-15.css" data-toggle="tooltip" data-placement="top" title="Hoki" data-original-title="Hoki"></a>
                                    </li>
                                </ul>
                            </div>
                            <hr class="mb-0 mt-4">
                    
                    <div class="mt-4 d-table w-100 pl-5 pr-3">
						<div class="d-table-cell align-middle">
							<h5 class="p-0 pr-2 d-flex">테마 설정</h5>
						</div>
					</div>
					        
					<div class="pl-5 pr-3 py-3">						
						<div class="row no-gutters">					
							<div class="col-4 px-1 text-center">
								<div id="skin-light" data-action="toggle-replace" data-replaceclass="mod-skin-dark" data-class="mod-skin-light" data-toggle="tooltip" data-placement="top" title="" class="d-flex bg-white border border-secondary rounded overflow-hidden text-success js-waves-on" data-original-title="Light Mode" style="height: 80px">
									<div class="bg-white px-2 pt-0 border-right border-"></div>
									<div class="d-flex flex-column flex-1">
										<div class="bg-white border-bottom border- py-1"></div>
										<div class="bg-white flex-1 pt-3 pb-3 px-2">
											<div class="py-3" style="background: url('${pageContext.request.contextPath}/resources/assets/smart/demo/s-1.png') top left no-repeat; background-size: 100%;"></div>
										</div>
									</div>
								</div>
								Light
							</div>
							<div class="col-4 pl-2 text-center">
								<div id="skin-dark" data-action="toggle-replace" data-replaceclass="mod-skin-light" data-class="mod-skin-dark" data-toggle="tooltip" data-placement="top" title="" class="d-flex bg-white border border-dark rounded overflow-hidden text-success js-waves-on" data-original-title="Dark Mode" style="height: 80px">
									<div class="bg-fusion-500 px-2 pt-0 border-right"></div>
									<div class="d-flex flex-column flex-1">
										<div class="bg-fusion-600 border-bottom py-1"></div>
										<div class="bg-fusion-300 flex-1 pt-3 pb-3 px-2">
											<div class="py-3 opacity-30" style="background: url('${pageContext.request.contextPath}/resources/assets/smart/demo/s-1.png') top left no-repeat; background-size: 100%;"></div>
										</div>
									</div>
								</div>
								Dark
							</div>
						</div>
					</div>
					<hr class="mb-0 mt-4">
					<div class="pl-5 pr-3 py-3 bg-faded">
						<div class="row no-gutters">
							<div class="col-6 pr-1">
								<a href="#" class="btn btn-danger fw-500 btn-block" data-action="factory-reset">테마 설정 초기화</a>
							</div>							
						</div>
					</div>
				</div>
				<span id="saving"></span>
			</div>
		</div>
	</div>
</div>
<!-- END Page Settings -->