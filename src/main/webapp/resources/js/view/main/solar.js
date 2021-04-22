	
	//발전량 그래프 조회
	function searchQntChart(){
		var searchType = $("#qnt-search-type option:selected").val();
		
		if (searchType == "hour"){
			ajax_hour();
		}else if(searchType == "day"){
			ajax_day();
		}else if(searchType == "month"){
			ajax_month();
		}
	}
	
	//시간별 발전량 정보 조회
	function ajax_hour(){
		
		var startDate = $("#start-date-hour").val();
		startDate = startDate.replace(/-/gi, "");
		
		$.ajax({
			type: "POST",
			url: "/ajax/getSolarHourSummary.do",		
			dataType: 'json',
			global: false,		
			data : {
				startDate : startDate
			},
			success : function(data) {
				
				//그래프 생성
				var categories = [], genList = [], genEffi = [], prnmtrList = [];
				
				for (var i = 0; i < data.list.length; i++){
					categories[i] = [data.list[i].tgtTime];
					genList[i] = [data.list[i].tgtTime, data.list[i].gentQnt];
					genEffi[i] = [data.list[i].tgtTime, data.list[i].invrtrEffi];	
				}
				
				drawChart_hour(categories, genList, genEffi, prnmtrList);
				
			},
			error: function(e){				
				console.log(e);						
			}
		});
	}
	
	//일별 발전량 정보 조회
	function ajax_day(){
		
		var startDate = $("#start-date-day").val();
		startDate = startDate.replace(/-/gi, "");
		
		var endDate = $("#end-date-day").val();
		endDate = endDate.replace(/-/gi, "");
		
		$.ajax({
			type: "POST",
			url: "/ajax/getSolarDaySummary.do",		
			dataType: 'json',
			global: false,		
			data : {
				startDate : startDate,
				endDate : endDate
			},
			success : function(data) {
				
				//그래프 생성
				var genList = [], genTimeList = [], prnmtrList = [], categories = [];
				
				for (var i = 0; i < data.list.length; i++){
					categories[i] = [data.list[i].tgtDate];
					genList[i] = [data.list[i].tgtDate, data.list[i].tdayGentQnt];
					genTimeList[i] = [data.list[i].tgtDate, data.list[i].tdayGentTime];
				}
				
				drawHighChart_day(categories, genList, genTimeList, prnmtrList);
				
			},
			error: function(e){				
				console.log(e);						
			}
		});
	}
	
	//월별 발전량 정보 조회
	function ajax_month(){
		
		var startDate = $("#start-date-month").val();
		startDate = startDate.replace(/-/gi, "");
		
		var endDate = $("#end-date-month").val();
		endDate = endDate.replace(/-/gi, "");
		
		$.ajax({
			type: "POST",
			url: "/ajax/getSolarMonthSummary.do",		
			dataType: 'json',
			global: false,		
			data : {
				startDate : startDate,
				endDate : endDate
			},
			success : function(data) {
				
				//그래프 생성
				var genList = [], genTimeList = [], prnmtrList = [], categories = [];
				
				for (var i = 0; i < data.list.length; i++){
					categories[i] = [data.list[i].tgtYm];
					genList[i] = [data.list[i].tgtYm, data.list[i].monGentQnt];
					genTimeList[i] = [data.list[i].tgtYm, data.list[i].monGentTime];
				}
				
				drawHighChart_month(categories, genList, genTimeList, prnmtrList);
				
			},
			error: function(e){				
				console.log(e);						
			}
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
		    ]
		});
	}
	
	//일별 그래프 그리기
	function drawHighChart_day(categories, genList, genTimeList, prnmtrList){
		
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
		            	var data = String(this.value);		            	
		            	return data.substr(2,2) + "/" + data.substr(4,2) + "/" + data.substr(6,2);
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