				<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
				
				<input type="hidden" id="bldId" value="${bldId}" />
				<input type="hidden" id="sessionMaxTime" value="<%= session.getMaxInactiveInterval() %>" />
	
				<!-- BEGIN Left Aside -->
                <aside class="page-sidebar">                    
                    <!-- BEGIN PRIMARY NAVIGATION -->
                    <nav id="js-primary-nav" class="primary-nav nav-function-fixed" role="navigation">                        
                        <ul id="js-nav-menu" class="nav-menu">
                        	<li >
                                <a href="#" class="header-tab" id="header-link" title="" data-filter-tags="">
                                    <i class="fal fa-home text-dark font-weight-bold"></i>
                                    <span class="nav-link-text text-dark font-weight-bold" data-i18n="nav.application_intel">${generalInfo2.bldNm}</span>
                                </a>                                
                            </li>
                            
                            <a href="#" id="js-nav-menu-wrapper-right-btn" class="d-flex align-items-center justify-content-center width-4 btn mt-1 mb-1 mr-1 ml-2 p-0 fs-xxl text-primary"><i class="fal fa-angle-right"></i></a>
                            
                            <li >
                                <a href="javascript:goPage('header-link-1', '/detail/edit/general.do')" class="header-tab" id="header-link-1" title="일반사항" data-filter-tags="일반사항">
                                    <i class="fal fa-info-circle text-secondary"></i>
                                    <span class="nav-link-text text-secondary" data-i18n="nav.application_intel">일반사항</span>
                                </a>                                
                            </li>
                            <li>
                                <a href="javascript:goPage('header-link-2', '/detail/edit/build.do')" class="header-tab" id="header-link-2" title="건축정보" data-filter-tags="건축정보">
                                    <i class="fal fa-building text-secondary"></i>
                                    <span class="nav-link-text text-secondary" data-i18n="nav.application_intel">건축정보</span>
                                </a>                                
                            </li>
                            <li>
                                <a href="javascript:goPage('header-link-3', '/detail/edit/fac.do')" class="header-tab" id="header-link-3" title="설비정보" data-filter-tags="설비정보">
                                    <i class="fal fa-cogs text-secondary"></i>
                                    <span class="nav-link-text text-secondary" data-i18n="nav.application_intel">설비정보</span>
                                </a>                                
                            </li>
                            <li>
                                <a href="javascript:goPage('header-link-4', '/detail/edit/drive.do')" class="header-tab" id="header-link-4" title="운전정보" data-filter-tags="운전정보">
                                    <i class="fal fa-thermometer-quarter text-secondary"></i>
                                    <span class="nav-link-text text-secondary" data-i18n="nav.application_intel">운전정보</span>
                                </a>                                
                            </li>
                            <li>
                                <a href="javascript:goPage('header-link-5', '/detail/edit/recy.do')" class="header-tab" id="header-link-5" title="신재생정보" data-filter-tags="신재생정보">
                                    <i class="fal fa-cubes  text-secondary"></i>
                                    <span class="nav-link-text text-secondary" data-i18n="nav.application_intel">신재생정보</span>
                                </a>                                
                            </li>
                            <li>
                                <a href="javascript:goPage('header-link-6', '/detail/edit/book.do')"  class="header-tab" id="header-link-6"title="현장도서" data-filter-tags="현장도서">
                                    <i class="fal fa-book text-secondary"></i>
                                    <span class="nav-link-text text-secondary" data-i18n="nav.application_intel">현장도서</span>
                                </a>                                
                            </li>
                        </ul>
                        <div class="filter-message js-filter-message bg-success-600"></div>
                    </nav>
                    <!-- END PRIMARY NAVIGATION -->                    
                </aside>
                <!-- END Left Aside -->
                
                <script>
		var tid;
		
		$(document).ready(function(){
			
			var path = window.location.pathname;
			
			//일반사항 신규 등록일 경우 다른 탭 메뉴 비활성화
			if (path.indexOf('new/general.do') > 0){				
				setItemStatus("disabled", 2);
				setItemStatus("disabled", 3);
				setItemStatus("disabled", 4);
				setItemStatus("disabled", 5);
				setItemStatus("disabled", 6);
			}
			
			if(path.indexOf("general.do") > 0){
				setItemStatus("active", 1);
			}
			if(path.indexOf("build.do") > 0){
				setItemStatus("active", 2);
			}
			if(path.indexOf("fac.do") > 0){
				setItemStatus("active", 3);
			}
			if(path.indexOf("drive.do") > 0){
				setItemStatus("active", 4);
			}
			if(path.indexOf("recy.do") > 0){
				setItemStatus("active", 5);
			}
			if(path.indexOf("book.do") > 0){
				setItemStatus("active", 6);
			}
		});
		
		function setItemStatus(status, no){
			if (status == "active"){
				$('.header-tab').find("i, span").removeClass("text-info");
				$('.header-tab').find("i, span").addClass("text-secondary");
				$('#header-link-' + no).find("i, span").addClass("text-info");
			}else if(status == "disabled"){
				$('#header-link-' + no).addClass('disabled');
			}
		}
		
		function goPage(id, url){
			if($("#" + id).hasClass("disabled") === true) {
				return;
			}
			
			var path = window.location.pathname;
			
			//일반사항 신규 등록일 경우 다른 탭 메뉴 비활성화
			if (path.indexOf('new/general.do') > 0){
				return;
			}

			var bldId = $('#bldId').val();			
			detailPage(bldId, url);
		}
		
		var stDate = new Date().getTime();
		var edDate = new Date();
		edDate.setMinutes(edDate.getMinutes() + Number($("#sessionMaxTime").val()));
		edDate = edDate.getTime();
		var RemainDate = edDate - stDate;
		
	</script>