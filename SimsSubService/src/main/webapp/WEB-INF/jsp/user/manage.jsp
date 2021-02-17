<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<%@ taglib prefix="spring"    uri="http://www.springframework.org/tags"%>

<style>
.breadcrumb {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    padding: .75rem 1rem;
    margin-bottom: 1rem;
    list-style: none;
    background-color: #f6f6f6;
    border-radius: 4px;
}

.page-breadcrumb {
    padding: 0;
    background: 0 0;
    margin: 0 0 1.5rem;
    margin-top: 0.5rem;
    position: relative;
    text-shadow: #fff 0 1px;
}

</style>

<main id="js-page-content" role="main" class="page-content">
<div class="subheader">
	<h1 class="subheader-title">
		<i class='subheader-icon fal fa-plus-circle'></i>사용자관리<small>사용자 정보 등록 및 수정</small>
	</h1>
</div>
		
		<div class="card mb-4">
			<div class="card-body">
				<div class="input-group row">

					<label class="col-form-label form-label text-md-left text-xl-right col-xl-1 col-md-12">아이디</label>
					<input class="form-control col-xl-3 col-md-12" type="text" id="search-userId" placeholder="검색할 아이디를 입력해주세요." aria-label="Search" aria-describedby="basic-addon2"> 
						
					<label class="col-form-label form-label text-md-left text-xl-right col-xl-1 col-md-12">성명</label>
					<input class="form-control col-xl-3 col-md-12" type="text" id="search-userNm" placeholder="검색할 성명을 입력해주세요." aria-label="Search" aria-describedby="basic-addon2"> 
					
					<label class="col-form-label form-label text-md-left text-xl-right col-xl-1 col-md-12">등록일시</label>
					<input class="form-control datepicker col-xl-2 col-md-12" id="search-stDate" type="text" readonly>
					<div class="input-group-append">
						<span class="input-group-text"><i class="fas fa-calendar"></i></span>
					</div>
					
					<label class="col-form-label">~</label> 
					
					<input class="form-control datepicker col-xl-2 col-md-12" id="search-edDate" type="text" readonly>
					<div class="input-group-append">
						<span class="input-group-text"><i class="fas fa-calendar"></i></span>
					</div>
					
					<button type="button" class="btn btn-secondary ml-3 btn-sm" id="btnSearch"><i class="fal fa-search mr-1"></i>검색</button>
				</div>
			</div>
		</div>

		<div class="card mb-4">			
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="user-list" width="100%" cellspacing="0">
						<thead>
							<tr>
						        <td id="th-buttons" class="dt-buttons table-header-buttons" colspan="8" rowspan="1"><button type="button" class="btn btn-outline-info btn-sm"  id="btnAdd" style="float: right;"><i class="fal fa-plus mr-1"></i>등록</button>		</td>
						    </tr>
							<tr>
								<th>아이디</th>
								<th>성명</th>
								<th>휴대폰</th>
								<th>이메일</th>
								<th>상태</th>
								<th>등록자</th>
								<th>등록일시</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<!-- 내용 -->
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</main>	


<!-- 모달 영역 -->
<div class="modal fade" id="userModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myModalLabel">사용자 정보</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>				
			</div>
			<div class="modal-body">
				<form id="frmUser" action="/user/addUserInfo.do" novalidate>
					<!-- 추가,수정 구분 -->		
					<input type="hidden" id="mode" name="mode" type="text">
					<!-- 사용자 고유번호 -->		
					<input type="hidden" id="uniqueId" name="uniqueId" type="text">
					            
					<div class="form-row">
						<!-- Form Group (성명)-->
						<div class="form-group col-md-6">
							<label class="required" for="userNm">성명</label>
							<input class="form-control" id="userNm" name="userNm" type="text" required value="">							
				            <div class="invalid-feedback">성명을 입력해주세요.</div>				            
						</div>
						<!-- Form Group (아이디)-->
						<div class="form-group col-md-6">
							<label class="required" for="userId">아이디</label>
							<input class="form-control readonly" id="userId" name="userId" type="text" required value="">
							<div class="invalid-feedback">아이디를 입력해주세요.</div>
						</div>
					</div>
					<div class="form-row">
						<!-- Form Group (패스워드)-->
						<div class="form-group col-md-6">
							<label class="required" for="userPwd">패스워드</label>							
							<input class="form-control" id="userPwd" name="userPwd" type="password" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$" required  value="">
							<div class="invalid-feedback">패스워드를 입력해주세요. <br>(6자 이상의 하나 이상의 숫자,문자,특수문자가 포함)</div>							
						</div>
						<!-- Form Group (패스워드 확인)-->
						<div class="form-group col-md-6">
							<label class="required" for="userPwdConfim">패스워드 확인</label> 
							<input class="form-control" id="userPwdConfim" name="userPwdConfim" type="password" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$" required value="">
							<div class="invalid-feedback">패스워드 확인을 입력해주세요. <br>(6자 이상의 하나 이상의 숫자,문자,특수문자가 포함)</div>
						</div>
					</div>
					<div class="form-row">
						<!-- Form Group (전화번호)-->
						<div class="form-group col-md-6">
							<label for="telNo">전화번호</label>				
							<input class="form-control" id="telNo" name="telNo" type="text" value="">
						</div>
						<!-- Form Group (휴대폰)-->
						<div class="form-group col-md-6">
							<label for="mbTleNo">휴대폰</label> 
							<input class="form-control" id="mbTleNo" name="mbTleNo" type="text" value="">
						</div>
					</div>					
					<div class="form-group">
						<!-- Form Group (이메일)-->
		                <label class="required" for="emailAddr">이메일</label>
		                <input class="form-control" id="emailAddr" name="emailAddr" type="email" value="" required>
		                <div class="invalid-feedback">이메일을 입력해주세요.</div>
		            </div>		            
		            <div class="form-group">
		            	<!-- Form Group (회원상태)-->
		                <label class="required" for="userStatCode">회원상태:</label>
		                <select class="form-control" id="userStatCode" name="userStatCode" required>
		                	<c:forEach var="item" items="${userStatCodes}" varStatus="status">
		                		<option value="${item.codeId}">${item.codeVal}</option>
							</c:forEach>
		                </select>		                
		                <div class="invalid-feedback">회원상태를 선택해주세요.</div>
		            </div>		            
		        </form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-warning waves-effect waves-themed mr-3" id="btnPassword">
					<span class="fal fa-exclamation-triangle mr-1"></span>비밀번호 초기화
				</button>				
				<button type="button" class="btn btn-primary" id="btnSave">저장</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>


<script>
	
	var dataTable = null;
	
	$(document).ready(function(){
		//캘린더 컨트롤
		$(".datepicker").datepicker({
			format: "yyyy-mm-dd",
			autoclose: true,
			language: "kr",
			todayHighlight: true
		});
		
		//데이터테이블
		datatableInitialization();
		
		//등록 버튼 클릭
		$("#btnAdd").click(function() {
			
			$('#frmUser [name="mode"]').val("add");
			$('#frmUser [name="userPwd"]').closest(".form-row").show();
			
			$('#frmUser [name="userId"]').prop('readonly', false);
			
			$("#btnPassword").hide();
			
			$('#userModal').modal("show"); 
			
			
		});
		
		//저장 버튼 클릭
		$("#btnSave").click(function() {
			userSave();
		});		
		
		//조회 버튼 클릭
		$("#btnSearch").click(function() {
			datatableInitialization();
		});	
		
		//비밀번호 초기화
		$("#btnPassword").click(function() {
			password();
		});
		
	});
	
	//사용자 정보 저장
	function userSave(){
		
		var url = "/user/addUserInfo.do";
		
		
		if($("#mode").val() == "edit"){
			//수정일 경우 url 변경
			url = "/user/editUserInfo.do";
			
			//수정일 경우 패스워드 정보는 유효성 검증에서 제외 되도록 임의의 값 처리
			$('#frmUser [name="userPwd"]').val("templete12#");
			$('#frmUser [name="userPwdConfim"]').val("templete12#");
		}
		
		var form = $("#frmUser");
		
		 if (form[0].checkValidity() === false) {			 
		      event.preventDefault();
		      event.stopPropagation();
		}else{	    
			//유효성 검사 성공시 저장 처리
	    	$.ajax({
				type: "POST",
				url: url,		
				dataType: 'json',
				data: form.serializeArray(),
				success : function(data) {
					
					if (data.resultCode == 0){
						alert("저장 되었습니다.");						
						
						//등록 모달 숨기기
						$('#userModal').modal("hide");
						
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
		
    	form.addClass('was-validated');
	}
	
	//비밀번호 초기화
	function password(){
		
		var url = "/user/password.do";
		
		var form = $("#frmUser");
	    
			//유효성 검사 성공시 저장 처리
	    	$.ajax({
				type: "POST",
				url: url,		
				dataType: 'json',
				data: form.serializeArray(),
				success : function(data) {
					$(".alert").alert();
					if (data.resultCode == 0){
						alert("임시비밀번호가 발송되었습니다.");
					}else{
						alert(data.resultMessage);
					}
				},
				error: function(e){
					alert("요청에 실패 하였습니다.");
				}
			});
	}
	
	//사용자 정보 불러오기
	function userLoad(uniqueId){
		
    	$.ajax({
			type: "POST",
			url: "/user/getUserInfo.do",		
			dataType: 'json',
			data: {uniqueId: uniqueId},
			success : function(data) {
				$('#frmUser [name="uniqueId"]').val(data.uniqueId);
				$('#frmUser [name="userNm"]').val(data.userNm);
				$('#frmUser [name="userId"]').val(data.userId);
				$('#frmUser [name="telNo"]').val(data.telNo);
				$('#frmUser [name="mbTleNo"]').val(data.mbTleNo);
				$('#frmUser [name="emailAddr"]').val(data.emailAddr);
				$('#frmUser [name="userStatCode"]').val(data.userStatCode);
		
				$('#frmUser [name="mode"]').val("edit");
				
				//아이디 필드 비활성화
				$('#frmUser [name="userId"]').prop('readonly', true);
				
				//비밀번호 숨기기
				$('#frmUser [name="userPwd"]').closest(".form-row").hide();
				
				//비밀번호 초기화 버튼 활성화
				$("#btnPassword").show();
				
				$('#userModal').modal("show");
			},
			error: function(e){
				alert("요청에 실패 하였습니다.")
			}
		});
	}
	
	//데이터 테이블 설정
	function datatableInitialization(){
		dataTable = $('#user-list').DataTable({
			fixedHeader: true,
			destroy: true,
			bFilter: false,
			language : lang_kor,
			serverSide: true,
			order: [[6, 'desc']],			
			ajax: {
				url: '/user/getUserList.do',
				type: 'POST',
				data: function(d) { 
		            d.userId = $("#search-userId").val(),
		            d.userNm = $("#search-userNm").val(),
		            d.stDate = $("#search-stDate").val(),
		            d.edDate = $("#search-edDate").val()
				},
				dataSrc: 'list' // --> 리스트가 담긴 응답의 키값
			},
			//컬럼에 매칭되는 데이터 키값
			columns: [{data:'userId', name:"userId"}
						 ,{data:'userNm', name:"userNm"}
						 ,{data:'mbTleNo', name:"mbTleNo"}
						 ,{data:'emailAddr', name:"emailAddr"}
						 ,{data:'userStatCode', name:"userStatCode"}
						 ,{data:'enteId', name:"enteId"}
						 ,{data:'sbscrbDt', name:"sbscrbDt"}
						 ,{data:'sbscrbDt', name:"sbscrbDt", render: function(data, type, row, meta){							
						    	if(type === 'display'){
						    			//data = '<a href="#"><i class="fa fa-edit"></i></a> <a href="#"><i class="fa fa-trash"></i></a>';
						    			data = '<button type="button" class="btn btn btn-outline-info btn-sm" onclick="userLoad(\'' + row.uniqueId + '\')"><i class="fal fa-edit"></i></button> <button type="button" class="btn btn-outline-danger btn-sm"><i class="fal fa-trash"></i></button>';
							    	}
							    	return data;
								}}
						 ],
						 
						 
			 columnDefs: [					    
				    { "className": 'text-center', "visible": true, "targets": 0,},
				    { "className": 'text-center', "visible": true, "targets": 1 },
				    { "className": 'text-center', "visible": true, "targets": 2 },
				    { "className": 'text-center', "visible": true, "targets": 3 },
				    { "className": 'text-center', "visible": true, "targets": 4 },
				    { "className": 'text-center', "visible": true, "targets": 5 },
				    { "className": 'text-center', "visible": true, "targets": 6 },				   
				    { "className": 'text-center', "visible": true, "targets": 7, "bSortable": false }
				  ]
		});
	}
	
</script>
