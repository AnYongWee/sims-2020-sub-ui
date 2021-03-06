

//datatable column type change
function getTypeElement(type, name, val, options, required, changeEvent, placeholder){
	
	if (val == null){ val = ""; }
	if (placeholder == null){placeholder = "";}
	
	if (type == "hidden"){
		return '<input type="hidden" name="' + name + '" value="' + val +  '" >';
	}else if (type == "text"){		
		return '<input type="text" name="' + name + '" class="inline-editor" placeholder="' + placeholder + '" value="' + val +  '" title="' + val + '" >';
	}else if (type == "textarea"){		
		return '<textarea name="' + name + '" class="inline-editor" placeholder="' + placeholder + '" >' + val + '</textarea>';
	}else if(type == "number"){
		return '<input type="text" name="' + name + '" class="inline-editor" value="' + val +  '" onkeypress="return isNumberKey(event)" onkeyup="return delHangle(event)" onpaste="javascript:return false;" style="ime-mode:disabled;" >';
	}else if(type == "select"){
		
		var html = '<select class="inline-editor" name="' + name + '" >';
		console.log(changeEvent);
		if (changeEvent != undefined){
			var html = '<select onchange="' + changeEvent + '(this)" class="inline-editor" name="' + name + '" >';
		}
		
		if (!required){
			html += '<option value="">선택</option>';	
		}
		
		for(var i = 0; i < options.length; i++) {
			var _selected = "";
			if (val == options[i].codeId){ _selected = "selected"; }
			html += '<option value="' + options[i].codeId + '" ' + _selected + ' >' + options[i].codeVal + '</option>';
		}
		html += '</select>';
		return html;
		
	}else if(type == "date"){
		return '<input type="text" name="' + name + '" class="inline-editor datepicker" value="' + val +  '" >';
		
	}else if(type == "check"){
		if (val){
			return '<input type="checkbox" name="' + name + '" class="" checked>';	
		}else{
			return '<input type="checkbox" name="' + name + '" class="" >';
		}
	}
}

//데이터 테이블 행 삭제
//params: table(데이터테이블 객체), table_id(테이블 태그 아이디), number_index(체크박스 위치)
function datatable_row_del(table, table_id,  number_index){
	//체크 행 삭제
	$('#' + table_id + ' tbody').find("input[type=checkbox]:checked").each(function() {
		table.row( $(this).parents('tr') ).remove().draw();
	});
	
	//순번 재정의
	var index = 1;
	$('#' + table_id + ' >tbody >tr').each(function(){
		$(this).find("td:eq(1)").html(index);
		index++;
	});
}

//데이터 테이블 행 추가
//params: table(데이터테이블 객체),  table_id(테이블 태그 아이디), data(추가할 데이터 객체)
function datatable_row_add(table, table_id, data){
	table.row.add( data ).draw();
	
	$("#" + table_id + " .datepicker").datepicker({
		format: "yyyy-mm-dd",
		autoclose: true,
		language: "kr",
		todayHighlight: true
	});
}

//테이블 서버 전송 파라메터 생성
//params: param_list_name(서버 리스트 객체 명),  table_id(테이블 태그 아이디)
function getTableParams(param_list_name, table_id){
	
	var param = {};
	
	for (var i = 0; i < $('#' + table_id + ' >tbody  >tr').length; i++) {
		$('#' + table_id + ' >tbody  >tr').eq(i).children().find("input,input:hidden,select,textarea").each(function(){			
			var val = "";
			if ($(this).attr('type') == "checkbox"){
				val = $(this).is(":checked") ? "1" : "0"; 
			}else{
				val = $(this).val() ;
			}
			param[param_list_name + '[' + i +'].' + $(this).attr('name')] = val ;
		});
	}		
	
	return param;
}

//날짜 형태 컨트롤 초기화
function dateInitialization(){
	$(".datepicker").datepicker({
		format: "yyyy-mm-dd",
		autoclose: true,
		language: "kr",
		todayHighlight: true
	});
}

//정수 와 소수점만 입력 가능
function isNumberKey(evt) {

    var charCode = (evt.which) ? evt.which : event.keyCode;
    console.log(charCode);
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)){
    	return false;
    }
    
    var _value = event.srcElement.value;
    
    // 소수점(.)이 두번 이상 나오지 못하게
    var _pattern0 = /^\d*[.]\d*$/; // 현재 value값에 소수점(.) 이 있으면 . 입력불가
    if (_pattern0.test(_value)) {
        if (charCode == 46) {
            return false;
        }
    }    
    return true;
}

//한글입력 방지
function delHangle(evt){
	var objTarget = evt.srcElement || evt.target;
	var _value = event.srcElement.value;
	if(/[\ㄱ-ㅎㅏ-ㅣ|가-힣]/g.test(_value)){
		objTarget.value = null;
	}
}

function getDate(day){
	var date = new Date(); 
	date.setDate(date.getDate() + day);
	
	var year = date.getFullYear(); 
	var month = new String(date.getMonth()+1); 
	var day = new String(date.getDate()); 

	// 한자리수일 경우 0을 채워준다. 
	if(month.length == 1){ 
	  month = "0" + month; 
	} 
	if(day.length == 1){ 
	  day = "0" + day; 
	} 
	
	return year + "-" + month + "-" + day;
}

function getMonthDate(month){
	var date = new Date(); 
	date.setMonth(date.getMonth() + month);
	
	var year = date.getFullYear(); 
	var month = new String(date.getMonth()+1); 
	var day = new String(date.getDate()); 

	// 한자리수일 경우 0을 채워준다. 
	if(month.length == 1){ 
	  month = "0" + month; 
	} 
	if(day.length == 1){ 
	  day = "0" + day; 
	} 
	
	return year + "-" + month + "-" + day;
}

function dateInputInitialization(){
	
	//날짜 선택 input 
	$('.date-picker').datepicker({
		format : "yyyy-mm-dd",
		orientation : "bottom",
		language : "kr",
		keyboardNavigation : false,
		autoclose : true,
		changeYear : true,
		changeMonth : true
	});
	
	//월 선택 input 
	$('.date-picker-month').datepicker({
		format: "yyyy-mm",		    
	    orientation: "bottom",
	    startView: "months", 
	    minViewMode: "months",
	    language: "kr",
	    keyboardNavigation: false,		    
	    autoclose: true,
	    changeYear: true,
        changeMonth: true            
    });	
}
