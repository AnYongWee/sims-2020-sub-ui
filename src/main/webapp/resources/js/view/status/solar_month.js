	//데이터 테이블 설정
	function datatable_month() {
		
		var startDate = $("#start-date-month").val();
		startDate = startDate.replace(/-/gi, "");
		
		var endDate = $("#end-date-month").val();
		endDate = endDate.replace(/-/gi, "");
		
        var myTable = $('#month-list').dataTable(
        {       
            fixedHeader: true,
            destroy: true,
            language: lang_kor,
            altEditor: true,
            responsive: true,
            searching: false,
            scrollY: 200,
            scrollCollapse: true,
            paging : false,
            
            ajax : {
				url : '/ajax/getSolarMonthSummary.do',
				type : 'POST',
				data : {
					startDate : startDate,
					endDate : endDate
				},
				dataSrc: function ( data ) {
	                
					//그래프 생성
					var genList = [], genTimeList = [], prnmtrList = [], categories = [];
					
					for (var i = 0; i < data.list.length; i++){
						categories[i] = [data.list[i].tgtYm];
						genList[i] = [data.list[i].tgtYm, data.list[i].monGentQnt];
						genTimeList[i] = [data.list[i].tgtYm, data.list[i].monGentTime];
					}
					
					drawHighChart_month(categories, genList, genTimeList, prnmtrList);
					
	                return data.list;
	            }     
			},
			
            columns: [
            	{ id: "tgtYm", data: "tgtYm", "visible": true, "searchable": false, type: "readonly", className : 'text-center', 
            		render: function(data, type) {            			
            			return data.substr(0,4) + "-" + data.substr(4,2);
            		}
            	},
            	{ id: "instlCpct", data: "instlCpct", "visible": true, "searchable": false, type: "readonly", className : 'text-right' },
            	{ id: "monGentTime", data: "monGentTime", "visible": true, "searchable": false, type: "readonly", className : 'text-right' },
            	{ id: "monGentQnt", data: "monGentQnt", "visible": true, "searchable": false, type: "readonly", className : 'text-right' },
            	{ id: "accumGentQnt", data: "accumGentQnt", "visible": true, "searchable": false, type: "readonly", className : 'text-right' },
            	{ id: "gentEffi", data: "gentEffi", "visible": true, "searchable": false, type: "readonly", className : 'text-right' },
            	{ id: "accumGentEffi", data: "accumGentEffi", "visible": true, "searchable": false, type: "readonly", className : 'text-right' },
            	{ id: "invrtrEffi", data: "invrtrEffi", "visible": true, "searchable": false, type: "readonly", className : 'text-right' },
            	{ id: "sysEffi", data: "sysEffi", "visible": true, "searchable": false, type: "readonly", className : 'text-right' },
            	{ id: "rducAmt", data: "rducAmt", "visible": true, "searchable": false, type: "readonly", className : 'text-right', render: $.fn.dataTable.render.number( ',', '.', 0, '' ) }
            ]
        });
	}
	
	//시간별 그래프 그리기
	function drawHighChart_month(categories, genList, genTimeList, prnmtrList){
		
		Highcharts.chart('container', {

		    title: { 
		    	text: '' 
			},
		    chart: {
	            renderTo: 'container',
	            backgroundColor: 'transparent'
	        },
	        credits: {
	            enabled: false
	        },
	        exporting: {
	            enabled: false
			},
		    xAxis: {
		    	categories: categories,
		    	labels: {
		            formatter: function() {
		            	var data = String(this.value);		            	
		            	return data.substr(2,2) + "/" + data.substr(4,2);
		            }
		          }
		    },
		    yAxis: [{ 
		    	// 발전량 Y축 설정
		        labels: {
		            format: '{value} kWh',
		            style: {
		                color: Highcharts.getOptions().colors[1]
		            }
		        },
		        title: {
		            text: '',
		            style: {
		                color: Highcharts.getOptions().colors[2]
		            }
		        },
		        opposite: false	        

		    },
		    { 
		    	// 발전시간 Y축 설정
		        labels: {
		            format: '{value} h',
		            style: {
		                color: Highcharts.getOptions().colors[1]
		            }
		        },
		        title: {
		            text: '',
		            style: {
		                color: Highcharts.getOptions().colors[2]
		            }
		        },
		        opposite: true

		    }],

		    tooltip: {
		        crosshairs: true,
		        shared: true
		    },

		    series: [
		    		//발전량 데이터 설정
		    		{name: '발전량', data: genList, yAxis: 0, zIndex: 2, color: "#0101DF", 
		    			marker: {
		            		fillColor: 'white',
		            		lineWidth: 2,
		            		lineColor: Highcharts.getOptions().colors[0]
		        		},
		        		tooltip: {
		            		valueSuffix: ' kWh'
		        		}
		    		}
		    		,{name: '발전시간', data: genTimeList, yAxis: 1, zIndex: 1, color: "#BDBDBD", type: 'column', 
		    			marker: {
		            		fillColor: 'white',
		            		lineWidth: 2,
		            		lineColor: Highcharts.getOptions().colors[0]
		        		},
		        		tooltip: {
		            		valueSuffix: ' h'
		        		}
		    }]
		});
	}