var canvas = document.getElementById("canvas");
var context = canvas.getContext("2d");
var pid;

var treeTime = 0, treeFrame = 0, treeMaxFrame = 50;


//font 설정
context.font = "20px malgun gothic"; //폰트의 크기, 글꼴체 지정      
context.fillStyle = "rgba(255,0,255,1)"; //색상지정

function draw() {

		//그리기 처리 중지
		cancelAnimationFrame(pid);

		var tree = new Image();
		tree.src = '../../resources/assets/img/tree.png';

		var image = new Image();
		image.src = '../../resources/assets/img/main.jpg';

		image.addEventListener('load', function() {

			context.clearRect(0, 0, canvas.width, canvas.height); // 전체 지우기

			context.drawImage(image, 0, 0, canvas.width, canvas.height);
			
			context.drawImage(tree, treeFrame % 5 * 309, Math.floor(treeFrame / 5) * 268, 309, 268, 1137, 175, 309, 158);
	    	
			//나무 그리기
		    if (treeTime > 4){
			    context.drawImage(tree, treeFrame % 5 * 309, Math.floor(treeFrame / 5) * 268, 309, 268, 1137, 175, 309, 158);
		    	
		    	treeFrame = (treeFrame + 1) % treeMaxFrame;	
	     		treeTime = 0;	
		    	
		    }else{
		    	context.drawImage(tree, treeFrame % 5 * 309, Math.floor(treeFrame / 5) * 268, 309, 268, 1137, 175, 309, 158);
		    }
		   
		    treeTime += 1;
		    
			//루프를 통해 매번 새로그림
			pid = requestAnimationFrame(draw);

		}, false);
	}