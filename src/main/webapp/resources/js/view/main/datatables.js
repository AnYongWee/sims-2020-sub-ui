	//인버터 현황 데이터 테이블 설정
	var invrtr_list_count = 0;
	function datatable_invrtr() {
		if (invrtr_list_table){
			invrtr_list_table.api().ajax.reload();	
		}else{
			invrtr_list_table = $('#invrtr-list').dataTable({
				fixedHeader : true,
				language : lang_kor,
				destroy : true,
				searching : false,
				paging : false,
				info : false,
				ordering : false,
				scrollResize: true,
				scrollY: $('#row-left-bottom').height() - 108,
				scrollCollapse: true,
				responsive: true,
				drawCallback : function(settings){
					for(var i = 0; i < (10-invrtr_list_count); i++){
						var empty = '<tr class="tr-empty"><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td></tr>';			
						$('#invrtr-list > tbody:last').append(empty);	
					}
					
				},
				ajax : {
					type: "POST",
					url : '/ajax/getInvrtrOprtList.do',
					global: false,
					dataSrc : function(data) {
						invrtr_list_count = data.list.length;
						return data.list;
					}
				},
	            columns: [
	            	{ id: "siteNm", data: "siteNm", "visible": true, "searchable": false, type: "readonly", className : 'text-center' },
	            	{ id: "devNm", data: "devNm", "visible": true, "searchable": false, type: "readonly", className : 'text-center' },
	            	{ id: "dcPowr", data: "dcPowr", "visible": true, "searchable": false, type: "readonly", className : 'text-center', render: function(data, type) { return data + " kW";}},
	            	{ id: "dcVolt", data: "dcVolt", "visible": true, "searchable": false, type: "readonly", className : 'text-center', render: function(data, type) { return data + " V";}},
	            	{ id: "dcCurr", data: "dcCurr", "visible": true, "searchable": false, type: "readonly", className : 'text-center', render: function(data, type) { return data + " A";}},
	            	{ id: "acPowr", data: "acPowr", "visible": true, "searchable": false, type: "readonly", className : 'text-center', render: function(data, type) { return data + " kW";}},
	            	{ id: "acVlot", data: "acVlot", "visible": true, "searchable": false, type: "readonly", className : 'text-center', render: function(data, type) { return data + " V";}},
	            	{ id: "acCurr", data: "acCurr", "visible": true, "searchable": false, type: "readonly", className : 'text-center', render: function(data, type) { return data + " A";}},
	            	{ id: "gentQnt", data: "gentQnt", "visible": true, "searchable": false, type: "readonly", className : 'text-center', render: function(data, type) { return data + " kW";}},
	            	{ id: "invrtrEffi", data: "invrtrEffi", "visible": true, "searchable": false, type: "readonly", className : 'text-center', render: function(data, type) { return data + " %";}},
	            	{ id: "invrtrEffi", data: "invrtrEffi", "visible": true, "searchable": false, type: "readonly", className : 'text-center', render: function(data, type, row) {            		
	            		if(parseFloat(row.gentQnt) > 0 && parseFloat(row.invrtrEffi) >= 85){
	            			return '<div class="spinner-grow spinner-grow-sm text-success mr-1"></div>발전중';	
	            		}else if(parseFloat(row.gentQnt) == 0){
	            			return '<div class="spinner-grow spinner-grow-sm text-muted mr-1"></div>발전량없음';
	            		}else if(parseFloat(row.invrtrEffi) < 85){
	            			return '<div class="spinner-grow spinner-grow-sm text-warning mr-1"></div>점검필요';
	            		}else{
	            			return '<div class="spinner-grow spinner-grow-sm text-danger mr-1"></div>장애';
	            		}
	            	} }
	            ]
			});
		}
	}
	

	//경보이력 데이터 테이블 설정
	var alarm_list_table, alarm_list_count = 0;
	function datatable_alarm() {
		if (alarm_list_table){
			alarm_list_table.api().ajax.reload();	
		}else{
			alarm_list_table = $('#alarm-list').dataTable({
				fixedHeader : true,
				language : lang_kor,
				destroy : true,
				searching : false,
				paging : false,
				info : false,
				ordering : false,
				scrollResize: true,
				scrollY: $('#row-right-bottom').height() - 78,
				scrollCollapse: true,
				responsive: true,
				drawCallback : function(settings){
					for(var i = 0; i < (10-alarm_list_count); i++){
						var empty = '<tr class="tr-empty"><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td><td class="text-left"></td></tr>';			
						$('#alarm-list > tbody:last').append(empty);	
					}
					
				},
				ajax : {
					url : '/ajax/getEvtHstList.do',
					type : 'POST',			
					global: false,
					data : {				
						start : 0,
						length: 9999,
						'order[0][column]': 0,
						'order[0][dir]': "desc",
						searchDevSeq : '',
						searchEvtCd : '',
						searchGdCd : '',
						searchStsCd : '',
						startDate : getDate(0).replace(/-/gi, ""),
						endDate : getDate(0).replace(/-/gi, "")
					},						
					dataSrc: function ( data ) {	      
						alarm_list_count = data.list.length;
		                return data.list;
		            }     
				},
				columns: [            	
	            	{ id: "occuTod", data: "occuTod", "visible": true, "searchable": false, type: "readonly", className : 'text-center', 
	            		render: function(data, type) {            			
	            			return data.substr(0,4) + "-" + data.substr(4,2) + "-" + data.substr(6,2) + " " + data.substr(8,2) + ":" + data.substr(10,2);
	            		}
	            	},
	            	{ id: "siteNm", data: "siteNm", "visible": true, "searchable": false, type: "readonly", className : 'text-center' },
	            	{ id: "devNm", data: "devNm", "visible": true, "searchable": false, type: "readonly", className : 'text-center' },            	
	            	{ id: "evtNm", data: "evtNm", "visible": true, "searchable": false, type: "readonly", className : 'text-center' },            	
	            	{ id: "evtGdVal", data: "evtGdVal", "visible": true, "searchable": false, type: "readonly", className : 'text-center', 
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
	            	{ id: "evtStsVal", data: "evtStsVal", "visible": true, "searchable": false, type: "readonly", className : 'text-center' }            	
	            ]
			});
		}
	}