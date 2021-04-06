	//데이터 테이블 설정
	function datatable_hour() {
		
		var startDate = $("#start-date-hour").val();
		startDate = startDate.replace(/-/gi, "");
		
        var myTable = $('#hour-list').dataTable(
        {       
            fixedHeader: true,
            destroy: true,
            language: lang_kor,            
            select: 'single',            
            altEditor: true,
            responsive: true,
            searching: false,
            scrollY: 200,
            scrollCollapse: true,
            paging : false,
            
            ajax : {
				url : '/ajax/stats/getSolarHourSummary.do',
				type : 'POST',
				data : {
					startDate : startDate
				},
				dataSrc: function ( data ) {
	                
					//그래프 생성
					var categories = [], genList = [], genEffi = [], prnmtrList = [];
					
					for (var i = 0; i < data.list.length; i++){
						categories[i] = [data.list[i].tgtTime];
						genList[i] = [data.list[i].tgtTime, data.list[i].gentQnt];
						genEffi[i] = [data.list[i].tgtTime, data.list[i].invrtrEffi];	
					}
					
					drawChart_hour(categories, genList, genEffi, prnmtrList);
					
	                return data.list;
	            }     
			},
			
            columns: [
            	{  id: "tgtTime", data: "tgtTime", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
            	{ id: "instlCpct", data: "instlCpct", "visible": true, "searchable": false, type: "readonly", className : 'text-right font-weight-bold' },            	
            	{ id: "gentQnt", data: "gentQnt", "visible": true, "searchable": false, type: "readonly", className : 'text-right font-weight-bold' },
            	{ id: "accumGentQnt", data: "accumGentQnt", "visible": true, "searchable": false, type: "readonly", className : 'text-right font-weight-bold' },
            	{ id: "gentEffi", data: "gentEffi", "visible": true, "searchable": false, type: "readonly", className : 'text-right font-weight-bold' },
            	{ id: "accumGentEffi", data: "accumGentEffi", "visible": true, "searchable": false, type: "readonly", className : 'text-right font-weight-bold' },
            	{ id: "invrtrEffi", data: "invrtrEffi", "visible": true, "searchable": false, type: "readonly", className : 'text-right font-weight-bold' },
            	{ id: "sysEffi", data: "sysEffi", "visible": true, "searchable": false, type: "readonly", className : 'text-right font-weight-bold' },
            	{ id: "rducAmt", data: "rducAmt", "visible": true, "searchable": false, type: "readonly", className : 'text-right font-weight-bold', render: $.fn.dataTable.render.number( ',', '.', 0, '' ) }
            ]
        });
	}
	
	//시간별 그래프 그리기
	function drawChart_hour(categories, genList, genEffi, prnmtrList){
		
		Highcharts.chart('container', {

		    title: { 
		    	text: '' 
			},
		    chart: {
	            renderTo: 'container',
	            backgroundColor: 'transparent'
	        },
	        exporting: {
	            enabled: false
			},
		    xAxis: {
		    	categories: categories,
		    	labels: {
		            formatter: function() {		            			            	
		            	return this.value + " 시";
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
		    	// 발전효율 Y축 설정
		        labels: {
		            format: '{value} %',
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
		    		/*,{name: '발전효율', data: genEffi, yAxis: 1, zIndex: 1, color: "#BDBDBD", type: 'column', 
		    			marker: {
		            		fillColor: 'white',
		            		lineWidth: 2,
		            		lineColor: Highcharts.getOptions().colors[0]
		        		},
		        		tooltip: {
		            		valueSuffix: ' %'
		        		}
		    		}*/
		    ]
		});
	}