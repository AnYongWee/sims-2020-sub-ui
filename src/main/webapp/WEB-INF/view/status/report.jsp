<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script src="${pageContext.request.contextPath}/resources/highcharts/code/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/highcharts-more.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/exporting.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/export-data.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/accessibility.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/heatmap.js"></script>


<link id="myskin" rel="stylesheet" media="screen, print" href="${pageContext.request.contextPath}/resources/css/smart/page-invoice.css">

<main id="js-page-content" role="main" class="page-content">
<ol class="breadcrumb page-breadcrumb"> 
	<li class="breadcrumb-item"><a href="javascript:void(0);">보고서</a></li>
	<li class="breadcrumb-item">월간 보고서</li>
	<li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
</ol>

<div class="container">
	<div data-size="A4">
		<div class="row">
			<div class="col-sm-12">
				<div class="d-flex align-items-center mb-5">
					<h2
						class="keep-print-font fw-500 mb-0 text-primary flex-1 position-relative">
						태양광발전 월간 보고서 (관교동분회) <small class="text-muted mb-0 fs-xs">2021-03-01 ~ 2021-03-31 </small>
					</h2>
				</div>
			</div>
		</div>
		<div class="row mt-2 border rounded">
			<div class="col-md-12 col-lg-4 d-flex border-right">
				<div class="table-responsive">
					<table class="table table-clean table-sm align-self-end mt-3">
						<tbody>
							<tr>
								<td>전월 발전량</td>
								<td>221 kWh</td>
							</tr>
							<tr>
								<td>전월 일사량</td>
								<td>12</td>
							</tr>
							<tr>
								<td>전월 발전시간</td>
								<td>391 시간</td>
							</tr>
							<tr>
								<td>전월 절감액</td>
								<td>12,000 원</td>
							</tr>
							<tr>
								<td>전월 탄소저감량</td>
								<td>302</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="col-md-12 col-lg-4 d-flex border-right">
				<div class="table-responsive">
					<table class="table table-clean table-sm align-self-end mt-3">
						<tbody>
							<tr>
								<td>금월 발전량</td>
								<td>221 kWh</td>
							</tr>
							<tr>
								<td>금월 발전량</td>
								<td>12</td>
							</tr>
							<tr>
								<td>금월 발전시간</td>
								<td>391 시간</td>
							</tr>
							<tr>
								<td>금월 절감액</td>
								<td>12,000 원</td>
							</tr>
							<tr>
								<td>금월 탄소저감량</td>
								<td>302</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="col-md-12 col-lg-4 d-flex">
				<div class="table-responsive">
					<table class="table table-clean table-sm align-self-end mt-3">
						<tbody>
							<tr>
								<td>누적 발전량</td>
								<td>221 kWh</td>
							</tr>
							<tr>
								<td>누적 발전량</td>
								<td>12</td>
							</tr>
							<tr>
								<td>누적 발전시간</td>
								<td>391 시간</td>
							</tr>
							<tr>
								<td>누적 절감액</td>
								<td>12,000 원</td>
							</tr>
							<tr>
								<td>누적 탄소저감량</td>
								<td>302</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 p-0 mt-3">
				<div class="alert alert-primary">
					<div class="d-flex flex-start w-100">
						<div class="d-flex flex-fill">
							<div class="flex-fill mt-3">
								<p>금월 발전량은 전월 대비 5% 증가하였습니다.</p>
								<p>발전량 증감의 원인은 일사량의 15% 증가와 발전시간의 10% 증가 입니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 p-0">
				<div class="card mb-g p-2">
					<div class="card-body">
						<h3>사이트 발전 정보</h3>
						<div class="table-responsive">
							<table class="table mt-2">
								<thead>
									<tr>
										<th class="border-top-0 table-scale-border-bottom fw-700" rowspan="2"></th>
										<th class="border-top-0 table-scale-border-bottom fw-700" rowspan="2">장소명</th>
										<th class="border-top-0 table-scale-border-bottom fw-700" rowspan="2">설비용량</th>
										<th class="border-top-0 table-scale-border-bottom fw-700 text-center" colspan="3">발전량 (kWh)</th>
										<th class="border-top-0 table-scale-border-bottom fw-700 text-center" colspan="3">발전시간 (시간)</th>
										<th class="border-top-0 table-scale-border-bottom fw-700 text-center" colspan="3">절감액 (원)</th>
										<th class="border-top-0 table-scale-border-bottom fw-700 text-center" colspan="3">탄소저감량 (ton)</th>
									</tr>
									<tr>
										<th class="border-top-0 table-scale-border-bottom fw-700">전월</th>
										<th class="border-top-0 table-scale-border-bottom fw-700">금월</th>
										<th class="border-top-0 table-scale-border-bottom fw-700 border-right">누적</th>
										<th class="border-top-0 table-scale-border-bottom fw-700">전월</th>
										<th class="border-top-0 table-scale-border-bottom fw-700">금월</th>
										<th class="border-top-0 table-scale-border-bottom fw-700 border-right">누적</th>
										<th class="border-top-0 table-scale-border-bottom fw-700">전월</th>
										<th class="border-top-0 table-scale-border-bottom fw-700">금월</th>
										<th class="border-top-0 table-scale-border-bottom fw-700 border-right">누적</th>
										<th class="border-top-0 table-scale-border-bottom fw-700">전월</th>
										<th class="border-top-0 table-scale-border-bottom fw-700">금월</th>
										<th class="border-top-0 table-scale-border-bottom fw-700 border-right">누적</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center fw-700">1</td>
										<td class="text-left strong">관교동분회</td>
										<td class="text-left">12kw</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>
									</tr>
									<tr>
										<td class="text-center fw-700">2</td>
										<td class="text-left strong">공적비경로당</td>
										<td class="text-left">12kw</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>
									</tr>
									<tr>
										<td class="text-center fw-700">3</td>
										<td class="text-left strong">금빛경로당</td>
										<td class="text-left">12kw</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>
									</tr>
									<tr>
										<td class="text-center fw-700">4</td>
										<td class="text-left strong">다수곡경로당</td>
										<td class="text-left">12kw</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>

										<td class="text-left">352</td>
										<td class="text-left">342</td>
										<td class="text-left">322</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-12 p-0">
				<div class="card mb-g p-2">
					<div class="card-body">
						<h3>시간&일자별 발전 현황</h3>
						<div id="container"></div>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 p-0">
				<div class="card mb-g p-2">
					<div class="card-body">
						<h3>월간 장애 발생 건수</h3>
						<div class="table-responsive">
							<table class="table mt-2">
								<thead>
									<tr>
										<th class="border-top-0 table-scale-border-bottom fw-700"></th>
										<th class="border-top-0 table-scale-border-bottom fw-700">장소명</th>
										<th class="border-top-0 table-scale-border-bottom fw-700">인버터</th>
										<th class="border-top-0 table-scale-border-bottom fw-700 text-right">이벤트</th>
										<th class="border-top-0 table-scale-border-bottom fw-700 text-right">장애 발생건수</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center fw-700">1</td>
										<td class="text-left strong">관교동분회</td>
										<td class="text-left">인버터#1</td>
										<td class="text-right">34</td>
										<td class="text-right">12</td>
									</tr>
									<tr>
										<td class="text-center fw-700">2</td>
										<td class="text-left strong">공적비경로당</td>
										<td class="text-left">인버터#1</td>
										<td class="text-right">34</td>
										<td class="text-right">12</td>
									</tr>
									<tr>
										<td class="text-center fw-700">3</td>
										<td class="text-left strong">금빛경로당</td>
										<td class="text-left">인버터#1</td>
										<td class="text-right">34</td>
										<td class="text-right">12</td>
									</tr>
									<tr>
										<td class="text-center fw-700">4</td>
										<td class="text-left strong">다수곡경로당</td>
										<td class="text-left">인버터#1</td>
										<td class="text-right">34</td>
										<td class="text-right">12</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="row mt-5">
			<div class="col-sm-12 text-right p-0">
				<p class="mt-2 text-muted mb-0">Solarmon</p>
			</div>
		</div>
	</div>
</div>

</main>

<script>

	$(document).ready(function(){
		
		var series = [];
		for(var i = 0; i < 31; i++){
			for(var j = 0; j < 17; j++){
				const rand_0_99 = Math.floor(Math.random() * 100);
				var serie = [i, j, rand_0_99];
				series.push(serie);
			}
		}
		
		Highcharts.chart('container', {

		    chart: {
		        type: 'heatmap',
		        marginTop: 40,
		        marginBottom: 80,
		        plotBorderWidth: 1,
		        backgroundColor: 'transparent'
		    },


		    title: {
		        text: ''
		    },
		    
		    exporting: {
	            enabled: false
			},
			
			credits: {
		        enabled: false
		    },

		    xAxis: {
		        categories: ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20'
		        	, '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31']
		    },

		    yAxis: {
		        categories: ['20시', '19시', '18시', '17시', '16시', '15시', '14시', '13시', '12시', '11시', '10시', '9시', '8시', '7시', '6시', '5시', '4시'],
		        title: null,
		        reversed: true
		    },

		    accessibility: {
		        point: {
		            descriptionFormatter: function (point) {
		                var ix = point.index + 1,
		                    xName = getPointCategoryName(point, 'x'),
		                    yName = getPointCategoryName(point, 'y'),
		                    val = point.value;
		                return ix + '. ' + xName + ' sales ' + yName + ', ' + val + '.';
		            }
		        }
		    },

		    colorAxis: {
		        min: 0,
		        minColor: '#FFFFFF',
		        maxColor: Highcharts.getOptions().colors[0]
		    },

		    legend: {
		        align: 'right',
		        layout: 'vertical',
		        margin: 0,
		        verticalAlign: 'top',
		        y: 25,
		        symbolHeight: 280
		    },

		    tooltip: {
		        formatter: function () {
		            return '<b>' + getPointCategoryName(this.point, 'x') + '</b> sold <br><b>' +
		                this.point.value + '</b> items on <br><b>' + getPointCategoryName(this.point, 'y') + '</b>';
		        }
		    },

		    series: [{
		        name: 'Sales per employee',
		        borderWidth: 1,
		        data: series,
		        dataLabels: {
		            enabled: true,
		            color: '#8a8787',
		            style: {
                    	fontSize: '8px',
                    	fontWeight: 'normal'
                    }
		        }
		    }],

		    responsive: {
		        rules: [{
		            condition: {
		                maxWidth: 500
		            },
		            chartOptions: {
		                yAxis: {
		                    labels: {
		                        formatter: function () {
		                            return this.value.charAt(0);
		                        }
		                    }
		                }
		            }
		        }]
		    }

		});
	});
	
	
	function getPointCategoryName(point, dimension) {
	    var series = point.series,
	        isY = dimension === 'y',
	        axis = series[isY ? 'yAxis' : 'xAxis'];
	    return axis.categories[point[isY ? 'y' : 'x']];
	}

	
	
</script>