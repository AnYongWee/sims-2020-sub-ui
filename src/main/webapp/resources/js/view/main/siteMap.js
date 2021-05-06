var map, infowindow, marker;  

var sites = [[35.870295, 127.142185], [35.862859, 127.132032], [35.865203, 127.121817]];

var sites_rang = 0;

var mapPid;
var isSiteDraw = false;
var siteIndex = 0;
var maxSiteIndex = 0;

function mapInitialization(){
	
	var mapContainer = document.getElementById('map'), mapOption = { 
        center: new kakao.maps.LatLng(23.450701, 226.570667), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };
	
	// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	
	// 지도에 지형정보를 표시하도록 지도타입을 추가합니다
	map.addOverlayMapTypeId(kakao.maps.MapTypeId.TERRAIN); 
	
	var timer = setInterval(function(){
		if(!isSiteDraw){
			isSiteDraw = true;			
			getSiteList();
		}
    }, 1000);
	
}

function panTo(siteInfo) {
	
	if (marker != null){
		marker.setMap(null);	
	}
	
	if (infowindow != null){
		infowindow.setMap(null);
	}    
	
	var x = siteInfo.lat;
	var y = siteInfo.lng;
		
	// 이동할 위도 경도 위치를 생성합니다
    var moveLatLon = new kakao.maps.LatLng(x+0.002, y);
    
    // 지도 중심을 부드럽게 이동시킵니다
    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    map.panTo(moveLatLon);
    
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(x, y); 

	// 마커를 생성합니다
	marker = new kakao.maps.Marker({
	    position: markerPosition
	});

	// 마커가 지도 위에 표시되도록 설정합니다160	
	marker.setMap(map);

	var iwContent = getMarkerHtml(siteInfo);

	infowindow = new kakao.maps.CustomOverlay({
	    position: markerPosition,
	    content: iwContent,
	    xAnchor: 0.3,
	    yAnchor: 0.91
	});
	
	infowindow.setMap(map);
	        
	sites_rang++;
	
	if (sites_rang >= 3){
		sites_rang = 0;
	}
}        

function getSiteList(){
	
	$.ajax({
		type: "POST",
		url: "/ajax/getSiteList.do",		
		dataType: 'json',
		global: false,
		data: {
			start: "0",
			length: "9999",
			"order[0][column]": "0",
			"order[0][dir]" : "desc",
			searchCustSeq: "",
			searchSiteNm: "",
			searchConnStsCd: "",
			searchConnTypeCd: "",
			searchBizTypeCd: "",
			startDate: "",
			endDate: ""
		},
		success : function(data) {	
			siteIndex = 0;
			maxSiteIndex = data.list.length;
			
			siteLoop(data.list);
			mapPid = setInterval(function(){
				siteLoop(data.list);
		    }, 4000);
			
		},
		error: function(e){
			console.log("네비게이션 고객사 정보 요청 예외 발생");
			console.log(e);						
		}
	});
	
}


function siteLoop(sites){
	
	if (siteIndex >= (maxSiteIndex-1)){
		clearInterval(mapPid);
		isSiteDraw = false;
	}
	
	//위경도 설정이 안된 사이트의 경우 통과
	if (sites[siteIndex].lat == 0 && sites[siteIndex].lng == 0){
		siteIndex++;
		siteLoop(sites);
		return;
	} 
	
	panTo(sites[siteIndex]);
	
	siteIndex++;
}

function mapReplace(){
	if (map != null){
		map.relayout();
	}
}

//마커 HTML 생성
function getMarkerHtml(siteInfo){	
	
	var content = '<div class="overlaybox">' +
    '    <div class="boxtitle">' + siteInfo.siteNm + '</div>' +
    '    <div class="first">' +    
    '        <div class="movietitle text">' + siteInfo.siteNm + '</div>' +
    '    </div>' +
    '    <ul>' +
    '        <li class="up">' +    
    '            <span class="title">설비용량</span>' +    
    '            <span class="count">' + siteInfo.instlCpct + ' kw</span>' +
    '        </li>' +
    '        <li>' +
    '            <span class="title">발전량</span>' +    
    '            <span class="count">' + siteInfo.gentQnt + ' kw</span>' +
    '        </li>' +
    '        <li>' +
    '            <span class="title">금일 발전량</span>' +    
    '            <span class="count">' + siteInfo.tdayGentQnt + ' kWh</span>' +
    '        </li>' +
    '        <li>' +
    '            <span class="title">누적 발전량</span>' +    
    '            <span class="count">' + siteInfo.accumGentQnt + ' kWh</span>' +
    '        </li>' +
    '    </ul>' +
    '</div>';
	
	return content;
}
