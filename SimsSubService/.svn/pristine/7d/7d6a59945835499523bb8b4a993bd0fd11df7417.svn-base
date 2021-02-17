	 
	//================================================
	//파일명: facCoop.js
	//설명: 설비정보 화면 공조설비 탭 관련 script
	//작성일자: 2020.11.16
	//================================================
	
	//데이터테이블 객체
	var coop_list_dataTable;
	
	$(document).ready(function(){
		
		coop_commonCodesJs();
		
		//데이터테이블 초기화
		coop_list_datatableInitialization();
		
		//등록 버튼 클릭
		$("#btn_coop_Add").click(function() {
			coop_list_add();
		});	
		//삭제 버튼 클릭
		$("#btn_coop_Delete").click(function() {
			datatable_row_del(coop_list_dataTable, "coop-list",  1);			
		});
		//저장 버튼 클릭
		$("#btn_coop_Save").click(function() {
			facCoopSave();
		});
		//목록 홈화면 이동 버튼 클릭
		$("#btn_coop_List").click(function() {
			location.href="/main/dashboard.do";
		});
	});
	
	//난방설비 데이터 테이블 설정
	function coop_list_datatableInitialization(){
		coop_list_dataTable = $('#coop-list').DataTable({
			paging:   false,
			fixedHeader: true,
			destroy: true,
			bFilter: false,
			language : lang_kor,
			order: [],
			serverSide: false,					
			ajax: {
				url: '/user/getFacCoopList.do',
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
						 ,{data:'hetgPrvsCd', name:"hvacPrvsCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "hvacPrvsCd", data, hvacPrvsCodes, true);							    
							}}
						 ,{data:'hvacCd', name:"hvacCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "hvacCd", data, hvacCodes);
							}}
						 ,{data:'aconCd', name:"aconCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "aconCd", data, aconCodes);
							}}
						 ,{data:'aconEtc', name:"aconEtc", render: function(data, type, row, meta){
							 return getTypeElement("text", "aconEtc", data, null, null, null, "기타");
							}}
						 ,{data:'tmlUnitCd', name:"tmlUnitCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "tmlUnitCd", data, tmlUnitCodes);							    
							}}
						 ,{data:'tmlUnitEtc', name:"tmlUnitEtc", render: function(data, type, row, meta){
							 return getTypeElement("text", "tmlUnitEtc", data, null, null, null, "기타");
							}}
						 ,{data:'inairQrtyContlCd', name:"inairQrtyContlCd", render: function(data, type, row, meta){
							 return getTypeElement("select", "inairQrtyContlCd", data, inairQrtyContlCodes);
							}}
						 ,{data:'inairQrtyContlEtc', name:"inairQrtyContlEtc", render: function(data, type, row, meta){
							 return getTypeElement("text", "inairQrtyContlEtc", data, null, null, null, "기타");
							}}
						 ,{data:'eqpNm', name:"eqpNm", render: function(data, type, row, meta){
							    return getTypeElement("text", "eqpNm", data);
							}}
						 ,{data:'eqpCnt', name:"eqpCnt", render: function(data, type, row, meta){
							 return getTypeElement("text", "eqpCnt", data);
							}}
						 ,{data:'supplyWave', name:"supplyWave", render: function(data, type, row, meta){
							 return getTypeElement("text", "supplyWave", data);
							}}
						 ,{data:'exhausWave', name:"exhausWave", render: function(data, type, row, meta){
							    return getTypeElement("text", "exhausWave", data);
							}}
						 ,{data:'supplyStticPress', name:"supplyStticPress", render: function(data, type, row, meta){
							    return getTypeElement("text", "supplyStticPress", data);
							}}
						 ,{data:'exhausStticPress', name:"exhausStticPress", render: function(data, type, row, meta){
							    return getTypeElement("text", "exhausStticPress", data);
							}}
						 ,{data:'supplyFanPower', name:"supplyFanPower", render: function(data, type, row, meta){
							    return getTypeElement("text", "supplyFanPower", data);
							}}
						 ,{data:'exhausFanPower', name:"exhausFanPower", render: function(data, type, row, meta){
							    return getTypeElement("text", "exhausFanPower", data);
							}}			
						 ,{data:'heatExchCd', name:"heatExchCd", render: function(data, type, row, meta){
							 return getTypeElement("select", "heatExchCd", data, heatExchCodes);
							}}
						 ,{data:'hetgPaybkRate', name:"hetgPaybkRate", render: function(data, type, row, meta){
							    return getTypeElement("text", "hetgPaybkRate", data);
							}}
						 ,{data:'coolPaybkRate', name:"coolPaybkRate", render: function(data, type, row, meta){
							    return getTypeElement("text", "coolPaybkRate", data);
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
				    { "className": 'text-center', "visible": true, "targets": 20, "bSortable": false },
				    { "className": 'text-center', "visible": true, "targets": 21, "bSortable": false }
				  ]
		});	
	}
	
	//테이블 행 추가
	function coop_list_add(){
		var data = new Object();
		data.bldId = $("#bldId").val();
		data.chk = false;
		data.rowNumbe = coop_list_dataTable.data().count() + 1;
		data.hvacPrvsCd = "";
		data.hvacCd = "";
		data.aconCd = "";
		data.aconEtc = "";
		data.tmlUnitCd = "";
		data.tmlUnitEtc = "";
		data.inairQrtyContlCd = "";
		data.inairQrtyContlEtc = "";
		data.eqpNm = "";
		data.eqpCnt = "";
		data.supplyWave = "";
		data.exhausWave = "";
		data.supplyStticPress = "";		
		data.exhausStticPress = "";
		data.supplyFanPower = "";
		data.exhausFanPower = "";
		data.heatExchCd = "";
		data.hetgPaybkRate = "";
		data.coolPaybkRate = "";
		
		datatable_row_add(coop_list_dataTable, "coop-list", data);
	}
	
	//난방설비 정보 저장
	function facCoopSave(){
		
		var url = "/detail/saveFacCoopInfo.do";
		
		var param = getTableParams("facCoopInfoList", "coop-list");
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
	
	