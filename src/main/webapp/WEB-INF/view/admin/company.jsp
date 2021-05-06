<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main id="js-page-content" role="main" class="page-content">

<div>                           
	<ol class="breadcrumb page-breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0);">관리</a></li>
		<li class="breadcrumb-item">고객사관리</li>                            
		<li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
	</ol>
</div>

<div class="card border mb-4 mb-xl-0">
	<div class="card-header  py-2 pr-2 d-flex align-items-center flex-wrap">
	
		<div class="row w-100">
			<div class="col-lg-3 p-1">
				<div class="form-group">
					<label class="form-label ml-1" for="validationServer01">고객사명</label>					
					<input type="text" id="searchCustNm" class="form-control" placeholder="">
				</div>
			</div>

			<div class="col-lg-3 p-1">
				<div class="form-group">
					<label class="form-label ml-1" for="validationServer01">사업자번호</label>					
					<input type="text" id="searchBizNo" class="form-control" placeholder="" >
				</div>
			</div>
			<div class="col-lg-3 p-1">
				<div class="form-group">
					<label class="form-label ml-1" for="validationServer01">담당자명</label>					
					<input type="text" id="searchCntPsnNm" class="form-control" placeholder="" >
				</div>
			</div>
			<div class="col-lg-3 p-1">
				<div class="form-group">
					<label class="form-label ml-1" for="validationServer01">고객유형</label>					
					<select class="custom-select form-control" id="searchCustTypeCd">
						<option value="" selected>전체</option>
						<c:forEach items="${custTypeCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>	
					</select>
				</div>
			</div>	
		</div>
		
		<div class="row w-100 mt-2">
		
			<div class="col-xl-3 col-lg-12 p-1">
				<div class="form-group">
					<label class="form-label ml-1" for="validationServer01">사업유형</label>					
					<select class="custom-select form-control" id="searchBizTypeCd">
						<option value="" selected>전체</option>		
						<c:forEach items="${bizTypeCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>						
					</select>
				</div>
			</div>
			
			<div class="col-xl-3 col-lg-12 p-1">
				<label class="form-label ml-1" for="validationServer01">등록시작일시</label>
				<div class="input-group" id="date-picker-day">
					<input class="form-control date-picker" id="start-date-day" name="start-date-day" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>						
				</div>
			</div>
			
			<div class="col-xl-3 col-lg-12 p-1">
				<label class="form-label ml-1" for="validationServer01">등록종료일시</label>
				<div class="input-group" id="date-picker-day">						
					<input class="form-control date-picker" id="end-date-day" name="end-date-day" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>
				</div>
			</div>
			
			<div class="col-xl-3 col-lg-12 p-1">
				<div class="w-100 h-100 d-flex align-items-end">
					<button type="button" id="btnSearch" class="btn btn-success btn-pills waves-effect waves-themed ml-2">				
						<i class="fal fa-search mr-1"></i>검색
					</button>
				</div>
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
								<th class="text-center align-middle font-weight-bold">관리</th>								
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
					<h4 class="modal-title">고객사 정보</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true"><i class="fal fa-times"></i></span>
					</button>
				</div>
				<div class="modal-body">			
					<div class="panel-content">
						 
							<input type="hidden" id="i_custSeq" name="i_custSeq" >
							                                        
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">고객사명</span></div>
									<input type="text" id="i_custNm" name="i_custNm" class="form-control" aria-label="Username" maxlength="50" required>
								</div>           
							</div>					
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md" >사업자번호</span></div>
									<input type="number" id="i_bizNo" name="i_bizNo" class="form-control" aria-label="Username" placeholder="숫자만 입력 해주세요." maxlength="14">
								</div>           
							</div>	
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">고객유형</span></div>
									<select class="custom-select form-control" id="i_custTypeCd" name="i_custTypeCd" required>
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
									<input type="number" id="i_tlNo" name="i_tlNo" class="form-control" aria-label="Username" placeholder="숫자만 입력 해주세요." maxlength="200">
								</div>           
							</div>		
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">팩스번호</span></div>
									<input type="number" id="i_fax" name="i_fax" class="form-control" aria-label="Username" placeholder="숫자만 입력 해주세요." maxlength="14">
								</div>           
							</div>	
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">담당자명</span></div>
									<input type="text" id="i_cntPsnNm" name="i_cntPsnNm" class="form-control" aria-label="Username" maxlength="100">
								</div>           
							</div>	
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">담당자직급</span></div>
									<input type="text" id="i_cntPsnPos" name="i_cntPsnPos" class="form-control" aria-label="Username" maxlength="100">
								</div>           
							</div>	
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">담당자휴대폰</span></div>
									<input type="number" id="i_cntPsnHpNo" name="i_cntPsnHpNo" class="form-control" aria-label="Username" placeholder="숫자만 입력 해주세요." maxlength="200">
								</div>           
							</div>		
							<div class="form-group">						
								<div class="input-group">
									<div class="input-group-prepend"><span class="input-group-text lable-md">담당자이메일</span></div>
									<input type="email" id="i_cntPsnEml" name="i_cntPsnEml" class="form-control" aria-label="Username" placeholder="이메일 형식을 입력 해주세요." maxlength="200">
								</div>           
							</div>	
							
							<div class="form-group">									
								<label class="form-label" for="button-addon2">사이트 이미지 1</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="i_img_1" name="i_img_1">
									<label id="i_img_lb_1" name="i_img_lb_1" class="custom-file-label" for="customFile">이미지</label>
								</div>																		
							</div>
							<div class="form-group">	
								<label class="form-label" for="button-addon2">사이트 이미지 2</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="i_img_2" name="i_img_2">
									<label id="i_img_lb_2" name="i_img_lb_2" class="custom-file-label" for="customFile">이미지</label>
								</div>																		
							</div>			
							<div class="form-group">	
								<label class="form-label" for="button-addon2">사이트 이미지 3</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" id="i_img_3" name="i_img_3">
									<label id="i_img_lb_3" name="i_img_lb_3" class="custom-file-label" for="customFile">이미지</label>
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
	var actionUrl, myTable;
	
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
		    	
		    	// Get form
		        var form = $('#frm-cust-info')[0];

			    // Create an FormData object 
		        var data = new FormData(form);
			    
		    	//유효성 검사 성공시 저장 처리
		    	$.ajax({
					type: "POST",
					url: actionUrl,		
					enctype: 'multipart/form-data',
					processData: false,
		            contentType: false,
					dataType: 'json',
					global: false,
					data: data,
					success : function(data) {
						
						if (data.resultCode == 0){
							Swal.fire("저장 되었습니다.");						
									                    
							//등록 모달 숨기기
							$('#info-modal').modal("hide");
							
							//데이터테이블 초기화
							datatableInitialization();
						}else{
							Swal.fire({
								title: "고객사 정보 저장 실패",
								text: data.resultMessage,
								type: "warning",				                        
								confirmButtonText: "확인"
							});							
						}
					},
					error: function(e){
						Swal.fire("요청에 실패 하였습니다.");						
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
		if (myTable){
			myTable.api().ajax.reload();						
		}else{
			datatableInitialization();	
		}
	}

	//데이터 테이블 설정	
	function datatableInitialization() {

		myTable = $('#company-list')
				.dataTable(
						{
							fixedHeader : true,
							destroy : true,
							language : lang_kor,							
							bFilter : false,
							responsive : true,
							searching : false,
							scrollCollapse : true,
							paging : true,
							serverSide : true,			
							order: [[ 7, "desc" ]],
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
							}],
							ajax : {
								url : '/ajax/getCompanyList.do',
								type : 'POST',
								data : {
									searchCustNm : function() { return $("#searchCustNm").val()},
									searchBizNo : function() { return $("#searchBizNo").val()},
									searchCntPsnNm : function() { return $("#searchCntPsnNm").val()},
									searchCustTypeCd : function() { return $("#searchCustTypeCd").val()},
									startDate : function() { $("#start-date-day").val().replace(/-/gi, "")},
									endDate : function() { $("#end-date-day").val().replace(/-/gi, "")}
								},
								dataSrc : function(data) {
									return data.list;
								}
							},

							columns : [ {
								id : "custSeq",
								data : "custSeq",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center'
							}, {
								id : "custNm",
								data : "custNm",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center'
							}, {
								id : "bizNo",
								data : "bizNo",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center'
							}, {
								id : "custType",
								data : "custType",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center'
							}, {
								id : "telNo",
								data : "telNo",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center'
							}, {
								id : "cntPsnNm",
								data : "cntPsnNm",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center'
							}, {
								id : "cntPsnHpno",
								data : "cntPsnHpno",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center'
							}, {
								id : "cretDt",
								data : "cretDt",
								"visible" : true,
								"searchable" : false,
								type : "readonly",
								className : 'text-center'
							}, {
								data : 'custSeq',		
								className : 'text-center',
								render : function(data, type, row, meta) {
									if (type === 'display') {
										
										data = '<a href="javascript:loadInfo(\''
											+ row.custSeq
											+ '\');" class="btn btn-outline-primary btn-sm btn-icon rounded-circle waves-effect waves-themed mr-2">';
										data += '<i class="fal fa-edit"></i>';
										data += '</a>';
										
										data += '<a href="javascript:delInfo(\''
											+ row.custSeq
											+ '\');" class="btn btn-outline-danger btn-sm btn-icon rounded-circle waves-effect waves-themed">';
										data += '<i class="fal fa-trash-alt"></i>';
										data += '</a>';
									}
									return data;
								}
							}
						]
					});
	}
	
	

	//고객사 정보 조회
	function loadInfo(seq){
		
		$.ajax({
			type: "POST",
			url: "/ajax/getCompanyInfo.do",		
			dataType: 'json',
			global: false,
			data: {
				custSeq: seq
			},
			success : function(data) {
				
				if (data.resultCode == 0){
					
					$('#frm-cust-info [name="i_custSeq"]').val(data.info.custSeq);
					$('#frm-cust-info [name="i_custNm"]').val(data.info.custNm);
					$('#frm-cust-info [name="i_bizNo"]').val(data.info.bizNo);
					$('#frm-cust-info [name="i_custTypeCd"]').val(data.info.custTypeCd);
					$('#frm-cust-info [name="i_tlNo"]').val(data.info.telNo);
					$('#frm-cust-info [name="i_fax"]').val(data.info.faxNo);
					$('#frm-cust-info [name="i_cntPsnNm"]').val(data.info.cntPsnNm);
					$('#frm-cust-info [name="i_cntPsnPos"]').val(data.info.cntPsnPos);
					$('#frm-cust-info [name="i_cntPsnHpNo"]').val(data.info.cntPsnHpno);
					$('#frm-cust-info [name="i_cntPsnEml"]').val(data.info.cntPsnEml);
					$('#frm-cust-info [name="i_img_lb_1"]').html(data.info.imgFileNm1);
					$('#frm-cust-info [name="i_img_lb_2"]').html(data.info.imgFileNm2);
					$('#frm-cust-info [name="i_img_lb_3"]').html(data.info.imgFileNm3);
				}else{
					Swal.fire({
						title: "고객사 정보 조회 실패",
						text: data.resultMessage,
						type: "error",				                        
						confirmButtonText: "확인"
					});							
				}
			},
			error: function(e){
				Swal.fire("요청에 실패 하였습니다.");						
			}
		});
		
		actionUrl = "/ajax/updateCompanyInfo.do";
		$('#info-modal').modal("show");		
	}
	
	function delInfo(seq){
		
		Swal.fire({
			title : "고객사 정보 삭제",
			text : "고객사 정보를 사제 합니다. 계속 진행 하시겠습니까?",
			type : "warning",
			showCancelButton : true,
			confirmButtonText : "확인",
			cancelButtonText : "취소"
		}).then(
			function(result) {
				if (result.value) {
					$.ajax({
						type : "POST",
						url : "/ajax/delCompanyInfo.do",
						dataType : 'json',
						data : {
							custSeq : seq
						},
						success : function(data) {
							if (data.resultCode == 0) {
								Swal.fire("삭제 되었습니다.");
								//데이터테이블 초기화
								datatableInitialization();
							} else {
								Swal.fire({
									title : "고객사 정보 삭제 실패",
									text : data.resultMessage,
									type : "error",
									confirmButtonText : "확인"
								});
							}
						},
						error : function(e) {
							Swal.fire("요청에 실패 하였습니다.");
						}
					});
				}
			}
		);
	}
</script>