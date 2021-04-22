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
	
	dateInputInitialization();
	
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