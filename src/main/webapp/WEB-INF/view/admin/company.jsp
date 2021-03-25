<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<main id="js-page-content" role="main" class="page-content">
                             
<ol class="breadcrumb bg-transparent border border-primary">
	<li class="breadcrumb-item text-primary"><a class="text-primary" href="#"> <i class="fal fa-cogs mr-1 fs-md"></i> 관리</a></li>
	<li class="breadcrumb-item text-primary"><a class="text-primary" href="#"> <i class="fal fa-user-tie mr-1 fs-md"></i> 고객사관리</a></li>
</ol>

<div class="card border mb-4 mb-xl-0">
	<div class="card-header  py-2 pr-2 d-flex align-items-center flex-wrap">
		<div class="row">
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">고객사명</span>
					</div>
					<input type="text" id="basic-addon1" class="form-control" placeholder="" aria-label="Username">
				</div>
			</div>

			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">사업자등록번호</span>
					</div>
					<input type="text" id="basic-addon1" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
				</div>
			</div>
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">담당자명</span>
					</div>
					<input type="text" id="basic-addon1" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1">
				</div>
			</div>
			<div class="col-xs-3 p-1">
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text search-lable">고객유형</span>
					</div>
					<select class="custom-select form-control">
						<option selected="">Open this select menu</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
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
				<table class="table table-bordered table-hover table-striped w-100" id="list">
						<thead>							
							<tr>
								<th>일련번호</th>
								<th>고객사명</th>
								<th>사업자등록번호</th>
								<th>고객유형</th>
								<th>전화번호</th>
								<th>담당자명</th>
								<th>담당자연락처</th>								
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
		
		/* start data table */
        var myTable = $('#list').dataTable(
        {  
            dom: "<'row mb-3'<'col-sm-12 col-md-6 d-flex align-items-center justify-content-start'f><'col-sm-12 col-md-6 d-flex align-items-center justify-content-end'B>>" +
                "<'row'<'col-sm-12'tr>>" +
                "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
            /* ajax: "data.json", */            
            language: lang_kor,            
            select: 'single',            
            altEditor: true,
            responsive: true,
            searching: false,            
            buttons: [
				{
					text: '<i class="fal fa-plus mr-1"></i> 추가',
					name: 'add',
					className: 'btn-success btn-sm mr-1'
				},
	            {
	                extend: 'selected',
	                text: '<i class="fal fa-times mr-1"></i> 삭제',
	                name: 'delete',
	                className: 'btn-primary btn-sm mr-1'
	            },
	            {
	                extend: 'selected',
	                text: '<i class="fal fa-edit mr-1"></i> 수정',
	                name: 'edit',
	                className: 'btn-primary btn-sm mr-1'
	            },
	           
	            {
	                text: '<i class="fal fa-sync mr-1"></i> 새로고침',
	                name: 'refresh',
	                className: 'btn-primary btn-sm'
	            }
            ],
            columns: [
            	{ title: "일련번호", id: "custSeq", data: "custSeq", "visible": false, "searchable": false, type: "readonly" },
            	{ title: "고객사명", id: "custNm", data: "custNm", "visible": true, "searchable": false, type: "readonly" },
            	{ title: "사업자등록번호", id: "bizNo", data: "bizNo", "visible": true, "searchable": false, type: "readonly" },
            	{ title: "고객유형", id: "custType", data: "custType", "visible": true, "searchable": false, type: "readonly" },
            	{ title: "전화번호", id: "telNo", data: "telNo", "visible": true, "searchable": false, type: "readonly" },
            	{ title: "담당자명", id: "cntPsnNm", data: "cntPsnNm", "visible": true, "searchable": false, type: "readonly" },
            	{ title: "담당자연락처", id: "cntPsnHpno", data: "cntPsnHpno", "visible": true, "searchable": false, type: "readonly" }
            ],
            /* default callback for insertion: mock webservice, always success */
            onAddRow: function(dt, rowdata, success, error)
            {
                console.log("Missing AJAX configuration for INSERT");
                success(rowdata);

                // demo only below:
                events.prepend('<p class="text-success fw-500">' + JSON.stringify(rowdata, null, 4) + '</p>');
            },
            onEditRow: function(dt, rowdata, success, error)
            {
                console.log("Missing AJAX configuration for UPDATE");
                success(rowdata);

                // demo only below:
                events.prepend('<p class="text-info fw-500">' + JSON.stringify(rowdata, null, 4) + '</p>');
            },
            onDeleteRow: function(dt, rowdata, success, error)
            {
                console.log("Missing AJAX configuration for DELETE");
                success(rowdata);

                // demo only below:
                events.prepend('<p class="text-danger fw-500">' + JSON.stringify(rowdata, null, 4) + '</p>');
            },
        });
	});

</script>