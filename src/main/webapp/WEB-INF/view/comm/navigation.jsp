<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- BEGIN Left Aside -->
<aside class="page-sidebar">
	<div class="page-logo bg-fusion-500">
		<a href="#" class="page-logo-link press-scale-down d-flex align-items-center position-relative" data-toggle="modal" data-target="#modal-shortcut"> 
			<img src="${pageContext.request.contextPath}/resources/assets/smart/logo.png" alt="SmartAdmin WebApp" aria-roledescription="logo"> 
			<span class="page-logo-text mr-2">태양광모니터링시스템</span> 
			<span class="position-absolute text-white opacity-50 small pos-top pos-right mr-2 mt-n2"></span>
			<i class="fal d-inline-block ml-1 fs-lg color-primary-300"></i>
		</a>
	</div>
	<!-- BEGIN PRIMARY NAVIGATION -->
	<nav id="js-primary-nav2" class="primary-nav p-2" role="navigation" style="overflow: auto;width: auto;height: 100%;">

		<c:forEach items="${siteList}" var="row" varStatus="i">
		<div class="card site-border mb-3">				
				<!-- notice the additions of utility paddings and display properties on .card-header -->
				<div class="card-header bg-success-500 d-flex pr-2 align-items-center flex-wrap">					
					<!-- we wrap header title inside a span tag with utility padding -->
					<div class="card-title fw-900"><i class="fal fa-building h2 mr-2"></i>${row.siteNm}</div>					
					<div class="custom-control d-flex custom-switch ml-auto">
						
						<c:choose>
							<c:when test="${row.checked}">
								<input id="site-switch-${row.siteSeq}" data-siteSeq="${row.siteSeq}" type="checkbox" class="custom-control-input site-switch" checked="checked">
							</c:when>
							<c:otherwise>
							 	<input id="site-switch-${row.siteSeq}" data-siteSeq="${row.siteSeq}" type="checkbox" class="custom-control-input site-switch">
							</c:otherwise>
						</c:choose>
						
						<label class="custom-control-label fw-500" for="site-switch-${row.siteSeq}"></label>
					</div>
				</div>
				<div class="card-body p-1">	
					<div id="carouselControls-${row.siteSeq}" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/assets/img/site_1.png" height="100" data-holder-rendered="true">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/assets/img/site_2.png" height="100" data-holder-rendered="true">
							</div>
							<div class="carousel-item">
								<img class="d-block w-100" src="${pageContext.request.contextPath}/resources/assets/img/site_3.png" height="100" data-holder-rendered="true">
							</div>
						</div>
						<a class="carousel-control-prev" href="#carouselControls-${row.siteSeq}" role="button" data-slide="prev"> 
							<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
							<span class="sr-only">Previous</span>
						</a> 
						<a class="carousel-control-next" href="#carouselControls-${row.siteSeq}" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
                                            				
					<ul class="list-group list-group-flush">						
						<li class="list-group-item">
							<div class="row">
								<div class="col-5 text-left pt-1">설치용량</div>								
								<div class="col-7 text-right"><span class="fw-900 h4">${row.instlCpct}</span> <span class="h8 mr-2">kw</span></div>
							</div>							
						</li>
						<li class="list-group-item">
							<div class="row">
								<div class="col-5 text-left pt-1">발전량</div>
								<div class="col-7 text-right"><span class="fw-900 h4 text-danger">${row.gentQnt}</span> <span class="h8">kWh</span></div>							
							</div>							
						</li>
						<li class="list-group-item">
							<div class="row">
								<div class="col-5 text-left pt-1">누적발전량</div>								
								<div class="col-7 text-right"><span class="fw-900 h4 text-danger">${row.accumGentQnt}</span> <span class="h8">kWh</span></div>								
							</div>							
						</li>
												
						<%-- <li class="list-group-item">${row.addrSido} ${row.addrSigungu} ${row.addrDongri} ${row.addrEubmyun}</li> --%>						
					</ul>
				</div>
			</div>
		</c:forEach>			
		
		<div class="filter-message js-filter-message bg-success-600"></div>
	</nav>
	<!-- END PRIMARY NAVIGATION -->
	
	<!-- NAV FOOTER -->
	<div class="nav-footer shadow-top justify-content-end ">
		
		<div class="custom-control custom-switch align-self-center float-right mr-3">
		
			<c:choose>
				<c:when test="${siteSeqAllChecked}">
					<input type="checkbox" class="custom-control-input" id="site-switch-all" checked="checked">					
				</c:when>
				<c:otherwise>
					<input type="checkbox" class="custom-control-input" id="site-switch-all">				 	
				</c:otherwise>
			</c:choose>
						
			<label class="custom-control-label" for="site-switch-all">전체</label>
		</div>
        		
	</div>
	<!-- END NAV FOOTER -->
	
</aside>
<!-- END Left Aside -->