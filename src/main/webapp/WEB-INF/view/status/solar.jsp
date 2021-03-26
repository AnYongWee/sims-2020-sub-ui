<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script src="${pageContext.request.contextPath}/resources/highcharts/code/highcharts.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/highcharts-more.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/exporting.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/export-data.js"></script>
<script src="${pageContext.request.contextPath}/resources/highcharts/code/modules/accessibility.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/view/status/solar_hour.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/view/status/solar_day.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/view/status/solar_month.js"></script>

<main id="js-page-content" role="main" class="page-content">
                             
<ol class="breadcrumb bg-fusion-300 border border-primary">
	<li class="breadcrumb-item text-white"><a class="text-white" href="#"> <i class="fal fa-chart-line mr-1 fs-md"></i> 통계</a></li>	
</ol>

<div class="card border mb-4 mb-xl-0">
	<div class="card-header  py-2 pr-2 d-flex align-items-center flex-wrap">
		<div class="row">
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">주기</span>
					</div>
					<select class="custom-select form-control" id="search-type">
						<option value="hour">시간별</option>
						<option value="day">일별</option>
						<option value="month">월별</option>						
					</select>
				</div>
			</div>

			<div class="col-xs-3 p-1">
			
				<div class="input-group" id="date-picker-hour">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">기간</span>
					</div>					                                                       
					<input class="form-control date-picker" id="start-date-hour" name="start-date-hour" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>
				</div>
				
				<div class="input-group" id="date-picker-day">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">기간</span>
					</div>
					                                                       
					<input class="form-control date-picker" id="start-date-day" name="start-date-day" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>
					
					<span class="align-self-center ml-1 mr-1">~</span> 
					
					<input class="form-control date-picker" id="end-date-day" name="end-date-day" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>
				</div>
				
				<div class="input-group" id="date-picker-month">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">기간</span>
					</div>
					                                                       
					<input class="form-control date-picker-month" id="start-date-month" name="start-date-month" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>
					
					<span class="align-self-center ml-1 mr-1">~</span> 
					
					<input class="form-control date-picker-month" id="end-date-month" name="end-date-month" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>
				</div>
				
			</div>
			
			<div class="col-xs-3 p-1">
				<button type="button" id="btnSearch" class="btn btn-success bg-success-500 btn-pills waves-effect waves-themed ml-2">
					<i class="fal fa-search mr-1"></i>조회
				</button>
			</div>
		</div>
	</div>
	<div class="card-body">
		<!-- 그래프 -->
		<div class="row">
			<figure class="col-xl-12 highcharts-figure">
			    <div id="container" class="chart"></div>			   
			</figure>
		</div>
		<!-- 리스트 -->
		<div class="row">
			<div id="datatable-hour" class="col-xl-12">
				<!-- datatable start -->
				<table class="table table-bordered table-hover table-striped w-100" id="hour-list">
					<thead>							
						<tr class="bg-fusion-300">
							<th class="text-center align-middle font-weight-bold">시간(시)</th> 
							<th class="text-center align-middle font-weight-bold">발전량(kWh)</th>
							<th class="text-center align-middle font-weight-bold">누적발전량(kWh)</th>
							<th class="text-center align-middle font-weight-bold">발전효율(%)</th>
							<th class="text-center align-middle font-weight-bold">누적발전효율(%)</th>
							<th class="text-center align-middle font-weight-bold">인버터효율(%)</th>
							<th class="text-center align-middle font-weight-bold">시스템효율(%)</th>								
							<th class="text-center align-middle font-weight-bold">총절감액(원)</th>
						</tr>
					</thead>
					<tbody>
					<!-- 내용 -->
					</tbody>
				</table>				
				<!-- datatable end -->				
			</div>			
			<div id="datatable-day" class="col-xl-12">
				<!-- datatable start -->
				<table class="table table-bordered table-hover table-striped w-100" id="day-list">
					<thead>							
						<tr class="bg-fusion-300">
							<th class="text-center align-middle font-weight-bold">일자</th>
							<th class="text-center align-middle font-weight-bold">발전량(kWh)</th>
							<th class="text-center align-middle font-weight-bold">누적발전량(kWh)</th>
							<th class="text-center align-middle font-weight-bold">발전효율(%)</th>
							<th class="text-center align-middle font-weight-bold">누적발전효율(%)</th>
							<th class="text-center align-middle font-weight-bold">인버터효율(%)</th>
							<th class="text-center align-middle font-weight-bold">시스템효율(%)</th>								
							<th class="text-center align-middle font-weight-bold">총절감액(원)</th>
						</tr>
					</thead>
					<tbody>
					<!-- 내용 -->
					</tbody>
				</table>				
				<!-- datatable end -->
			</div>
			<div id="datatable-month" class="col-xl-12">
				<!-- datatable start -->
				<table class="table table-bordered table-hover table-striped w-100" id="month-list">
					<thead>							
						<tr class="bg-fusion-300">
							<th class="text-center align-middle font-weight-bold">일자</th>
							<th class="text-center align-middle font-weight-bold">발전량(kWh)</th>
							<th class="text-center align-middle font-weight-bold">누적발전량(kWh)</th>
							<th class="text-center align-middle font-weight-bold">발전효율(%)</th>
							<th class="text-center align-middle font-weight-bold">누적발전효율(%)</th>
							<th class="text-center align-middle font-weight-bold">인버터효율(%)</th>
							<th class="text-center align-middle font-weight-bold">시스템효율(%)</th>								
							<th class="text-center align-middle font-weight-bold">총절감액(원)</th>
						</tr>
					</thead>
					<tbody>
					<!-- 내용 -->
					</tbody>
				</table>				
				<!-- datatable end -->
			</div>
		</div>
		<!-- end row -->
	</div>
</div>

</main>

<script>
	$(document).ready(function(){
		
		//날짜 선택 input 
		$('.date-picker').datepicker({
			format: "yyyy-mm-dd",		    
		    orientation: "bottom",
		    language: "kr",
		    keyboardNavigation: false,		    
		    autoclose: true,
		    changeYear: true,
            changeMonth: true            
        });	
		
		//월 선택 input 
		$('.date-picker-month').datepicker({
			format: "yyyy-mm",		    
		    orientation: "bottom",
		    startView: "months", 
		    minViewMode: "months",
		    language: "kr",
		    keyboardNavigation: false,		    
		    autoclose: true,
		    changeYear: true,
            changeMonth: true            
        });	
		
		//조회버튼 클릭
		$("#btnSearch").click(function(){
			search();
		});
		
		//검색기간 변경 이벤트
		$("#search-type").change(function(){
			searchTypeChange();
		});
		
		searchTypeChange();
	});
	
	//데이터 조회
	function search(){
		
		var searchType = $("#search-type option:selected").val();
		
		if(searchType == "hour"){
			datatable_hour();
		}else if(searchType == "day"){
			datatable_day();								
		}else if(searchType == "month"){
			datatable_month();
		}
	}
	
	//주기 검색조건 변경 처리
	function searchTypeChange(){		
		
		var searchType = $("#search-type option:selected").val();
		
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
		
		search();
	}
	
</script>