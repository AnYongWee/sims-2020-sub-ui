<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>



<main id="js-page-content" role="main" class="page-content">
			
		<div id="canvas-container col-12" class="panel panel-sortable" role="widget">
			<div class="panel-hdr bg-danger-900 bg-info-gradient" role="heading">
				<h2>태양광 통합 모니터링 시스템</h2>
			</div>
			<div class="panel-container show">
				<canvas id="canvas" width="1920" height="1080"></canvas>
			</div>	
		</div>               
	
	
	
		<div id="invrtr-container col-8" class="panel panel-sortable" role="widget">
			<div class="panel-hdr " role="heading">
				<h2>인버터 현황</h2>
			</div>
			<div class="panel-container p-2 show">
			<!-- datatable start -->			
				<table class="table table-bordered table-hover table-striped w-100 display responsive nowrap" id="invrtr-list">
				
					<thead>						
						<tr class="">
							<th class="text-center" colspan="3">태양광 모듈</th>
							<th class="text-center" colspan="5">인버터</th>
						</tr>
						<tr class="">
							<th class="text-center align-middle font-weight-bold">전력(Kw)</th> 
							<th class="text-center align-middle font-weight-bold">전압(V)</th>							
							<th class="text-center align-middle font-weight-bold">전류(A)</th>
							<th class="text-center align-middle font-weight-bold">전력(kW)</th>
							<th class="text-center align-middle font-weight-bold">전압(V)</th>
							<th class="text-center align-middle font-weight-bold">전류(A)</th>
							<th class="text-center align-middle font-weight-bold">벼환효율(%)</th>
							<th class="text-center align-middle font-weight-bold">상태</th>
						</tr>
					</thead>
					<tbody>
					<!-- 내용 -->
					</tbody>
				</table>				
				<!-- datatable end -->	
			</div>			
		</div>
		<div id="stats-container col-4" class="panel">
			<div class="panel-hdr " role="heading">
				<h2>경보 이벤트</h2>
			</div>
			<div class="panel-container p-2 show">
			<!-- datatable start -->
				<table class="table table-bordered table-hover table-striped w-100" id="alarm-list">
					<thead>
						<tr class="">
							<th class="text-center align-middle font-weight-bold">전력(Kw)</th> 
							<th class="text-center align-middle font-weight-bold">전압(V)</th>							
							<th class="text-center align-middle font-weight-bold">전류(A)</th>
							<th class="text-center align-middle font-weight-bold">전력(kW)</th>
							<th class="text-center align-middle font-weight-bold">전압(V)</th>
							<th class="text-center align-middle font-weight-bold">전류(A)</th>
							<th class="text-center align-middle font-weight-bold">벼환효율(%)</th>
							<th class="text-center align-middle font-weight-bold">상태</th>
						</tr>
					</thead>
					<tbody>
					<!-- 내용 -->
					</tbody>
				</table>				
				<!-- datatable end -->	
			</div>	
		</div>
</div>

</main>

<script>
	
	var canvas = document.getElementById("canvas"); 
	var context = canvas.getContext("2d");
	
	$(document).ready(function(){
		
		//body 스크롤 삭제
		//$('html, body').css('overflow', 'hidden');
		
		$(window).resize(search);

		var canvas = document.getElementById("canvas");
        canvas.addEventListener("click", function(e) {        	
          	console.log({x: e.layerX, y: e.layerY});
        });
        
        search();
        
      //datatable
		datatable_invrtr();
		datatable_alarm();
	});
	
	var pid;
	
	//태양광 패널 화살표 y 좌표
	var arrow_panel_0_y = 530;	
	var arrow_panel_1_y = 530;
	var arrow_panel_2_y = 530;
	var arrow_panel_3_y = 530;
	var arrow_panel_4_y = 530;
	var arrow_panel_5_y = 530;
	
	//인버터 화살표 x,y 좌표
	var arrow_invtr_0_x = 840;
	var arrow_invtr_0_y = 750;	
	var arrow_invtr_1_x = 840;
	var arrow_invtr_1_y = 750;	
	var arrow_invtr_2_x = 840;
	var arrow_invtr_2_y = 750;	
	var arrow_invtr_3_x = 840;
	var arrow_invtr_3_y = 750;	
	var arrow_invtr_4_x = 840;
	var arrow_invtr_4_y = 750;	
	var arrow_invtr_5_x = 840;
	var arrow_invtr_5_y = 750;	
	var arrow_invtr_6_x = 840;
	var arrow_invtr_6_y = 750;
	var arrow_invtr_7_x = 840;
	var arrow_invtr_7_y = 750;
	var arrow_invtr_8_x = 840;
	var arrow_invtr_8_y = 750;
	var arrow_invtr_9_x = 840;
	var arrow_invtr_9_y = 750;
	var arrow_invtr_10_x = 840;
	var arrow_invtr_10_y = 750;
	var arrow_invtr_11_x = 840;
	var arrow_invtr_11_y = 750;	
	
	//문 화살표 x,y 좌표
	var arrow_door_0_x = 865;
	var arrow_door_0_y = 730;	
	var arrow_door_1_x = 865;
	var arrow_door_1_y = 730;	
	var arrow_door_2_x = 865;
	var arrow_door_2_y = 730;	
	var arrow_door_3_x = 865;
	var arrow_door_3_y = 730;	
	var arrow_door_4_x = 865;
	var arrow_door_4_y = 730;	
	var arrow_door_5_x = 865;
	var arrow_door_5_y = 730;	
	var arrow_door_6_x = 865;
	var arrow_door_6_y = 730;
	var arrow_door_7_x = 865;
	var arrow_door_7_y = 730;
	var arrow_door_8_x = 865;
	var arrow_door_8_y = 730;
	var arrow_door_9_x = 865;
	var arrow_door_9_y = 730;
	var arrow_door_10_x = 865;
	var arrow_door_10_y = 730;
	var arrow_door_11_x = 865;
	var arrow_door_11_y = 730;

	var _frame = 0;
    var _maxFrame = 11;
	var horseTime = 0;
	
	var tree_frame = 0;
	var treeTime = 0;
	
	function search(){
		
		//font 설정
		context.font = "20px malgun gothic"; 		//폰트의 크기, 글꼴체 지정      
		context.fillStyle = "rgba(255,0,255,1)"; 	//색상지정
		
		//그리기
		draw();
		
		
	}

	function draw(){
		
		//그리기 처리 중지
		cancelAnimationFrame(pid);
		
		var arrow_1 = new Image();
		arrow_1.src = '../../resources/assets/img/arrow_1.png';
		
		var arrow_2 = new Image();
		arrow_2.src = '../../resources/assets/img/arrow_2.png';
		
		var arrow_3 = new Image();
		arrow_3.src = '../../resources/assets/img/arrow_3.png';
		
		var horse = new Image();
		horse.src = '../../resources/assets/img/2D_sprite_horse.png';
		
		var image = new Image();
		image.src = '../../resources/assets/img/main.jpg';
		
		$("#canvas").width(window.innerWidth - 650).height(window.innerHeight - 500);
		
		image.addEventListener('load', function(){
			
			context.clearRect(0, 0, canvas.width, canvas.height); // 전체 지우기
			
			context.drawImage(image, 0, 0, canvas.width, canvas.height);
			
			// 태양광 패널 에서 인버터 에너지 이동 화살표 에니메이션 그리기 시작
		    context.drawImage(arrow_1, 650, arrow_panel_0_y, 20, 20);
		    
		    if (arrow_panel_0_y >= 570 || arrow_panel_1_y > 530){ context.drawImage(arrow_1, 650, arrow_panel_1_y, 20, 20); arrow_panel_1_y += 2; }
		    if (arrow_panel_1_y >= 570 || arrow_panel_2_y > 530){ context.drawImage(arrow_1, 650, arrow_panel_2_y, 20, 20); arrow_panel_2_y += 2; }
		    if (arrow_panel_2_y >= 570 || arrow_panel_3_y > 530){ context.drawImage(arrow_1, 650, arrow_panel_3_y, 20, 20); arrow_panel_3_y += 2; }
		    if (arrow_panel_3_y >= 570 || arrow_panel_4_y > 530){ context.drawImage(arrow_1, 650, arrow_panel_4_y, 20, 20); arrow_panel_4_y += 2; }
		    if (arrow_panel_4_y >= 570 || arrow_panel_5_y > 530){ context.drawImage(arrow_1, 650, arrow_panel_5_y, 20, 20); arrow_panel_5_y += 2; }
		    
		    arrow_panel_0_y += 2;		    
		    
		    if (arrow_panel_0_y > 680){ arrow_panel_0_y = 530; }
		    if (arrow_panel_1_y > 680){ arrow_panel_1_y = 530; }
		    if (arrow_panel_2_y > 680){ arrow_panel_2_y = 530; }
		    if (arrow_panel_3_y > 680){ arrow_panel_3_y = 530; }
		    if (arrow_panel_4_y > 680){ arrow_panel_4_y = 530; }
		    if (arrow_panel_5_y > 680){ arrow_panel_5_y = 530; }
		    
		    // 인버터에서 건물내부 에너지 이동 화살표 에니메이션 그리기 시작
		    if (arrow_door_0_y == 730 && arrow_invtr_0_x <= 860){
		    	context.drawImage(arrow_2, arrow_invtr_0_x, arrow_invtr_0_y, 15, 15);
		    	arrow_invtr_0_x += 1.5;
			    arrow_invtr_0_y -= 1.0;
		    }
		    
		    if (arrow_invtr_0_x >= 860 && arrow_invtr_1_x <= 860){  context.drawImage(arrow_2, arrow_invtr_1_x, arrow_invtr_1_y, 15, 15); arrow_invtr_1_x += 1.5; arrow_invtr_1_y -= 1.0; }
		    if (arrow_invtr_1_x >= 860 && arrow_invtr_2_x <= 860){  context.drawImage(arrow_2, arrow_invtr_2_x, arrow_invtr_2_y, 15, 15); arrow_invtr_2_x += 1.5; arrow_invtr_2_y -= 1.0; }
		    if (arrow_invtr_2_x >= 860 && arrow_invtr_3_x <= 860){  context.drawImage(arrow_2, arrow_invtr_3_x, arrow_invtr_3_y, 15, 15); arrow_invtr_3_x += 1.5; arrow_invtr_3_y -= 1.0; }
		    if (arrow_invtr_3_x >= 860 && arrow_invtr_4_x <= 860){  context.drawImage(arrow_2, arrow_invtr_4_x, arrow_invtr_4_y, 15, 15); arrow_invtr_4_x += 1.5; arrow_invtr_4_y -= 1.0; }
		    if (arrow_invtr_4_x >= 860 && arrow_invtr_5_x <= 860){  context.drawImage(arrow_2, arrow_invtr_5_x, arrow_invtr_5_y, 15, 15); arrow_invtr_5_x += 1.5; arrow_invtr_5_y -= 1.0; }		    
		    if (arrow_invtr_5_x >= 860 && arrow_invtr_6_x <= 860){  context.drawImage(arrow_2, arrow_invtr_6_x, arrow_invtr_6_y, 15, 15); arrow_invtr_6_x += 1.5; arrow_invtr_6_y -= 1.0; }
		    if (arrow_invtr_6_x >= 860 && arrow_invtr_7_x <= 860){  context.drawImage(arrow_2, arrow_invtr_7_x, arrow_invtr_7_y, 15, 15); arrow_invtr_7_x += 1.5; arrow_invtr_7_y -= 1.0; }
		    if (arrow_invtr_7_x >= 860 && arrow_invtr_8_x <= 860){  context.drawImage(arrow_2, arrow_invtr_8_x, arrow_invtr_8_y, 15, 15); arrow_invtr_8_x += 1.5; arrow_invtr_8_y -= 1.0; }
		    if (arrow_invtr_8_x >= 860 && arrow_invtr_9_x <= 860){  context.drawImage(arrow_2, arrow_invtr_9_x, arrow_invtr_9_y, 15, 15); arrow_invtr_9_x += 1.5; arrow_invtr_9_y -= 1.0; }
		    if (arrow_invtr_9_x >= 860 && arrow_invtr_10_x <= 860){  context.drawImage(arrow_2, arrow_invtr_10_x, arrow_invtr_10_y, 15, 15); arrow_invtr_10_x += 1.5; arrow_invtr_10_y -= 1.0; }
		    if (arrow_invtr_10_x >= 860 && arrow_invtr_11_x <= 860){  context.drawImage(arrow_2, arrow_invtr_11_x, arrow_invtr_11_y, 15, 15); arrow_invtr_11_x += 1.5; arrow_invtr_11_y -= 1.0; }
		    
		    // 건물 외부 에너지 이동 화살표 에니메이션 그리기 시작
		    if (arrow_invtr_0_x > 860 && arrow_door_0_y <= 870){
		    	context.drawImage(arrow_3, arrow_door_0_x, arrow_door_0_y, 15, 15);
		    	arrow_door_0_x += 1.9;
		    	arrow_door_0_y += 1;
		    }
		    
		    if (arrow_invtr_1_x > 860 && arrow_door_1_y <= 870){ context.drawImage(arrow_3, arrow_door_1_x, arrow_door_1_y, 15, 15); arrow_door_1_x += 1.9; arrow_door_1_y += 1; }
		    if (arrow_invtr_2_x > 860 && arrow_door_2_y <= 870){ context.drawImage(arrow_3, arrow_door_2_x, arrow_door_2_y, 15, 15); arrow_door_2_x += 1.9; arrow_door_2_y += 1; }
		    if (arrow_invtr_3_x > 860 && arrow_door_3_y <= 870){ context.drawImage(arrow_3, arrow_door_3_x, arrow_door_3_y, 15, 15); arrow_door_3_x += 1.9; arrow_door_3_y += 1; }
		    if (arrow_invtr_4_x > 860 && arrow_door_4_y <= 870){ context.drawImage(arrow_3, arrow_door_4_x, arrow_door_4_y, 15, 15); arrow_door_4_x += 1.9; arrow_door_4_y += 1; }
		    if (arrow_invtr_5_x > 860 && arrow_door_5_y <= 870){ context.drawImage(arrow_3, arrow_door_5_x, arrow_door_5_y, 15, 15); arrow_door_5_x += 1.9; arrow_door_5_y += 1; }		    
		    if (arrow_invtr_6_x > 860 && arrow_door_6_y <= 870){ context.drawImage(arrow_3, arrow_door_6_x, arrow_door_6_y, 15, 15); arrow_door_6_x += 1.9; arrow_door_6_y += 1; }
		    if (arrow_invtr_7_x > 860 && arrow_door_7_y <= 870){ context.drawImage(arrow_3, arrow_door_7_x, arrow_door_7_y, 15, 15); arrow_door_7_x += 1.9; arrow_door_7_y += 1; }
		    if (arrow_invtr_8_x > 860 && arrow_door_8_y <= 870){ context.drawImage(arrow_3, arrow_door_8_x, arrow_door_8_y, 15, 15); arrow_door_8_x += 1.9; arrow_door_8_y += 1; }
		    if (arrow_invtr_9_x > 860 && arrow_door_9_y <= 870){ context.drawImage(arrow_3, arrow_door_9_x, arrow_door_9_y, 15, 15); arrow_door_9_x += 1.9; arrow_door_9_y += 1; }
		    if (arrow_invtr_10_x > 860 && arrow_door_10_y <= 870){ context.drawImage(arrow_3, arrow_door_10_x, arrow_door_10_y, 15, 15); arrow_door_10_x += 1.9; arrow_door_10_y += 1; }
		    if (arrow_invtr_11_x > 860 && arrow_door_11_y <= 870){ context.drawImage(arrow_3, arrow_door_11_x, arrow_door_11_y, 15, 15); arrow_door_11_x += 1.9; arrow_door_11_y += 1; }
		    
		    if (arrow_door_0_y > 870){ arrow_invtr_0_x = 840; arrow_invtr_0_y = 750; arrow_door_0_x = 865; arrow_door_0_y = 730; }		    
		    if (arrow_door_1_y > 870){ arrow_invtr_1_x = 840; arrow_invtr_1_y = 750; arrow_door_1_x = 865; arrow_door_1_y = 730; }
		    if (arrow_door_2_y > 870){ arrow_invtr_2_x = 840; arrow_invtr_2_y = 750; arrow_door_2_x = 865; arrow_door_2_y = 730; }
		    if (arrow_door_3_y > 870){ arrow_invtr_3_x = 840; arrow_invtr_3_y = 750; arrow_door_3_x = 865; arrow_door_3_y = 730; }
		    if (arrow_door_4_y > 870){ arrow_invtr_4_x = 840; arrow_invtr_4_y = 750; arrow_door_4_x = 865; arrow_door_4_y = 730; }
		    if (arrow_door_5_y > 870){ arrow_invtr_5_x = 840; arrow_invtr_5_y = 750; arrow_door_5_x = 865; arrow_door_5_y = 730; }		    
		    if (arrow_door_6_y > 870){ arrow_invtr_6_x = 840; arrow_invtr_6_y = 750; arrow_door_6_x = 865; arrow_door_6_y = 730; }
		    if (arrow_door_7_y > 870){ arrow_invtr_7_x = 840; arrow_invtr_7_y = 750; arrow_door_7_x = 865; arrow_door_7_y = 730; }
		    if (arrow_door_8_y > 870){ arrow_invtr_8_x = 840; arrow_invtr_8_y = 750; arrow_door_8_x = 865; arrow_door_8_y = 730; }
		    if (arrow_door_9_y > 870){ arrow_invtr_9_x = 840; arrow_invtr_9_y = 750; arrow_door_9_x = 865; arrow_door_9_y = 730; }
		    if (arrow_door_10_y > 870){ arrow_invtr_10_x = 840; arrow_invtr_10_y = 750; arrow_door_10_x = 865; arrow_door_10_y = 730; }
		    if (arrow_door_11_y > 870){ arrow_invtr_11_x = 840; arrow_invtr_11_y = 750; arrow_door_11_x = 865; arrow_door_11_y = 730; }
		   		    
		    //달리는 말 그리기
		    if (horseTime > 5){
		    	context.drawImage(horse, _frame % 4 * 128, Math.floor(_frame / 4) * 128, 128, 128, 980, 850, 128, 128);
			    
	     		_frame = (_frame + 1) % _maxFrame;	
	     		horseTime = 0;
		    }else{
		    	context.drawImage(horse, _frame % 4 * 128, Math.floor(_frame / 4) * 128, 128, 128, 980, 850, 128, 128);
		    }
		   
		    horseTime += 1;
		    
		  	//루프를 통해 매번 새로그림
		    pid = requestAnimationFrame(draw); 
			
		},false);
	}
	
	
	//인버터 현황 데이터 테이블 설정
	function datatable_invrtr() {		
		
		$('#invrtr-list').dataTable({
			fixedHeader: true,
			language: lang_kor,
			destroy: true,
			searching: false,
			paging : false
		});
	}
	
	function datatable_alarm(){
		
		$('#alarm-list').dataTable({
			fixedHeader: true,
            destroy: true,
            language: lang_kor,
            bFilter : false,
            responsive: true,
            searching: false,            
            scrollCollapse: true,
            paging : true,
            serverSide : false
		});
		
	}
</script>