var canvas = document.getElementById("canvas");
var context = canvas.getContext("2d");
var pid;

var treeTime_1 = 0, treeFrame_1 = 0, treeMaxFrame_1 = 50;
var treeTime_2 = 0, treeFrame_2 = 0, treeMaxFrame_2 = 50;
var sunTime = 0, sunFrame = 0, sunMaxFrame = 16;
var arrow_1_time = 0;

var sun_img = new Image();
sun_img.src = '../../resources/assets/img/sun.png';

var tree_img_1 = new Image();
tree_img_1.src = '../../resources/assets/img/tree_1.png';

var tree_img_2 = new Image();
tree_img_2.src = '../../resources/assets/img/tree_2.png';

var arrow_img_1 = new Image();
arrow_img_1.src = '../../resources/assets/img/arrow_1.png';

var arrow_img_2 = new Image();
arrow_img_2.src = '../../resources/assets/img/arrow_2.png';

var arrow_img_3 = new Image();
arrow_img_3.src = '../../resources/assets/img/arrow_3.png';

var image = new Image();
image.src = '../../resources/assets/img/main.png';


var temperature, slope_solar_radiation, horizontality_solar_radiation, day_qnt, accum_qnt, volt, curr, powr, cpct, air_temperature, amt, carbon, tree_count;


//화살표 1
var default_1_x = 500;
var default_1_y = 313;
var arrow_1 = {
		0: { x:default_1_x, y:default_1_y },
		1: { x:default_1_x, y:default_1_y },
		2: { x:default_1_x, y:default_1_y },
		3: { x:default_1_x, y:default_1_y },
		4: { x:default_1_x, y:default_1_y },
		5: { x:default_1_x, y:default_1_y },
		6: { x:default_1_x, y:default_1_y },
		7: { x:default_1_x, y:default_1_y },
		8: { x:default_1_x, y:default_1_y },
		9: { x:default_1_x, y:default_1_y },
		10: { x:default_1_x, y:default_1_y },
		11: { x:default_1_x, y:default_1_y },
		12: { x:default_1_x, y:default_1_y },
		13: { x:default_1_x, y:default_1_y },
		14: { x:default_1_x, y:default_1_y },
		15: { x:default_1_x, y:default_1_y },
		16: { x:default_1_x, y:default_1_y },
		17: { x:default_1_x, y:default_1_y },
		18: { x:default_1_x, y:default_1_y },
		19: { x:default_1_x, y:default_1_y },
		20: { x:default_1_x, y:default_1_y }
}

//화살표 2
var default_2_x = 608;
var default_2_y = 455;
var arrow_2 = {
		0: { x:default_2_x, y:default_2_y },
		1: { x:default_2_x, y:default_2_y },
		2: { x:default_2_x, y:default_2_y },
		3: { x:default_2_x, y:default_2_y },
		4: { x:default_2_x, y:default_2_y },
		5: { x:default_2_x, y:default_2_y },
		6: { x:default_2_x, y:default_2_y },
		7: { x:default_2_x, y:default_2_y },
		8: { x:default_2_x, y:default_2_y },
		9: { x:default_2_x, y:default_2_y },
		10: { x:default_2_x, y:default_2_y },
		11: { x:default_2_x, y:default_2_y },
		12: { x:default_2_x, y:default_2_y },
		13: { x:default_2_x, y:default_2_y },
		14: { x:default_2_x, y:default_2_y },
		15: { x:default_2_x, y:default_2_y },
		16: { x:default_2_x, y:default_2_y },
		17: { x:default_2_x, y:default_2_y },
		18: { x:default_2_x, y:default_2_y },
		19: { x:default_2_x, y:default_2_y },
		20: { x:default_2_x, y:default_2_y }
}


//화살표 3
var default_3_x = 624;
var default_3_y = 437;
var arrow_3 = {
		0: { x:default_3_x, y:default_3_y },
		1: { x:default_3_x, y:default_3_y },
		2: { x:default_3_x, y:default_3_y },
		3: { x:default_3_x, y:default_3_y },
		4: { x:default_3_x, y:default_3_y },
		5: { x:default_3_x, y:default_3_y },
		6: { x:default_3_x, y:default_3_y },
		7: { x:default_3_x, y:default_3_y },
		8: { x:default_3_x, y:default_3_y },
		9: { x:default_3_x, y:default_3_y },
		10: { x:default_3_x, y:default_3_y },
		11: { x:default_3_x, y:default_3_y },
		12: { x:default_3_x, y:default_3_y },
		13: { x:default_3_x, y:default_3_y },
		14: { x:default_3_x, y:default_3_y },
		15: { x:default_3_x, y:default_3_y },
		16: { x:default_3_x, y:default_3_y },
		17: { x:default_3_x, y:default_3_y },
		18: { x:default_3_x, y:default_3_y },
		19: { x:default_3_x, y:default_3_y },
		20: { x:default_3_x, y:default_3_y }
}

//화살표 4
var default_4_x = 780;
var default_4_y = 522;
var arrow_4 = {
		0: { x:default_4_x, y:default_4_y },
		1: { x:default_4_x, y:default_4_y },
		2: { x:default_4_x, y:default_4_y },
		3: { x:default_4_x, y:default_4_y },
		4: { x:default_4_x, y:default_4_y },
		5: { x:default_4_x, y:default_4_y },
		6: { x:default_4_x, y:default_4_y },
		7: { x:default_4_x, y:default_4_y },
		8: { x:default_4_x, y:default_4_y },
		9: { x:default_4_x, y:default_4_y },
		10: { x:default_4_x, y:default_4_y },
		11: { x:default_4_x, y:default_4_y },
		12: { x:default_4_x, y:default_4_y },
		13: { x:default_4_x, y:default_4_y },
		14: { x:default_4_x, y:default_4_y },
		15: { x:default_4_x, y:default_4_y },
		16: { x:default_4_x, y:default_4_y },
		17: { x:default_4_x, y:default_4_y },
		18: { x:default_4_x, y:default_4_y },
		19: { x:default_4_x, y:default_4_y },
		20: { x:default_4_x, y:default_4_y }
}

function siteCanvasInitialization(p_temperature, p_slope_solar_radiation, p_horizontality_solar_radiation, p_day_qnt, p_accum_qnt, p_volt, p_curr, p_powr, p_cpct, p_air_temperature, p_amt, p_carbon, p_tree_count){
	
	temperature = p_temperature;											//모듚온도
	slope_solar_radiation = p_slope_solar_radiation;						//경사일사량
	horizontality_solar_radiation = p_horizontality_solar_radiation;	//수평일사량
	
	day_qnt = p_day_qnt; 														//금일발전량
	accum_qnt = p_accum_qnt; 												//누적발전량
	volt = p_volt;																	//전력
	curr = p_curr; 																	//전압
	powr = p_powr;																//전류
	
	cpct = p_cpct;																//설치용량
	air_temperature = p_air_temperature;									//온도
	amt = p_amt;																	//누적절감액
	carbon = p_carbon;															//탄소저감량 
	tree_count = p_tree_count;												//나무 그루수
}

function draw() {
	
	
	context.clearRect(0, 0, canvas.width, canvas.height); // 전체 지우기

	context.drawImage(image, 0, 0, canvas.width, canvas.height);
	
	//태양 그리기
    if (sunTime > 4){
	    context.drawImage(sun_img, sunFrame % 4 * 250, Math.floor(sunFrame / 4) * 250, 250, 250, 750, 0, 300, 200);
	    
	    sunFrame = (sunFrame + 1) % sunMaxFrame;	
    	sunTime = 0;	
    	
    }else{
    	context.drawImage(sun_img, sunFrame % 4 * 250, Math.floor(sunFrame / 4) * 250, 250, 250, 750, 0, 300, 200);		    	
    }
    
    sunTime += 1;
	
	//나무 그리기 1
    if (treeTime_1 > 6){
	    context.drawImage(tree_img_1, treeFrame_1 % 5 * 309, Math.floor(treeFrame_1 / 5) * 268, 309, 268, 780, 335, 200, 175);
	    
    	treeFrame_1 = (treeFrame_1 + 1) % treeMaxFrame_1;	
 		treeTime_1 = 0;	
    	
    }else{
    	context.drawImage(tree_img_1, treeFrame_1 % 5 * 309, Math.floor(treeFrame_1 / 5) * 268, 309, 268, 780, 335, 200, 175);		    	
    }
    
    treeTime_1 += 1;
    
    //나무 그리기 2
    if (treeTime_2 > 3){
	    context.drawImage(tree_img_2, treeFrame_2 % 5 * 309, Math.floor(treeFrame_2 / 5) * 268, 309, 268, 820, 360, 200, 175);
    	
    	treeFrame_2 = (treeFrame_2 + 1) % treeMaxFrame_2;	
 		treeTime_2 = 0;	
    	
    }else{		    	
    	context.drawImage(tree_img_2, treeFrame_2 % 5 * 309, Math.floor(treeFrame_2 / 5) * 268, 309, 268, 820, 360, 200, 175);
    }
    
    treeTime_2 += 1;
    
    //화살표 그리기
    var arrow_count = 16; //화살표 갯수
    var space = 16;			//화살표 간격
    
    for (var i = 0; i < arrow_count; i++){
    	arrowDraw(i, arrow_img_1, arrow_img_2, arrow_img_3, space);	
    }
   
    modulSetText("환경 센서");
    invrtrSetText("인버터");
    InstSetText("설치용량");
    weatherSetText("현재 날씨");
    amtSetText("누적 절감액");
    naturalSetText("누적 탄소 저감량");
    
    pid = requestAnimationFrame(draw);
}


//화살표 그리기
function arrowDraw(index,arrow_img_1, arrow_img_2, arrow_img_3, space){	
	
	// 화살표 1 그리기
	if (index == 0){
		if (arrow_1[index].y <= 410 && arrow_2[index].x == default_2_x && arrow_3[index].x == default_3_x && arrow_4[index].x == default_4_x){
	    	context.drawImage(arrow_img_1, arrow_1[index].x, arrow_1[index].y, 10, 10);
	    	arrow_1[index].y += 1;    	
	    }	
	}else{
		if (arrow_1[index-1].y >= (default_1_y + space) && arrow_1[index].y <= 410 && arrow_2[index].x == default_2_x && arrow_3[index].x == default_3_x && arrow_4[index].x == default_4_x){
	    	context.drawImage(arrow_img_1, arrow_1[index].x, arrow_1[index].y, 10, 10);
	    	arrow_1[index].y += 1;    	
	    }	
	}
	
   //화살표 2 그리기		   
    if (arrow_2[index].x <= 628 && arrow_1[index].y > 410 && arrow_3[index].x == default_3_x && arrow_4[index].x == default_4_x){
    	context.drawImage(arrow_img_2, arrow_2[index].x, arrow_2[index].y, 10, 10);
    	
    	arrow_2[index].x += 0.5;
    	arrow_2[index].y -= 0.3;    	
    }
    
    //화살표 3 그리기	
    if (arrow_3[index].y <= 520 && arrow_1[index].y > 410 && arrow_2[index].x > 628 && arrow_4[index].x == default_4_x){
    	context.drawImage(arrow_img_3, arrow_3[index].x, arrow_3[index].y, 10, 10);
    	arrow_3[index].x += 1.8;
    	arrow_3[index].y += 1.0;
    }
    
    //화살표 4 그리기
    if (arrow_4[index].x <= 800 && arrow_1[index].y > 410 && arrow_2[index].x > 628 && arrow_3[index].y > 520){
    	context.drawImage(arrow_img_2, arrow_4[index].x, arrow_4[index].y, 10, 10);
    	arrow_4[index].x += 1.0;
    	arrow_4[index].y -= 0.6;
    }
    
    if (arrow_4[index].x > 800){
    	arrow_1[index].y = default_1_y; arrow_2[index].x = default_2_x; arrow_2[index].y = default_2_y; arrow_3[index].x = default_3_x; arrow_3[index].y = default_3_y; arrow_4[index].x = default_4_x; arrow_4[index].y = default_4_y; 
    }	
}

//태양광 모듈 텍스트 구성
//title(제목), temperature(모듈온도), slope_solar_radiation(경사일사량), horizontality_solar_radiation(수평일사량)
function modulSetText(title){

	context.textAlign = "start";								//정렬 	
    context.font = "bold 19px Spoqa Han Sans Neo";	//글자스타일    
    context.fillStyle = "#fcfcfc"; 								//글자색상
    
    context.fillText(title, 25, 50);
    
    context.font = "19px Spoqa Han Sans Neo";			//글자스타일
    context.fillStyle = "#fcfcfc"; 								//글자색상
    
    context.fillText("모듈온도", 25, 110);
    context.fillText("경사일사량", 25, 175);
    context.fillText("수평일사량", 25, 235);
    
    context.textAlign = "end";									//정렬
    context.font = "15px Spoqa Han Sans Neo";			//글자스타일
    context.fillStyle = "#D8D8D8"; 							//글자색상
    
    context.fillText("℃", 305, 110);
    context.fillText("w/m2", 305, 175);
    context.fillText("w/m2", 305, 235);
    
    context.textAlign = "end";									//정렬
    context.font = "bold 30px Spoqa Han Sans Neo";	//글자색상
    context.fillStyle = "#fcfcfc"; 								//글자색상
    
    context.fillText(temperature, 280, 110);
    context.fillText(slope_solar_radiation, 245, 175);
    context.fillText(horizontality_solar_radiation, 245, 235);
}

//인버터 텍스트 구성
//title(제목), day_qnt(발전량), accum_qnt(누적발전량), volt(전압), curr(전류), powr(전력)
function invrtrSetText(title){

	context.textAlign = "start";								//정렬 	
	context.font = "bold 19px Spoqa Han Sans Neo";	//글자스타일
	context.fillStyle = "#fcfcfc"; 								//글자색상
  
	context.fillText(title, 25, 410);
  
	context.font = "19px Spoqa Han Sans Neo";			//글자스타일
	context.fillStyle = "#fcfcfc"; 								//글자색상
  
	context.fillText("금일 발전량", 25, 460);
	context.fillText("누적발전량", 25, 510);
	context.fillText("전력", 25, 560);
	context.fillText("전압", 125, 560);
	context.fillText("전류", 225, 560);
  
	context.textAlign = "end";									//정렬
	context.font = "15px Spoqa Han Sans Neo";			//글자스타일
	context.fillStyle = "#D8D8D8"; 							//글자색상
    
	context.fillText("kWh", 285, 460);
	context.fillText("kWh", 285, 510);
	
	context.textAlign = "end";									//정렬
	context.font = "bold 30px Spoqa Han Sans Neo";	//글자색상
	context.fillStyle = "#fcfcfc"; 								//글자색상
  
	context.fillText(day_qnt, 240, 460);
	context.fillText(accum_qnt, 240, 510);
	
	context.textAlign = "start";								//정렬
	context.font = "bold 15px Spoqa Han Sans Neo";	//글자색상
	
	context.fillText(powr + "  kW", 25, 590);
	context.fillText(volt + "  V", 125, 590);
	context.fillText(curr + "  A", 225, 590);	
}

//설치용량 텍스트 구성
//title(제목), cpct(설치용량)
function InstSetText(title){

	context.textAlign = "start";								//정렬 	
	context.font = "bold 19px Spoqa Han Sans Neo";	//글자스타일
	context.fillStyle = "#fcfcfc"; 								//글자색상

	context.fillText(title, 610, 60);

	context.textAlign = "end";									//정렬
	context.font = "15px Spoqa Han Sans Neo";			//글자스타일
	context.fillStyle = "#D8D8D8"; 							//글자색상

	context.fillText("kW", 740, 100);
	  
	context.textAlign = "end";									//정렬
	context.font = "bold 30px Spoqa Han Sans Neo";	//글자색상
	context.fillStyle = "#fcfcfc"; 								//글자색상

	context.fillText(cpct, 705, 100);	
}

//날씨 텍스트 구성
//title(제목), air_temperature(온도)
function weatherSetText(title){

	context.textAlign = "start";								//정렬 	
	context.font = "bold 19px Spoqa Han Sans Neo";	//글자스타일
	context.fillStyle = "#fcfcfc"; 								//글자색상

	context.fillText(title, 1140, 155);
	
	context.font = "19px Spoqa Han Sans Neo";			//글자스타일	

	context.fillText("외기온도", 1140, 200);
	  
	context.textAlign = "end";									//정렬
    context.font = "15px Spoqa Han Sans Neo";			//글자스타일
    context.fillStyle = "#D8D8D8"; 							//글자색상
    
    context.fillText("℃", 1360, 200);
    
	context.textAlign = "end";									//정렬
	context.font = "bold 30px Spoqa Han Sans Neo";	//글자색상
	context.fillStyle = "#fcfcfc"; 								//글자색상

	context.fillText(air_temperature, 1330, 200);
}

//절감액 텍스트 구성
//title(제목), amt(절감액)
function amtSetText(title){

	context.textAlign = "start";								//정렬 	
	context.font = "bold 19px Spoqa Han Sans Neo";	//글자스타일
	context.fillStyle = "#fcfcfc"; 								//글자색상

	context.fillText(title, 1140, 310);
	  
	context.textAlign = "end";									//정렬
	context.font = "20px Spoqa Han Sans Neo";			//글자스타일
	context.fillStyle = "#D8D8D8"; 							//글자색상
  
	context.fillText("원", 1360, 355);
  
	context.textAlign = "end";									//정렬
	context.font = "bold 30px Spoqa Han Sans Neo";	//글자색상
	context.fillStyle = "#fcfcfc"; 								//글자색상

	context.fillText(amt, 1330, 355);
}

//환경 텍스트 구성
//title(제목), carbon(탄소 저감량), tree_count(나무 그루 수)
function naturalSetText(title){

	context.textAlign = "start";								//정렬 	
	context.font = "bold 17px Spoqa Han Sans Neo";	//글자스타일
	context.fillStyle = "#fcfcfc"; 								//글자색상

	context.fillText(title, 1140, 490);
	  
	context.textAlign = "end";									//정렬
	context.font = "20px Spoqa Han Sans Neo";			//글자스타일
	context.fillStyle = "#D8D8D8"; 							//글자색상
  
	context.fillText("ton", 1360, 490);
  
	context.textAlign = "end";									//정렬
	context.font = "bold 27px Spoqa Han Sans Neo";	//글자색상
	context.fillStyle = "#fcfcfc"; 								//글자색상

	context.fillText(carbon, 1323, 490);
	
	context.textAlign = "center";									//정렬
	context.font = "19px Spoqa Han Sans Neo";			//글자스타일
	context.fillStyle = "#151515"; 							//글자색상
	
	context.fillText(tree_count + " 그루의 나무 심는 효과", 1250, 540);
}
