<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<main id="js-page-content" role="main" class="page-content">
                             
<ol class="breadcrumb bg-fusion-300 border border-primary">
	<li class="breadcrumb-item text-white"><a class="text-white" href="#"> <i class="fal fa-bell-exclamation mr-1 fs-md"></i> 경보이력</a></li>	
</ol>

<div class="card border mb-4 mb-xl-0">
	<div class="card-header  py-2 pr-2 d-flex align-items-center flex-wrap">
		<div class="row">
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">인버터</span>
					</div>
					<select class="custom-select form-control" id="search-type">
						<option value="hour">시간별</option>
						<option value="day">일별</option>
						<option value="month">월별</option>						
					</select>
				</div>
			</div>
			
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">이벤트</span>
					</div>
					<select class="custom-select form-control" id="search-type">
						<option value="hour">시간별</option>
						<option value="day">일별</option>
						<option value="month">월별</option>						
					</select>
				</div>
			</div>
			
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">등급</span>
					</div>
					<select class="custom-select form-control" id="search-type">
						<option value="hour">시간별</option>
						<option value="day">일별</option>
						<option value="month">월별</option>						
					</select>
				</div>
			</div>
			
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">상태</span>
					</div>
					<select class="custom-select form-control" id="search-type">
						<option value="hour">시간별</option>
						<option value="day">일별</option>
						<option value="month">월별</option>						
					</select>
				</div>
			</div>

			<div class="col-xs-3 p-1">
				
				<div class="input-group" id="date-picker-day">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">발생일시</span>
					</div>
					                                                       
					<input class="form-control date-picker" id="start-date-day" name="start-date-day" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>
					
					<span class="align-self-center ml-1 mr-1">~</span> 
					
					<input class="form-control date-picker" id="end-date-day" name="end-date-day" value="" type="text" readonly>
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
		<!-- 리스트 -->
		<div class="row">
			<div id="datatable" class="col-xl-12">
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
		</div>
		<!-- end row -->
	</div>
</div>

</main>

<script>
	$(document).ready(function(){
		
	});
	
	
</script>