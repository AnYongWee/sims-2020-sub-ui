<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- BEGIN Left Aside -->
<aside class="page-sidebar">
	<div class="page-logo bg-fusion-500">
		<a href="#" class="page-logo-link press-scale-down d-flex align-items-center position-relative" data-toggle="modal" data-target="#modal-shortcut"> 
			<img src="${pageContext.request.contextPath}/resources/assets/img/soloamon.png" class="ml-4" alt="SmartAdmin WebApp" aria-roledescription="logo">
			<span class="position-absolute text-white opacity-50 small pos-top pos-right mr-2 mt-n2"></span>
			<i class="fal d-inline-block ml-1 fs-lg color-primary-300"></i>
		</a>
	</div>
	<!-- BEGIN PRIMARY NAVIGATION -->
	<nav id="js-primary-nav2" class="primary-nav p-3" role="navigation" style="overflow: auto;width: auto;height: 100%;">
		
		<div class="card site-border mb-3">	
			<select class="custom-select form-control select2-placeholder" id="nav_siteList">
				<option value="" selected>전체</option>
				<c:forEach items="${siteList}" var="row" varStatus="i">
					<c:choose>						
						<c:when test="${row.checked and not siteSeqAllChecked}">
							<option value="${row.siteSeq}" selected>${row.siteNm}</option>
						</c:when>
						<c:otherwise>
						 	<option value="${row.siteSeq}">${row.siteNm}</option>
						</c:otherwise>
					</c:choose>					
				</c:forEach>				
			</select>
		</div>
		
		<div class="card border-gray m-auto m-lg-0">
			<div class="card-header bg-gray-200 bg-gradient-light h5 font-weight-bold pt-2 pb-2" id="nav_custNm"></div>
			
			<!-- 사이트이미지 슬라이드 -->
			<div id="carouselControls-${row.siteSeq}" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">						
						<img class="d-block w-100 p-2" id="site_img_1" src="${pageContext.request.contextPath}/resources/assets/img/site_1.png" height="130" data-holder-rendered="true">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100 p-2" id="site_img_2" src="${pageContext.request.contextPath}/resources/assets/img/site_2.png" height="130" data-holder-rendered="true">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100 p-2" id="site_img_3" src="${pageContext.request.contextPath}/resources/assets/img/site_3.png" height="130" data-holder-rendered="true">
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
						<div class="col-7 text-right"><span class="fw-900 h6 text-info" id="nav_totalCpct"></span> <span class="fw-900">kW</span></div>							
					</div>							
				</li>
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<div class="col-6 text-left pt-1 fw-600">당월 발전량</div>								
						<div class="col-6 text-right"><span class="fw-900 h6 text-success" id="nav_monthGentQnt"></span> <span class="fw-900">kWh</span></div>								
					</div>							
				</li>
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<div class="col-6 text-left pt-1 fw-600">당월 발전시간</div>								
						<div class="col-6 text-right"><span class="fw-900 h6 text-success" id="nav_monthGentTime"></span> <span class="fw-900">시간</span></div>								
					</div>							
				</li>
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<div class="col-8 text-left pt-1 fw-600">전월대비 발전변동율</div>								
						<div class="col-4 text-right"><span class="fw-900 h6 text-danger" id="nav_monthChangeRate"></span> <span class="fw-900">%</span></div>								
					</div>							
				</li>
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<div class="col-5 text-left pt-1 fw-600">총절감액</div>								
						<div class="col-7 text-right"><span class="fw-900 text-danger h6" id="nav_totGentProftAmt"></span> <span class="fw-900">원</span></div>								
					</div>							
				</li>				
			</ul>
			
			<!-- 날씨 -->
			<ul class="list-group list-group-flush">						
				<li class="list-group-item bg-gray-200 bg-white-gradient">
					<div class="row">
						<div class="col-12 text-left h5 font-weight-bold pt-1">날씨</div>
					</div>							
				</li>
				<li class="list-group-item">
					<div class="row">
						<div class="col-4">		
							<div class="w-100 h-100 d-flex align-items-center justify-content-center text-primary">
								<i class="fad fa-cloud-sun d-block w-100 fa-3x"></i>
							</div>
						</div>
						<div class="col-8">
							<div class="row">
								<div class="col-7 text-left pt-1 fw-600">최고기온</div>								
								<div class="col-5 text-right pt-1"><span class="fw-900 text-info">32</span> <span class="fw-900">°C</span></div>	
							</div>
							<div class="row">
								<div class="col-7 text-left pt-1 fw-600">최저기온</div>								
								<div class="col-5 text-right pt-1"><span class="fw-900 text-info">12</span> <span class="fw-900">°C</span></div>	
							</div>
							<div class="row">
								<div class="col-6 text-left pt-1 fw-600">습도</div>								
								<div class="col-6 text-right pt-1"><span class="fw-900 text-info">22</span> <span class="fw-900">%</span></div>	
							</div>
							<div class="row">
								<div class="col-6 text-left pt-1 fw-600">일출</div>								
								<div class="col-6 text-right pt-1"><span class="fw-900 text-danger">05:49</span></div>	
							</div>
							<div class="row">
								<div class="col-6 text-left pt-1 fw-600">일몰</div>								
								<div class="col-6 text-right pt-1"><span class="fw-900 text-secondary">19:00</span></div>	
							</div>
						</div>
					</div>
				
				</li>
			</ul>
			
			<!-- 회사로고 -->			
			<ul class="list-group list-group-flush">						
				<li class="list-group-item bg-white">
					<div class="row">
						<div class="col-12 company-log">
							<img src="${pageContext.request.contextPath}/resources/assets/img/sqisoft.png" width="120px" height="32px" data-holder-rendered="true">
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
		
		$(".select2-placeholder").select2({
			placeholder: "전체",
			allowClear: true
		});
		
		$("#nav_siteList").bind( "change", function() {
			navInfoReload();
		});
		
		navInfoLoad();
	});
	
	//네비게이션 정보 변경
	function navInfoReload(){
		
		//세션 사이트 정보 저장
		siteViewChange($('#nav_siteList option:selected').val());
		
		navInfoLoad();
	}
	
	function navInfoLoad(){
		if( $('#nav_siteList option:selected').val() == "" ){
			//고객사 정보 적용
			companyLoad();
			companyGentLoad();
		}else{
			//사이트 정보 적용
			siteLoad($('#nav_siteList option:selected').val());
		}
	}
	
	//고객사 정보 적용
	function companyLoad(){
		
		$.ajax({
			type: "POST",
			url: "/ajax/getCompanyInfo.do",		
			dataType: 'json',
			global: false,			
			success : function(data) {
				
				if (data.resultCode == 0){
					$('#nav_custNm').html(data.info.custNm);
					
					if (data.info.imgFileNm1 != null){
						$('#site_img_1').attr("src", getContextPath() + '/ajax/getCompanyImage.do?custSeq=' + data.info.custSeq + '&no=1');
					}else{
						$('#site_img_1').attr("src", getContextPath() + '/resources/assets/img/site_1.png');
					}
					
					if (data.info.imgFileNm2 != null){
						$('#site_img_2').attr("src", getContextPath() + '/ajax/getCompanyImage.do?custSeq=' + data.info.custSeq + '&no=2');
					}else{
						$('#site_img_2').attr("src", getContextPath() + '/resources/assets/img/site_2.png');
					}
					
					if (data.info.imgFileNm3 != null){
						$('#site_img_3').attr("src", getContextPath() + '/ajax/getCompanyImage.do?custSeq=' + data.info.custSeq + '&no=3');
					}else{
						$('#site_img_3').attr("src", getContextPath() + '/resources/assets/img/site_3.png');
					}
					
				}else{
					console.log("네비게이션 고객사 정보 조회 오류 발생");
					console.log(data.resultMessage);												
				}
			},
			error: function(e){
				console.log("요청에 실패 하였습니다. (/ajax/getCompanyInfo.do)");						
			}
		});
	}
	
	//고객사 발전 정보 적용
	function companyGentLoad(){
		
		$.ajax({
			type: "POST",
			url: "/ajax/getCompanyGentInfo.do",		
			dataType: 'json',
			global: false,			
			success : function(data) {
				
				if (data.resultCode == 0){										
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
				console.log("요청에 실패 하였습니다. (/ajax/getCompanyGentInfo.do)");						
			}
		});
	}
	
	//사이트 정보 적용
	function siteLoad(siteSeq){
		
		$.ajax({
			type: "POST",
			url: "/ajax/getSiteInfo.do",		
			dataType: 'json',
			global: false,
			data: {
				siteSeq: siteSeq
			},
			success : function(data) {
				
				if (data.resultCode == 0){
					$('#nav_custNm').html(data.info.siteNm);					
					$('#nav_totalCpct').html(data.info.instlCpct);
					$('#nav_monthGentQnt').html(data.info.monthGentQnt);
					$('#nav_monthGentTime').html(data.info.monthGentTime);
					$('#nav_monthChangeRate').html(data.info.monthChangeRate);
					$('#nav_totGentProftAmt').html(data.info.totalGentProftAmt);
					
					if (data.info.imgFileNm1 != null){
						$('#site_img_1').attr("src", getContextPath() + '/ajax/getSiteImage.do?siteSeq=' + data.info.siteSeq + '&no=1');
					}else{
						$('#site_img_1').attr("src", getContextPath() + '/resources/assets/img/site_1.png');
					}
					
					if (data.info.imgFileNm2 != null){
						$('#site_img_2').attr("src", getContextPath() + '/ajax/getSiteImage.do?siteSeq=' + data.info.siteSeq + '&no=2');
					}else{
						$('#site_img_2').attr("src", getContextPath() + '/resources/assets/img/site_2.png');
					}
					
					if (data.info.imgFileNm3 != null){
						$('#site_img_3').attr("src", getContextPath() + '/ajax/getSiteImage.do?siteSeq=' + data.info.siteSeq + '&no=3');
					}else{
						$('#site_img_3').attr("src", getContextPath() + '/resources/assets/img/site_3.png');
					}
					
				}else{
					console.log("네비게이션 사이트 정보 조회 오류 발생");
					console.log(data.resultMessage);												
				}
			},
			error: function(e){
				console.log("요청에 실패 하였습니다. (/ajax/getSiteInfo.do)");				
			}
		});
	}
	
	//선택 사이트 정보를 저장하는 세션 정보를 변경 한다.
	function siteViewChange(siteSeq){
		if (siteSeq == ""){
			//전체 사이트를 선택 한 경우
			$.ajax({
				type: "POST",
				url: "/ajax/updateAllSiteSeq.do",		
				dataType: 'json',
				data: {				
					checked : true
				},
				success : function(data) {								
					try {				
						search();	
					} catch (e) {}		
				},
				error: function(e){
					alert("요청에 실패 하였습니다.");
				}
			});
		}else{
			//특정 사이트를 선택 한 경우
			$.ajax({
				type: "POST",
				url: "/ajax/updateSiteSeq.do",		
				dataType: 'json',
				data: {
					siteSeq : siteSeq,
					checked : true
				},
				success : function(data) {
					try {						
						//각화면에서 필요한 데이터를 조회 하는 공통 합수 호출 
						//암묵적으로 화면에서 데이터를 조회 하는 function 명을 search 로 정한다.
						search();	
					} catch (e) {}		
				},
				error: function(e){					
					console.log("요청에 실패 하였습니다. (/ajax/updateSiteSeq.do)");
				}
			});
		}
	}
	
	function getContextPath() {

		var hostIndex = location.href.indexOf( location.host ) + location.host.length;

		return location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );

	}
	
</script>