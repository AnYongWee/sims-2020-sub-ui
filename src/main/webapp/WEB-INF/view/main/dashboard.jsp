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
			
			<div id="panel-map-header" class="row h-20 d-none align-items-center justify-content-end" >

						<div class="subheader-block d-lg-flex mr-3 ">
								<div class="d-flex mr-4 ">
                                    <div class="mr-2">
                                        <span class="peity-donut" data-peity="{ &quot;fill&quot;: [&quot;#967bbd&quot;, &quot;#ccbfdf&quot;],  &quot;innerRadius&quot;: 14, &quot;radius&quot;: 20 }" style="display: none;">7/10</span><svg class="peity" height="40" width="40"><path d="M 20 0 A 20 20 0 1 1 0.9788696740969307 26.18033988749895 L 6.685208771867851 24.326237921249266 A 14 14 0 1 0 20 6" data-value="7" fill="#E6E6E6"></path><path d="M 0.9788696740969307 26.18033988749895 A 20 20 0 0 1 19.999999999999996 0 L 19.999999999999996 6 A 14 14 0 0 0 6.685208771867851 24.326237921249266" data-value="3" fill="#A4A4A4"></path></svg>
                                    </div>
                                    <div>
                                        <label class="fs-sm mb-0 mt-2 mt-md-0">전일 발전량</label>
                                        <h4 class="font-weight-bold mb-0">232 kWh</h4>
                                    </div>
                                </div>
                                <div class="d-flex mr-4">
                                    <div class="mr-2">
                                        <span class="peity-donut" data-peity="{ &quot;fill&quot;: [&quot;#2196F3&quot;, &quot;#9acffa&quot;],  &quot;innerRadius&quot;: 14, &quot;radius&quot;: 20 }" style="display: none;">3/10</span><svg class="peity" height="40" width="40"><path d="M 20 0 A 20 20 0 0 1 39.02113032590307 26.18033988749895 L 33.31479122813215 24.326237921249263 A 14 14 0 0 0 20 6" data-value="3" fill="#2196F3"></path><path d="M 39.02113032590307 26.18033988749895 A 20 20 0 1 1 19.999999999999996 0 L 19.999999999999996 6 A 14 14 0 1 0 33.31479122813215 24.326237921249263" data-value="7" fill="#9acffa"></path></svg>
                                    </div>
                                    <div>
                                        <label class="fs-sm mb-0 mt-2 mt-md-0">금일 발전량</label>
                                        <h4 class="font-weight-bold mb-0"><i class="fal fa-chevron-double-up mr-1 fw-900 text-danger"></i>352 kWh</h4>                                        
                                    </div>
                                </div>
                                <div class="d-flex mr-4">
                                    <div class="mr-2">
                                    	<span class="peity-donut" data-peity="{ &quot;fill&quot;: [&quot;#967bbd&quot;, &quot;#ccbfdf&quot;],  &quot;innerRadius&quot;: 14, &quot;radius&quot;: 20 }" style="display: none;">7/10</span><svg class="peity" height="40" width="40"><path d="M 20 0 A 20 20 0 1 1 0.9788696740969307 26.18033988749895 L 6.685208771867851 24.326237921249266 A 14 14 0 1 0 20 6" data-value="7" fill="#967bbd"></path><path d="M 0.9788696740969307 26.18033988749895 A 20 20 0 0 1 19.999999999999996 0 L 19.999999999999996 6 A 14 14 0 0 0 6.685208771867851 24.326237921249266" data-value="3" fill="#ccbfdf"></path></svg>                                        
                                    </div>
                                    <div>
                                        <label class="fs-sm mb-0 mt-2 mt-md-0">누적 발전량</label>
                                        <h4 class="font-weight-bold mb-0">14,134 kWh</h4>
                                    </div>
                                </div>                                
                            </div>

			</div>
			<!-- 지도 -->			
			<div id="panel-map" class="panel h-80 border-gray d-none" data-panel-fullscreen="false">
				<div class="w-100 h-100" id="map"></div>
			</div>
			
			<!-- 사이트 계층도 -->
			<div id="panel-sitemap" class="panel h-100 border-gray" data-panel-fullscreen="false">
				<!-- 원본 사이즈 (1826, 686) -->
				<canvas class="w-100 h-100" id="canvas" width="1826" height="686"></canvas>    
			</div>
			
		</div>
		
		<div class="col-lg-5">
			
			<div class="row h-70" id="row-chart" style="margin-bottom:8px;">
				<div class="col-lg-12">
					<div id="panel-stats" class="panel h-100 border-gray">
						<div class="panel-hdr bg-gray-200 bg-gradient-light h6 font-weight-bold" id="panel-hdr-chart">								
								<div class="col-xs-3 p-1">
									<select class="custom-select form-control form-control-sm" id="search-type">
										<option value="hour">시간별</option>
										<option value="day">일별</option>
										<option value="month">월별</option>						
									</select>                      
								</div>      
								<div class="col-xs-9 p-1">
									<div class="input-group" id="date-picker-day">
										<input class="form-control form-control-sm date-picker" id="start-date-day" name="start-date-day" value="" type="text" readonly>										
										
										<span class="align-self-center ml-1 mr-1">~</span> 
										
										<input class="form-control form-control-sm date-picker" id="end-date-day" name="end-date-day" value="" type="text" readonly>										
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
			
			<div class="row h-30" id="row-site">
				<div class="col-lg-12">
					<div id="panel-site" class="panel border-gray">						
						<div class="panel-container show">
							<div class="panel-content p-0">     
								<div id="container-invrtr" class="chart-container"></div>
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
			<div class="panel-container show">
				<div class="panel-content p-0">

					<!-- datatable start -->
					<table class="table m-0 table-hover table-sm" id="invrtr-list">
						<thead class="thead-themed">
							<tr>
								<th class="text-left align-middle font-weight-bold" rowspan="2">장소명</th>
								<th class="text-left align-middle font-weight-bold" rowspan="2">인버터</th>
								<th class="text-left align-middle font-weight-bold" colspan="3">태양광
									모듈</th>
								<th class="text-left align-middle font-weight-bold" colspan="3">인버터</th>
								<th class="text-left align-middle font-weight-bold" rowspan="2">변환효율</th>
								<th class="text-left align-middle font-weight-bold" rowspan="2">발전상태</th>
							</tr>
							<tr>
								<th class="text-left align-middle font-weight-bold">전력</th>
								<th class="text-left align-middle font-weight-bold">전압</th>
								<th class="text-left align-middle font-weight-bold">전류</th>
								<th class="text-left align-middle font-weight-bold">전력</th>
								<th class="text-left align-middle font-weight-bold">전압</th>
								<th class="text-left align-middle font-weight-bold">전류</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-left">관교동분회</td>
								<td class="text-left">인버터_1</td>
								<td class="text-left">12kW</td>
								<td class="text-left">30V</td>
								<td class="text-left">19A</td>
								<td class="text-left">10kW</td>
								<td class="text-left">25V</td>
								<td class="text-left">17A</td>
								<td class="text-left">90%</td>
								<td class="text-left">
									<div class="spinner-grow spinner-grow-sm text-success mr-1"></div>발전중
								</td>
							</tr>
							<tr>
								<td class="text-left">관교동분회</td>
								<td class="text-left">인버터_2</td>
								<td class="text-left">12kW</td>
								<td class="text-left">30V</td>
								<td class="text-left">19A</td>
								<td class="text-left">10kW</td>
								<td class="text-left">25V</td>
								<td class="text-left">17A</td>
								<td class="text-left">90%</td>
								<td class="text-left">
									<div class="spinner-grow spinner-grow-sm text-success mr-1"></div>발전중
								</td>
							</tr>
							<tr>
								<td class="text-left">관교동분회</td>
								<td class="text-left">인버터_3</td>
								<td class="text-left">12kW</td>
								<td class="text-left">30V</td>
								<td class="text-left">19A</td>
								<td class="text-left">10kW</td>
								<td class="text-left">25V</td>
								<td class="text-left">17A</td>
								<td class="text-left">90%</td>
								<td class="text-left">
									<div class="spinner-grow spinner-grow-sm text-success mr-1"></div>발전중
								</td>
							</tr>
							<tr style="background-color:#ff000021">
								<td class="text-left">관교동분회</td>
								<td class="text-left">인버터_4</td>
								<td class="text-left">12kW</td>
								<td class="text-left">30V</td>
								<td class="text-left">19A</td>
								<td class="text-left">10kW</td>
								<td class="text-left">25V</td>
								<td class="text-left">17A</td>
								<td class="text-left">90%</td>
								<td class="text-left">
									<div class="spinner-grow spinner-grow-sm text-danger mr-1 "></div>장애
								</td>
							</tr>
							<tr class="tr-empty">
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
							</tr>
							<tr class="tr-empty">
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
							</tr>
							<tr class="tr-empty">
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
							</tr>
							<tr class="tr-empty">
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
							</tr>
							<tr class="tr-empty">
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
							</tr>
							<tr class="tr-empty">
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
							</tr>
							<tr class="tr-empty">
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
							</tr>
							<tr class="tr-empty">
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
							</tr>
							<tr class="tr-empty">
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
								<td class="text-left"></td>
							</tr>
						</tbody>
					</table>
					<!-- datatable end -->
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-5">
		<div id="panel-alarm" class="panel border-gray">
			<div class="panel-container show">
				<div class="panel-content p-0">

					<!-- datatable start -->
					<table class="table m-0 table-hover table-sm display nowrap" id="alarm-list">
						<thead class="thead-themed">
							<tr>
								<th class="text-left align-middle font-weight-bold" colspan="6">경보
									이벤트</th>
							</tr>
							<tr>
								<th class="text-left align-middle font-weight-bold">발생시간</th>
								<th class="text-left align-middle font-weight-bold">장소명</th>
								<th class="text-left align-middle font-weight-bold">인버터</th>
								<th class="text-left align-middle font-weight-bold">이벤트</th>
								<th class="text-left align-middle font-weight-bold">등급</th>
								<th class="text-left align-middle font-weight-bold">상태</th>
							</tr>
						</thead>
						<tbody>
							<tr style="background-color:#ff000021">
								<th class="text-left">2020-12-01 12:00</th>
								<td class="text-left">관교동분회</td>
								<td class="text-left">인버터_1</td>
								<td class="text-left">인버터 다운</td>
								<td class="text-left"><span
									class="badge badge-danger badge-pill">경계</span></td>
								<td class="text-left">처리</td>
							</tr>
							<tr>
								<th class="text-left">2020-12-01 12:00</th>
								<td class="text-left">관교동분회</td>
								<td class="text-left">인버터_1</td>
								<td class="text-left">인버터 다운</td>
								<td class="text-left"><span
									class="badge badge-warning badge-pill">주의</span></td>
								<td class="text-left">처리</td>
							</tr>
							<tr>
								<th class="text-left">2020-12-01 12:00</th>
								<td class="text-left">관교동분회</td>
								<td class="text-left">인버터_1</td>
								<td class="text-left">인버터 다운</td>
								<td class="text-left"><span
									class="badge badge-success badge-pill">관심</span></td>
								<td class="text-left">처리</td>
							</tr>
							<tr class="tr-empty">
								<th scope="row"></th>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr class="tr-empty">
								<th scope="row"></th>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr class="tr-empty">
								<th scope="row"></th>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr class="tr-empty">
								<th scope="row"></th>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
					<!-- datatable end -->
				</div>
			</div>
		</div>
	</div>
</div>
</main>

<script src="${pageContext.request.contextPath}/resources/js/view/main/siteMap.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/view/main/canvas.js"></script>
			
<script>
	
	var invrtr_list_table;
		
	$(document).ready(function() {
        
		//날짜 선택 input 
		$('.date-picker').datepicker({
			format : "yyyy-mm-dd",
			orientation : "bottom",
			language : "kr",
			keyboardNavigation : false,
			autoclose : true,
			changeYear : true,
			changeMonth : true
		});

		$('#start-date-day').datepicker('setDate', '-1M');
		$('#end-date-day').datepicker('setDate', 'today');
						
		datatable_site();
		datatable_invrtr();
		datatable_alarm();

		var categories = [ '20210301', '20210302', '20210303',
				'20210304', '20210305', '20210306', '20210307' ];
		var genList = [ [ '20210301', 12.5 ],
				[ '20210302', 13.5 ], [ '20210303', 13.5 ],
				[ '20210304', 4.5 ], [ '20210305', 8.5 ],
				[ '20210306', 11.5 ], [ '20210307', 13.5 ] ];
		var genTimeList = [ [ '20210301', 2.5 ],
				[ '20210302', 3.5 ], [ '20210303', 3.5 ],
				[ '20210304', 6.5 ], [ '20210305', 2.5 ],
				[ '20210306', 1.5 ], [ '20210307', 3.5 ] ];
		var prnmtrList = [];
	
		drawHighChart_day(categories, genList, genTimeList, prnmtrList);
						
		mapInitialization();	
				
		invrtrChartDraw(100, 30);
						
		$("#panel-site").height($("#row-site").height()-10);
	});

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

	//인버터 현황 데이터 테이블 설정
	function datatable_invrtr() {

		invrtr_list_table = $('#invrtr-list').dataTable({
			fixedHeader : true,
			language : lang_kor,
			destroy : true,
			searching : false,
			paging : false,
			info : false,
			ordering : false,
			scrollResize: true,
			scrollY: $('#row-invrtr').height() - 65,
			scrollCollapse: true,
			responsive: true
			
		});
	}

	//경보이력 데이터 테이블 설정
	function datatable_alarm() {

		$('#alarm-list').dataTable({
			fixedHeader : true,
			language : lang_kor,
			destroy : true,
			searching : false,
			paging : false,
			info : false,
			ordering : false,
			scrollResize: true,
			scrollY: $('#row-invrtr').height() - 65,
			scrollCollapse: true,
			responsive: true
		});
	}

	//일별 그래프 그리기
	function drawHighChart_day(categories, genList, genTimeList, prnmtrList) {
		
		Highcharts.chart('container', {

			title : {
				text : ''
			},
			chart : {
				renderTo : 'container',
				backgroundColor : 'transparent'
				//height : $("#row-chart").height() - $("#panel-hdr-chart").height() - 40
			},
			exporting : {
				enabled : false
			},
			xAxis : {
				categories : categories,
				labels : {
					formatter : function() {
						var data = String(this.value);
						return data.substr(2, 2) + "/" + data.substr(4, 2)
								+ "/" + data.substr(6, 2);
					}
				}
			},
			yAxis : [ {
				// 발전량 Y축 설정
				labels : {
					format : '{value} kWh',
					style : {
						color : Highcharts.getOptions().colors[1]
					}
				},
				title : {
					text : '',
					style : {
						color : Highcharts.getOptions().colors[2]
					}
				},
				opposite : false

			}, {
				// 발전시간 Y축 설정
				labels : {
					format : '{value} h',
					style : {
						color : Highcharts.getOptions().colors[1]
					}
				},
				title : {
					text : '',
					style : {
						color : Highcharts.getOptions().colors[2]
					}
				},
				opposite : true

			} ],

			tooltip : {
				crosshairs : true,
				shared : true
			},

			series : [
			//발전량 데이터 설정
			{
				name : '발전량',
				data : genList,
				yAxis : 0,
				zIndex : 2,
				color : "#A9F5A9",
				marker : {
					fillColor : 'white',
					lineWidth : 2,
					lineColor : Highcharts.getOptions().colors[0]
				},
				tooltip : {
					valueSuffix : ' kWh'
				}
			}, {
				name : '발전시간',
				data : genTimeList,
				yAxis : 1,
				zIndex : 1,
				color : "#81BEF7",
				type : 'column',
				marker : {
					fillColor : 'white',
					lineWidth : 2,
					lineColor : Highcharts.getOptions().colors[0]
				},
				tooltip : {
					valueSuffix : ' h'
				}
			} ]
		});
	}
	
	
	
function invrtrChartDraw(maxGentQnt, gentQnt){
	
	
	
		return  Highcharts.chart('container-invrtr', {
		    chart: {
		        type: 'gauge',
		        backgroundColor: 'transparent',
		        plotBorderWidth: 0,
		        
		        plotBackgroundImage: null,
		        height: 200
		    },

		    title: {
		        text: null
		    },

		    pane: [{
		        startAngle: -45,
		        endAngle: 45,
		        background: null,
		        center: ['25%', '105%'],
		        size: 300
		    }, {
		        startAngle: -45,
		        endAngle: 45,
		        background: null,
		        center: ['75%', '105%'],
		        size: 300
		    }],

		    exporting: {
		        enabled: false
		    },

		    tooltip: {
		        enabled: false
		    },

		    yAxis: [{
		        min: 0,
		        max: 6,
		        minorTickPosition: 'outside',
		        tickPosition: 'outside',
		        labels: {
		            rotation: 'auto',
		            distance: 20
		        },
		        plotBands: [{
		            from: 2,
		            to: 4,
		            color: '#F5F6CE',
		            innerRadius: '100%',
		            outerRadius: '105%'
		        },
		        {
		            from: 4,
		            to: 6,
		            color: '#C02316',
		            innerRadius: '100%',
		            outerRadius: '105%'
		        }],
		        
		        pane: 0,
		        title: {
		            text: '인버터 출력<br/>kw',
		            y: -40,
		            style: {		                
		                fontWeight: 'bold'
		            }
		        }
		    }, {
		        min: 0,
		        max: 100,
		        minorTickPosition: 'outside',
		        tickPosition: 'outside',
		        labels: {
		            rotation: 'auto',
		            distance: 20
		        },
		        plotBands: [{
		            from: 30,
		            to: 60,
		            color: '#F5F6CE',
		            innerRadius: '100%',
		            outerRadius: '105%'
		        },
		        {
		            from: 60,
		            to: 100,
		            color: '#C02316',
		            innerRadius: '100%',
		            outerRadius: '105%'
		        }
		        ],
		        pane: 1,
		        title: {
		            text: '인버터 변환효율<br/>%',
		            y: -40,
		            style: {		                
		                fontWeight: 'bold'
		            }
		        }
		    }],

		    plotOptions: {
		        gauge: {
		            dataLabels: {
		                enabled: true
		            },
		            dial: {
		                radius: '105%',
		                borderColor: 'silver',
		                borderWidth: 1
		            }
		        }
		    },

		    series: [{
		        name: 'Channel A',
		        data: [0],
		        yAxis: 0
		    }, {
		        name: 'Channel B',		        
		        data: [0],
		        yAxis: 1
		    }]

		},

		// Let the music play
		function (chart) {
		    setInterval(function () {
		        if (chart.series) { // the chart may be destroyed
		            var left = chart.series[0].points[0],
		                right = chart.series[1].points[0],		
		                leftVal, rightVal ,
		                inc = (Math.random() - 0.5) * 3;

		            leftVal = left.y + inc;
		            rightVal = leftVal + inc * 40;
		            if (leftVal < 0 || leftVal > 6) {
		                leftVal = left.y - inc;
		            }
		           
		            if (rightVal < 0){
		            	rightVal = rightVal * -1;
		            }
					
		            leftVal = Math.floor(leftVal, 2);
		            rightVal = Math.floor(rightVal, 2);
		            
		            chart.yAxis[0].axisTitle.attr({
		                text: '인버터 출력<br/>' + leftVal + ' kw'
		            });
		            
		            chart.yAxis[1].axisTitle.attr({
		                text: '인버터 변환효율<br/>' + rightVal + ' %'
		            });
		            
		            left.update(leftVal, false);
		            right.update(rightVal, false);
		            chart.redraw();
		        }
		    }, 2000);

		});
}





</script>