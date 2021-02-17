	 
	//================================================
	//파일명: facIce.js
	//설명: 설비정보 화면 냉방설비 탭 관련 script
	//작성일자: 2020.11.16
	//================================================
	
	//데이터테이블 객체
	var ice_list_dataTable;
	
	$(document).ready(function(){
		
		ice_commonCodesJs();
		
		//데이터테이블 초기화
		ice_list_datatableInitialization();
		
		//등록 버튼 클릭
		$("#btn_ice_Add").click(function() {
			ice_list_add();
		});	
		//삭제 버튼 클릭
		$("#btn_ice_Delete").click(function() {
			datatable_row_del(ice_list_dataTable, "ice-list",  1);			
		});
		//저장 버튼 클릭
		$("#btn_ice_Save").click(function() {
			facIceSave();
		});
		//목록 홈화면 이동 버튼 클릭
		$("#btn_ice_List").click(function() {
			location.href="/main/dashboard.do";
		});
	});
	
	//냉방설비 데이터 테이블 설정
	function ice_list_datatableInitialization(){
		ice_list_dataTable = $('#ice-list').DataTable({
			paging:   false,
			fixedHeader: true,
			destroy: true,
			bFilter: false,
			language : lang_kor,
			order: [],
			serverSide: false,					
			ajax: {
				url: '/user/getFacIceList.do',
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
						 ,{data:'coolPrvsCd', name:"coolPrvsCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "coolPrvsCd", data, coolPrvsCodes, true);
							}}
						 ,{data:'coolOprtrCd', name:"coolOprtrCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "coolOprtrCd", data, coolOprtrCodes);							    
							}}
						 ,{data:'coolKindCd', name:"coolKindCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "coolKindCd", data, coolKindCodes);
							}}
						 ,{data:'coolKindEtc', name:"coolKindEtc", render: function(data, type, row, meta){
							    return getTypeElement("text", "coolKindEtc", data, null, null, null, "기타");
							}}
						 ,{data:'coolMthdCd', name:"coolMthdCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "coolMthdCd", data, coolMthdCodes);
							}}
						 ,{data:'chilrKindCd', name:"chilrKindCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "chilrKindCd", data, chilrKindCodes);							    
							}}
						 ,{data:'coolCapa', name:"coolCapa", render: function(data, type, row, meta){
							    return getTypeElement("text", "coolCapa", data);
							}}
						 ,{data:'coolRRtCapa', name:"coolRRtCapa", render: function(data, type, row, meta){
							    return getTypeElement("text", "coolRRtCapa", data);
							}}
						 ,{data:'cnsmElcp', name:"cnsmElcp", render: function(data, type, row, meta){
							    return getTypeElement("text", "cnsmElcp", data);
							}}
						 ,{data:'coolFuelCd', name:"coolFuelCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "coolFuelCd", data, coolFuelCodes);
							}}
						 ,{data:'coolFuelEtc', name:"coolFuelEtc", render: function(data, type, row, meta){
							    return getTypeElement("text", "coolFuelEtc", data, null, null, null, "기타");
							}}
						 ,{data:'eqpNm', name:"eqpNm", render: function(data, type, row, meta){
							    return getTypeElement("text", "eqpNm", data);
							}}
						 ,{data:'eqpCnt', name:"eqpCnt", render: function(data, type, row, meta){
							    return getTypeElement("text", "eqpCnt", data);
							}}
						 ,{data:'heatPerfNot', name:"heatPerfNot", render: function(data, type, row, meta){
							    return getTypeElement("text", "heatPerfNot", data);
							}}
						 ,{data:'cnnRege', name:"cnnRege", render: function(data, type, row, meta){
							    return getTypeElement("text", "cnnRege", data);
							}}
						 ,{data:'icedPumpPower', name:"icedPumpPower", render: function(data, type, row, meta){
							    return getTypeElement("text", "icedPumpPower", data);
							}}
						 ,{data:'cltwrKindCd', name:"cltwrKindCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "cltwrKindCd", data, cltwrKindCodes);
							}}
						 ,{data:'coolPumpPower', name:"coolPumpPower", render: function(data, type, row, meta){
							    return getTypeElement("text", "coolPumpPower", data);
							}}
						 ],
			 columnDefs: [					    
				    { "className": 'text-center', "visible": false, "targets": 0, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 1, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 2, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 3, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 4, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 5, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 6, "bSortable": false },				   
				    { "className": 'text-center', "visible": true, "targets": 7, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 8, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 9, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 10, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 11, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 12, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 13, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 14, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 15, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 16, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 17, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 18, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 19, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 20, "bSortable": false }
				  ]
		});	
	}
	
	//테이블 행 추가
	function ice_list_add(){
		var data = new Object();
		data.bldId = $("#bldId").val();
		data.chk = false;
		data.rowNumbe = ice_list_dataTable.data().count() + 1;
		data.coolPrvsCd = "";
		data.coolOprtrCd = "";
		data.coolKindCd = "";
		data.coolKindEtc = "";
		data.coolMthdCd = "";
		data.chilrKindCd = "";
		data.coolCapa = "";
		data.coolRRtCapa = "";
		data.cnsmElcp = "";
		data.coolFuelCd = "";
		data.coolFuelEtc = "";
		data.eqpNm = "";		
		data.eqpCnt = "";
		data.heatPerfNot = "";
		data.cnnRege = "";
		data.icedPumpPower = "";
		data.cltwrKindCd = "";
		data.coolPumpPower = "";
		
		datatable_row_add(ice_list_dataTable, "ice-list", data);
	}
	
	//냉방설비 정보 저장
	function facIceSave(){
		
		var url = "/detail/saveFacIceInfo.do";
		
		var param = getTableParams("facIceInfoList", "ice-list");
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
	
	