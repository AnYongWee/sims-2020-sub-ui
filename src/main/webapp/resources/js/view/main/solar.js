	
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
	var hourChartHeight;
	function drawChart_hour(categories, genList, genEffi, prnmtrList){
		
		hourChartHeight = $('#row-right-middle').height();
		
		hourChart = Highcharts.chart('container', {

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
		            	return this.value + " 시";
		            },
		            style: {
		            	fontWeight: 'bold',
		                color:'#9a9696'
		            }
		          }      
		    },
		    yAxis: [{ 
		    	// 발전량 Y축 설정
		        labels: {
		            format: '{value} kWh',		            
		            style: {
		            	fontWeight: 'bold',
		                color:'#9a9696'
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
		}, function(hourChart){			
			hourChart.setSize($('#row-right-middle').width(), hourChartHeight - 95, {duration:0});
	    	hourChart.yAxis[0].isDirty = true;
	    	hourChart.redraw();
		});	
	}
	
	function setHourChartHeight() {
		if (hourChart){
			hourChart.setSize($('#row-right-middle').width(), hourChartHeight - 95, {duration:0});
			hourChart.yAxis[0].isDirty = true;
			hourChart.redraw();	
		}    	
    }
	
	//일별 그래프 그리기
	var dayChartHeight;
	function drawHighChart_day(categories, genList, genTimeList, prnmtrList){
		
		dayChartHeight = $('#row-right-middle').height();
		
		dayChart = Highcharts.chart('container', {

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
		            	return data.substr(2,2) + "/" + data.substr(4,2) + "/" + data.substr(6,2);
		            },
		            style: {
		            	fontWeight: 'bold',
		                color:'#9a9696'
		            }
		          }
		    },
		    yAxis: [{ 
		    	// 발전량 Y축 설정
		        labels: {
		            format: '{value} kWh',		            
		            style: {
		            	fontWeight: 'bold',
		                color:'#9a9696'
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
		}, function(dayChart){			   
			dayChart.setSize($('#row-right-middle').width(), dayChartHeight - 95, {duration:0});
	    	dayChart.yAxis[0].isDirty = true;
	    	dayChart.redraw();	
		});		
	}
	
	function setDayChartHeight() {
		if (dayChart){
			dayChart.setSize($('#row-right-middle').width(), dayChartHeight - 95, {duration:0});
	    	dayChart.yAxis[0].isDirty = true;
	    	dayChart.redraw();	
		}    	
    }
	
	//월별 그래프 그리기
	var monthChartHeight;
	function drawHighChart_month(categories, genList, genTimeList, prnmtrList){
		
		monthChartHeight = $('#row-right-middle').height();
		
		monthChart = Highcharts.chart('container', {

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
		            },
		            style: {
		            	fontWeight: 'bold',
		                color:'#9a9696'
		            }
		          }
		    },
		    yAxis: [{ 
		    	// 발전량 Y축 설정
		        labels: {
		            format: '{value} kWh',
		            style: {
		            	fontWeight: 'bold',
		                color:'#9a9696'
		            }
		        },
		        title: {
		            text: '',		            
		            style: {
		            	fontWeight: 'bold',
		                color:'#9a9696'
		            }
		        },
		        opposite: false	        

		    },
		    { 
		    	// 발전시간 Y축 설정
		        labels: {
		            format: '{value} h',		            
		            style: {
		            	fontWeight: 'bold',
		                color:'#9a9696'
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
		}, function(monthChart){			
			monthChart.setSize($('#row-right-middle').width(), monthChartHeight - 95, {duration:0});
	    	monthChart.yAxis[0].isDirty = true;
	    	monthChart.redraw();
		});	
	}
	
	function setMonthChartHeight() {
		if (monthChart){
			monthChart.setSize($('#row-right-middle').width(), monthChartHeight - 95, {duration:0});
			monthChart.yAxis[0].isDirty = true;
			monthChart.redraw();	
		}    	
    }