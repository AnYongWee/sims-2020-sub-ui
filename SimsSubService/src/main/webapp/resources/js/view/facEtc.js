/**
 * Copyright 2020 SQISOFT All Rights Reserved.
 * 
 * This software is the confidential and proprietary information
 * of SQISOFT. ("Confidential Information").
 * Any redistribution or use of this software, with or without modification
 * shall be strictly prohibited without prior written approval of SQISOFT Inc.
 *
 * <pre>
 * 1. Package : resources/js/view 
 * 2. File    : facEtc.js
 * 3. Comment : 
 * </pre>
 * @date : 2020. 11. 18. 오전 11:28:15
 * @version :
 * @author : jh_chun
 * @history : 
 *	-----------------------------------------------------------------------
 *	변경일				작성자						변경내용  
 *	----------- ------------------- ---------------------------------------
 *	2020. 11. 18.		jh_chun				최초 작성 
 *	-----------------------------------------------------------------------
 * 
 */

$(document).ready(function() {
    
      //저장 버튼 클릭
        $("#btnEtcSave").click(function() {
            facEtcSave();
        });     
        
       //목록 홈화면 이동 버튼 클릭
        $("#btnEtcList").click(function() {
            location.href="/main/dashboard.do";
        });
    
});

function facEtcSave() {
    var url = "/detail/edit/editEtcInfo.do";
    var form = $("#frmEtc");
    var data = form.serializeArray();
    data.push({name: "bldId", value: $('#bldId').val()});    
         
     //유효성 검사 성공시 저장 처리
     $.ajax({
         type: "POST",
         url: url,       
         dataType: 'json',
         data: data,
         success : function(data) {             
             if (data.resultCode == 0){
                 alert("저장 되었습니다.");
                 /* location.href = "/main/dashboard.do"; */
                 
             }else{
                 alert(data.resultMessage);
             }
         },
         error: function(e){
             alert("요청에 실패 하였습니다.");
         }
     });
     
}

