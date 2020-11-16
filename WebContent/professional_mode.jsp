<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>방구석 인테리어-전문가추전</title>
<link rel="icon" href="img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- themify CSS -->
<link rel="stylesheet" href="css/themify-icons.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="css/flaticon.css">
<!-- fontawesome CSS -->
<link rel="stylesheet" href="fontawesome/css/all.min.css">
<!-- magnific CSS -->
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/gijgo.min.css">
<!-- niceselect CSS -->
<link rel="stylesheet" href="css/nice-select.css">
<!-- slick CSS -->
<link rel="stylesheet" href="css/slick.css">
<!-- style CSS -->
<link rel="stylesheet" href="css/style.css">
</head>

<body>
	<%
		String email = (String)session.getAttribute("email");	
	%>
	<!--::header part start::-->
	<header class="main_menu">
		<div class="main_menu_iner">
			<div class="container">
				<div class="row align-items-center ">
					<div class="col-lg-12">
						<nav
							class="navbar navbar-expand-lg navbar-light justify-content-between">
							<a class="navbar-brand" href="main.jsp"> <img
								src="img/homepage/logo.JPG" alt="logo" style="width: 205px;">
							</a>
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<!-- 수정: 상위메뉴 이름 지정 begin -->
							<div
								class="collapse navbar-collapse main-menu-item justify-content-center"
								id="navbarSupportedContent">
								<ul class="navbar-nav">
									<li class="nav-item"><a class="nav-link" href="about.jsp">소개</a>
									</li>
									<li class="nav-item"><a class="nav-link"
										href="professional_mode.jsp">전문가 추천</a></li>
									<li class="nav-item"><a class="nav-link"
										href="Beginner_Mode.jsp">초보자 추천</a></li>
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" id="navbarDropdown"
										role="button" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> 커뮤니티 </a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown">
											<a class="dropdown-item" href="Used_Homekit_Sale.jsp">중고키트
												판매</a> <a class="dropdown-item" href="SNS.jsp">키트 조합</a>
										</div></li>
									<li class="nav-item"><a class="nav-link" href="QA.jsp">Q&A</a>
									</li>
								</ul>
							</div>
							<%if(email == null){ %>
							<a href="login.jsp"
								style="color: rgba(75, 75, 75, 0.89); font-size: 14px;">로그인</a>
							<a href="register.jsp"
								style="margin-left: 15px; color: rgba(75, 75, 75, 0.89); font-size: 14px;">회원가입</a>
							<%}else{ %>
							<div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle"
									id="navbarDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"><%=email %></a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="update.jsp">정보수정</a> <a
										class="dropdown-item" href="LogoutService">로그아웃</a> <a
										class="dropdown-item" href="delete.jsp">회원탈퇴</a>
								</div>
							</div>
							<a href="basket.jsp" 
								style="margin-left: 5px; color:rgba(75, 75, 75, 0.89); font-size: 14px;">장바구니</a>
							<%} %>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- 수정: 상위메뉴 이름 지정 end -->
	<!-- Header part end-->

	<!-- 수정: 전문가 추천 모드 페이지 begin -->
	<!-- banner part start-->
	<section class="breadcrumb breadcrumb_bg" style="height: 324px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2>professional mode</h2>
							<p style="padding-bottom: 80px;">인테리어가 익숙한 당신을 위한 추천 모드입니다.</p>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- banner part start-->
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- 태그추천부분 begin -->
	<!-- booking part start-->
	<section class="booking_part">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="booking_menu">
						<ul class="nav nav-tabs" id="myTab" role="tablist">			
							<li class="nav-item"><a class="nav-link active"
								id="hotel-tab" data-toggle="tab" href="#hotel" role="tab"
								aria-controls="hotel" aria-selected="true">인테리어 추천을 위해 아래의
									태그를 선택해주세요.</a></li>
						</ul>
						<!-- 프로그레스 바 -->
							<!-- <p>추천 진행도</p>
							<div class="progress" style="margin-top: 2px">
								<div class="progress-bar" role="progressbar" style="width: 50%;"
									aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">50%</div>
							</div> -->
						<!------------->
					</div>
				</div>
				<div class="col-lg-12">
					<div class="booking_content">
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="hotel" role="tabpanel"
								aria-labelledby="hotel-tab" style="margin-bottom: 500px;">
								<div class="booking_form">
									<form action="#">
										<div class="form-row">
											<div class="form_colum">
												<select class="nc_select">
													<option selected>인테리어 스타일</option>
													<option value="1">모던</option>
													<option value="2">내추럴</option>
													<option value="3">북유럽</option>
													<option value="4">빈티지&레트로</option>
													<option value="5">유니크&믹스매치</option>
													<option value="6">클래식&앤틱</option>
													<option value="7">프로방스&로맨틱</option>
												</select>
											</div>
											<div class="form_colum">
												<select class="nc_select">
													<option selected>배경 색상</option>
													<option value="1">흰색</option>
													<option value="2">갈색</option>
													<option value="3">회색</option>
													<option value="4">검은색</option>
													<option value="5">무채색</option>
													<option value="6">비비드컬러</option>
													<option value="7">빛바랜색</option>
													<option value="8">어두운색</option>
													<option value="9">자연의색</option>
													<option value="10">차분한색</option>
													<option value="11">원색</option>
													<option value="12">나무색</option>
													<option value="13">크림색</option>
													<option value="14">파스텔</option>
													<option value="15">베이지</option>
												</select>
											</div>
											<div class="form_colum" style="margin-right: 290px">
												<select class="nc_select">
													<option selected>소품 색상</option>
													<option value="1">흰색</option>
													<option value="2">갈색</option>
													<option value="3">회색</option>
													<option value="4">검은색</option>
													<option value="5">무채색</option>
													<option value="6">비비드컬러</option>
													<option value="7">빛바랜색</option>
													<option value="8">어두운색</option>
													<option value="9">자연의색</option>
													<option value="10">차분한색</option>
													<option value="11">원색</option>
													<option value="12">나무색</option>
													<option value="13">크림색</option>
													<option value="14">파스텔</option>
													<option value="15">베이지</option>
												</select>
											</div>
											<div class="form_btn">
												<a href="result.jsp" class="btn_1">추천 시작</a>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Header part end-->
	<!-- 태그추천부분 end -->

	<br>
	<br>
	<br>
	<br>
	<br>
	<!--::industries start::-->
	<section class="best_services section_padding">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-6">
					<div class="section_tittle text-center">
						<h2>연관된 테마</h2>
						<p>선호하는 테마와 비슷한 테마 더보기</p>
						<hr>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="single_ihotel_list">
						<a href="#"><img src="img/homepage/27.jpg" alt=""></a>
						<h3>온전히 취향대로 꾸몄더니 머무는 내내 마음에 드는 집</h3>
						<p>미니멀&심플</p>
						<br> <span>홈키트 가격 = 5만원</span><br>
						<hr>
						<a href="#" class="genric-btn info circle">홈키트 구경하기</a>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="single_ihotel_list">
						<a href="#"><img src="img/homepage/28.jpg" alt=""></a>
						<h3>호텔리조트 풍으로 원없이 꾸민 드림하우스</h3>
						<p>프렌츠&프로방스</p>
						<br> <span>홈키트 가격 = 5만원</span><br>
						<hr>
						<a href="#" class="genric-btn info circle">홈키트 구경하기</a>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="single_ihotel_list">
						<a href="#"><img src="img/homepage/30.jpg" alt=""></a>
						<h3>글씨를 쓰는 나, 고양이 둘 그리고 11평 우리 집</h3>
						<p>빈티지&레트로</p>
						<br> <span>홈키트 가격 = 5만원</span><br>
						<hr>
						<a href="#" class="genric-btn info circle">홈키트 구경하기</a>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6">
					<div class="single_ihotel_list">
						<a href="#"><img src="img/homepage/27.jpg" alt=""></a>
						<h3>온전히 취향대로 꾸몄더니 머무는 내내 마음에 드는 집</h3>
						<p>미니멀&심플</p>
						<br> <span>홈키트 가격 = 5만원</span><br>
						<hr>
						<a href="#" class="genric-btn info circle">홈키트 구경하기</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--::industries end::-->
	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- footer part start-->
	<footer class="footer-area">


		<div class="row justify-content-center">
			<div class="col-lg-12">
				<div class="copyright_part_text text-center">
					<p class="footer-text m-0">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>document.write(new Date().getFullYear());</script>
						All rights reserved | This template is made with <i
							class="ti-heart" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>

	</footer>
	<!-- footer part end-->

	<!-- jquery plugins here-->
	<script src="js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- magnific js -->
	<script src="js/jquery.magnific-popup.js"></script>
	<!-- swiper js -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- masonry js -->
	<script src="js/masonry.pkgd.js"></script>
	<!-- masonry js -->
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/gijgo.min.js"></script>
	<!-- contact js -->
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.form.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/contact.js"></script>
	<!-- custom js -->
	<script src="js/custom.js"></script>
</body>

</html>