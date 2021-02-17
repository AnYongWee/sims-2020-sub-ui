<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<style>
.carousel-control-prev-icon {
	background-image:
		url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23c593d8' width='8' height='8' viewBox='0 0 8 8'%3e%3cpath d='M5.25 0l-4 4 4 4 1.5-1.5L4.25 4l2.5-2.5L5.25 0z'/%3e%3c/svg%3e");
}

.carousel-control-next-icon {
	background-image:
		url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23c593d8' width='8' height='8' viewBox='0 0 8 8'%3e%3cpath d='M2.75 0l-1.5 1.5L3.75 4l-2.5 2.5L2.75 8l4-4-4-4z'/%3e%3c/svg%3e");
}

.carousel-control-prev, .carousel-control-next {
	width:5%;
}

.panel-hdr h2 {
	font-size: 1.075rem;
	font-weight: 700;
}

.carousel-gray {
	background-color: #fcfdfdad;
}
.container {
	background: url(${pageContext.request.contextPath}/resources/assets/smart/svg/pattern-1.svg) no-repeat center bottom;
}

</style>

<main id="js-page-content" role="main" class="page-content">
	<ol class="breadcrumb page-breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0);">태양광 모니터링 서비스</a></li>
		<li class="breadcrumb-item active">대시보드</li>
		<li class="position-absolute pos-top pos-right d-none d-sm-block">태양광 발전소3개&nbsp;/&nbsp;<span class="js-get-date"></span>&nbsp;2021-01-20 기준</li>
	</ol>
	
	
                                            
	<div class="subheader row">		
		<h1 class="subheader-title col-sm-6 col-xl-3">
			<i class='subheader-icon fal fa-chart-area'></i> <strong class="fw-700">태양광</strong> <span class='fw-300'>모니터링 서비스</span>
		</h1>
		
		<!-- <div class="form-group col-sm-6 col-xl-3">   
			<div class="input-group">
				<input type="text" class="form-control " id="ele-datepicker" readonly>
				<div class="input-group-append">
					<span class="input-group-text fs-xl">
						<i class="fal fa-calendar-alt"></i>
					</span>
				</div>
			</div>                                                    
		</div> -->		
	</div>
                                            
	<!-- SIMS 상단 요약 정보 시작 -->
	<div class="row">
		<!-- 통합 설비용량 -->
		<div class="col-sm-6 col-xl-3">
			<div class="p-3 bg-primary-300 rounded overflow-hidden position-relative text-white mb-g">
				<div class="text-center">
					<h3 class="display-4 d-block l-h-n m-0 fw-500">
						<span>100 kW</span> <small class="m-0 l-h-n">통합 설비용량</small>
					</h3>
				</div>
				<i class="fal fa-coins position-absolute pos-right pos-bottom opacity-15 mb-n1 mr-n1" style="font-size: 6rem"></i>
			</div>
		</div>
	                  
		<!-- 통합 발전시간 -->
		<div class="col-sm-6 col-xl-3">
			<div class="p-3 bg-success-200 rounded overflow-hidden position-relative text-white mb-g">
				<div class="text-center">
					<h3 class="display-4 d-block l-h-n m-0 fw-500">
						<span>445 시간</span>
						<small class="m-0 l-h-n">통합 발전시간</small>
					</h3>
				</div>
				<i class="fal fa-chess-clock position-absolute pos-right pos-bottom opacity-15 mb-n5 mr-n6" style="font-size: 8rem;"></i>
			</div>
		</div>
		
		<!-- 통합 발전량 -->                            
		<div class="col-sm-6 col-xl-3">
			<div class="p-3 bg-warning-400 rounded overflow-hidden position-relative text-white mb-g">
				<div class="text-center">
					<h3 class="display-4 d-block l-h-n m-0 fw-500">
						<span>15 kWh</span>
						<small class="m-0 l-h-n">통합 발전량</small>
					</h3>
				</div>
				<i class="fal fa-atom-alt position-absolute pos-right pos-bottom opacity-15  mb-n1 mr-n4" style="font-size: 6rem;"></i>
			</div>
		</div>
		
		<!-- 예상수익 -->
		<div class="col-sm-6 col-xl-3">
			<div class="p-3 bg-info-200 rounded overflow-hidden position-relative text-white mb-g">
				<div class="text-center">
					<h3 class="display-4 d-block l-h-n m-0 fw-500">
						<span>50,000,000 원</span>
						<small class="m-0 l-h-n">예상수익(절갑액)</small>
					</h3>
				</div>
				<i class="fal fa-won-sign position-absolute pos-right pos-bottom opacity-15 mb-n1 mr-n4" style="font-size: 6rem;"></i>
			</div>
		</div>
	</div>
	<!-- SIMS 상단 요약 정보 종료 -->
    
    <!-- 발전소 현황 시작 -->                            
	<div class="row">
	<div class="col-lg-12">
		<div id="panel-1" class="panel">
			<div class="panel-hdr bg-fusion-400 bg-fusion-gradient">
				<h2>태양광 발전 현황</h2>
			</div>
			<div class="panel-container show">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<div class="carousel-inner carousel-gray">

						<!-- 하남 발전소 현황 -->
						<div class="carousel-item active">
							<div class="container">
								<div class="row">
									<div class="col-sm-12 col-xl-3">
										<h3 class="fw-800 display-4 fw-700 keep-print-font pt-4 l-h-n mb-3">양곡 발전소</h3>
										<div class="text-dark fw-800 h3 mb-g keep-print-font">경기도 하남시 하산곡동</div>
									</div>
									<div class="col-sm-12 col-xl-9">
										<img src="${pageContext.request.contextPath}/resources/assets/smart/demo/power-plant.png" style="height:130px; width:100%; margin-top:10px;">
									</div>
								</div>

								<div class="row table-scale-border-bottom mb-5"></div>

								<div class="row text-center">
									<div class="col-sm-6">
										<table class="table table-clean">
											<tbody>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font">인버터 용량</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">102 kW</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font">발전량</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">357.696 kWh</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font">발전시간</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">3.6 시간</h5>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="col-sm-6">
										<table class="table table-clean">
											<tbody>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">모듈 용량</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">99,360 kW</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">전월대비 발전량
															변동율</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">3.2%</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">예상수익(절갑액)</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">2,430,543 원</h5>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 text-right">
										<h4 class="py-5 text-primary">업데이트 일시: 2021-01-19
											10:05:00</h4>
									</div>
								</div>
							</div>
						</div>

						<!-- 성남 발전소 -->
						<div class="carousel-item">
							<div class="container">
								<div class="row">
									<div class="col-sm-12 col-xl-3">
										<h3 class="fw-800 display-4 fw-700 keep-print-font pt-4 l-h-n mb-3">호산 발전소</h3>
										<div class="text-dark fw-800 h3 mb-g keep-print-font">경기 하남시 초광산단로</div>
									</div>
									<div class="col-sm-12 col-xl-9">
										<img src="${pageContext.request.contextPath}/resources/assets/smart/demo/power-plant.png" style="height:130px; width:100%; margin-top:10px;">
									</div>
								</div>

								<div class="row table-scale-border-bottom mb-5"></div>

								<div class="row text-center">
									<div class="col-sm-6">
										<table class="table table-clean">
											<tbody>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">인버터 용량</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">1,000,000 kW</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">발전량</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">1,000,000 kWh</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">발전시간</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">46 시간</h5>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="col-sm-6">
										<table class="table table-clean">
											<tbody>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">모듈 용량</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">5,000,000 kW</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">전월대비 발전량
															변동율</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">10%</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">예상수익(절감액)</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">7,477.36 원</h5>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 text-right">
										<h4 class="py-5 text-primary">업데이트 일시: 2021-01-19
											10:05:00</h4>
									</div>
								</div>
							</div>
						</div>

						<!-- 충남 발전소 -->
						<div class="carousel-item">
							<div class="container">
								<div class="row">
									<div class="col-sm-12 col-xl-3">
										<h3 class="fw-800 display-4 fw-700 keep-print-font pt-4 l-h-n mb-3">충남 발전소</h3>
										<div class="text-dark fw-800 h3 mb-g keep-print-font">충처남도 예산군 대흥면</div>
									</div>
									<div class="col-sm-12 col-xl-9">
										<img src="${pageContext.request.contextPath}/resources/assets/smart/demo/power-plant.png" style="height:130px; width:100%; margin-top:10px;">
									</div>
								</div>

								<div class="row table-scale-border-bottom mb-5"></div>

								<div class="row text-center">
									<div class="col-sm-6">
										<table class="table table-clean">
											<tbody>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">인버터 용량</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">1,000,000 kW</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">발전량</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">1,000,000 kWh</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">발전시간</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">46 시간</h5>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="col-sm-6">
										<table class="table table-clean">
											<tbody>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">모듈 용량</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">5,000,000 kW</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">전월대비 발전량 변동율</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">10%</h5>
													</td>
												</tr>
												<tr class="border-left-0 border-right-0 border-bottom-0">
													<td class="text-left keep-print-font">
														<h4 class="m-0 fw-700 h4 keep-print-font ">예상수익(절감액)</h4>
													</td>
													<td class="text-right keep-print-font">
														<h5 class="m-0 keep-print-font">7,477.36 원</h5>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-12 text-right">
										<h4 class="py-5 text-primary">업데이트 일시: 2021-01-19
											10:05:00</h4>
									</div>
								</div>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>						
					</a> 
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>						
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 발전소 현황 종료 --> 


	<!-- 시간별 발전량 그래프 시작 -->
	<div class="col-lg-6">
		<div id="panel-2" class="panel">
			<div class="panel-hdr bg-primary-500 bg-info-gradient">
				<h2>시간별(발전량)</h2>
			</div>
			<div class="panel-container show">
				<div class="panel-content">		
					<div class="p-1 position-absolute pos-right pos-top mt-3 mr-3 z-index-cloud d-flex align-items-center justify-content-center">									
						<div class="js-easy-pie-chart color-info-400 position-relative d-inline-flex align-items-center justify-content-center" data-percent="35" data-piesize="95" data-linewidth="10" data-scalelength="5">
							<div class="js-easy-pie-chart color-success-400 position-relative position-absolute pos-left pos-right pos-top pos-bottom d-flex align-items-center justify-content-center" data-percent="85" data-piesize="60" data-linewidth="5" data-scalelength="1" data-scalecolor="#fff">
								<div class="position-absolute pos-top pos-left pos-right pos-bottom d-flex align-items-center justify-content-center fw-500 fs-xl text-dark">88%</div>
							</div>
						</div>
					</div>								
					<div id="ele-time-area" style="width: 100%; height: 300px;"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- 시간별 발전량 그래프 종료 -->

	<!-- 시간별 기상 그래프 시작 -->
	<div class="col-lg-6">
		<div id="panel-2" class="panel">
			<div class="panel-hdr bg-success-700 bg-primary-gradient">
				<h2>시간별(기상)</h2>
			</div>
			<div class="panel-container show">
				<div class="panel-content poisition-relative">					
					<!-- 시간별 기상 그래프 -->
					<figure class="highcharts-figure">
					  <div id="container1" style="width: 100%; height: 300px;">
					    <div style="margin-top: 100px; text-align: center" id="loading">
					      <i class="fa fa-spinner fa-spin"></i> Loading data from external source
					    </div>
					  </div>					 
					</figure>										
				</div>
			</div>
		</div>
	</div>
	<!-- 시간별 기상 그래프 종료 -->
	
	<!-- 요일별 발전량 그래프 시작 -->
	<div class="col-lg-6">
		<div id="panel-2" class="panel">
			<div class="panel-hdr bg-primary-500 bg-info-gradient">
				<h2>요일별(발전량)</h2>
			</div>
			<div class="panel-container show">
				<div class="panel-content">
					<div class="p-1 position-absolute pos-right pos-top mt-3 mr-3 z-index-cloud d-flex align-items-center justify-content-center">									
						<div class="js-easy-pie-chart color-info-400 position-relative d-inline-flex align-items-center justify-content-center" data-percent="35" data-piesize="95" data-linewidth="10" data-scalelength="5">
							<div class="js-easy-pie-chart color-success-400 position-relative position-absolute pos-left pos-right pos-top pos-bottom d-flex align-items-center justify-content-center" data-percent="85" data-piesize="60" data-linewidth="5" data-scalelength="1" data-scalecolor="#fff">
								<div class="position-absolute pos-top pos-left pos-right pos-bottom d-flex align-items-center justify-content-center fw-500 fs-xl text-dark">88%</div>
							</div>
						</div>
					</div>								
					<div id="ele-dayofweek-area" style="width: 100%; height: 300px;"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- 요일별 발전량 그래프 종료 -->

	<!-- 요일별 기상 그래프 시작 -->
	<div class="col-lg-6">
		<div id="panel-2" class="panel">
			<div class="panel-hdr bg-success-700 bg-primary-gradient">
				<h2>요일별(기상)</h2>
			</div>
			<div class="panel-container show">
				<div class="panel-content poisition-relative">					
					<!-- 요일별 기상 그래프 -->
					<figure class="highcharts-figure">
					  <div id="container2" style="width: 100%; height: 300px;">
					    <div style="margin-top: 100px; text-align: center" id="loading">
					      <i class="fa fa-spinner fa-spin"></i> Loading data from external source
					    </div>
					  </div>					 
					</figure>				
				</div>
			</div>
		</div>
	</div>
	<!-- 요일별 기상 그래프 종료 -->
		    
	<!-- 일별 발전량 그래프 시작 -->
	<div class="col-lg-6">
		<div id="panel-2" class="panel">
			<div class="panel-hdr bg-primary-500 bg-info-gradient">
				<h2>일별(발전량)</h2>
			</div>
			<div class="panel-container show">
				<div class="panel-content">		
					<div class="p-1 position-absolute pos-right pos-top mt-3 mr-3 z-index-cloud d-flex align-items-center justify-content-center">									
						<div class="js-easy-pie-chart color-info-400 position-relative d-inline-flex align-items-center justify-content-center" data-percent="35" data-piesize="95" data-linewidth="10" data-scalelength="5">
							<div class="js-easy-pie-chart color-success-400 position-relative position-absolute pos-left pos-right pos-top pos-bottom d-flex align-items-center justify-content-center" data-percent="85" data-piesize="60" data-linewidth="5" data-scalelength="1" data-scalecolor="#fff">
								<div class="position-absolute pos-top pos-left pos-right pos-bottom d-flex align-items-center justify-content-center fw-500 fs-xl text-dark">88%</div>
							</div>
						</div>
					</div>								
					<div id="ele-day-area" style="width: 100%; height: 300px;"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- 일별 발전량 그래프 종료 -->

	<!-- 일별 기상 그래프 시작 -->
	<div class="col-lg-6">
		<div id="panel-2" class="panel">
			<div class="panel-hdr bg-success-700 bg-primary-gradient">
				<h2>일별(기상)</h2>
			</div>
			<div class="panel-container show">
				<div class="panel-content poisition-relative">					
					<!-- 일별 기상 그래프 -->
					<figure class="highcharts-figure">
					  <div id="container3" style="width: 100%; height: 300px;">
					    <div style="margin-top: 100px; text-align: center" id="loading">
					      <i class="fa fa-spinner fa-spin"></i> Loading data from external source
					    </div>
					  </div>					 
					</figure>					
				</div>
			</div>
		</div>
	</div>
	<!-- 일별 기상 그래프 종료 -->
	
	<!-- 설비 이슈 시작 -->
	<div class="col-lg-12">
		<div id="panel-4" class="panel">
			<div class="panel-hdr bg-danger-900 bg-info-gradient">
				<h2>설비 이벤트</h2>
			</div>
			<div class="panel-container show">
				<div class="panel-content">
					<table id="dt-basic-example"
						class="table table-bordered table-hover table-striped w-100 display responsive nowrap">

						<thead class="bg-warning-200">
							<tr>
								<th>발전소명</th>
								<th>설비명</th>								
								<th>이벤트 내용</th>
								<th>설비종류</th>								
								<th>설비위치</th>
								<th>관리업체</th>
								<th>이벤트 현황</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>하남 발전소</td>
								<td>1번 인버터</td>
								<td>직류 -> 교류 반환 손실</td>
								<td>인버터</td>
								<td>하남발전소 옥상</td>
								<td>동아에코스 / 02-666-5555</td>
								<td>미조치, 점검필요</td>
							</tr>
							<tr>
								<td>하남 발전소</td>
								<td>2번 인버터</td>
								<td>직류 -> 교류 반환 손실</td>
								<td>인버터</td>
								<td>하남발전소 옥상</td>
								<td>동아에코스 / 02-666-5555</td>
								<td>미조치, 점검필요</td>
							</tr>
							<tr>
								<td>하남 발전소</td>
								<td>3번 인버터</td>								
								<td>직류 -> 교류 반환 손실 5% 이상(25%)</td>
								<td>인버터</td>
								<td>하남발전소 옥상</td>
								<td>동아에코스 / 02-666-5555</td>
								<td>미조치, 점검필요</td>
							</tr>
						</tbody>
					</table>
					<!-- datatable end -->
				</div>
			</div>
		</div>
	</div>
	<!-- 설비 이슈 종료 -->
	
</div>
</main>
                    
<script>
	
	var week = new Array('일', '월', '화', '수', '목', '금', '토');

	//시간별 발전량 임시 데이터
	function data_ele_time_temp(){
		var tmpData = "Time,발전량\n";
		
		var now = new Date();		
		var d = new Date(now.getFullYear(), now.getMonth(), now.getDate());	
		
		for (var i = 0; i < now.getHours(); i++){
						
			var randomVal = Math.floor( Math.random() * 1000 );
			var randomMin = Math.floor( Math.random() * 600 );
			var randomMax = Math.floor( Math.random() * 600 );
			
			tmpData += d + "," +( randomVal - randomMin ) + ";" +  randomVal + ";" + ( randomVal + randomMin ) + "\n";
			
			d.setHours(d.getHours() + 1);
		}
		
		console.log(tmpData);
		return tmpData;
	}
	
	//요일별 발전량 임시 데이터
	function data_ele_dayofweek_temp(){
		var tmpData = "Date,발전량\n";
		var now = new Date();
		
		now.setDate(now.getDate() - 6);
		now = new Date(now.getFullYear(), now.getMonth(), now.getDate());
		
		for (var i = 0; i < 7; i++){
						
			var randomVal = Math.floor( Math.random() * 1000 );
			var randomMin = Math.floor( Math.random() * 600 );
			var randomMax = Math.floor( Math.random() * 600 );
			
			tmpData += now + "," +( randomVal - randomMin ) + ";" +  randomVal + ";" + ( randomVal + randomMin ) + "\n";
			
			now.setDate(now.getDate() + 1);			
		}
		
		console.log(tmpData);
		return tmpData;
	}

	//일별 발전량 임시 데이터
	function data_ele_day_temp(){
		var tmpData = "Date,발전량\n";
		
		for (var i = 1; i < 32; i++){
			var randomVal = Math.floor( Math.random() * 1000 );
			var randomMin = Math.floor( Math.random() * 600 );
			var randomMax = Math.floor( Math.random() * 600 );
			
			tmpData += "202101" + padLeft(i, 2) + "," +( randomVal - randomMin ) + ";" +  randomVal + ";" + ( randomVal + randomMin ) + "\n";
		}
		
		console.log(tmpData);
		return tmpData;
	}
	
	$(document).ready(function() {
				
				//시간별 발전량 그래프	
				g1 = new Dygraph(document.getElementById("ele-time-area"), data_ele_time_temp,
                {
                    customBars: true,
                    title: '',
                    ylabel: '발전량',
                    legend: 'always',
                    labelsDivStyles:
                    {
                        'textAlign': 'right'
                    },
                    showRangeSelector: false,
                    rangeSelectorPlotStrokeColor: "#0a6ebd",
                    rangeSelectorPlotFillColor: "#2196F3",
                    axes: {
                        x: {
                            axisLabelFormatter: function (d, gran) {		                            	
                            	return padLeft(d.getHours(), 2) + ":" + padLeft(d.getMinutes(), 2);                      			                                
                            }
                        }
                    }
                });
				
				//요일별 발전량 그래프	
				g2 = new Dygraph(document.getElementById("ele-dayofweek-area"), data_ele_dayofweek_temp,
                {
                    customBars: true,
                    title: '',
                    ylabel: '발전량',
                    legend: 'always',
                    labelsDivStyles:
                    {
                        'textAlign': 'right'
                    },
                    showRangeSelector: false,
                    rangeSelectorPlotStrokeColor: "#0a6ebd",
                    rangeSelectorPlotFillColor: "#2196F3",
                    axes: {
                        x: {
                            axisLabelFormatter: function (d, gran) {		                            	
                            	return week[d.getDay()];                      			                                
                            }
                        }
                    }
                });				
		
				//일별 발전량 그래프	
				g3 = new Dygraph(document.getElementById("ele-day-area"), data_ele_day_temp,
		                {
		                    customBars: true,
		                    title: '',
		                    ylabel: '발전량',
		                    legend: 'always',
		                    labelsDivStyles:
		                    {
		                        'textAlign': 'right'
		                    },
		                    showRoller: false,
		                    showRangeSelector: false,
		                    rangeSelectorPlotStrokeColor: "#0a6ebd",
		                    rangeSelectorPlotFillColor: "#2196F3",		                    
		                    axes: {
		                        x: {
		                            axisLabelFormatter: function (d, gran) {		                            	
		                            	if (d.getHours() == 0){
		                            		return padLeft((d.getMonth()+1), 2) + "/" + padLeft(d.getDate(), 2);	
		                            	}else{
		                            		return padLeft(d.getHours(), 2) + ":" + padLeft(d.getMinutes(), 2);
		                            	}		                            			                                
		                            },	
		                            axisTickSize:1
		                        }
		                    }
		                });
				
				
				// initialize datatable
				$('#dt-basic-example').dataTable({
					language: lang_kor,
					bLengthChange: false
				});
				
				// 기상 그래프
				var url = location.hash.substr(1);
				if (url === 'https://www.yr.no/place/United_Kingdom/England/London/forecast_hour_by_hour.xml'){
					url = 'https://demo-live-data.highcharts.com/weather-forecast.xml';
				}else{
					url = 'https://cors-anywhere.herokuapp.com/' + url;
				}
				
				getXML(url,	Meteogram.prototype.error);
				
			});
	
	
	/**
	 * This is a complex demo of how to set up a Highcharts chart, coupled to a
	 * dynamic source and extended by drawing image sprites, wind arrow paths
	 * and a second grid on top of the chart. The purpose of the demo is to inpire
	 * developers to go beyond the basic chart types and show how the library can
	 * be extended programmatically. This is what the demo does:
	 *
	 * - Loads weather forecast from www.yr.no in form of an XML service. The XML
	 *   is translated on the Higcharts website into JSONP for the sake of the demo
	 *   being shown on both our website and JSFiddle.
	 * - When the data arrives async, a Meteogram instance is created. We have
	 *   created the Meteogram prototype to provide an organized structure of the different
	 *   methods and subroutines associated with the demo.
	 * - The parseYrData method parses the data from www.yr.no into several parallel arrays. These
	 *   arrays are used directly as the data option for temperature, precipitation
	 *   and air pressure. As the temperature data gives only full degrees, we apply
	 *   some smoothing on the graph, but keep the original data in the tooltip.
	 * - After this, the options structure is build, and the chart generated with the
	 *   parsed data.
	 * - In the callback (on chart load), we weather icons on top of the temperature series.
	 *   The icons are sprites from a single PNG image, placed inside a clipped 30x30
	 *   SVG <g> element. VML interprets this as HTML images inside a clipped div.
	 * - Lastly, the wind arrows are built and added below the plot area, and a grid is
	 *   drawn around them. The wind arrows are basically drawn north-south, then rotated
	 *   as per the wind direction.
	 */

	function Meteogram(xml, container) {
		// Parallel arrays for the chart data, these are populated as the XML/JSON file
	  	// is loaded
	  	this.symbols = [];
	  	this.precipitations = [];
	  	this.precipitationsError = []; 	// Only for some data sets
	  	this.winds = [];
	  	this.temperatures = [];			//기온
	  	this.pressures = [];

	  	// Initialize
	  	this.xml = xml;
	  	this.container = container;

	  	// Run
	  	this.parseYrData();
	}

	/**
	 * Function to smooth the temperature line. The original data provides only whole degrees,
	 * which makes the line graph look jagged. So we apply a running mean on it, but preserve
	 * the unaltered value in the tooltip.
	 * (그래프 선을 곡선형으로 표현)
	 */
	Meteogram.prototype.smoothLine = function (data) {		
	  	var i = data.length;
	  
	  	while (i--) {		  
	    	data[i].value = data[i].y; // preserve value for tooltip

	    	// Set the smoothed value to the average of the closest points, but don't allow
	    	// it to differ more than 0.5 degrees from the given value
	    	sum = (data[i - 1] || data[i]).y + data[i].value + (data[i + 1] || data[i]).y;
	    	data[i].y = Math.max(data[i].value - 0.5, Math.min(sum / 3, data[i].value + 0.5));
	  	}
	};

	/**
	 * Draw the weather symbols on top of the temperature series. The symbols are
	 * fetched from yr.no's MIT licensed weather symbol collection.
	 * https://github.com/YR/weather-symbols
	 * (온도 그래프 위에 날씨 이미지 처리)
	 */
	Meteogram.prototype.drawWeatherSymbols = function (chart) {
	  	var meteogram = this;

	  	$.each(chart.series[0].data, function(index, item){
	  		if (meteogram.resolution > 36e5 || index % 2 === 0) {
	  			chart.renderer.image('https://cdn.jsdelivr.net/gh/YR/weather-symbols@6.0.2/dist/svg/' +meteogram.symbols[index] + '.svg',
			            item.plotX + chart.plotLeft - 8,
			            item.plotY + chart.plotTop - 30,
			            30,
			            30).attr({ zIndex: 5 }).add();
	  		}
	  	});
	};


	/**
	 * Draw blocks around wind arrows, below the plot area
	 * (풍속 테두리 그리기)
	 */
	Meteogram.prototype.drawBlocksForWindArrows = function (chart) {
	  	var xAxis = chart.xAxis[0];	  	
	  	var max = xAxis.max;
	  	var i = 0;
	  	
	  	for (var pos = xAxis.min; pos <= max + 36e5; pos += 36e5) {

	    	// Get the X position
	    	isLast = pos === max + 36e5;
	    	x = Math.round(xAxis.toPixels(pos)) + (isLast ? 0.5 : -0.5);

	    	// Draw the vertical dividers and ticks
	    	if (this.resolution > 36e5) {
	      		isLong = pos % this.resolution === 0;
	    	} else {
	      		isLong = i % 2 === 0;
	    	}
	    	
	    	chart.renderer.path(['M', x, chart.plotTop + chart.plotHeight + (isLong ? 0 : 28), 'L', x, chart.plotTop + chart.plotHeight + 32, 'Z'])
	      	.attr({
	        	stroke: chart.options.chart.plotBorderColor,
	        	'stroke-width': 1
	      	}).add();	
	    
	    	i ++;
	  }

	  // Center items in block
	  chart.get('windbarbs').markerGroup.attr({
	    translateX: chart.get('windbarbs').markerGroup.translateX + 8
	  });
	};

	/**
	 * Get the title based on the XML data
	 * (차트 제목 설정)
	 */
	Meteogram.prototype.getTitle = function () {		
	 	 return '';
	};

	/**
	 * Build and return the Highcharts options structure
	 */
	Meteogram.prototype.getChartOptions = function () {
	  	var meteogram = this;

	  	return {
	    	chart: {
	      		renderTo: this.container,
	      		marginBottom: 70,
	      		marginRight: 40,
	      		marginTop: 50,
	      		plotBorderWidth: 1,
	      		height: 310,
	      		alignTicks: false,
	      		scrollablePlotArea: {
	        		minWidth: 720
	      		}
	    	},
	    	defs: {
	      		patterns: [{
	        		id: 'precipitation-error',
	        		path: {
	          			d: ['M', 3.3, 0, 'L', -6.7, 10,
	            			 'M', 6.7, 0, 'L', -3.3, 10,
	            			 'M', 10, 0, 'L', 0, 10,
	            			 'M', 13.3, 0, 'L', 3.3, 10,
	            			 'M', 16.7, 0, 'L', 6.7, 10].join(' '),
	          			stroke: '#68CFE8',
	          			strokeWidth: 1
	        		}
	      		}]
	    	},
	    	title: {
	      		text: this.getTitle(),
	      		align: 'left',
	      		style: {
	        		whiteSpace: 'nowrap',
	        		textOverflow: 'ellipsis'
	      		}
	    	},
	    	credits: {
	      		text: 'Forecast from <a href="http://yr.no">yr.no</a>',
	      		href: this.xml.querySelector('credit link').getAttribute('url'),
	      		position: {
	        		x: -40
	      		}
	    	},
	    	tooltip: {
	      		shared: true,
	      		useHTML: true,
	      		headerFormat: '<small>{point.x:%A, %b %e, %H:%M} - {point.point.to:%H:%M}</small><br>' + '<b>{point.point.symbolName}</b><br>'
	    	},
	    	xAxis: [{ 
	    		// Bottom X axis
	      		type: 'datetime',
	      		tickInterval: 2 * 36e5, // two hours
	      		minorTickInterval: 36e5, // one hour
	      		tickLength: 0,
	      		gridLineWidth: 1,
	      		gridLineColor: 'rgba(128, 128, 128, 0.1)',
	      		startOnTick: false,
	      		endOnTick: false,
	      		minPadding: 0,
	      		maxPadding: 0,
	      		offset: 30,
	      		showLastLabel: true,
	      		labels: {
	        		format: '{value:%H}'
	      		},
	      		crosshair: true
	    	}, 
	    	{ 
	    		// Top X axis
	      		linkedTo: 0,
	      		type: 'datetime',
	      		tickInterval: 24 * 3600 * 1000,
	      		labels: {
	        		format: '{value:<span style="font-size: 12px; font-weight: bold">%a</span> %b %e}',
	        		align: 'left',
	        		x: 3,
	        		y: -5
	      		},
	      		opposite: true,
	      		tickLength: 20,
	      		gridLineWidth: 1
	    	}],
	    	yAxis: [{ 
	    		// temperature axis
	      		title: {
	        	text: null
	      		},
	      		labels: {
	        		format: '{value}°',
	        		style: {
	          			fontSize: '10px'
	        		},
	        		x: -3	
	      		},
	      		plotLines: [{ 
	      			// zero plane
	        		value: 0,
	        		color: '#BBBBBB',
	        		width: 1,
	        		zIndex: 2
	      		}],
	      		maxPadding: 0.3,
	      		minRange: 8,
	      		tickInterval: 1,
	      		gridLineColor: 'rgba(128, 128, 128, 0.1)'

	    	}, 
	    	{ 
	    		// precipitation axis
	      		title: {
	        		text: null
	      		},
	      		labels: {
	        		enabled: false
	      		},
	      		gridLineWidth: 0,
	      		tickLength: 0,
	      		minRange: 10,
	      		min: 0
	    	}, 
	    	{ 
	    		// Air pressure
	      		allowDecimals: false,
	      		title: { 
	      			// Title on top of axis
	        		text: 'hPa',
	        		offset: 0,
	        		align: 'high',
	        		rotation: 0,
	        		style: {
	          			fontSize: '10px',
	          			color: Highcharts.getOptions().colors[2]
	        		},
	        	textAlign: 'left',
	        	x: 3
	      },
	      labels: {
	        style: {
	          fontSize: '8px',
	          color: Highcharts.getOptions().colors[2]
	        },
	        y: 2,
	        x: 3
	      },
	      gridLineWidth: 0,
	      opposite: true,
	      showLastLabel: false
	    }],

	    legend: {
	      enabled: false
	    },

	    plotOptions: {
	      series: {
	        pointPlacement: 'between'
	      }
	    },
	    series: [{
	      	name: '기온',
	      	data: this.temperatures,
	      	type: 'spline',
	      	marker: {
				enabled: false,
	        	states: {
					hover: {
	            		enabled: true
	          		}
				}
	      	},
	      	tooltip: {
				pointFormat: '<span style="color:{point.color}">\u25CF</span> ' +'{series.name}: <b>{point.value}°C</b><br/>'
	      	},
	      	zIndex: 1,
	      	color: '#FF3333',
	      	negativeColor: '#48AFE8'
		}, 
		{
			name: '강수량',
	      	data: this.precipitationsError,
	      	type: 'column',
	      	color: 'url(#precipitation-error)',
	      	yAxis: 1,
	      	groupPadding: 0,
	      	pointPadding: 0,
	      	tooltip: {
	        	valueSuffix: ' mm',
	        	pointFormat: '<span style="color:{point.color}">\u25CF</span> ' + '{series.name}: <b>{point.minvalue} mm - {point.maxvalue} mm</b><br/>'
	      	},
	      	grouping: false,
	      	dataLabels: {
	        	enabled: meteogram.hasPrecipitationError,
	        	formatter: function () {
	          		if (this.point.maxvalue > 0) {
	            		return this.point.maxvalue;
	          		}
	        	},
		        style: {
					fontSize: '8px',
		          	color: 'gray'
		        }
			}
	    	}, 
	    	{
	      		name: '강수량',
	      		data: this.precipitations,
	      		type: 'column',
	      		color: '#68CFE8',
	      		yAxis: 1,
	      		groupPadding: 0,
	      		pointPadding: 0,
	      		grouping: false,
	      		dataLabels: {
	        		enabled: !meteogram.hasPrecipitationError,
	        		formatter: function () {
	          			if (this.y > 0) {
	            			return this.y;
	          			}
	        		},
	        		style: {
	          			fontSize: '8px',
	          			color: 'gray'
	        		}
	      		},
	      		tooltip: {
	        		valueSuffix: ' mm'
	      		}
	   		 }, 
	   		 {
	      		name: '일사량',
	      		color: Highcharts.getOptions().colors[2],
	      		data: this.pressures,
	      		marker: {
	        		enabled: false
	      		},
	      		shadow: false,
	      		tooltip: {
	        		valueSuffix: ' hPa'
	      		},
	      		dashStyle: 'shortdot',
				yAxis: 2
			}, 
			{
	      		name: '일조시간',
	      		type: 'windbarb',
	     		 id: 'windbarbs',
	      		color: Highcharts.getOptions().colors[1],
	     		 lineWidth: 1.5,
	      		data: this.winds,
	      		vectorLength: 18,
	      		yOffset: -15,
	      		tooltip: {
	        		valueSuffix: ' m/s'
	      		}
	    	}]
		};
	};

	/**
	 * Post-process the chart from the callback function, the second argument to Highcharts.Chart.
	 */
	Meteogram.prototype.onChartLoad = function (chart) {

	  this.drawWeatherSymbols(chart);
	  this.drawBlocksForWindArrows(chart);
		
	  console.log(this.precipitations);
	};

	/**
	 * Create the chart. This function is called async when the data file is loaded and parsed.
	 */
	Meteogram.prototype.createChart = function () {
	  var meteogram = this;
	  this.chart = new Highcharts.Chart(this.getChartOptions(), function (chart) {
	    meteogram.onChartLoad(chart);
	  });
	};

	Meteogram.prototype.error = function () {
	  document.getElementById('loading').innerHTML = '<i class="fa fa-frown-o"></i> Failed loading data, please try again later';
	};

	/**
	 * Handle the data. This part of the code is not Highcharts specific, but deals with yr.no's
	 * specific data format
	 */
	Meteogram.prototype.parseYrData = function () {

	  var meteogram = this,
	    xml = this.xml,
	    pointStart,
	    forecast = xml && xml.querySelector('forecast');

	  if (!forecast) {
	    return this.error();
	  }

		// The returned xml variable is a JavaScript representation of the provided
	  	// XML, generated on the server by running PHP simple_load_xml and
	  	// converting it to JavaScript by json_encode.
	  	var queryAll = forecast.querySelectorAll('tabular time');
	  	$.each( queryAll, function(i, time){
	  	// Get the times - only Safari can't parse ISO8601 so we need to do
		    // some replacements
		    var from = time.getAttribute('from') + ' UTC',
		      to = time.getAttribute('to') + ' UTC';

		    from = from.replace(/-/g, '/').replace('T', ' ');
		    from = Date.parse(from);
		    to = to.replace(/-/g, '/').replace('T', ' ');
		    to = Date.parse(to);

		    if (to > pointStart + 4 * 24 * 36e5) {
		      return;
		    }

		    // If it is more than an hour between points, show all symbols
		    if (i === 0) {
		      meteogram.resolution = to - from;
		    }

		    // Populate the parallel arrays
		    meteogram.symbols.push(
		      time.querySelector('symbol').getAttribute('var')
		        .match(/[0-9]{2}[dnm]?/)[0]
		    );

		    meteogram.temperatures.push({
		      x: from,
		      y: parseInt(
		        time.querySelector('temperature').getAttribute('value'),
		        10
		      ),
		      // custom options used in the tooltip formatter
		      to: to,
		      symbolName: time.querySelector('symbol').getAttribute('name')
		    });

		    var precipitation = time.querySelector('precipitation');
		    meteogram.precipitations.push({
		      x: from,
		      y: parseFloat(
		        Highcharts.pick(
		          precipitation.getAttribute('minvalue'),
		          precipitation.getAttribute('value')
		        )
		      )
		    });

		    if (precipitation.getAttribute('maxvalue')) {
		      meteogram.hasPrecipitationError = true;
		      meteogram.precipitationsError.push({
		        x: from,
		        y: parseFloat(precipitation.getAttribute('maxvalue')),
		        minvalue: parseFloat(precipitation.getAttribute('minvalue')),
		        maxvalue: parseFloat(precipitation.getAttribute('maxvalue')),
		        value: parseFloat(precipitation.getAttribute('value'))
		      });
		    }

		    if (i % 2 === 0) {
		      meteogram.winds.push({
		        x: from,
		        value: parseFloat(time.querySelector('windSpeed')
		          .getAttribute('mps')),
		        direction: parseFloat(time.querySelector('windDirection')
		          .getAttribute('deg'))
		      });
		    }

		    meteogram.pressures.push({
		      x: from,
		      y: parseFloat(time.querySelector('pressure').getAttribute('value'))
		    });

		    if (i === 0) {
		      pointStart = (from + to) / 2;
		    }
	  	});
	
	  // Smooth the line
	  this.smoothLine(this.temperatures);

	  // Create the chart when the data is loaded
	  this.createChart();
	};
	// End of the Meteogram protype


	// On DOM ready...

	// Set the hash to the yr.no URL we want to parse
	var place, url;
	if (!location.hash) {
	  place = 'United_Kingdom/England/London';
	  //place = 'France/Rhône-Alpes/Val_d\'Isère~2971074';
	  //place = 'Norway/Sogn_og_Fjordane/Vik/Målset';
	  //place = 'United_States/California/San_Francisco';
	  //place = 'United_States/Minnesota/Minneapolis';

	  location.hash = 'https://www.yr.no/place/' + place + '/forecast_hour_by_hour.xml';
	}

	// Then get the XML file through Highcharts' CORS proxy. Our proxy is limited to
	// this specific location. Useing the third party, rate limited cors.io service
	// for experimenting with other locations.
	function getXML(url, cbErr) {
		  const request = new XMLHttpRequest();
		  request.open('GET', url, true);

		  request.onload = function () {
		    if (this.status >= 400) {
		      return cbErr();
		    }
		    
		    var xml = new DOMParser().parseFromString(this.response, 'application/xml');
		    
		    window.meteogram = new Meteogram(xml, 'container1');
			window.meteogram = new Meteogram(xml, 'container2');
			window.meteogram = new Meteogram(xml, 'container3');			
		  };
		  
		  request.send();
		}
	
</script>