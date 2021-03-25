	//데이터 테이블 설정
	function datatable_hour() {
		
		var startDate = $("#start-date").val();
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
					var genList = [], genRanges = [], prnmtrList = [];
					
					for (var i = 0; i < data.genList.length; i++){
						genList[i] = [data.genList[i].tgtTime, data.genList[i].gentQnt];	
					}
					
					for (var i = 0; i < data.genRanges.length; i++){
						genRanges[i] = [data.genRanges[i].tgtTime, data.genRanges[i].minGentQnt, data.genRanges[i].maxGentQnt];	
					}
					
					drawChart_hour(genList, genRanges, prnmtrList);
					
	                return data.genList;
	            }     
			},
			
            columns: [
            	{  id: "tgtTime", data: "tgtTime", "visible": true, "searchable": false, type: "readonly", className : 'text-center font-weight-bold' },
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
	function drawChart_hour(genList, genRanges, prnmtrList){
		
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
		    	categories: ['00', '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23']
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

		    }
		    /* , { 
		    	// 일사량  Y축 설정
		        gridLineWidth: 0,
		        title: {
		            text: '',
		            style: {
		                color: Highcharts.getOptions().colors[0]
		            }
		        },
		        labels: {
		            format: '{value} w/㎡',
		            style: {
		                color: Highcharts.getOptions().colors[0]
		            }
		        }

		    } */
		    ],

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
		    		//최고, 최저 발전량 데이터 설정
		    		,{name: '7일전 최저, 최고 발전량', data: genRanges, type: 'arearange', lineWidth: 0, linkedTo: ':previous', color: Highcharts.getOptions().colors[0], fillOpacity: 0.3, zIndex: 1,
		        		marker: {
		        			fillColor: '#A9BCF5',
		            		enabled: false
		        		},
		        		tooltip: {
		            		valueSuffix: ' kWh'
		        		}
		    		}
		    		//일사량 데이터 설정
		    		/* ,{name: '일사량', data: prnmtrList, type: "line", yAxis: 1, zIndex: 0, color: "#BDBDBD",
		        		marker: {
		            		fillColor: '#BDBDBD',
		            		lineWidth: 1,
		            		lineColor: "#BDBDBD"
		        		},
		        		tooltip: {
		            		valueSuffix: ' w/㎡'
		            	}
		     		} */
		    		],	    
		     		
		    responsive: {
		        rules: [{
		            condition: {
		                maxWidth: 500
		            },
		            chartOptions: {
		                legend: {
		                    floating: false,
		                    layout: 'horizontal',
		                    align: 'center',
		                    //verticalAlign: 'bottom',
		                    x: 0,
		                    y: 0
		                },
		                yAxis: [{
		                    labels: {
		                        align: 'left',
		                        x: 0,
		                        y: -6
		                    },
		                    showLastLabel: false
		                }
		                /* , {
		                    labels: {
		                        align: 'right',
		                        x: 0,
		                        y: -6
		                    },
		                    showLastLabel: false
		                } */
		                , {
		                    visible: false
		                }]
		            }
		        }]
		    }
		});
	}