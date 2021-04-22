<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main id="js-page-content" role="main" class="page-content">

<div>                             
	<ol class="breadcrumb bg-fusion-300 border border-primary">
		<li class="breadcrumb-item text-white ml-2"><a class="text-white" href="#"> <i class="fal fa-chart-line mr-1 fs-md"></i> 관리</a></li>
		<li class="breadcrumb-item text-white"><a class="text-white" href="#"> <i class="fal fa-folder mr-1 fs-md"></i> 사이트관리</a></li>	
	</ol>
</div>

<div class="card border mb-4 mb-xl-0">
	<div class="card-header  py-2 pr-2 d-flex align-items-center flex-wrap">
		<div class="row">
			<div class="col-lg-2 p-1">
				<div class="form-group">
					<label class="form-label" for="validationServer01">고객사</label>					
					<select class="custom-select form-control" id="searchCustSeq">
						<option value="" selected>전체</option>		
						<c:forEach items="${custCodes}" var="row" varStatus="i">
							<option value="${row.custSeq}">${row.custNm}</option>
						</c:forEach>						
					</select>
				</div>
			</div>

			<div class="col-lg-2 p-1">
				<div class="form-group">
					<label class="form-label" for="validationServer01">사이트명</label>					
					<input type="text" id="searchSiteNm" class="form-control" placeholder="" >
				</div>
			</div>
			<div class="col-lg-2 p-1">
				<div class="form-group">
					<label class="form-label" for="validationServer01">연동상태</label>					
					<select class="custom-select form-control" id="searchConnStsCd">
						<option value="" selected>전체</option>
						<c:forEach items="${connStsCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>								
					</select>
				</div>
			</div>
			<div class="col-lg-2 p-1">
				<div class="form-group">
					<label class="form-label" for="validationServer01">연동유형</label>					
					<select class="custom-select form-control" id="searchConnTypeCd">
						<option value="" selected>전체</option>		
						<c:forEach items="${connTypeCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>						
					</select>
				</div>
			</div>		
			<div class="col-lg-2 p-1">
				<div class="form-group">
					<label class="form-label" for="validationServer01">사업유형</label>					
					<select class="custom-select form-control" id="searchBizTypeCd">
						<option value="" selected>전체</option>		
						<c:forEach items="${bizTypeCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>						
					</select>
				</div>
			</div>
			
			<div class="col-lg-2 p-1">
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
						 
							<input type="hidden" id="info_siteSeq" name="info_siteSeq" >
							
							<!-- 주소시도 -->
							<input type="hidden" id="info_addrSido" name="info_addrSido" >
							<!-- 주소시군구 -->
							<input type="hidden" id="info_addrSigungu" name="info_addrSigungu" >
							<!-- 주소읍면 -->
							<input type="hidden" id="info_addrEubmyun" name="info_addrEubmyun" >
							<!-- 주소동리 -->
							<input type="hidden" id="info_addrDongri" name="info_addrDongri" >
							
							<div class="row mb-2">
								<div class="col-lg-12">
									
								</div>								
							</div>  
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">사이트명</span></div>
											<input type="text" id="info_siteNm" name="info_siteNm" class="form-control" maxlength="50" required>							
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">사업유형</span></div>
											<select class="custom-select form-control" id="info_bizTypeCd" name="info_bizTypeCd">
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
											<input type="number" id="info_tlNo" name="info_tlNo" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>								
								<div class="col-lg-6">
									<div class="form-group">										
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">담당자 아이디</span></div>
											<input type="text" id="info_cntPsnId" name="info_cntPsnId" class="form-control" aria-describedby="button-addon2">
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
											<input type="text" id="info_cntPsnNm" name="info_cntPsnNm" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">담당자연락처</span></div>
											<input type="number" id="info_cntPsnHpno" name="info_cntPsnHpno" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
							</div> 
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">연동상태</span></div>
											<select class="custom-select form-control" id="info_connStsCd" name="info_connStsCd" required>														
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
											<select class="custom-select form-control" id="info_connTypeCd" name="info_connTypeCd">														
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
											<input type="text" id="info_kepcoCustNo" name="info_kepcoCustNo" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">ISMART 비밀번호</span></div>
											<input type="text" id="info_ismartPwd" name="info_ismartPwd" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
							</div>           
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">요금코드</span></div>
											<input type="text" id="info_billCd" name="info_billCd" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">URL</span></div>
											<input type="text" id="info_url" name="info_url" class="form-control" maxlength="50" >							
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
											<input type="text" id="info_zipCd" name="info_zipCd" class="form-control" aria-describedby="btnSearchAddr">
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
											<input type="text" id="info_addr" name="info_addr" class="form-control" maxlength="50" >											
										</div>
									</div>									
								</div>						
							</div>      
							
							<div class="row mb-2">
								<div class="col-lg-12">
									<div class="form-group">										
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">상세주소</span></div>
											<input type="text" id="info_addrAdt" name="info_addrAdt" class="form-control" maxlength="50" >											
										</div>
									</div>									
								</div>						
							</div>           
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">위도</span></div>
											<input type="text" id="info_lat" name="info_lat" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">경도</span></div>
											<input type="text" id="info_lng" name="info_lng" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
							</div>  
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">날씨지역</span></div>
											<input type="text" id="info_wethRgnCd" name="info_wethRgnCd" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">일출지역명</span></div>
											<input type="text" id="info_sunrisRgnNm" name="info_sunrisRgnNm" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
							</div>  
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">지구코드</span></div>
											<input type="text" id="info_dstCd" name="info_dstCd" class="form-control" maxlength="50" >							
										</div>    
									</div>									
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">지구명</span></div>
											<input type="text" id="info_dstNm" name="info_dstNm" class="form-control" maxlength="50" >							
										</div>    
									</div>
								</div>								
							</div>  
							
							<div class="row mb-2">
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">검교정만료일자</span></div>
											<input class="form-control date-picker" id="info_inspExpDate" name="info_inspExpDate" value="" type="text" readonly>
											<div class="input-group-append"><span class="input-group-text fs-xl"> <i class="fal fa-calendar"></i></span></div>																		
										</div>    
									</div>									
								</div>
								<div class="col-lg-6">
									<div class="form-group">						
										<div class="input-group">
											<div class="input-group-prepend"><span class="input-group-text lable-md">대기질관측소</span></div>
											<input type="text" id="info_airQltyObsv" name="info_airQltyObsv" class="form-control" maxlength="50" >							
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
											<textarea class="form-control" id="info_rmrk" name="info_rmrk" rows="5"></textarea>							
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
											<input type="file" class="custom-file-input" id="info_img_1" name="info_img_1">
											<label class="custom-file-label" for="customFile">이미지</label>
										</div>																		
									</div>									
								</div>
								<div class="col-lg-4">
									<div class="form-group">						
										<label class="form-label" for="button-addon2">사이트 이미지 2</label>
										<div class="custom-file">
											<input type="file" class="custom-file-input" id="info_img_2" name="info_img_2">
											<label class="custom-file-label" for="customFile">이미지</label>
										</div>    
									</div>
								</div>	
								<div class="col-lg-4">
									<div class="form-group">						
										<label class="form-label" for="button-addon2">사이트 이미지 3</label>
										<div class="custom-file">
											<input type="file" class="custom-file-input" id="info_img_3" name="info_img_3">
											<label class="custom-file-label" for="customFile">이미지</label>
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
<script src="${pageContext.request.contextPath}/resources/js/smart/formplugins/select2/select2.bundle.js"></script>

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
		
		$('.select2').select2();
		
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
		var startDate = $("#start-date-day").val();
		startDate = startDate.replace(/-/gi, "");

		var endDate = $("#end-date-day").val();
		endDate = endDate.replace(/-/gi, "");

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
							order: [[ 9, "desc" ]],
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
								url : '/ajax/getSiteList.do',
								type : 'POST',
								data : {
									searchCustSeq : $("#searchCustSeq").val(),
									searchSiteNm : $("#searchSiteNm").val(),
									searchConnStsCd : $("#searchConnStsCd").val(),
									searchConnTypeCd : $("#searchConnTypeCd").val(),
									searchBizTypeCd : $("#searchBizTypeCd").val(),
									startDate : startDate,
									endDate : endDate
								},
								dataSrc : function(data) {
									return data.list;
								}
							},

							columns : [ { id : "siteSeq", data : "siteSeq", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center font-weight-bold' }
										   ,{ id : "custNm", data : "custNm", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center font-weight-bold' }
										   ,{ id : "siteNm", data : "siteNm", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center font-weight-bold' }										   
										   ,{ id : "connSts", data : "connSts", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center font-weight-bold' }
										   ,{ id : "connType", data : "connType", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center font-weight-bold' }
										   ,{ id : "bizType", data : "bizType", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center font-weight-bold' }										   
										   ,{ id : "tlNo", data : "tlNo", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center font-weight-bold' }
										   ,{ id : "cntPsnNm", data : "cntPsnNm", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center font-weight-bold' }
										   ,{ id : "cntPsnHpno", data : "cntPsnHpno", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center font-weight-bold' }
										   ,{ id : "cretDt", data : "cretDt", "visible" : true, "searchable" : false, type : "readonly", className : 'text-center font-weight-bold' }
										   ,{ data : 'siteSeq', className : 'text-center font-weight-bold', render : function(data, type, row, meta) {
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
										}]
					});
	}
	
	function searchAddress(){
		new daum.Postcode({
	        oncomplete: function(data) {
	        	//우편번호
	        	$('#frm-site-info [name="info_zipCd"]').val(data.zonecode);
	        	//주소
	        	$('#frm-site-info [name="info_addr"]').val(data.address);	        	
	        	//주소시도
	        	$('#frm-site-info [name="info_addrSido"]').val(data.sido);
	        	//주소시군구
	        	$('#frm-site-info [name="info_addrSigungu"]').val(data.sigungu);
	        	//주소읍면
	        	$('#frm-site-info [name="info_addrEubmyun"]').val(data.bname1);
	        	//주소동리
	        	$('#frm-site-info [name="info_addrDongri"]').val(data.bname);		
	        	
	        	$('#frm-site-info [name="info_addrAdt"]').focus();
	        }
	    }).open();
	}
	
</script>