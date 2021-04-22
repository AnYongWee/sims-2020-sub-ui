<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script src="${pageContext.request.contextPath}/resources/highcharts/code/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/highcharts-more.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/exporting.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/export-data.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/accessibility.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/solid-gauge.js"></script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0a9450323afd9213c636b6222809c69c"></script> 

<style>
	table.dataTable {
    	margin-top: 0 !important;
    	margin-bottom: 0rem !important;
	}
</style>
<main id="js-page-content" role="main" class="page-content">
                        
	<div class="sitemap row h-60 mb-2" id="row-map">
		<div class="col-lg-7 h-100">
			
			<!-- 지도 -->			
			<div id="panel-map" class="panel h-100 border-gray d-none" data-panel-fullscreen="false">
				<div class="panel-hdr-sm">
					<span class="m-2 font-weight-bold">
						장소 정보
					</span>
				</div>
				
				<div id="panel-map-header" class="row h-20 d-none align-items-center justify-content-end" >

					<div class="subheader-block d-flex mr-3 ">
						<!-- 전일 전체 발전량 -->
						<div class="d-flex mr-4 ">
							<div class="mr-2">
								<span class="peity-donut" data-peity="{ &quot;fill&quot;: [&quot;#967bbd&quot;, &quot;#ccbfdf&quot;],  &quot;innerRadius&quot;: 14, &quot;radius&quot;: 20 }" style="display: none;">7/10</span><svg class="peity" height="40" width="40"><path d="M 20 0 A 20 20 0 1 1 0.9788696740969307 26.18033988749895 L 6.685208771867851 24.326237921249266 A 14 14 0 1 0 20 6" data-value="7" fill="#E6E6E6"></path><path d="M 0.9788696740969307 26.18033988749895 A 20 20 0 0 1 19.999999999999996 0 L 19.999999999999996 6 A 14 14 0 0 0 6.685208771867851 24.326237921249266" data-value="3" fill="#A4A4A4"></path></svg>
							</div>
							<div>
								<label class="fs-sm mb-0 mt-2 mt-md-0">전일 전체 발전량</label>
								<h4 class="font-weight-bold mb-0">232 kWh</h4>
							</div>
						</div>
						
						<!-- 금일 전체 발전량 -->
						<div class="d-flex mr-4">
							<div class="mr-2">
								<span class="peity-donut" data-peity="{ &quot;fill&quot;: [&quot;#2196F3&quot;, &quot;#9acffa&quot;],  &quot;innerRadius&quot;: 14, &quot;radius&quot;: 20 }" style="display: none;">3/10</span><svg class="peity" height="40" width="40"><path d="M 20 0 A 20 20 0 0 1 39.02113032590307 26.18033988749895 L 33.31479122813215 24.326237921249263 A 14 14 0 0 0 20 6" data-value="3" fill="#2196F3"></path><path d="M 39.02113032590307 26.18033988749895 A 20 20 0 1 1 19.999999999999996 0 L 19.999999999999996 6 A 14 14 0 1 0 33.31479122813215 24.326237921249263" data-value="7" fill="#9acffa"></path></svg>
							</div>
							<div>
								<label class="fs-sm mb-0 mt-2 mt-md-0">금일 전체 발전량</label>
								<h4 class="font-weight-bold mb-0"><i class="fal fa-chevron-double-up mr-1 fw-900 text-danger"></i>352 kWh</h4>                                        
							</div>
						</div>
						
						<!-- 누적 전체 발전량 -->
						<div class="d-flex mr-4">
							<div class="mr-2">
								<span class="peity-donut" data-peity="{ &quot;fill&quot;: [&quot;#967bbd&quot;, &quot;#ccbfdf&quot;],  &quot;innerRadius&quot;: 14, &quot;radius&quot;: 20 }" style="display: none;">7/10</span><svg class="peity" height="40" width="40"><path d="M 20 0 A 20 20 0 1 1 0.9788696740969307 26.18033988749895 L 6.685208771867851 24.326237921249266 A 14 14 0 1 0 20 6" data-value="7" fill="#967bbd"></path><path d="M 0.9788696740969307 26.18033988749895 A 20 20 0 0 1 19.999999999999996 0 L 19.999999999999996 6 A 14 14 0 0 0 6.685208771867851 24.326237921249266" data-value="3" fill="#ccbfdf"></path></svg>                                        
							</div>
							<div>
								<label class="fs-sm mb-0 mt-2 mt-md-0">누적 전체 발전량</label>
								<h4 class="font-weight-bold mb-0">14,134 kWh</h4>
							</div>
						</div>                                
					</div>

				</div>
			
				<div class="w-100 h-100" id="map"></div>
			</div>
			
			<!-- 사이트 계층도 -->
			<div id="panel-sitemap" class="panel h-100 border-gray" data-panel-fullscreen="false">
				<div class="panel-hdr-sm">
					<span class="m-2 font-weight-bold">
						장소 정보
					</span>
				</div>
				<!-- 원본 사이즈 (1826, 686) -->
				<canvas class="w-100 h-100" id="canvas" width="1826" height="686"></canvas>    
			</div>
			
		</div>
		
		<div class="col-lg-5">
			
			<div class="row h-60" id="row-chart" style="margin-bottom:8px;">
				<div class="col-lg-12">
					<div id="panel-stats" class="panel h-100 border-gray">
						<div class="panel-hdr-sm">
							<span class="m-2 font-weight-bold">
								발전현황
							</span>
						</div>	
						<div class="panel-hdr bg-gray-200 bg-gradient-light h6 font-weight-bold" id="panel-hdr-chart">								
								<div class="col-xs-3 p-1">
									<select class="custom-select form-control form-control-sm" id="qnt-search-type">
										<option value="hour">시간별</option>
										<option value="day" selected>일별</option>
										<option value="month">월별</option>						
									</select>                      
								</div>      
								<div class="col-xs-9 p-1">
								
									<div class="input-group" id="date-picker-hour">															                                                       
										<input class="form-control form-control-sm date-picker" id="start-date-hour" name="start-date-hour" value="" type="text" readonly>										
									</div>
									
									<div class="input-group" id="date-picker-day">
										<input class="form-control form-control-sm date-picker" id="start-date-day" name="start-date-day" value="" type="text" readonly>										
										
										<span class="align-self-center ml-1 mr-1">~</span> 
										
										<input class="form-control form-control-sm date-picker" id="end-date-day" name="end-date-day" value="" type="text" readonly>										
									</div>
									
									<div class="input-group" id="date-picker-month">                                                       
										<input class="form-control form-control-sm date-picker-month" id="start-date-month" name="start-date-month" value="" type="text" readonly>
										
										<span class="align-self-center ml-1 mr-1">~</span> 
										
										<input class="form-control form-control-sm date-picker-month" id="end-date-month" name="end-date-month" value="" type="text" readonly>										
									</div>
								</div>  
						</div>						
						<div class="panel-content bg-light">
							<!-- 그래프영역 -->		                    	
							<div id="container" class="chart" style="height:80%;width:100%;position:absolute;" ></div>
						</div>						
					</div>
				</div>
			</div>
			
			<div class="row h-40" id="row-site">
				<div class="col-lg-12" id="col-site">
					<div id="panel-site" class="panel border-gray">		
						<div class="panel-hdr-sm" id="hdr-site">
							<span class="m-2 font-weight-bold">
								사이트 순위
							</span>
						</div>				
						<div class="panel-container show">
							<div class="panel-content p-0">     
								<div id="container-site-ranking" class="chart-container"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<div class="row h-40" id="row-invrtr">
	<div class="col-lg-7">
		<div id="panel-invtr" class="panel border-gray">
			<div class="panel-hdr-sm">
					<span class="m-2 font-weight-bold">인버터 현황</span>
			</div>
			<div class="panel-container show">
				<div class="panel-content p-0">

					<!-- datatable start -->
					<table class="table m-0 table-hover table-sm" id="invrtr-list">
						<thead class="thead-themed">
							<tr>
								<th class="text-center align-middle" rowspan="2">장소명</th>
								<th class="text-center align-middle" rowspan="2">인버터</th>
								<th class="text-center align-middle" colspan="3">직류(DC)</th>
								<th class="text-center align-middle" colspan="3">교류(AC)</th>
								<th class="text-center align-middle" rowspan="2">발전량</th>
								<th class="text-center align-middle" rowspan="2">변환<br>효율</th>
								<th class="text-center align-middle" rowspan="2">발전상태</th>
							</tr>
							<tr>
								<th class="text-center align-middle">전력</th>
								<th class="text-center align-middle">전압</th>
								<th class="text-center align-middle">전류</th>
								<th class="text-center align-middle">전력</th>
								<th class="text-center align-middle">전압</th>
								<th class="text-center align-middle">전류</th>
							</tr>
						</thead>
						<tbody id="invrtr-tbody">
							
						</tbody>
					</table>
					<!-- datatable end -->
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-5">
		<div id="panel-alarm" class="panel border-gray">
			<div class="panel-hdr-sm">
				<span class="m-2 font-weight-bold">
					경보 이벤트
				</span>
			</div>
			<div class="panel-container show">
				<div class="panel-content p-0">

					<!-- datatable start -->
					<table class="table m-0 table-hover table-sm display nowrap" id="alarm-list">
						<thead class="thead-themed">							
							<tr>
								<th class="text-center align-middle">발생시간</th>
								<th class="text-center align-middle">장소명</th>
								<th class="text-center align-middle">인버터</th>
								<th class="text-center align-middle">이벤트</th>
								<th class="text-center align-middle">등급</th>
								<th class="text-center align-middle">상태</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
					<!-- datatable end -->
				</div>
			</div>
		</div>
	</div>
</div>
</main>

<!-- 사이트 맵 처리 js -->
<script src="${pageContext.request.contextPath}/resources/js/view/main/siteMap.js"></script>
<!-- 사이트 계층도 처리 js -->
<script src="${pageContext.request.contextPath}/resources/js/view/main/canvas.js"></script>
<!-- 데이터테이블 처리 js -->
<script src="${pageContext.request.contextPath}/resources/js/view/main/datatables.js"></script>
<!-- 발전량 그래프 처리 js -->
<script src="${pageContext.request.contextPath}/resources/js/view/main/solar.js"></script>
			
<script>
	
	var invrtr_list_table;
	
	$(document).ready(function() {
		
		mapInitialization();
		
		//datepicker 
		dateInputInitialization();
		
		//데이터테이블 갱신 (1분 주기)
		setInterval(function(){			
			datatable_invrtr();
			datatable_alarm();
	    }, 1000 * 60);
		
		$("#invrtr-list").on("draw.dt", function () {
		    $(this).find(".dataTables_empty").parents('tr').empty();
		});
		
		$("#alarm-list").on("draw.dt", function () {
		    $(this).find(".dataTables_empty").parents('tr').empty();
		});
		
		//발전량 그래프 검색기간 변경 이벤트
		$("#qnt-search-type").change(function(){
			searchTypeChange();			
		});
		
		searchTypeChange();
		
		//발전량 기간 설정 변경시 
		$(".date-picker").change(function(){
			searchQntChart();
		});
		
		search();
	});

	function search(){
		
		//에니메이션 취소
		if (pid != undefined && pid != null){			
			cancelAnimationFrame(pid);	
		}
		
		if( $('#nav_siteList option:selected').val() == "" ){
			
			//고객사 사이트 지도 보이기
			$('#panel-map-header').removeClass("d-none");
			$('#panel-map').removeClass("d-none");			
			
			$('#panel-sitemap').addClass("d-none");
			
			//지도 갱신
			mapReplace();
			
		}else{
			
			//사이트 도식도 보이기
			$('#panel-sitemap').removeClass("d-none");
			
			$('#panel-map-header').addClass("d-none");
			$('#panel-map').addClass("d-none");
			
			//에니메이션 실행
			draw();
		}
		
		datatable_site();
		datatable_invrtr();
		datatable_alarm();
		searchQntChart();
		searchSiteRanking();
	}
	
	//주기 검색조건 변경 처리
	function searchTypeChange(){		
		
		var searchType = $("#qnt-search-type option:selected").val();
		
		$("#datatable-hour").hide();
		$("#datatable-day").hide();
		$("#datatable-month").hide();
		
		$("#date-picker-hour").hide();
		$("#date-picker-day").hide();
		$("#date-picker-month").hide();
		
		if (searchType == "hour"){
			
			$('#start-date-hour').datepicker('setDate', 'today');
			$('#end-date-hour').datepicker('setDate', 'today');
			
			$("#date-picker-hour").show();
			$("#datatable-hour").show();
					
		}else if(searchType == "day"){
			
			$('#start-date-day').datepicker('setDate', '-1M');
			$('#end-date-day').datepicker('setDate', 'today');	
			
			$("#date-picker-day").show();
			$("#datatable-day").show();			
			
		}else if(searchType == "month"){
			
			$('#start-date-month').datepicker('setDate', '-12M');
			$('#end-date-month').datepicker('setDate', 'today');	
			
			$("#date-picker-month").show();
			$("#datatable-month").show();			
		}
		
		searchQntChart();
	}
	
	//발전소 현황 데이터 테이블 설정
	function datatable_site() {
		
		$('#site-list').dataTable({
			fixedHeader : true,
			language : lang_kor,
			destroy : true,
			searching : false,
			paging : false,
			info : false,
			ordering : false,
			scrollResize: true,
			scrollY : $('#row-site').height() - 60,
			scrollCollapse: true,
			responsive: true
		});
	}

	function searchSiteRanking(){
		Highcharts.chart('container-site-ranking', {
		    chart: {
		        type: 'bar',
		        renderTo: 'container',
	            backgroundColor: 'transparent',
	            height:130
		    },
		    exporting: {
	            enabled: false
			},
		    title: {
		        text: ''
		    },		   
		    xAxis: {
		        categories: ['금일발전량'],
		        title: {
		            text: null
		        }
		    },
		    yAxis: {
		        min: 0,
		        title: {
		            text: ''
		        },
		        labels: {
		            overflow: 'justify'
		        }
		    },
		    tooltip: {
		        valueSuffix: ' kWh'
		    },
		    plotOptions: {
		        bar: {
		            dataLabels: {
		                enabled: true
		            }
		        }
		    },
		    legend: {
		        layout: 'vertical',
		        align: 'right',
		        verticalAlign: 'top',
		        x: -20,
		        y: 10,
		        floating: true,
		        borderWidth: 1,
		        backgroundColor:
		            Highcharts.defaultOptions.legend.backgroundColor || '#FFFFFF',
		        shadow: true
		    },
		    credits: {
		        enabled: false
		    },
		    series: [{
		        name: '공적비 경로당',
		        data: [107]
		    }, {
		        name: '관교동분회',
		        data: [133]
		    }, {
		        name: '금빛경로당',
		        data: [814]
		    }, {
		        name: '다수곡경로당',
		        data: [1216]
		    }]
		});
	}

	

</script>