<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<header class="page-header" role="banner">
	<!-- we need this logo when user switches to nav-function-top -->
	<div class="">
		<a href="#"
			class="page-logo-link press-scale-down d-flex align-items-center position-relative"
			data-toggle="modal" data-target="#modal-shortcut"> <img
			src="${pageContext.request.contextPath}/resources/assets/smart/logo.png"
			alt="SmartAdmin WebApp" aria-roledescription="logo"> <span
			class="page-logo-text mr-1">태양광 모니터링 서비스</span> <span
			class="position-absolute text-white opacity-50 small pos-top pos-right mr-2 mt-n2"></span>
			<i
			class="fal fa-angle-down d-inline-block ml-1 fs-lg color-primary-300"></i>
		</a>
	</div>

	<div class="ml-auto d-flex">
		<!-- activate app search icon (mobile) -->
		<div class="hidden-sm-up">
			<a href="#" class="header-icon" data-action="toggle"
				data-class="mobile-search-on" data-focus="search-field"
				title="Search"> <i class="fal fa-search"></i>
			</a>
		</div>
		<!-- app shortcuts -->
		<div>
			<a href="#" class="header-icon" data-toggle="dropdown"
				title="My Apps"> <i class="fal fa-cube"></i>
			</a>
			<div class="dropdown-menu dropdown-menu-animated w-auto h-auto">
				<div
					class="dropdown-header bg-trans-gradient d-flex justify-content-center align-items-center rounded-top">
					<h4 class="m-0 text-center color-white">
						지원 <small class="mb-0 opacity-80"></small>
					</h4>
				</div>
				<div class="custom-scroll h-100">
					<ul class="app-list">
						<li><a href="#" class="app-list-item hover-white"> <span
								class="icon-stack"> <i
									class="base-18 icon-stack-3x color-info-700"></i> <span
									class="position-absolute pos-top pos-left pos-right color-white fs-md mt-2 fw-400">28</span>
							</span> <span class="app-list-name">공지사항</span>
						</a></li>
						<li><a href="#" class="app-list-item hover-white"> <span
								class="icon-stack"> <i
									class="base-2 icon-stack-3x color-primary-400"></i> <i
									class="base-10 text-white icon-stack-1x"></i> <i
									class="ni md-profile color-primary-800 icon-stack-2x"></i>
							</span> <span class="app-list-name">FAQ</span>
						</a></li>
						<li><a href="#" class="app-list-item hover-white"> <span
								class="icon-stack"> <i
									class="base-5 icon-stack-3x color-success-700 opacity-80"></i>
									<i class="base-12 icon-stack-2x color-success-700 opacity-30"></i>
									<i class="fal fa-comment-alt icon-stack-1x text-white"></i>
							</span> <span class="app-list-name">Q&A</span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- app notification -->
		<div>
			<a href="#" class="header-icon" data-toggle="dropdown"
				title="You got 11 notifications"> <i class="fal fa-bell"></i> <span
				class="badge badge-icon">3</span>
			</a>
			<div class="dropdown-menu dropdown-menu-animated dropdown-xl">
				<div
					class="dropdown-header bg-trans-gradient d-flex justify-content-center align-items-center rounded-top mb-2">
					<h4 class="m-0 text-center color-white">3 개의 새로운 메세지가 있습니다.</h4>
				</div>
				<ul class="nav nav-tabs nav-tabs-clean" role="tablist">
					<li class="nav-item"><a
						class="nav-link px-4 fs-md js-waves-on fw-500" data-toggle="tab"
						href="#tab-feeds" data-i18n="drpdwn.feeds">알림</a></li>
				</ul>
				<div class="tab-content tab-notification">
					<div class="tab-pane active p-3 text-center">
						<h5 class="mt-4 pt-4 fw-500">
							<span class="d-block fa-3x pb-4 text-muted"> <i
								class="ni ni-arrow-up text-gradient opacity-70"></i>
							</span> Select a tab above to activate <small
								class="mt-3 fs-b fw-400 text-muted"> This blank page
								message helps protect your privacy, or you can show the first
								message here automatically through <a href="#">settings page</a>
							</small>
						</h5>
					</div>
					<div class="tab-pane" id="tab-feeds" role="tabpanel">
						<div class="custom-scroll h-100">
							<ul class="notification">
								<li class="unread">
									<div class="d-flex align-items-center show-child-on-hover">
										<span class="d-flex flex-column flex-1"> <span
											class="name d-flex align-items-center">SIMS 서비스 오픈!</span> <span
											class="msg-a fs-sm">SIMS 구독형 서비스 <strong>1.0</strong>
												버전이 신규 오픈 되었습니다.
										</span> <span class="fs-nano text-muted mt-1">5 mins ago</span>
										</span>
										<div
											class="show-on-hover-parent position-absolute pos-right pos-bottom p-3">
											<a href="#" class="text-muted" title="delete"><i
												class="fal fa-trash-alt"></i></a>
										</div>
									</div>
								</li>
								<li class="unread">
									<div class="d-flex align-items-center show-child-on-hover">
										<span class="d-flex flex-column flex-1"> <span
											class="name d-flex align-items-center">SIMS 1.1 패치! <span
												class="badge badge-success fw-n ml-1">UPDATE</span></span> <span
											class="msg-a fs-sm"> System updated to version <strong>1.1</strong>
												<a href="docs_buildnotes.html">(patch notes)</a>
										</span> <span class="fs-nano text-muted mt-1">10 mins ago</span>
										</span>
										<div
											class="show-on-hover-parent position-absolute pos-right pos-bottom p-3">
											<a href="#" class="text-muted" title="delete"><i
												class="fal fa-trash-alt"></i></a>
										</div>
									</div>
								</li>
								<li class="unread">
									<div class="d-flex align-items-center show-child-on-hover">
										<span class="d-flex flex-column flex-1"> <span
											class="name d-flex align-items-center">SIMS 1.2 패치! <span
												class="badge badge-success fw-n ml-1">UPDATE</span></span> <span
											class="msg-a fs-sm"> System updated to version <strong>1.2</strong>
												<a href="docs_buildnotes.html">(patch notes)</a>
										</span> <span class="fs-nano text-muted mt-1">20 mins ago</span>
										</span>
										<div
											class="show-on-hover-parent position-absolute pos-right pos-bottom p-3">
											<a href="#" class="text-muted" title="delete"><i
												class="fal fa-trash-alt"></i></a>
										</div>
									</div>
								</li>
								<li>
									<div class="d-flex align-items-center show-child-on-hover">
										<!--<img src="img/demo/avatars/avatar-m.png" data-src="img/demo/avatars/avatar-h.png" class="profile-image rounded-circle align-self-start mt-1" alt="k" />-->
										<div class="d-flex flex-column flex-1">
											<div class="name mb-2">
												version 1.2<span class="fw-300"> updated</span>
											</div>
											<div class="row fs-b fw-300">
												<div class="col text-left">진행률</div>
												<div class="col text-right fw-500">45%</div>
											</div>
											<div class="progress progress-sm d-flex mt-1">
												<span
													class="progress-bar bg-primary-500 progress-bar-striped"
													role="progressbar" style="width: 45%" aria-valuenow="45"
													aria-valuemin="0" aria-valuemax="100"></span>
											</div>
											<span class="fs-nano text-muted mt-1">2 hrs ago</span>
											<div
												class="show-on-hover-parent position-absolute pos-right pos-bottom p-3">
												<a href="#" class="text-muted" title="delete"><i
													class="fal fa-trash-alt"></i></a>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div
					class="py-2 px-3 bg-faded d-block rounded-bottom text-right border-faded border-bottom-0 border-right-0 border-left-0">
					<a href="#" class="fs-xs fw-500 ml-auto">view all notifications</a>
				</div>
			</div>
		</div>
		<!-- app user menu -->
		<div>
			<a href="#" data-toggle="dropdown" title="drlantern@gotbootstrap.com"
				class="header-icon d-flex align-items-center justify-content-center ml-2">
				<img
				src="${pageContext.request.contextPath}/resources/assets/smart/demo/avatars/avatar-m.png"
				class="profile-image rounded-circle" alt="Dr. Codex Lantern">
				<!-- you can also add username next to the avatar with the codes below:
									<span class="ml-1 mr-1 text-truncate text-truncate-header hidden-xs-down">Me</span>
									<i class="ni ni-chevron-down hidden-xs-down"></i> -->
			</a>
			<div class="dropdown-menu dropdown-menu-animated dropdown-lg">
				<div
					class="dropdown-header bg-trans-gradient d-flex flex-row py-4 rounded-top">
					<div
						class="d-flex flex-row align-items-center mt-1 mb-1 color-white">
						<span class="mr-2"> <img
							src="${pageContext.request.contextPath}/resources/assets/smart/demo/avatars/avatar-m.png"
							class="rounded-circle profile-image" alt="임규범">
						</span>
						<div class="info-card-text">
							<div class="fs-lg text-truncate text-truncate-lg">임규범</div>
							<span class="text-truncate text-truncate-md opacity-80">admin@sqisoft.com</span>
						</div>
					</div>
				</div>
				<div class="dropdown-divider m-0"></div>
				<a href="#" class="dropdown-item" data-action="app-fullscreen">
					<span data-i18n="drpdwn.fullscreen">정보변경</span>
				</a> <a href="#" class="dropdown-item" data-action="app-fullscreen">
					<span data-i18n="drpdwn.fullscreen">전체화면</span> <i
					class="float-right text-muted fw-n">F11</i>
				</a> <a href="#" class="dropdown-item" data-action="app-print"> <span
					data-i18n="drpdwn.print">인쇄</span> <i
					class="float-right text-muted fw-n">Ctrl + P</i>
				</a>
				<div class="dropdown-divider m-0"></div>
				<a class="dropdown-item fw-500 pt-3 pb-3" href="page_login.html">
					<span data-i18n="drpdwn.page-logout">로그아웃</span> <span
					class="float-right fw-n"></span>
				</a>
			</div>
		</div>
	</div>
</header>
