	 
	//================================================
	//파일명: facLightControl.js
	//설명: 설비제어 화면 조명설비 탭 관련 script
	//작성일자: 2020.11.17
	//================================================
	
	//데이터테이블 객체
	var light_control_list_dataTable;
	
	$(document).ready(function(){
		
		light_control_commonCodesJs();
		
		//데이터테이블 초기화
		light_control_list_datatableInitialization();
		
		//등록 버튼 클릭
		$("#btn_light_control_Add").click(function() {
			light_control_list_add();
		});	
		//삭제 버튼 클릭
		$("#btn_light_control_Delete").click(function() {
			datatable_row_del(light_control_list_dataTable, "light-control-list",  1);			
		});
		//저장 버튼 클릭
		$("#btn_light_control_Save").click(function() {
			facLightControlSave();
		});
		//목록 홈화면 이동 버튼 클릭
		$("#btn_light_control_List").click(function() {
			location.href="/main/dashboard.do";
		});
	});
	
	//조명설비 데이터 테이블 설정
	function light_control_list_datatableInitialization(){
		light_control_list_dataTable = $('#light-control-list').DataTable({
			paging:   false,
			fixedHeader: true,
			destroy: true,
			bFilter: false,
			language : lang_kor,
			order: [],
			serverSide: false,					
			ajax: {
				url: '/user/getFacLightControlList.do',
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
						 ,{data:'lampCd', name:"lampCd", render: function(data, type, row, meta){
							    return getTypeElement("hidden", "lampCd", row.lampCd);						
							}}
						 ,{data:'bldId', name:"bldId", render: function(data, type, row, meta){
							    return getTypeElement("check", "check", false);
							}}						 		
						 ,{data:'rowNumbe', name:"rowNumbe"}
						 ,{data:'lampNm', name:"lampNm"}
						 ,{data:'lampKindCd', name:"lampKindCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "lampKindCd", data, lamcKindCodes, true);							    
							}}
						 ,{data:'etc', name:"etc", render: function(data, type, row, meta){
							 	return getTypeElement("textarea", "etc", data);							 								    
							}}						 
						 ],
			 columnDefs: [					    
				    { "className": 'text-center', "visible": false, "targets": 0, "bSortable": false },				    
				    { "className": 'text-center border-right-0', "visible": true, "targets": 1, "bSortable": false },
				    { "className": 'text-left', "visible": true, "targets": 2, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 3, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 4, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 5, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 6, "bSortable": false }
				  ]
		});	
	}
	
	//테이블 행 추가
	function light_control_list_add(){
		var data = new Object();
		data.bldId = $("#bldId").val();
		data.lampCd = "LC";
		data.chk = false;
		data.rowNumbe = light_control_list_dataTable.data().count() + 1;
		data.lampNm = "조명제어";
		data.lampKindCd = "";
		data.etc = "";				
		
		datatable_row_add(light_control_list_dataTable, "light-control-list", data);
	}
	
	//난방설비 정보 저장
	function facLightControlSave(){
		
		var url = "/detail/saveFacLightControlInfo.do";
		
		var param = getTableParams("facLightControlInfoList", "light-control-list");
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
	
	