	 
	//================================================
	//파일명: facInter.js
	//설명: 설비정보 화면 실내단말기 탭 관련 script
	//작성일자: 2020.11.17
	//================================================
	
	//데이터테이블 객체
	var inter_list_dataTable;
	
	$(document).ready(function(){
		
		//데이터테이블 초기화
		inter_list_datatableInitialization();
		
		//등록 버튼 클릭
		$("#btn_inter_Add").click(function() {
			inter_list_add();
		});	
		//삭제 버튼 클릭
		$("#btn_inter_Delete").click(function() {
			datatable_row_del(inter_list_dataTable, "inter-list",  1);			
		});
		//저장 버튼 클릭
		$("#btn_inter_Save").click(function() {
			facInterSave();
		});
		//목록 홈화면 이동 버튼 클릭
		$("#btn_inter_List").click(function() {
			location.href="/main/dashboard.do";
		});
	});
	
	//난방설비 데이터 테이블 설정
	function inter_list_datatableInitialization(){
		inter_list_dataTable = $('#inter-list').DataTable({
			paging:   false,
			fixedHeader: true,
			destroy: true,
			bFilter: false,
			language : lang_kor,
			order: [],
			serverSide: false,					
			ajax: {
				url: '/user/getFacInterList.do',
				type: 'POST',
				async: false,
				data: function(d) { 
		            d.bldId = $("#bldId").val()
				},
				dataSrc: 'list' // --> 리스트가 담긴 응답의 키값
			},
			//컬럼에 매칭되는 데이터 키값
			columns: [
						  {data:'bldId', name:"bldId"}					
						 ,{data:'bldId', name:"bldId", render: function(data, type, row, meta){
							    return getTypeElement("check", "check", false);
							}}						 		
						 ,{data:'rowNumbe', name:"rowNumbe"}						 
						 ,{data:'eqpNm', name:"eqpNm", render: function(data, type, row, meta){
							 return getTypeElement("text", "eqpNm", data);							    
							}}
						 ,{data:'tmlCapa', name:"tmlCapa", render: function(data, type, row, meta){
							 return getTypeElement("text", "tmlCapa", data);							    
							}}
						 ,{data:'tmlFanPower', name:"tmlFanPower", render: function(data, type, row, meta){
							 	return getTypeElement("text", "tmlFanPower", data);							 								    
							}}
						 ,{data:'tmlCnt', name:"tmlCnt", render: function(data, type, row, meta){
							 	return getTypeElement("text", "tmlCnt", data);							 								    
							}}						 
						 ],
			 columnDefs: [					    
				    { "className": 'text-center', "visible": false, "targets": 0, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 1, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 2, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 3, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 4, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 5, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 6, "bSortable": false }
				  ]
		});	
	}
	
	//테이블 행 추가
	function inter_list_add(){
		var data = new Object();
		data.bldId = $("#bldId").val();
		data.chk = false;
		data.rowNumbe = inter_list_dataTable.data().count() + 1;
		data.eqpNm = "";
		data.tmlCapa = "";
		data.tmlFanPower = "";
		data.tmlCnt = "";
		
		datatable_row_add(inter_list_dataTable, "inter-list", data);
	}
	
	//난방설비 정보 저장
	function facInterSave(){
		
		var url = "/detail/saveFacInterInfo.do";
		
		var param = getTableParams("facInterInfoList", "inter-list");
		param._bldId = $("#bldId").val();
		
		$.ajax({
			type: "POST",
			url: url,		
			dataType: 'json',
			data: param,
			success : function(data) {				
				if (data.resultCode == 0){
					alert("저장 되었습니다.");
				}else{
					alert(data.resultMessage);
				}
			},
			error: function(e){
				alert("요청에 실패 하였습니다.");
			}
		});		
	}
	
	