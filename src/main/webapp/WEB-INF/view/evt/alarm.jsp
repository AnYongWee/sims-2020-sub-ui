<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
						<span class="input-group-text search-lable-sm">인버터</span>
					</div>
					<select class="custom-select form-control" id="searchDevSeq">					
						<option value="" selected>전체</option>
						<c:forEach items="${devCodes}" var="row" varStatus="i">
							<option value="${row.devSeq}">${row.siteNm} / ${row.devNm}</option>
						</c:forEach>							
					</select>
				</div>
			</div>
			
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable-sm">이벤트</span>
					</div>
					<select class="custom-select form-control" id="searchEvtCd">
						<option value="" selected>전체</option>
						<c:forEach items="${evtCds}" var="row" varStatus="i">
							<option value="${row.evtCd}">${row.evtNm}</option>
						</c:forEach>	
					</select>
				</div>
			</div>
			
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable-sm">등급</span>
					</div>
					<select class="custom-select form-control" id="searchGdCd">
						<option value="" selected>전체</option>
						<c:forEach items="${evtDivCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>						
					</select>
				</div>
			</div>
			
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable-sm">상태</span>
					</div>
					<select class="custom-select form-control" id="searchStsCd">
						<option value="" selected>전체</option>
						<c:forEach items="${evtStsCodes}" var="row" varStatus="i">
							<option value="${row.dtlCd}">${row.dtlCdNm}</option>
						</c:forEach>						
					</select>
				</div>
			</div>

			<div class="col-xs-3 p-1">
				
				<div class="input-group" id="date-picker-day">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable-sm">발생일시</span>
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
				<table class="table table-bordered table-hover table-striped w-100" id="evt-list">
					<thead>							
						<tr class="bg-fusion-300">
							<th class="text-center align-middle font-weight-bold">고유번호</th>
							<th class="text-center align-middle font-weight-bold">발생시간</th> 
							<th class="text-center align-middle font-weight-bold">사이트명</th>
							<th class="text-center align-middle font-weight-bold">인버터</th>
							<th class="text-center align-middle font-weight-bold">이벤트코드</th>
							<th class="text-center align-middle font-weight-bold">이벤트명</th>
							<th class="text-center align-middle font-weight-bold">이벤트내용</th>
							<th class="text-center align-middle font-weight-bold">등급</th>
							<th class="text-center align-middle font-weight-bold">상태</th>								
							<th class="text-center align-middle font-weight-bold">처리시간</th>
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
		
		$('#start-date-day').datepicker('setDate', 'today');
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
		
        var myTable = $('#evt-list').dataTable(
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
				url : '/ajax/getEvtHstList.do',
				type : 'POST',				
				data : {					
					searchDevSeq : $("#searchDevSeq").val(),
					searchEvtCd : $("#searchEvtCd").val(),
					searchGdCd : $("#searchGdCd").val(),
					searchStsCd : $("#searchStsCd").val(),
					startDate : startDate,
					endDate : endDate
				},						
				dataSrc: function ( data ) {	                
	                return data.list;
	            }     
			},
			
            columns: [
            	{ id: "evtSeq", data: "evtSeq", "visible": false, "searchable": false, type: "readonly", className : 'text-right font-weight-bold' },
            	{ id: "occuTod", data: "occuTod", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold', 
            		render: function(data, type) {            			
            			return data.substr(0,4) + "-" + data.substr(4,2) + "-" + data.substr(6,2) + " " + data.substr(8,2) + ":" + data.substr(10,2) + ":" + data.substr(12,2);
            		}
            	},
            	{ id: "siteNm", data: "siteNm", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
            	{ id: "devNm", data: "devNm", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
            	{ id: "evtCd", data: "evtCd", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
            	{ id: "evtNm", data: "evtNm", "visible": true, "searchable": false, type: "readonly", className : 'text-left font-weight-bold' },
            	{ id: "evtDesc", data: "evtDesc", "visible": true, "searchable": false, type: "readonly", className : 'text-left font-weight-bold' },
            	{ id: "evtGdVal", data: "evtGdVal", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold', 
            		render: function(data, type) {   
            			if (data == "경계"){
            				return '<h4><span class="badge badge-danger badge-pill">' + data + '</span></h4>';	
            			}else if(data == "주의"){
            				return '<h4><span class="badge badge-warning badge-pill">' + data + '</span></h4>';
            			}else{
            				return '<h4><span class="badge badge-success badge-pill">' + data + '</span></h4>';
            			}
            		}
            		
            	},
            	{ id: "evtStsVal", data: "evtStsVal", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
            	{ id: "crlTod", data: "crlTod", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold', 
            		render: function(data, type) {            			
            			return data.substr(0,4) + "-" + data.substr(4,2) + "-" + data.substr(6,2) + " " + data.substr(8,2) + ":" + data.substr(10,2) + ":" + data.substr(12,2);
            		}
            	}
            ]
        });
	}
</script>