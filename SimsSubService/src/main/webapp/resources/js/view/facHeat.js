	 
	//================================================
	//파일명: facHeat.js
	//설명: 설비정보 화면 난방설비 탭 관련 script
	//작성일자: 2020.11.16
	//================================================
	
	//데이터테이블 객체
	var heat_list_dataTable;
	
	$(document).ready(function(){
		
		heat_commonCodesJs();
		
		//데이터테이블 초기화
		heat_list_datatableInitialization();
		
		//등록 버튼 클릭
		$("#btn_heat_Add").click(function() {
			heat_list_add();
		});	
		//삭제 버튼 클릭
		$("#btn_heat_Delete").click(function() {
			datatable_row_del(heat_list_dataTable, "heat-list",  1);			
		});
		//저장 버튼 클릭
		$("#btn_heat_Save").click(function() {
			facHeatSave();
		});
		//목록 홈화면 이동 버튼 클릭
		$("#btn_heat_List").click(function() {
			location.href="/main/dashboard.do";
		});
	});
	
	//난방설비 데이터 테이블 설정
	function heat_list_datatableInitialization(){
		heat_list_dataTable = $('#heat-list').DataTable({
			paging:   false,
			fixedHeader: true,
			destroy: true,
			bFilter: false,
			language : lang_kor,
			order: [],
			serverSide: false,					
			ajax: {
				url: '/user/getFacHeatList.do',
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
						 ,{data:'hetgPrvsCd', name:"hetgPrvsCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "hetgPrvsCd", data, hetgPrvsCodes, true);
							}}
						 ,{data:'hetgOprtrCd', name:"hetgOprtrCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "hetgOprtrCd", data, hetgOprtrCodes, null, "hetgOprtrCdChange");
							}}
						 ,{data:'hetgWthtCd', name:"hetgWthtCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "hetgWthtCd", data, hetgWthtCodes);
							}}
						 ,{data:'hetgCd', name:"hetgCd", render: function(data, type, row, meta){
							 	return getTypeElement("select", "hetgCd", data, hetgCodes);							    
							}}
						 ,{data:'hetgKindCd', name:"hetgKindCd", render: function(data, type, row, meta){
							 return createOptionHetgKindHtml(row.hetgOprtrCd, data);
							}}
						 ,{data:'hetgKindEtc', name:"hetgKindEtc", render: function(data, type, row, meta){
							 return getTypeElement("text", "hetgKindEtc", data, null, null, null, "기타");
							}}
						 ,{data:'hetgCapa', name:"hetgCapa", render: function(data, type, row, meta){
							    return getTypeElement("text", "hetgCapa", data);
							}}
						 ,{data:'hetgFuelCd', name:"hetgFuelCd", render: function(data, type, row, meta){
							 return getTypeElement("select", "hetgFuelCd", data, hetgFuelCodes);
							}}
						 ,{data:'hetgFuelEtc', name:"hetgFuelEtc", render: function(data, type, row, meta){
							 return getTypeElement("text", "hetgFuelEtc", data, null, null, null, "기타");
							}}
						 ,{data:'eqpNm', name:"eqpNm", render: function(data, type, row, meta){
							 return getTypeElement("text", "eqpNm", data);
							}}
						 ,{data:'eqpCnt', name:"eqpCnt", render: function(data, type, row, meta){
							    return getTypeElement("text", "eqpCnt", data);
							}}
						 ,{data:'efic', name:"efic", render: function(data, type, row, meta){
							    return getTypeElement("text", "efic", data);
							}}
						 ,{data:'cop', name:"cop", render: function(data, type, row, meta){
							    return getTypeElement("text", "cop", data);
							}}
						 ,{data:'cnnRege', name:"cnnRege", render: function(data, type, row, meta){
							    return getTypeElement("text", "cnnRege", data);
							}}
						 ,{data:'totPumpPower', name:"totPumpPower", render: function(data, type, row, meta){
							    return getTypeElement("text", "totPumpPower", data);
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
				    { "className": 'text-center', "visible": true, "targets": 17, "bSortable": false }
				  ]
		});	
	}
	
	//테이블 행 추가
	function heat_list_add(){
		var data = new Object();
		data.bldId = $("#bldId").val();
		data.chk = false;
		data.rowNumbe = heat_list_dataTable.data().count() + 1;
		data.hetgPrvsCd = "";
		data.hetgOprtrCd = "";
		data.hetgWthtCd = "";
		data.hetgCd = "";
		data.hetgKindCd = "";
		data.hetgKindEtc = "";
		data.hetgCapa = "";
		data.hetgFuelCd = "";
		data.hetgFuelEtc = "";
		data.eqpNm = "";
		data.eqpCnt = "";
		data.efic = "";		
		data.cop = "";
		data.cnnRege = "";
		data.totPumpPower = "";
		
		datatable_row_add(heat_list_dataTable, "heat-list", data);
	}
	
	//난방설비 정보 저장
	function facHeatSave(){
		
		var url = "/detail/saveFacHeatInfo.do";
		
		var param = getTableParams("facHeatInfoList", "heat-list");
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
	
	function hetgOprtrCdChange(obj){		
		var hetgKindObj = $(obj).closest('tr').find('select[name="hetgKindCd"]');
		var hetgOprtrCd = $(obj).val();
		
		createOptionHetgKind(hetgKindObj, hetgOprtrCd, "");		
	}
	
	function createOptionHetgKind(obj, hetgOprtrCd, selectCd){
		$.ajax({
            type: "POST",
            url: "/code/getCodeList.do",       
            dataType: 'json',
            data: {grpCodeId: "HETG_KIND_CD", codeExpl: hetgOprtrCd},
            success : function(data) {	            	  
            	obj.empty();
            	obj.append("<option value=''>선택</option>");
          	  	for(var count = 0; count < data.list.length; count++){
          		
					var selected = "";
					if (selectCd == data.list[count].codeId){
						selected = "selected";
					}
					
					var option = $("<option value='" + data.list[count].codeId + "' " + selected + ">"+data.list[count].codeVal+"</option>");	                      
					obj.append(option);
                }
            },
            error: function(e){
                alert("요청에 실패 하였습니다.");
            }
        });
	}
	
	function createOptionHetgKindHtml(hetgOprtrCd, selectCd){
		
		var html = '<select class="inline-editor" name="hetgKindCd" >';
		
		$.ajax({
            type: "POST",
            url: "/code/getCodeList.do",       
            dataType: 'json',
            data: {grpCodeId: "HETG_KIND_CD", codeExpl: hetgOprtrCd},
            async: false,
            success : function(data) {
            	html += "<option value=''>선택</option>";
            	
          	  	for(var count = 0; count < data.list.length; count++){
          		
					var selected = "";
					if (selectCd == data.list[count].codeId){
						selected = "selected";
					}
					html += "<option value='" + data.list[count].codeId + "' " + selected + ">"+data.list[count].codeVal+"</option>";
                }
            },
            error: function(e){
                alert("요청에 실패 하였습니다.");
            }
        });
		
		html += "</select>";
		return html;
	}
	
	