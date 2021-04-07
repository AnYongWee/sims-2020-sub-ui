<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<footer class="page-footer" role="contentinfo">
	<div class="d-flex align-items-center flex-1 text-muted" id="page-footer">
		<span class="hidden-md-down fw-700">2021 © Sqisoft by&nbsp;
			<a href='http://www.sqisoft.com' class='text-primary fw-500' title='sqisoft.com' target='_blank'>sqisoft.com</a>
		</span>
	</div>
	<div>
		<ul class="list-table m-0">
			<li>
				<a href="intel_introduction.html" class="text-secondary fw-700">About</a>
			</li>
			<li class="pl-3">
				<a href="info_app_licensing.html" class="text-secondary fw-700">License</a>
			</li>
			<li class="pl-3">
				<a href="info_app_docs.html" class="text-secondary fw-700">Documentation</a>
			</li>
			<li class="pl-3 fs-xl"><a
				href="http://www.sqisoft.com/" class="text-secondary" target="_blank"><i class="fal fa-question-circle" aria-hidden="true"></i></a>
			</li>
		</ul>
	</div>
</footer>

<script>

$(document).ready(function(){
	prograssInitialization();
	initApp.pushSettings('footer-function-fixed');
	
	$( '.site-switch' ).click( function() {		
		$.ajax({
			type: "POST",
			url: "/ajax/updateSiteSeq.do",		
			dataType: 'json',
			data: {
				siteSeq : $(this).attr("data-siteSeq"),
				checked : this.checked
			},
			success : function(data) {
				try {
					//각화면에서 필요한 데이터를 조회 하는 공통 합수 호출 
					//암묵적으로 화면에서 데이터를 조회 하는 function 명을 search 로 정한다.
					search();	
				} catch (e) {}		
			},
			error: function(e){
				alert("요청에 실패 하였습니다.");
			}
		});
	});
	
	$( '#site-switch-all' ).click( function() {
		
		$( '.site-switch' ).prop( 'checked', this.checked );
		
		$.ajax({
			type: "POST",
			url: "/ajax/updateAllSiteSeq.do",		
			dataType: 'json',
			data: {				
				checked : this.checked
			},
			success : function(data) {								
				try {				
					search();	
				} catch (e) {}		
			},
			error: function(e){
				alert("요청에 실패 하였습니다.");
			}
		});
	});
	
	//모달 종료시 초기화	
	$('.modal').on('hidden.bs.modal', function (e) {	    
	  	$(this).find('form')[0].reset();
	  	$(this).find('form').removeClass('was-validated');
	});
});

//사이트 정보 갱신
function siteReplace(){
	$('#navContent').children().load("/ajax/siteReplace.do");	
	$('#Progress_Bar').hide();		
}

function prograssInitialization(){
	
	$(document).ajaxStart(function(){
		$('#Progress_Bar').show();
	});
	$(document).ajaxStop(function(){
		$('#Progress_Bar').hide();				
	});
	
	$(document).ajaxError(function (event, request, settings, thrownError) {
		   if (request.status === 408) {
		      document.location.href = '/login.do';
		   }
	});
}

</script>