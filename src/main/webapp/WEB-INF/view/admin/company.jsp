<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main id="js-page-content" role="main" class="page-content">

<div>                             
	<ol class="breadcrumb bg-fusion-300 border border-primary">
		<li class="breadcrumb-item text-white"><a class="text-white" href="#"> <i class="fal fa-chart-line mr-1 fs-md"></i> 관리</a></li>
		<li class="breadcrumb-item text-white"><a class="text-white" href="#"> <i class="fal fa-user-tie mr-1 fs-md"></i> 고객사관리</a></li>	
	</ol>
</div>

<div class="card border mb-4 mb-xl-0">
	<div class="card-header  py-2 pr-2 d-flex align-items-center flex-wrap">
		<div class="row">
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable-sm">고객사명</span>
					</div>
					<input type="text" id="searchCustNm" class="form-control" placeholder="">
				</div>
			</div>

			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable-sm">사업자등록번호</span>
					</div>
					<input type="text" id="searchBizNo" class="form-control" placeholder="" >
				</div>
			</div>
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable-sm">담당자명</span>
					</div>
					<input type="text" id="searchCntPsnNm" class="form-control" placeholder="" >
				</div>
			</div>
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable-sm">고객유형</span>
					</div>
					<select class="custom-select form-control" id="searchCustTypeCd">
						<option value="" selected>전체</option>
						<c:forEach items="${custTypeCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>	
					</select>
				</div>
			</div>
			
			<div class="col-xs-3 p-1">
				
				<div class="input-group" id="date-picker-day">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable-sm">등록일시</span>
					</div>
					                                                       
					<input class="form-control date-picker" id="start-date-day" name="start-date-day" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>
					
					<span class="align-self-center ml-1 mr-1">~</span> 
					
					<input class="form-control date-picker" id="end-date-day" name="end-date-day" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>
				</div>
			
			</div>
			
			<div class="col-xs-3 p-1">
				<button type="button" id="btnSearch"
					class="btn btn-success btn-pills waves-effect waves-themed ml-2">
					<i class="fal fa-search mr-1"></i>검색
				</button>
			</div>
		</div>
	</div>
	<div class="card-body">
		<!-- row -->
		<div class="row">
			<div class="col-xl-12">
				<!-- datatable start -->
				<table class="table table-bordered table-hover table-striped w-100" id="company-list">
						<thead>							
							<tr class="bg-fusion-300">
								<th>일련번호</th>
								<th>고객사명</th>
								<th>사업자등록번호</th>
								<th>고객유형</th>
								<th>전화번호</th>
								<th>담당자명</th>
								<th>담당자연락처</th>
								<th>등록일시</th>										
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
		
		$('#start-date-day').datepicker('setDate', '-1Y');
		$('#end-date-day').datepicker('setDate', 'today');	
		
		//조회버튼 클릭
		$("#btnSearch").click(function(){
			search();
		});		
		
		search();
	});
	
	//데이터 조회
	function search(){		
		datatableInitialization();
	}
	
	//데이터 테이블 설정
	function datatableInitialization() {
		
		var startDate = $("#start-date-day").val();
		startDate = startDate.replace(/-/gi, "");
		
		var endDate = $("#end-date-day").val();
		endDate = endDate.replace(/-/gi, "");
		
        var myTable = $('#company-list').dataTable(
        {       
            fixedHeader: true,
            destroy: true,
            language: lang_kor,            
            select: 'single',            
            bFilter : false,
            responsive: true,
            searching: false,            
            scrollCollapse: true,
            paging : true,
            serverSide : true,
            
            ajax : {
				url : '/ajax/getCompanyList.do',
				type : 'POST',				
				data : {					
					searchCustNm : $("#searchCustNm").val(),
					searchBizNo : $("#searchBizNo").val(),
					searchCntPsnNm : $("#searchCntPsnNm").val(),
					searchCustTypeCd : $("#searchCustTypeCd").val(),
					startDate : startDate,
					endDate : endDate
				},						
				dataSrc: function ( data ) {	                
	                return data.list;
	            }     
			},
			
            columns: [
            	{ id: "custSeq", data: "custSeq", "visible": false, "searchable": false, type: "readonly", className : 'text-right font-weight-bold' },
            	{ id: "custNm", data: "custNm", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
            	{ id: "bizNo", data: "bizNo", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
            	{ id: "custType", data: "custType", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
            	{ id: "telNo", data: "telNo", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
            	{ id: "cntPsnNm", data: "cntPsnNm", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
            	{ id: "cntPsnHpno", data: "cntPsnHpno", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },            	
            	{ id: "cretDt", data: "cretDt", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' }
            ]
        });
	}

</script>