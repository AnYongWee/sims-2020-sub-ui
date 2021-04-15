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
	<nav id="js-primary-nav2" class="primary-nav p-3" role="navigation" style="overflow: auto;width: auto;height: 100%;">
		
		<div class="card site-border mb-3">	
			<select class="custom-select form-control" id="nav_siteList">
				<option value="" selected>전체</option>
				<c:forEach items="${siteList}" var="row" varStatus="i">
					<option value="${row.siteSeq}" selected>${row.siteNm}</option>
				</c:forEach>				
			</select>
		</div>
		
		<div class="card border-white m-auto m-lg-0">
			<div class="card-header bg-gray-200 bg-gradient-light h5 font-weight-bold pt-2 pb-2" id="nav_custNm"></div>
			
			<!-- 사이트이미지 슬라이드 -->
			<div id="carouselControls-${row.siteSeq}" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100 p-2" src="${pageContext.request.contextPath}/resources/assets/img/site_1.png" height="130" data-holder-rendered="true">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100 p-2" src="${pageContext.request.contextPath}/resources/assets/img/site_2.png" height="130" data-holder-rendered="true">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100 p-2" src="${pageContext.request.contextPath}/resources/assets/img/site_3.png" height="130" data-holder-rendered="true">
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
				
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<div class="col-5 text-left pt-1 fw-600">설비용량</div>
						<div class="col-7 text-right"><span class="fw-900 h6 text-danger" id="nav_totalCpct">12</span> <span class="fw-900">kW</span></div>							
					</div>							
				</li>
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<div class="col-6 text-left pt-1 fw-600">당월 발전량</div>								
						<div class="col-6 text-right"><span class="fw-900 h6 text-danger" id="nav_monthGentQnt">690</span> <span class="fw-900">kWh</span></div>								
					</div>							
				</li>
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<div class="col-6 text-left pt-1 fw-600">당월 발전시간</div>								
						<div class="col-6 text-right"><span class="fw-900 h6 text-danger" id="nav_monthGentTime">41</span> <span class="fw-900">시간</span></div>								
					</div>							
				</li>
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<div class="col-8 text-left pt-1 fw-600">전월대비 발전변동율</div>								
						<div class="col-4 text-right"><span class="fw-900 h6 text-danger" id="nav_monthChangeRate">13</span> <span class="fw-900">%</span></div>								
					</div>							
				</li>
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<div class="col-5 text-left pt-1 fw-600">예상수익</div>								
						<div class="col-7 text-right"><span class="fw-900 text-danger h6" id="nav_totGentProftAmt">123,301</span> <span class="fw-900">원</span></div>								
					</div>							
				</li>				
			</ul>
			<!-- 제품 로고 -->			
			<ul class="list-group list-group-flush">						
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<img class="d-block w-100 p-1" src="${pageContext.request.contextPath}/resources/assets/img/logo_1.png" height="150px" data-holder-rendered="true">
					</div>							
				</li>
			</ul>
			
			<!-- 날씨 -->
			<ul class="list-group list-group-flush">						
				<li class="list-group-item">
					<div class="row">
						<div class="col-12 text-left h5 font-weight-bold pt-1">날씨</div>
					</div>							
				</li>
				<li class="list-group-item">
					<div class="row">
						<div class="col-4">
							<img class="d-block w-100 p-2" src="${pageContext.request.contextPath}/resources/assets/img/rain.png" height="100" data-holder-rendered="true">
						</div>
						<div class="col-8">
							<div class="row">
								<div class="col-7 text-left pt-1 fw-600">최고기온</div>								
								<div class="col-5 text-right pt-1"><span class="fw-900 text-danger">32</span> <span class="fw-900">°C</span></div>	
							</div>
							<div class="row">
								<div class="col-7 text-left pt-1 fw-600">최저기온</div>								
								<div class="col-5 text-right pt-1"><span class="fw-900 text-danger">12</span> <span class="fw-900">°C</span></div>	
							</div>
							<div class="row">
								<div class="col-6 text-left pt-1 fw-600">습도</div>								
								<div class="col-6 text-right pt-1"><span class="fw-900 text-danger">22</span> <span class="fw-900">%</span></div>	
							</div>
							<div class="row">
								<div class="col-6 text-left pt-1 fw-600">풍속</div>								
								<div class="col-6 text-right pt-1"><span class="fw-900 text-danger">1.0</span> <span class="fw-900">mk</span></div>	
							</div>
						</div>
					</div>
				
				</li>
			</ul>
	                                            
			<div class="filter-message js-filter-message bg-success-600"></div>
		
		</div>
	</nav>
	<!-- END PRIMARY NAVIGATION -->
	
</aside>
<!-- END Left Aside -->

<script>
		
	$(document).ready(function() {
		navInfoReload();
		
		$("#nav_siteList").bind( "change", function() {
			navInfoReload();
		});
	});
	
	//네비게이션 정보 변경
	function navInfoReload(){
		
		if( $('#nav_siteList option:selected').val() == "" ){
			
			//고객사 정보 적용
			companyLoad();
			
			//고객사 사이트 지도 보이기
			$('#panel-map').removeClass("d-none");
			$('#panel-sitemap').addClass("d-none");
			
			//지도 갱신
			mapReplace();
			
		}else{
			//사이트 정보 적용
			
			//사이트 도식도 보이기
			$('#panel-sitemap').removeClass("d-none");
			$('#panel-map').addClass("d-none");
			
		}
	}
	
	//고객사 정보 적용
	function companyLoad(){
		
		$.ajax({
			type: "POST",
			url: "/ajax/getCompanyInfo.do",		
			dataType: 'json',
			global: false,
			data: {
				custSeq: "${companyInfo.custSeq}"
			},
			success : function(data) {
				
				if (data.resultCode == 0){
					$('#nav_custNm').html(data.info.custNm);					
					$('#nav_totalCpct').html(data.info.totalCpct);
					$('#nav_monthGentQnt').html(data.info.monthGentQnt);
					$('#nav_monthGentTime').html(data.info.monthGentTime);
					$('#nav_monthChangeRate').html(data.info.monthChangeRate);
					$('#nav_totGentProftAmt').html(data.info.totalGentProftAmt);
				}else{
					console.log("네비게이션 고객사 정보 조회 오류 발생");
					console.log(data.resultMessage);												
				}
			},
			error: function(e){
				console.log("네비게이션 고객사 정보 요청 예외 발생");
				console.log(e);						
			}
		});
	}
	
</script>