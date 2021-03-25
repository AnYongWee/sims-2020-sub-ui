<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin Templete</title>
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet" />
</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-7">
						<div class="card shadow-lg border-0 rounded-lg mt-5">
							<div class="card-header">
								<h3 class="text-center font-weight-light my-4">회원가입</h3>
							</div>
							<div class="card-body">
								<form>
									<div class="form-row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="small mb-1" for="inputFirstName">First Name</label> <input class="form-control py-4" id="inputFirstName"
													type="text" placeholder="Enter first name" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="small mb-1" for="inputLastName">Last
													Name</label> <input class="form-control py-4" id="inputLastName"
													type="text" placeholder="Enter last name" />
											</div>
										</div>
									</div>
									<div class="form-group">
										<label class="small mb-1" for="inputEmailAddress">Email</label>
										<input class="form-control py-4" id="inputEmailAddress"
											type="email" aria-describedby="emailHelp"
											placeholder="Enter email address" />
									</div>
									<div class="form-row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="small mb-1" for="inputPassword">Password</label>
												<input class="form-control py-4" id="inputPassword"
													type="password" placeholder="Enter password" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="small mb-1" for="inputConfirmPassword">Confirm
													Password</label> <input class="form-control py-4"
													id="inputConfirmPassword" type="password"
													placeholder="Confirm password" />
											</div>
										</div>
									</div>
									<div class="form-group mt-4 mb-0">
										<a class="btn btn-primary btn-block" href="/auth/login.do">Create
											Account</a>
									</div>
								</form>
							</div>
							<div class="card-footer text-center">
								<div class="small">
									<a href="/auth/login.do">Have an account? Go to login</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</main>
		</div>
		<!-- <div id="layoutAuthentication_footer">
			<footer class="py-4 bg-light mt-auto">
			<div class="container-fluid">
				<div class="d-flex align-items-center justify-content-between small">
					<div class="text-muted">Copyright &copy; Your Website 2020</div>
					<div>
						<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
							&amp; Conditions</a>
					</div>
				</div>
			</div>
			</footer>
		</div> -->
	</div>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
</body>
</html>
