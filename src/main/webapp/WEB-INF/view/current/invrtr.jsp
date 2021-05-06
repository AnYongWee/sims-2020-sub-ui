<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="${pageContext.request.contextPath}/resources/highcharts/code/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/highcharts-more.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/solid-gauge.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/exporting.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/export-data.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/accessibility.js"></script>
		
<script>
var chartList = new Array();

var gaugeOptions = {
	    chart: {
	        type: 'solidgauge',
	        backgroundColor: 'transparent',
	    },

	    title: null,

	    pane: {
	    	center: ['50%', '80%'],
	        size: '157%',
	        startAngle: -90,
	        endAngle: 90,
	        background: {
	            backgroundColor: Highcharts.defaultOptions.legend.backgroundColor || '#EEE',
	            innerRadius: '60%',
	            outerRadius: '99%',
	            shape: 'arc'
	        }
	    },

	    exporting: {
	        enabled: false
	    },

	    tooltip: {
	        enabled: false
	    },

	    // the value axis
	    yAxis: {
	        stops: [
	            [0.1, 'rgba(204,0,0,0.5)'], 		// red
	            [0.5, 'rgba(204,204,0,0.5)'], 	// yellow
	            [0.9, 'rgba(0,102,0,0.5)'] 		// green
	        ],
	        lineWidth: 0,
	        tickWidth: 0,
	        //minorTickInterval: null,
	        tickAmount: 2,
	        title: {
	            y: -15
	        },
	        labels: {
	            y: 16
	        }
	    },

	    plotOptions: {
	        solidgauge: {
	            dataLabels: {	            	
	                y:80,
	                borderWidth: 0,
	                useHTML: true
	            }
	        }
	    }
	};
	
	function chartDraw(devSeq, maxGentQnt, gentQnt, tdayGentQnt){
		
		return Highcharts.chart('container-' + devSeq, Highcharts.merge(gaugeOptions, {
		    yAxis: {
		        min: 0,
		        max: maxGentQnt,
		        title: {
		            text: gentQnt + ' kw',
		            style: {
		            	color: '#6d869f',		            	
		            	fontSize: '13px',
		            	fontWeight: 'bold'
		            }
		        }
		    },

		    credits: {
		        enabled: false
		    },

		    series: [{
		        name: 'Speed',
		        data: [gentQnt],
		        dataLabels: {
		            format:
		                '<div style="text-align:center">' +
		                '<span class="chart-font" style="font-size:12px">금일발전량</span><br/>' +
		                '<span id="dayGentQnt-' + devSeq + '" class="h2 fw-900">' + tdayGentQnt + '</span><br/>' +
		                '<span class="chart-font" style="font-size:12px;opacity:0.4">kWh</span>' +
		                '</div>'
		        },
		        tooltip: {
		            valueSuffix: ' kWh'
		        }
		    }]

		}));
	
	}
	
</script>
			
<main id="js-page-content" role="main" class="page-content">                   

	<div>    
		<ol class="breadcrumb page-breadcrumb">
			<li class="breadcrumb-item"><a href="javascript:void(0);">인버터</a></li>
			<li class="breadcrumb-item">인버터 현황</li>		
		</ol>
	</div>
	
	<div class="row">
		
		<c:forEach items="${list}" var="row" varStatus="i">							
						
			<div class="col-xl-4">
				<div class="panel">
					<div class="panel-hdr text-primary">
						<h2>
							<span class="icon-stack fs-xxl mr-2"> <i class="base base-7 icon-stack-3x opacity-100 color-primary-500"></i>
								<i class="base base-7 icon-stack-2x opacity-100 color-primary-300"></i>
								<i class="fal fa-clock icon-stack-1x opacity-100 color-white fa-spin"></i>
							</span> ${row.siteNm} / ${row.devNm}
						</h2>
						<div class="panel-toolbar">
							<button
								class="btn btn-panel bg-transparent fs-xl w-auto h-auto rounded-0 waves-effect waves-themed" data-action="panel-collapse" data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse">
								<i class="fal fa-window-minimize"></i>
							</button>					
							<button class="btn btn-panel bg-transparent fs-xl w-auto h-auto rounded-0 waves-effect waves-themed" data-action="panel-close" data-toggle="tooltip" data-offset="0,10" data-original-title="Close">
								<i class="fal fa-times"></i>
							</button>
						</div>
					</div>
					<div class="panel-container collapse show" style="">
						<div class="panel-content">
							<div class="row align-items-center">
								<div class="col-sm-2 text-center">
					                <span class="d-block" style="font-size:12px">전일<br/>발전량</span>
					                <span class="d-block fw-900" id="beforeGentQnt-${row.devSeq}" style="font-size:15px">${row.beforeGentQnt}</span>
					                <span style="font-size:12px;opacity:0.4">kWh</span>		                
								</div>
								<figure class="highcharts-figure col-sm-8 text-center">
									<div id="container-${row.devSeq}" class="chart-container" style="height:150px;"></div>					    			   
								</figure>
								<div class="col-sm-2 text-center pl-0 pr-0">
									<span class="d-block" style="font-size:12px">누적<br/>발전량</span>
					                <span class="d-block h2 fw-900" id="accumGentQnt-${row.devSeq}" style="font-size:15px">${row.accumGentQnt}</span>
					                <span style="font-size:12px;opacity:0.4">kWh</span>
								</div>
							</div>
							<div class="row gauge-bottom-lable">
								<div class="col-5 text-right">
									<span class="d-block" id="dcVolt-${row.devSeq}" style="font-size:12px">${row.dcVolt} V (DC)</span>
									<span class="d-block" id="dcCurr-${row.devSeq}" style="font-size:12px">${row.dcCurr} A (DC)</span>
								</div>
								<div class="col-2 text-center pt-2">
									<span class="d-block" style="font-size:12px">▶</span>
								</div>
								<div class="col-5 text-left">
									<span class="d-block" id="acVlot-${row.devSeq}" style="font-size:12px">${row.acVlot} V (AC)</span>
									<span class="d-block" id="acCurr-${row.devSeq}" style="font-size:12px">${row.acCurr} A (AC)</span>
								</div>
							</div>					
						</div>
					</div>
				</div>
			</div>
		
			<script>				
				var obj = new Object();
				
				obj.devSeq = ${row.devSeq};
				obj.chart = chartDraw(${row.devSeq}, ${row.instlCpct},  ${row.gentQnt}, ${row.tdayGentQnt});				 
				
				chartList.push(obj);
			</script>
		</c:forEach>
	</div>
	
</main>

<script>
	$(document).ready(function(){
		
		setInterval(function () {
		$.ajax({
			type: "POST",
			url: "/ajax/getInvrtrOprtList.do",		
			dataType: 'json',			
			global: false,
			success : function(data) {
				
				if (data.list){
					
					for (var i = 0; i < data.list.length; i++){
						var devSeq = data.list[i].devSeq;
						var gentQnt = data.list[i].gentQnt;
						var beforeGentQnt = data.list[i].beforeGentQnt;
						var accumGentQnt = data.list[i].accumGentQnt;
						var tdayGentQnt = data.list[i].tdayGentQnt;
						var dcVolt = data.list[i].dcVolt;
						var dcCurr = data.list[i].dcCurr;
						var acVlot = data.list[i].acVlot;
						var acCurr = data.list[i].acCurr;
						
						chartList.forEach(function(obj){
							
							if (obj.devSeq == devSeq){
								
								if (obj){
									
									//테스트를 위해 랜덤 함수 추가
									//gentQnt = Math.floor(Math.random( )*3 + 1)
									
									obj.chart.series[0].points[0].update(gentQnt);
									
									obj.chart.yAxis[0].update({
						                title:{
						                    text: gentQnt + " kw"
						                }
						            });
									
									$('#beforeGentQnt-' + devSeq).html(beforeGentQnt);
									$('#accumGentQnt-' + devSeq).html(accumGentQnt);
									
									$('#dayGentQnt-' + devSeq).html(tdayGentQnt);
									
									$('#dcVolt-' + devSeq).html(dcVolt +  ' V (DC)');
									$('#dcCurr-' + devSeq).html(dcCurr +  ' A (DC)');
									
									$('#acVlot-' + devSeq).html(acVlot +  ' V (DC)');
									$('#acCurr-' + devSeq).html(acCurr +  ' A (DC)');
								}
								
								return false;
							}
						});
					}
					
				}else{
					console.log(data.resultMessage);					    						
				}
			},
			error: function(e){
				console.log(e);
			}
		});
		
		}, 1000 * 300); 
		
	});
		
	function search(){		
		location.reload();
	}
	
	
</script>
