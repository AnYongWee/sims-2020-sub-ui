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
						<span class="input-group-text search-lable-sm m-0 p-0 pl-2">사업자번호</span>
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
								<th class="text-center align-middle font-weight-bold">일련번호</th>
								<th class="text-center align-middle font-weight-bold">고객사명</th>
								<th class="text-center align-middle font-weight-bold">사업자등록번호</th>
								<th class="text-center align-middle font-weight-bold">고객유형</th>
								<th class="text-center align-middle font-weight-bold">전화번호</th>
								<th class="text-center align-middle font-weight-bold">담당자명</th>
								<th class="text-center align-middle font-weight-bold">담당자연락처</th>
								<th class="text-center align-middle font-weight-bold">등록일시</th>										
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


<div class="modal fade" id="info-modal" tabindex="-1" role="dialog" style="display: none;" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<form id="frm-cust-info" name="frm-cust-info" role="form" data-toggle="validator"> 
			
				<div class="modal-header">
					<h4 class="modal-title">고객사 정보 추가</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true"><i class="fal fa-times"></i></span>
					</button>
				</div>
				<div class="modal-body">			
					<div class="panel-content">
						 
							<input type="hidden" id="info-custSeq" name="info-custSeq" >
							                                        
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">고객사명</span></div>
									<input type="text" id="info_custNm" name="info_custNm" class="form-control" aria-label="Username" maxlength="50" required>
								</div>           
							</div>					
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md" >사업자번호</span></div>
									<input type="number" id="info_bizNo" name="info_bizNo" class="form-control" aria-label="Username" placeholder="숫자만 입력 해주세요." maxlength="14">
								</div>           
							</div>	
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">고객유형</span></div>
									<select class="custom-select form-control" id="info_custTypeCd" name="info_custTypeCd" required>
										<option value="" selected>선택</option>
										<c:forEach items="${custTypeCodes}" var="row" varStatus="i">
											<option value="${row.dtlCd}">${row.dtlCdNm}</option>
										</c:forEach>	
									</select>
								</div>           
							</div>	
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">전화번호</span></div>
									<input type="number" id="info_tlNo" name="info_tlNo" class="form-control" aria-label="Username" placeholder="숫자만 입력 해주세요." maxlength="200">
								</div>           
							</div>		
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">팩스번호</span></div>
									<input type="number" id="info_fax" name="info_fax" class="form-control" aria-label="Username" placeholder="숫자만 입력 해주세요." maxlength="14">
								</div>           
							</div>	
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">담당자명</span></div>
									<input type="text" id="info_cntPsnNm" name="info_cntPsnNm" class="form-control" aria-label="Username" maxlength="100">
								</div>           
							</div>	
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">담당자직급</span></div>
									<input type="text" id="info_cntPsnPos" name="info_cntPsnPos" class="form-control" aria-label="Username" maxlength="100">
								</div>           
							</div>	
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">담당자휴대폰</span></div>
									<input type="number" id="info_cntPsnHpNo" name="info_cntPsnHpNo" class="form-control" aria-label="Username" placeholder="숫자만 입력 해주세요." maxlength="200">
								</div>           
							</div>		
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">담당자이메일</span></div>
									<input type="email" id="info_cntPsnEml" name="info_cntPsnEml" class="form-control" aria-label="Username" placeholder="이메일 형식을 입력 해주세요." maxlength="200">
								</div>           
							</div>			               
					</div>               
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary waves-effect waves-themed" >저장</button>
					<button type="button" class="btn btn-secondary waves-effect waves-themed" data-dismiss="modal">닫기</button>				
				</div>
			</form>
		</div>		  	
	</div>
</div>

</main>

<script>
	var actionUrl = "";
	
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

		$('#start-date-day').datepicker('setDate', '-1Y');
		$('#end-date-day').datepicker('setDate', 'today');
		
		$('#frm-cust-info').submit(function (event) {
			
			event.preventDefault();
			
		    if ($("#frm-cust-info")[0].checkValidity() === false) {
		    	
		        event.stopPropagation();
		        
		    } else {		        
		    	//유효성 검사 성공시 저장 처리
		    	$.ajax({
					type: "POST",
					url: actionUrl,		
					dataType: 'json',
					data: $("#frm-cust-info").serializeArray(),
					success : function(data) {
						
						if (data.resultCode == 0){
							alert("저장 되었습니다.");						
							
							//등록 모달 숨기기
							$('#info-modal').modal("hide");
							
							//데이터테이블 초기화
							datatableInitialization();
						}else{
							alert(data.resultMessage);
						}
					},
					error: function(e){
						alert("요청에 실패 하였습니다.");
					}
				});
		    }
		    $('#frm-cust-info').addClass('was-validated');
		});
		
		
		//조회버튼 클릭
		$("#btnSearch").click(function() {
			search();
		});

		search();
		
	});

	//데이터 조회
	function search() {
		datatableInitialization();
	}

	//데이터 테이블 설정	
	function datatableInitialization() {

		var startDate = $("#start-date-day").val();
		startDate = startDate.replace(/-/gi, "");

		var endDate = $("#end-date-day").val();
		endDate = endDate.replace(/-/gi, "");

		var myTable = $('#company-list')
				.dataTable(
						{
							fixedHeader : true,
							destroy : true,
							language : lang_kor,
							select : 'single',
							bFilter : false,
							responsive : true,
							searching : false,
							scrollCollapse : true,
							paging : true,
							serverSide : true,							
							dom : "<'row mb-3'<'col-sm-12 col-md-6 d-flex align-items-center justify-content-start'f><'col-sm-12 col-md-6 d-flex align-items-center justify-content-end'B>>"
									+ "<'row'<'col-sm-12'tr>>"
									+ "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
							buttons : [ {
								text : '<i class="fal fa-plus mr-1"></i> 추가',								
								action : function(e, dt, node, config) {
									actionUrl = "/ajax/newCompanyInfo.do";
									$('#info-modal').modal("show");
								},
								className : 'btn-success btn-sm mr-1'
							}, {
								extend : 'selected',
								text : '<i class="fal fa-edit mr-1"></i> 수정',
								action : function(e, dt, node, config) {
									
									var custSeq = dt.rows( { selected: true }).data()[0].custSeq;
                                    
									actionUrl = "/ajax/updateCompanyInfo.do";
									$('#info-modal').modal("show");
								},
								className : 'btn-primary btn-sm mr-1'
							}, {
								extend : 'selected',
								text : '<i class="fal fa-times mr-1"></i> 삭제',
								name : 'delete',
								className : 'btn-primary btn-sm mr-1'
							} ],
							ajax : {
								url : '/ajax/getCompanyList.do',
								type : 'POST',
								data : {
									searchCustNm : $("#searchCustNm").val(),
									searchBizNo : $("#searchBizNo").val(),
									searchCntPsnNm : $("#searchCntPsnNm").val(),
									searchCustTypeCd : $("#searchCustTypeCd")
											.val(),
									startDate : startDate,
									endDate : endDate
								},
								dataSrc : function(data) {
									return data.list;
								}
							},

							columns : [ {
								id : "custSeq",
								data : "custSeq",
								"visible" : false,
								"searchable" : false,
								type : "readonly",
								className : 'text-right font-weight-bold'
							}, {
								id : "custNm",
								data : "custNm",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center font-weight-bold'
							}, {
								id : "bizNo",
								data : "bizNo",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center font-weight-bold'
							}, {
								id : "custType",
								data : "custType",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center font-weight-bold'
							}, {
								id : "telNo",
								data : "telNo",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center font-weight-bold'
							}, {
								id : "cntPsnNm",
								data : "cntPsnNm",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center font-weight-bold'
							}, {
								id : "cntPsnHpno",
								data : "cntPsnHpno",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center font-weight-bold'
							}, {
								id : "cretDt",
								data : "cretDt",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center font-weight-bold'
							} 
						]
					});
	}
</script>