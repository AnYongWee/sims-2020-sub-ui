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

<main id="js-page-content" role="main" class="page-content" style="padding: 1.5rem 0.8rem; margin-top: 2.625rem; padding-bottom: 2.625rem !important; ">
	<div class="row h-100" id="row-inner">
		<!-- 좌측 영역 -->
		<div class="col-xl-7 col-md-12 h-100">
			<!-- 좌측 상단 영역 -->
			<div class="row p-1 h-60" id="row-left-top">
			
				<div id="panel-map" class="panel h-100 w-100 border-gray">
					<div class="panel-hdr-sm">
						<span class="m-2 font-weight-bold">사이트 정보</span>
					</div>
					<div class="panel-container h-100 show">
						<div class="panel-content pt-0 h-100">
							<div class="row h-20 align-items-center justify-content-end">
								<div class="subheader-block d-flex mr-3 ">
									<!-- 전일 전체 발전량 -->
									<div class="d-flex mr-4 ">
										<div class="mr-2">
											<span class="peity-donut" data-peity="{ &quot;fill&quot;: [&quot;#967bbd&quot;, &quot;#ccbfdf&quot;],  &quot;innerRadius&quot;: 14, &quot;radius&quot;: 20 }" style="display: none;">7/10</span><svg class="peity" height="40" width="40"><path d="M 20 0 A 20 20 0 1 1 0.9788696740969307 26.18033988749895 L 6.685208771867851 24.326237921249266 A 14 14 0 1 0 20 6" data-value="7" fill="#E6E6E6"></path><path d="M 0.9788696740969307 26.18033988749895 A 20 20 0 0 1 19.999999999999996 0 L 19.999999999999996 6 A 14 14 0 0 0 6.685208771867851 24.326237921249266" data-value="3" fill="#A4A4A4"></path></svg>
										</div>
										<div>
											<label class="fs-sm mb-0 mt-2 mt-md-0">전일 전체 발전량</label>
											<h4 class="font-weight-bold mb-0" id="cust_afday_gent_qnt"></h4>
										</div>
									</div>
									
									<!-- 금일 전체 발전량 -->
									<div class="d-flex mr-4">
										<div class="mr-2">
											<span class="peity-donut" data-peity="{ &quot;fill&quot;: [&quot;#2196F3&quot;, &quot;#9acffa&quot;],  &quot;innerRadius&quot;: 14, &quot;radius&quot;: 20 }" style="display: none;">3/10</span><svg class="peity" height="40" width="40"><path d="M 20 0 A 20 20 0 0 1 39.02113032590307 26.18033988749895 L 33.31479122813215 24.326237921249263 A 14 14 0 0 0 20 6" data-value="3" fill="#2196F3"></path><path d="M 39.02113032590307 26.18033988749895 A 20 20 0 1 1 19.999999999999996 0 L 19.999999999999996 6 A 14 14 0 1 0 33.31479122813215 24.326237921249263" data-value="7" fill="#9acffa"></path></svg>
										</div>
										<div>
											<label class="fs-sm mb-0 mt-2 mt-md-0">금일 전체 발전량</label>
											<h4 class="font-weight-bold mb-0" id="cust_day_gent_qnt"><i class="fal fa-chevron-double-up mr-1 fw-900 text-danger"></i></h4>                                        
										</div>
									</div>
									
									<!-- 누적 전체 발전량 -->
									<div class="d-flex mr-4">
										<div class="mr-2">
											<span class="peity-donut" data-peity="{ &quot;fill&quot;: [&quot;#967bbd&quot;, &quot;#ccbfdf&quot;],  &quot;innerRadius&quot;: 14, &quot;radius&quot;: 20 }" style="display: none;">7/10</span><svg class="peity" height="40" width="40"><path d="M 20 0 A 20 20 0 1 1 0.9788696740969307 26.18033988749895 L 6.685208771867851 24.326237921249266 A 14 14 0 1 0 20 6" data-value="7" fill="#967bbd"></path><path d="M 0.9788696740969307 26.18033988749895 A 20 20 0 0 1 19.999999999999996 0 L 19.999999999999996 6 A 14 14 0 0 0 6.685208771867851 24.326237921249266" data-value="3" fill="#ccbfdf"></path></svg>                                        
										</div>
										<div>
											<label class="fs-sm mb-0 mt-2 mt-md-0">누적 전체 발전량</label>
											<h4 class="font-weight-bold mb-0" id="cust_accum_gent_qnt"></h4>
										</div>
									</div>                                
								</div>
							</div>
							<div class="row h-80">
								<div class="w-100 h-100" id="map"></div>
							</div>
						</div>
					</div>
				</div>
								
				<!-- 사이트 계층도 -->
				<div id="panel-sitemap" class="panel h-100 border-gray" data-panel-fullscreen="false">
					<div class="panel-hdr-sm">
						<span class="m-2 font-weight-bold" id="canvas_site_nm">
							사이트 정보
						</span>
					</div>
					<!-- 원본 사이즈 (1400, 660) -->
					<canvas id="canvas" width="1400" height="660"></canvas>    
				</div>
			
			</div>
			
			<!-- 좌측 하단 영역 -->
			<div class="row h-40 p-1" id="row-left-bottom">
				<div class="panel h-100 w-100 border-gray">
					<div class="panel-hdr-sm">
						<span class="m-2 font-weight-bold">인버터 현황</span>
					</div>
					<div class="panel-container h-100 show">
						<div class="panel-content p-0 h-100">
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
		</div>
		<!-- 우측 영역 -->
		<div class="col-xl-5 col-md-12 h-100">
			<!-- 우측 상단 영역 -->
			<div class="row h-30 p-1" id="row-right-top" style="overflow: hidden">
				<div class="panel h-100 w-100 border-gray">
					<div class="panel-hdr-sm">
						<span class="m-2 font-weight-bold">발전량 현황 TOP.10</span>
					</div>
					<div class="panel-container h-100 show">
						<div class="panel-content p-0 h-100">
							<div id="container-site-ranking" class="chart-container m-0 p-0"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- 우측 중간 영역 -->
			<div class="row h-40 p-1" id="row-right-middle">
				<div class="panel h-100 w-100 border-gray">
					<div class="panel-hdr-sm">
						<span class="m-2 font-weight-bold">기간 발전량 현황</span>      
					</div>
					<div class="panel-container h-100 show">
						<div class="panel-content p-0 h-100">
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
							
							<!-- 발전량 그래프 영역 -->
							<div id="container"></div>
									
						</div>
					</div>
				</div>
			</div>
			<!-- 우측 하단 영역 -->
			<div class="row h-30 p-1" id="row-right-bottom">
				<div class="panel h-100 w-100 border-gray">
					<div class="panel-hdr-sm">
						<span class="m-2 font-weight-bold">경보 이벤트</span>
					</div>
					<div class="panel-container h-100 show">
						<div class="panel-content p-0 h-100">
							<!-- datatable start -->
							<table class="table m-0 table-hover table-sm h-100" id="alarm-list">
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
	</div>
</main>
<!-- 사이트 맵 처리 js -->
<script src="${pageContext.request.contextPath}/resources/js/view/main/siteMap.js"></script>
<!-- 사이트 계층도 처리 js -->
<script src="${pageContext.request.contextPath}/resources/js/view/main/canvas.js"></script> 
<!-- 데이터테이블 처리 js -->
<script src="${pageContext.request.contextPath}/resources/js/view/main/datatables.js"></script>
<!-- 기간 발전량 현황 그래프 처리 js -->
<script src="${pageContext.request.contextPath}/resources/js/view/main/solar.js"></script>
			
<script>
	
	var hourChart, dayChart, monthChart;

	var invrtr_list_table;
	
	$(window).resize(function() { 
		
		var searchType = $("#qnt-search-type option:selected").val();
		
		if (searchType == "hour"){
			setHourChartHeight();		
		}else if(searchType == "day"){
			setDayChartHeight();			
		}else if(searchType == "month"){
			setMonthChartHeight();			
		}
		
		$("#canvas").width($("#row-left-top").width()).height($("#row-left-top").height());
		//$("#row-left-top").height($("#row-left-top").height()-100);
		
	});
	
	$(document).ready(function() {
		
		mapInitialization();
		
		//datepicker 
		dateInputInitialization();
		
		//정보 갱신 (2분 30초 주기)
		setInterval(function(){			
			datatable_invrtr();
			datatable_alarm();
			mainCompanyGentLoad();
	    }, 1000 * 60 * 2.3);
		
		//정보 갱신 (30분 주기)
		setInterval(function(){			
			if( $('#nav_siteList option:selected').val() != "" ){
				//사이트 발전 정보 조회
				getSiteGentInfo($('#nav_siteList option:selected').val());				
			}
	    }, 1000 * 60 * 30);
		
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
		
		$("#canvas").width($("#row-left-top").width()).height($("#row-left-top").height());
		$("#row-left-top").height($("#row-left-top").height()-15);
		$("#row-left-top").removeClass("h-60");
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
			
			//사이트 발전 정보 조회
			getSiteGentInfo($('#nav_siteList option:selected').val());
			
			//사이트 도식도 보이기
			$('#panel-sitemap').removeClass("d-none");
			
			$('#panel-map-header').addClass("d-none");
			$('#panel-map').addClass("d-none");
			
			//에니메이션 실행
			draw();
		}
		
		datatable_invrtr();
		datatable_alarm();
		searchQntChart();
		getSiteGentTopList();
		mainCompanyGentLoad();
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
	
	//사이트 발전량 리스트 top 10 조회
	function getSiteGentTopList(){
		
		$.ajax({
			type: "POST",
			url: "/ajax/getSiteGentTopList.do",		
			dataType: 'json',
			global: false,			
			success : function(data) {
				
				var series = [];
				
				if (data.resultCode == 0){
					for (var i = 0; i < data.list.length; i++){
						
						var serie = new Object();
						serie.name = data.list[i].siteNm;
						serie.data = [data.list[i].tdayGentQnt];
						series.push(serie);
					}
					
					//그래프 호출
					if (!siteRankingChart){
						siteRankingHeight = $('#row-right-top').height();	
					}
					
					searchSiteRanking(series);	
					
				}else{
					console.log("사이트 발전량 리스트 top 10 조회 오류");
					console.log(data.resultMessage);												
				}
			},
			error: function(e){
				console.log("요청에 실패 하였습니다. (/ajax/getSiteGentTopList.do)");						
			}
		});
	}
	
	var siteRankingChart;
	var siteRankingHeight;
	
	function searchSiteRanking(series){
		
		siteRankingChart = Highcharts.chart('container-site-ranking', {
		    chart: {
		        type: 'bar',
		        //renderTo: 'container-site-ranking',
	            backgroundColor: 'transparent'	            
		    },
		    exporting: {
	            enabled: false
			},
		    title: {
		        text: ''
		    },		   
		    xAxis: {
		        categories: ["금일발전량"],
		        labels: {
		            style: {
		            	fontWeight: 'bold',
		                color:'#9a9696'
		            }
		        },
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
		            style: {
		            	fontWeight: 'bold',
		                color:'#9a9696'
		            }
		        }
		    },
		    tooltip: {
		        valueSuffix: ' kWh'
		    },
		    plotOptions: {		    	
		        bar: {
		            dataLabels: {
		                enabled: false		                
		            }
		        }
		    },
		    credits: {
		        enabled: false
		    },
		    
		    series:series,
		    
		    legend: {
		        labelFormatter: function() {
		            return '<span style="font-weight; color:' + '#9a9696' + '" >'+ this.name + '</span>';
		         
		        }
		    }
		    
		}, function(siteRankingChart){			
		    var setHeight = function() {		   
		    	
		    	siteRankingChart.setSize($('#row-right-top').width(), siteRankingHeight-40, {duration:0});
		    	siteRankingChart.yAxis[0].isDirty = true
		    	siteRankingChart.redraw();
		        		        
		        $('#row-right-top').height(siteRankingHeight - 20);
		        $('#row-right-top').removeClass("h-30");
		    }
		    
		    $(window).resize(setHeight);
		       
		    setHeight();    
		});
	}

	//고객사 발전 정보 적용
	function mainCompanyGentLoad(){
		
		$.ajax({
			type: "POST",
			url: "/ajax/getCompanyGentInfo.do",		
			dataType: 'json',
			global: false,			
			success : function(data) {
				
				if (data.resultCode == 0){										
					$('#cust_afday_gent_qnt').html(data.info.afDayGentQnt + " kWh");
					$('#cust_day_gent_qnt').html(data.info.dayGentQnt + " kWh");
					$('#cust_accum_gent_qnt').html(data.info.accumGentQnt + " kWh");					
				}else{
					console.log("고객사 정보 조회 오류 발생");
					console.log(data.resultMessage);												
				}
			},
			error: function(e){
				console.log("요청에 실패 하였습니다. (/ajax/getCompanyGentInfo.do)");						
			}
		});
	}
	
	//사이트 발전량 조회
	function getSiteGentInfo(siteSeq){
				
		$.ajax({
			type: "POST",
			url: "/ajax/getSiteGentInfo.do",		
			dataType: 'json',
			global: false,		
			data: {
				siteSeq: siteSeq
			},
			success : function(data) {
				
				if (data.resultCode == 0){
					var info = data.info;
					siteCanvasInitialization(info.modlTempr, 
							info.inclIrradQnt, 
							info.horzIrradQnt,
							info.tdayGentQnt, 	
							info.accumGentQnt,
							info.acVolt,	
							info.acCurr, 
							info.acPowr,
							info.instlCpct,
							info.outdrTempr,									
							info.rducAmt,
							0,		//탄소저감량 
							0);	//나무 그루수
							
					$('#canvas_site_nm').html(info.siteNm);
							
				}else{
					console.log("사이트 발전량 조회 오류");
					console.log(data.resultMessage);												
				}
			},
			error: function(e){
				console.log("요청에 실패 하였습니다. (/ajax/getSiteGentInfo.do)");						
			}
		});
	}

</script>