<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main id="js-page-content" role="main" class="page-content">

<div>      
	<ol class="breadcrumb page-breadcrumb">
		<li class="breadcrumb-item"><a href="javascript:void(0);">관리</a></li>
		<li class="breadcrumb-item">사이트관리</li>                            
		<li class="position-absolute pos-top pos-right d-none d-sm-block"><span class="js-get-date"></span></li>
	</ol>
</div>

<div class="card border mb-4 mb-xl-0">
	<div class="card-header  py-2 pr-2 d-flex align-items-center flex-wrap">
		<div class="row w-100">
			<div class="col-lg-3 p-1">
				<div class="form-group">
					<label class="form-label ml-1" for="searchCustSeq">고객사</label>					
					<select class="custom-select select2-placeholder form-control" id="searchCustSeq">
						<option value="" selected>전체</option>		
						<c:forEach items="${custCodes}" var="row" varStatus="i">
							<option value="${row.custSeq}">${row.custNm}</option>
						</c:forEach>						
					</select>
				</div>
			</div>

			<div class="col-lg-3 p-1">
				<div class="form-group">
					<label class="form-label ml-1" for="searchSiteNm">사이트명</label>					
					<input type="text" id="searchSiteNm" class="form-control" placeholder="" >
				</div>
			</div>
			<div class="col-lg-3 p-1">
				<div class="form-group">
					<label class="form-label ml-1" for="searchConnStsCd">연동상태</label>					
					<select class="custom-select form-control" id="searchConnStsCd">
						<option value="" selected>전체</option>
						<c:forEach items="${connStsCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>								
					</select>
				</div>
			</div>
			<div class="col-lg-3 p-1">
				<div class="form-group">
					<label class="form-label ml-1" for="searchConnTypeCd">연동유형</label>					
					<select class="custom-select form-control" id="searchConnTypeCd">
						<option value="" selected>전체</option>		
						<c:forEach items="${connTypeCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>						
					</select>
				</div>
			</div>	
		</div>
		
		<div class="row w-100 mt-2">
		
			<div class="col-xl-3 col-lg-12 p-1">
				<div class="form-group">
					<label class="form-label ml-1" for="searchBizTypeCd">사업유형</label>					
					<select class="custom-select form-control" id="searchBizTypeCd">
						<option value="" selected>전체</option>		
						<c:forEach items="${bizTypeCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>						
					</select>
				</div>
			</div>
			
			<div class="col-xl-3 col-lg-12 p-1">				
				<label class="form-label ml-1" for="start-date-day">등록시작일시</label>
				<div class="input-group" id="date-picker-day">
					<input class="form-control date-picker" id="start-date-day" name="start-date-day" value="" type="text" readonly>
					<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>
				</div>
			</div>
			
			<div class="col-xl-3 col-lg-12 p-1">				
				<label class="form-label ml-1" for="end-date-day">등록종료일시</label>
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
				<table class="table table-bordered table-hover table-striped w-100" id="site-list">
						<thead>							
							<tr class="bg-fusion-300">
								<th class="text-center align-middle font-weight-bold">일련번호</th>
								<th class="text-center align-middle font-weight-bold">고객사명</th>
								<th class="text-center align-middle font-weight-bold">사이트명</th>
								<th class="text-center align-middle font-weight-bold">연동상태</th>
								<th class="text-center align-middle font-weight-bold">연동유형</th>
								<th class="text-center align-middle font-weight-bold">사업유형</th>
								<th class="text-center align-middle font-weight-bold">전화번호</th>
								<th class="text-center align-middle font-weight-bold">담당자명</th>								
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
	<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		<div class="modal-content">
			<form id="frm-site-info" name="frm-site-info" role="form" data-toggle="validator"> 
			
				<div class="modal-header">
					<h4 class="modal-title">사이트 정보</h4>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true"><i class="fal fa-times"></i></span>
					</button>
				</div>
				<div class="modal-body">			
					<div class="panel-content">
						 
							<input type="hidden" id="info_siteSeq" name="i_siteSeq" >
							
							<!-- 주소시도 -->
							<input type="hidden" id="info_addrSido" name="i_addrSido" >
							<!-- 주소시군구 -->
							<input type="hidden" id="info_addrSigungu" name="i_addrSigungu" >
							<!-- 주소읍면 -->
							<input type="hidden" id="info_addrEubmyun" name="i_addrEubmyun" >
							<!-- 주소동리 -->
							<input type="hidden" id="info_addrDongri" name="i_addrDongri" >
							
							<div class="row mb-2">
								<div class="col-lg-12">
									
								</div>								
							</div>  
							
							<div class="row mb-2">
								<div class="col-lg-12">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">고객사</span></div>
											<select class="custom-select form-control" id="i_custSeq" name="i_custSeq" required>
												<option value="" selected>선택</option>		
												<c:forEach items="${custCodes}" var="row" varStatus="i">
													<option value="${row.custSeq}">${row.custNm}</option>
												</c:forEach>						
											</select>							
										</div>    
									</div>
								</div>								
							</div>   
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">사이트명</span></div>
											<input type="text" id="i_siteNm" name="i_siteNm" class="form-control" maxlength="50" required>							
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">사업유형</span></div>
											<select class="custom-select form-control" id="i_bizTypeCd" name="i_bizTypeCd">
												<option value="" selected>선택</option>		
												<c:forEach items="${bizTypeCodes}" var="row" varStatus="i">
													<option value="${row.dtlCd}">${row.dtlCdNm}</option>
												</c:forEach>		
											</select>																		
										</div>    
									</div>									
								</div>
							</div>   
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">전화번호</span></div>
											<input type="number" id="i_tlNo" name="i_tlNo" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>								
								<div class="col-lg-6">
									<div class="form-group">										
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">담당자 아이디</span></div>
											<input type="text" id="i_cntPsnId" name="i_cntPsnId" class="form-control" aria-describedby="button-addon2">
											<div class="input-group-append">
												<button class="btn btn-outline-default waves-effect waves-themed" type="button" id="button-addon2">검색</button>
											</div>
										</div>
									</div>									
								</div>								
							</div>     
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">담당자명</span></div>
											<input type="text" id="i_cntPsnNm" name="i_cntPsnNm" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">담당자연락처</span></div>
											<input type="number" id="i_cntPsnHpno" name="i_cntPsnHpno" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
							</div> 
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">연동상태</span></div>
											<select class="custom-select form-control" id="i_connStsCd" name="i_connStsCd" required>														
												<option value="" selected>선택</option>
												<c:forEach items="${connStsCodes}" var="row" varStatus="i">
													<option value="${row.dtlCd}">${row.dtlCdNm}</option>
												</c:forEach>		
											</select>																		
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">연동유형</span></div>											
											<select class="custom-select form-control" id="i_connTypeCd" name="i_connTypeCd">														
												<option value="" selected>선택</option>
												<c:forEach items="${connTypeCodes}" var="row" varStatus="i">
													<option value="${row.dtlCd}">${row.dtlCdNm}</option>
												</c:forEach>		
											</select>									
										</div>    
									</div>									
								</div>
							</div> 
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">한전고객번호</span></div>
											<input type="text" id="i_kepcoCustNo" name="i_kepcoCustNo" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">ISMART 비밀번호</span></div>
											<input type="text" id="i_ismartPwd" name="i_ismartPwd" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
							</div>           
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">요금코드</span></div>
											<input type="text" id="i_billCd" name="i_billCd" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">URL</span></div>
											<input type="text" id="i_url" name="i_url" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>								
							</div>   
							
							<div class="dropdown-divider"></div>
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">										
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">우편번호</span></div>
											<input type="text" id="i_zipCd" name="i_zipCd" class="form-control" aria-describedby="btnSearchAddr">
											<div class="input-group-append">
												<button class="btn btn-outline-default waves-effect waves-themed" type="button" id="btnSearchAddr">검색</button>
											</div>
										</div>
									</div>									
								</div>		
							</div>       
							
							<div class="row mb-2">
								<div class="col-lg-12">
									<div class="form-group">										
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">주소</span></div>
											<input type="text" id="i_addr" name="i_addr" class="form-control" maxlength="50" >											
										</div>
									</div>									
								</div>						
							</div>      
							
							<div class="row mb-2">
								<div class="col-lg-12">
									<div class="form-group">										
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">상세주소</span></div>
											<input type="text" id="i_addrAdt" name="i_addrAdt" class="form-control" maxlength="50" >											
										</div>
									</div>									
								</div>						
							</div>           
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">위도</span></div>
											<input type="text" id="i_lat" name="i_lat" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">경도</span></div>
											<input type="text" id="i_lng" name="i_lng" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
							</div>  
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">날씨지역</span></div>
											<input type="text" id="i_wethRgnCd" name="i_wethRgnCd" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">일출지역명</span></div>
											<input type="text" id="i_sunrisRgnNm" name="i_sunrisRgnNm" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
							</div>  
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">지구코드</span></div>
											<input type="text" id="i_dstCd" name="i_dstCd" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">지구명</span></div>
											<input type="text" id="i_dstNm" name="i_dstNm" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>								
							</div>  
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">검교정만료일자</span></div>
											<input class="form-control date-picker" id="i_inspExpDate" name="i_inspExpDate" value="" type="text" readonly>
											<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>																		
										</div>    
									</div>									
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">대기질관측소</span></div>
											<input type="text" id="i_airQltyObsv" name="i_airQltyObsv" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>								
							</div>  
							
							<div class="dropdown-divider"></div>
							
							<div class="row mb-2">
								<div class="col-lg-12">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">비고</span></div>
											<textarea class="form-control" id="i_rmrk" name="i_rmrk" rows="5"></textarea>							
										</div>    
									</div>									
								</div>																
							</div>   
							
							<div class="dropdown-divider"></div>
							
							<div class="row mb-2 mt-2">
								<div class="col-lg-4">
									<div class="form-group">
										<label class="form-label" for="button-addon2">사이트 이미지 1</label>
										<div class="custom-file">
											<input type="file" class="custom-file-input" id="i_img_1" name="i_img_1">
											<label id="i_img_lb_1" name="i_img_lb_1" class="custom-file-label" for="customFile">이미지</label>
										</div>																		
									</div>									
								</div>
								<div class="col-lg-4">
									<div class="form-group">						
										<label class="form-label" for="button-addon2">사이트 이미지 2</label>
										<div class="custom-file">
											<input type="file" class="custom-file-input" id="i_img_2" name="i_img_2">
											<label id="i_img_lb_2" name="i_img_lb_2" class="custom-file-label" for="customFile">이미지</label>
										</div>    
									</div>
								</div>	
								<div class="col-lg-4">
									<div class="form-group">						
										<label class="form-label" for="button-addon2">사이트 이미지 3</label>
										<div class="custom-file">
											<input type="file" class="custom-file-input" id="i_img_3" name="i_img_3">
											<label id="i_img_lb_3" name="i_img_lb_3" class="custom-file-label" for="customFile">이미지</label>
										</div>    
									</div>
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

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
		
		$(".select2-placeholder").select2({
			placeholder: "전체",
			allowClear: true
		});
		
		$('#frm-site-info').submit(function (event) {
			
			event.preventDefault();
			
		    if ($("#frm-site-info")[0].checkValidity() === false) {
		    	
		        event.stopPropagation();
		        
		    } else {		   
		    	
		    	// Get form
		        var form = $('#frm-site-info')[0];

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
								title: "사이트 정보 저장 실패",
								text: data.resultMessage,
								type: "warning",				                        
								confirmButtonText: "확인"
							});							
						}
					},
					error: function(e){
						Swal.fire("사이트 저장에 실패 하였습니다.");						
					}
				});
		    }
		    $('#frm-site-info').addClass('was-validated');
		});
		
		//조회버튼 클릭
		$("#btnSearch").click(function() {
			search();
		});
		
		//주소검색 버튼 클릭
		$("#btnSearchAddr").click(function() {
			searchAddress();
		});

		search();	
	});

	//데이터 조회
	function search() {
		datatableInitialization();
	}

	//데이터 테이블 설정	
	function datatableInitialization() {
		
		if (myTable){
			myTable.api().ajax.reload();	
		}else{
			myTable = $('#site-list').dataTable({
					fixedHeader : true,
					destroy : true,
					language : lang_kor,							
					bFilter : false,
					responsive : true,
					searching : false,
					scrollCollapse : true,
					paging : true,
					serverSide : true,			
					order: [[ 8, "desc" ]],
					dom : "<'row mb-3'<'col-sm-12 col-md-6 d-flex align-items-center justify-content-start'f><'col-sm-12 col-md-6 d-flex align-items-center justify-content-end'B>>"
							+ "<'row'<'col-sm-12'tr>>"
							+ "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
					buttons : [ {
						text : '<i class="fal fa-plus mr-1"></i> 추가',								
						action : function(e, dt, node, config) {
							actionUrl = "/ajax/newSiteInfo.do";
							$('#info-modal').modal("show");
						},
						className : 'btn-success btn-sm mr-1'
					}],
					ajax : {
						url : '/ajax/getSiteList.do',
						type : 'POST',
						data : {
							searchCustSeq : function() { return $("#searchCustSeq").val()},
							searchSiteNm : function() { return $("#searchSiteNm").val()},
							searchConnStsCd : function() { return $("#searchConnStsCd").val()},
							searchConnTypeCd : function() { return $("#searchConnTypeCd").val()},
							searchBizTypeCd : function() { return $("#searchBizTypeCd").val()},
							startDate : function() { return $("#start-date-day").val().replace(/-/gi, "")},
							endDate : function() { return $("#end-date-day").val().replace(/-/gi, "")}
						},
						dataSrc : function(data) {
							return data.list;
						}
					},
	
					columns : [ { id : "siteSeq", data : "siteSeq", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center' }
								   ,{ id : "custNm", data : "custNm", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center' }
								   ,{ id : "siteNm", data : "siteNm", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center' }										   
								   ,{ id : "connSts", data : "connSts", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center' }
								   ,{ id : "connType", data : "connType", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center' }
								   ,{ id : "bizType", data : "bizType", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center' }										   
								   ,{ id : "tlNo", data : "tlNo", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center' }
								   ,{ id : "cntPsnNm", data : "cntPsnNm", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center' }								   
								   ,{ id : "cretDt", data : "cretDt", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center' }
								   ,{ data : 'siteSeq', className : 'text-center', render : function(data, type, row, meta) {
										if (type === 'display') {
								
											data = '<a href="javascript:loadInfo(\''
												+ row.siteSeq
												+ '\');" class="btn btn-outline-primary btn-sm btn-icon rounded-circle waves-effect waves-themed mr-2">';
											data += '<i class="fal fa-edit"></i>';
											data += '</a>';
											
											data += '<a href="javascript:delInfo(\''
												+ row.siteSeq
												+ '\');" class="btn btn-outline-danger btn-sm btn-icon rounded-circle waves-effect waves-themed mr-2">';
											data += '<i class="fal fa-trash-alt"></i>';
											data += '</a>';
										}
										return data;
									}
								}]
			});
		}
	}
	
	function searchAddress(){
		new daum.Postcode({
	        oncomplete: function(data) {
	        	//우편번호
	        	$('#frm-site-info [name="i_zipCd"]').val(data.zonecode);
	        	//주소
	        	$('#frm-site-info [name="i_addr"]').val(data.address);	        	
	        	//주소시도
	        	$('#frm-site-info [name="i_addrSido"]').val(data.sido);
	        	//주소시군구
	        	$('#frm-site-info [name="i_addrSigungu"]').val(data.sigungu);
	        	//주소읍면
	        	$('#frm-site-info [name="i_addrEubmyun"]').val(data.bname1);
	        	//주소동리
	        	$('#frm-site-info [name="i_addrDongri"]').val(data.bname);		
	        	
	        	$('#frm-site-info [name="i_addrAdt"]').focus();
	        }
	    }).open();
	}
	
	//사이트 정보 불러오기
	function loadInfo(seq){
		
		$.ajax({
			type: "POST",
			url: "/ajax/getSiteInfo.do",		
			dataType: 'json',
			global: false,
			data: {
				siteSeq: seq
			},
			success : function(data) {
				
				if (data.resultCode == 0){					
					$('#frm-site-info [name="i_siteSeq"]').val(data.info.siteSeq);
					$('#frm-site-info [name="i_custSeq"]').val(data.info.custSeq);
					$('#frm-site-info [name="i_kepcoCustNo"]').val(data.info.kepcoCustNo);
					$('#frm-site-info [name="i_ismartPwd"]').val(data.info.ismartPwd);
					$('#frm-site-info [name="i_siteNm"]').val(data.info.siteNm);
					$('#frm-site-info [name="i_bizTypeCd"]').val(data.info.bizTypeCd);
					$('#frm-site-info [name="i_connStsCd"]').val(data.info.connStsCd);
					$('#frm-site-info [name="i_connTypeCd"]').val(data.info.connTypeCd);
					$('#frm-site-info [name="i_lat"]').val(data.info.lat);
					$('#frm-site-info [name="i_lng"]').val(data.info.lng);
					$('#frm-site-info [name="i_zipCd"]').val(data.info.zipCd);
					$('#frm-site-info [name="i_addr"]').val(data.info.addr);
					$('#frm-site-info [name="i_addrAdt"]').val(data.info.addrAdt);
					$('#frm-site-info [name="i_addrSido"]').val(data.info.addrSido);
					$('#frm-site-info [name="i_addrSigungu"]').val(data.info.addrSigungu);
					$('#frm-site-info [name="i_addrEubmyun"]').val(data.info.addrEubmyun);
					$('#frm-site-info [name="i_addrDongri"]').val(data.info.addrDongri);
					$('#frm-site-info [name="i_cntPsnId"]').val(data.info.cntPsnId);
					$('#frm-site-info [name="i_cntPsnNm"]').val(data.info.cntPsnNm);
					$('#frm-site-info [name="i_cntPsnHpno"]').val(data.info.cntPsnHpno);
					$('#frm-site-info [name="i_tlNo"]').val(data.info.tlNo);
					$('#frm-site-info [name="i_wethRgnCd"]').val(data.info.wethRgnCd);
					$('#frm-site-info [name="i_sunrisRgnNm"]').val(data.info.sunrisRgnNm);
					$('#frm-site-info [name="i_billCd"]').val(data.info.billCd);
					$('#frm-site-info [name="i_url"]').val(data.info.url);
					$('#frm-site-info [name="i_dstNm"]').val(data.info.dstNm);
					$('#frm-site-info [name="i_dstCd"]').val(data.info.dstCd);
					$('#frm-site-info [name="i_rmrk"]').val(data.info.rmrk);
					$('#frm-site-info [name="i_inspExpDate"]').val(data.info.inspExpDate);
					$('#frm-site-info [name="i_airQltyObsv"]').val(data.info.airQltyObsv);
					$('#frm-site-info [name="i_img_lb_1"]').html(data.info.imgFileNm1);
					$('#frm-site-info [name="i_img_lb_2"]').html(data.info.imgFileNm2);
					$('#frm-site-info [name="i_img_lb_3"]').html(data.info.imgFileNm3);
				}else{
					Swal.fire({
						title: "사이트 정보 조회 실패",
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
		
		actionUrl = "/ajax/updateSiteInfo.do";
		$('#info-modal').modal("show");		
	}
	
	//사이트정보 삭제
	function delInfo(seq){
		
		Swal.fire({
			title : "사이트 정보 삭제",
			text : "사이트 정보를 삭제 합니다. 계속 진행 하시겠습니까?",
			type : "warning",
			showCancelButton : true,
			confirmButtonText : "확인",
			cancelButtonText : "취소"
		}).then(
			function(result) {
				if (result.value) {
					$.ajax({
						type : "POST",
						url : "/ajax/delSiteInfo.do",
						dataType : 'json',
						data : {
							siteSeq : seq
						},
						success : function(data) {
							if (data.resultCode == 0) {
								Swal.fire("삭제 되었습니다.");
								//데이터테이블 초기화
								datatableInitialization();
							} else {
								Swal.fire({
									title : "사이트 정보 삭제 실패",
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