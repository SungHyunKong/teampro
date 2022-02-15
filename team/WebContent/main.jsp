<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>메인페이지</title>

</head>

<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>
			<%@include file="header.jsp"%>
			<%@include file="sidebar.jsp"%>
			<div class="main-content">
				<section class="section">
					<div class="section-header">
						<h1>참고 페이지</h1>
					</div>

					<!--  코드작성하시오  이 페이지는 건들지 마시오 -->

					<!-- Main Content -->
						<div class="row">
							<div class="col-lg-3 col-md-6 col-sm-6 col-12">
								<div class="card card-statistic-1">
									<div class="card-icon bg-primary">
										<i class="far fa-user"></i>
									</div>
									<div class="card-wrap">
										<div class="card-header">
											<h4>출석하기</h4>
										</div>
										<div class="card-body">
											<button value="출석">
												
											</button>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6 col-sm-6 col-12">
								<div class="card card-statistic-1">
									<div class="card-icon bg-danger">
										<i class="far fa-newspaper"></i>
									</div>
									<div class="card-wrap">
										<div class="card-header">
											<h4>한광진</h4>
										</div>
										<div class="card-body">42</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6 col-sm-6 col-12">
								<div class="card card-statistic-1">
									<div class="card-icon bg-warning">
										<i class="far fa-file"></i>
									</div>
									<div class="card-wrap">
										<div class="card-header">
											<h4>Reports</h4>
										</div>
										<div class="card-body">1,201</div>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6 col-sm-6 col-12">
								<div class="card card-statistic-1">
									<div class="card-icon bg-success">
										<i class="fas fa-circle"></i>
									</div>
									<div class="card-wrap">
										<div class="card-header">
											<h4>Online Users</h4>
										</div>
										<div class="card-body">47</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6 col-md-12 col-12 col-sm-12">
								<div class="card">
									<div class="card-header">
										<h4>Weather</h4>
										<div class="card-header-action">
											<div class="btn-group">
												<a href="#" class="btn btn-primary">Week</a> <a href="#"
													class="btn">Month</a>
											</div>
										</div>
									</div>
									<div class="card-body">
										<canvas id="myChart" height="182"></canvas>
										<div class="statistic-details mt-sm-4">
											<div class="statistic-details-item">
												<span class="text-muted"><span class="text-primary"><i
														class="fas fa-caret-up"></i></span> 7%</span>
												<div class="detail-value">$243</div>
												<div class="detail-name">Today's Sales</div>
											</div>
											<div class="statistic-details-item">
												<span class="text-muted"><span class="text-danger"><i
														class="fas fa-caret-down"></i></span> 23%</span>
												<div class="detail-value">$2,902</div>
												<div class="detail-name">This Week's Sales</div>
											</div>
											<div class="statistic-details-item">
												<span class="text-muted"><span class="text-primary"><i
														class="fas fa-caret-up"></i></span>9%</span>
												<div class="detail-value">$12,821</div>
												<div class="detail-name">This Month's Sales</div>
											</div>
											<div class="statistic-details-item">
												<span class="text-muted"><span class="text-primary"><i
														class="fas fa-caret-up"></i></span> 19%</span>
												<div class="detail-value">$92,142</div>
												<div class="detail-name">This Year's Sales</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-16">
								<div class="card">
									<div class="card-header">
										<h4>Referral URL</h4>
										<div class="card-body">
											<div class="mb-4">
												<div
													class="text-small float-right font-weight-bold text-muted">2,100</div>
												<div class="font-weight-bold mb-1">Google</div>
												<div class="progress" data-height="3">
													<div class="progress-bar" role="progressbar"
														data-width="80%" aria-valuenow="80" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>

											<div class="mb-4">
												<div
													class="text-small float-right font-weight-bold text-muted">1,880</div>
												<div class="font-weight-bold mb-1">Facebook</div>
												<div class="progress" data-height="3">
													<div class="progress-bar" role="progressbar"
														data-width="67%" aria-valuenow="25" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>

											<div class="mb-4">
												<div
													class="text-small float-right font-weight-bold text-muted">1,521</div>
												<div class="font-weight-bold mb-1">Bing</div>
												<div class="progress" data-height="3">
													<div class="progress-bar" role="progressbar"
														data-width="58%" aria-valuenow="25" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>

											<div class="mb-4">
												<div
													class="text-small float-right font-weight-bold text-muted">884</div>
												<div class="font-weight-bold mb-1">Yahoo</div>
												<div class="progress" data-height="3">
													<div class="progress-bar" role="progressbar"
														data-width="36%" aria-valuenow="25" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>

											<div class="mb-4">
												<div
													class="text-small float-right font-weight-bold text-muted">473</div>
												<div class="font-weight-bold mb-1">Kodinger</div>
												<div class="progress" data-height="3">
													<div class="progress-bar" role="progressbar"
														data-width="28%" aria-valuenow="25" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>

											<div class="mb-4">
												<div
													class="text-small float-right font-weight-bold text-muted">418</div>
												<div class="font-weight-bold mb-1">Multinity</div>
												<div class="progress" data-height="3">
													<div class="progress-bar" role="progressbar"
														data-width="20%" aria-valuenow="25" aria-valuemin="0"
														aria-valuemax="100"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</section>
			</div>
			<%@include file="footer.jsp"%>
		</div>

</body>
</html>