<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- BEGIN Left Aside -->
<aside class="page-sidebar">
	<div class="page-logo">
		<a href="#" class="page-logo-link press-scale-down d-flex align-items-center position-relative" data-toggle="modal" data-target="#modal-shortcut"> 
			<img src="${pageContext.request.contextPath}/resources/assets/smart/logo.png" alt="SmartAdmin WebApp" aria-roledescription="logo"> 
			<span class="page-logo-text mr-2">태양광모니터링시스템</span> 
			<span class="position-absolute text-white opacity-50 small pos-top pos-right mr-2 mt-n2"></span>
			<i class="fal fa-angle-down d-inline-block ml-1 fs-lg color-primary-300"></i>
		</a>
	</div>
	<!-- BEGIN PRIMARY NAVIGATION -->
	<nav id="js-primary-nav" class="primary-nav p-2" role="navigation">

		<c:forEach items="${siteList}" var="row" varStatus="i">
		
			<div class="card border mb-3">
				<!-- notice the additions of utility paddings and display properties on .card-header -->
				<div class="card-header bg-success-500 d-flex pr-2 align-items-center flex-wrap">
					<!-- we wrap header title inside a span tag with utility padding -->
					<div class="card-title">${row.siteNm}</div>
					<div class="custom-control d-flex custom-switch ml-auto">
						
						<c:choose>
							<c:when test="${row.checked}">
								<input id="site-switch-${row.siteSeq}" onchange="siteChange(this, ${row.siteSeq})" type="checkbox" class="custom-control-input" checked="checked">
							</c:when>
							<c:otherwise>
							 	<input id="site-switch-${row.siteSeq}" onchange="siteChange(this, ${row.siteSeq})" type="checkbox" class="custom-control-input">
							</c:otherwise>
						</c:choose>
						
						<label class="custom-control-label fw-500" for="site-switch-${row.siteSeq}"></label>
					</div>
				</div>
				<div class="card-body">
					<p class="card-text">${row.addr} ${row.addrAdt}</p>
				</div>
			</div>
			
		</c:forEach>
		
		<div class="filter-message js-filter-message bg-success-600"></div>
	</nav>
	<!-- END PRIMARY NAVIGATION -->
	
	<!-- NAV FOOTER -->
	<div class="nav-footer shadow-top justify-content-end">

		<div class="custom-control custom-switch align-self-center float-right mr-3">
			<input type="checkbox" class="custom-control-input" id="customSwitch2" checked="">
			<label class="custom-control-label" for="customSwitch2">전체</label>
		</div>
        		
	</div>
	<!-- END NAV FOOTER -->
	
</aside>
<!-- END Left Aside -->