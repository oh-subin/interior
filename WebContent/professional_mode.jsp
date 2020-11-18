<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.DAO.RecommendationDAO"%>
<%@ page import="com.DTO.RecommendationDTO"%>


<!doctype html>
<html lang="en">

<head>

<!-- Required meta tags -->
<meta charset="utf-8">
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
		String email = (String) session.getAttribute("email");
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
								src="img/homepage/Logo3.JPG" alt="logo" style="width: 205px;">
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
										href="professional_mode.jsp">추천</a></li>
									<li class="nav-item"><a class="nav-link"
										href="Used_Homekit_Sale.jsp">중고키트 판매</a></li>
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" id="navbarDropdown"
										role="button" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> 커뮤니티 </a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown">
											<a class="dropdown-item" href="SNS.jsp">SNS</a> <a
												class="dropdown-item" href="#">체험형 키트</a>
										</div></li>
									<li class="nav-item"><a class="nav-link" href="QA.jsp">Q&A</a>
									</li>
								</ul>
							</div>
							<%
								if (email == null) {
							%>
							<a href="login.jsp"
								style="color: rgba(75, 75, 75, 0.89); font-size: 14px;">로그인</a>
							<a href="register.jsp"
								style="margin-left: 15px; color: rgba(75, 75, 75, 0.89); font-size: 14px;">회원가입</a>
							<%
								} else {
							%>
							<div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" id="navbarDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"><%=email%></a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="update.jsp">정보수정</a> <a
										class="dropdown-item" href="LogoutService">로그아웃</a> <a
										class="dropdown-item" href="delete.jsp">회원탈퇴</a>
								</div>
							</div>
							<a href="basket.jsp"
								style="margin-left: 5px; color: rgba(75, 75, 75, 0.89); font-size: 14px;">장바구니</a>
							<%
								}
							%>
						</nav>
					</div>
				</div>
			</div>



			<div class="jbMenu" style="height: 100px;">
				<p>
				<div style="width: 600px; margin-left: 400px; height: 20px;">
					<div style="width: 600px; height: 20px;">
						<b class="prograss_text">추천 진행도<b style="padding-left: 440px;">0%</b></b>
					</div>
					<div class="progress"
						style="width: 600px; height: 20px; margin-left: 0px; margin-top: 20px;">
						<div class="progress-bar" role="progressbar" aria-valuenow="0"
							aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
				</p>
			</div>

			<!-- prograss bar end -->
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


							<!-- 수정: 전문가 추천 모드 페이지 begin -->
							<!-- prograss bar 100% begin -->
							<!-- <div style="width: 600px;margin-left: 400px;height: 70px;">
 	<div style="width: 600px;height: 20px;margin-top: 90px;">
		<b class="prograss_text">��õ ���൵ <b style="padding-left: 440px;">100%</b></b>
	</div>
    <div class="progress" style="width: 600px;height: 20px;margin-left: 0px;margin-top: 20px;">
  		<div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
	</div>
 </div> -->
							<!-- prograss bar end  -->

							<!-- 태그추천부분 begin -->
							<!-- booking part start-->
							<section class="booking_part"
								style="margin-top: 70px; height: 400px;">
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<div class="booking_menu">
												<h2>1. 태그 선택</h2>
												<br>
												<p>인테리어 추천을 위해 아래의 태그를 선택해주세요.</p>

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
													<div class="tab-pane fade show active" id="hotel"
														role="tabpanel" aria-labelledby="hotel-tab"
														style="margin-bottom: 500px;">
														<div class="booking_form">
															<form action="FirstRecommendation" method="post">
																<div class="form-row">
																	<div class="form_colum">
																		<select class="nc_select" name="select_space">
																			<option selected>공간</option>
																			<option value="아파트">아파트</option>
																			<option value="원룸&오피스텔">원룸&오피스텔</option>
																			<option value="빌라&연립">빌라&연립</option>
																			<option value="단독주택">단독주택</option>
																		</select>
																	</div>
																	<div class="form_colum">
																		<select class="nc_select" name="select_size">
																			<option selected>평수</option>
																			<option value="10평대">10평대</option>
																			<option value="10평 미만">10평 미만</option>
																			<option value="20평대">20평대</option>
																			<option value="30평대">30평대</option>
																			<option value="40평대">40평대</option>
																			<option value="50평대 이상">50평대 이상</option>
																		</select>
																	</div>
																	<div class="form_colum" style="margin-right: 290px">
																		<select class="nc_select" name="select_familyShape">
																			<option selected>가족형태</option>
																			<option value="싱글라이프">싱글라이프</option>
																			<option value="신혼부부">신혼부부</option>
																			<option value="신혼부부, 아기가 있는 집">신혼부부, 아기가 있는
																				집</option>
																			<option value="아기가 있는 집">아기가 있는 집</option>
																			<option value="부모님과 함께 사는 집">부모님과 함께 사는 집</option>
																			<option value="아기가 있는 집, 취약 자녀가 있는 집">아기가 있는
																				집, 취약 자녀가 있는 집</option>
																			<option value="취약 자녀가 있는 집">취약 자녀가 있는 집</option>
																		</select>
																	</div>
																	<div class="form_btn">
																		<input type="submit" value="1차추천" class="btn_1">
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
	<section class="hotel_list section_padding">
		<div class="container" style="margin-left: 200px;">
			<div class="row justify-content-center" style="margin-right: 200px;">
				<div class="col-xl-6">
					<div class="section_tittle text-center">
						<h2>2. 평점 매기기</h2>
						<p>사진을 클릭하여 평점을 1~5까지 입력해주세요</p>
					</div>
				</div>
			</div>


			<div class="section-top-border" style="padding-top: 0px;">
				<div class="row gallery-item">


					<div class="col-md-6" style="float: right;">
						<a href="img/homepage/10.jpg" class="img-pop-up">
							<div class="single-gallery-image"
								style="background: url(img/homepage/10.jpg); width: 400px; height: 300px;"></div>
						</a>

						<div class="switch-wrap d-flex justify-content-between">
							모달창 버튼 BEGIN
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModal" data-whatever="@mdo"
								style="margin-left: 150px; margin-top: 30px;">평점 등록하기</button>
							<div class="modal fade" id="exampleModal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog" style="margin-top: 200px;">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">평점 등록하기</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<form>
												<div class="form-group">
													<label for="message-text" class="col-form-label">평점:</label>
													<textarea class="form-control" id="message-text"></textarea>
												</div>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">창 닫기</button>
											<input type="submit" class="btn btn-primary" value="등록하기">
										</div>
									</div>
								</div>
							</div>
							모달창 버튼 END
						</div>
					</div>
				</div>


				<div class="row gallery-item">
					<!-- 반복문 시작 지점 -->
					<%
						String rec_space = (String) request.getAttribute("rec_space");
					String rec_size = (String) request.getAttribute("rec_size");
					String rec_familyShape = (String) request.getAttribute("rec_familyShape");
					System.out.println(rec_space);
					System.out.println(rec_size);
					System.out.println(rec_familyShape);

					RecommendationDAO dao = new RecommendationDAO();
					ArrayList<RecommendationDTO> imgList = dao.showIMG(rec_space, rec_size, rec_familyShape);
					System.out.println(imgList);
					%>
					<%
						if (imgList.isEmpty()) {
					%>

					<h2>추천해주세요!</h2>
					<%
						} else {
					%>
					<%
						for (int i = 0; i < 4; i++) {
					%>
					<div class="col-md-6" style="float: right;">
						<a href="img/homepage/10.jpg" class="img-pop-up">
							<div class="single-gallery-image"
								style="background: url(img/homepage/10.jpg); width: 400px; height: 300px;"></div>
						</a>
						<div class="switch-wrap d-flex justify-content-between">
							<!-- 모달창 버튼   -->
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModal" data-whatever="@mdo"
								style="margin-left: 150px; margin-top: 30px;">평점 등록하기</button>
							<div class="modal fade" id="rating-modal" tabindex="-1"
								aria-labelledby="exampleModalLabel" aria-hidden="true">
								<div class="modal-dialog" style="margin-top: 200px;">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">평점 등록하기</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<form>
												<div class="form-group">
													<label for="message-text" class="col-form-label">평점:</label>
													<textarea class="form-control" class="rating"
														name="ratings"></textarea>
												</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">창 닫기</button>
											<button type="button" class="btn btn-primary" id="ratingInput">등록하기</button>
										</div>
										</form>
									</div>
								</div>
							</div>
							<p><%=imgList.get(i).getRec_title()%></p>
						</div>
					</div>
					<%
						}
					%>
					<%
						}
					%>



					<!-- 반복문 끝나는 지점  -->
					<!-- <div class="col-md-6" style="float: right;">
						<a href="img/homepage/10.jpg" class="img-pop-up">
							<div class="single-gallery-image"
								style="background: url(img/homepage/10.jpg); width: 400px; height: 300px;""></div>
						</a>

						<div class="switch-wrap d-flex justify-content-between">
							모달창 버튼  
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModal" data-whatever="@mdo"
								style="margin-left: 150px; margin-top: 30px;">평점 등록하기</button>
						</div>
					</div>
					
					<div class="col-md-6" style="float: right;">
						<a href="img/homepage/10.jpg" class="img-pop-up">
							<div class="single-gallery-image"
								style="background: url(img/homepage/10.jpg); width: 400px; height: 300px;""></div>
						</a>

						<div class="switch-wrap d-flex justify-content-between">
							모달창 버튼  
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModal" data-whatever="@mdo"
								style="margin-left: 150px; margin-top: 30px;">평점 등록하기</button>
						</div>
					</div> -->
				</div>
			</div>
		</div>

		<input type="button" id="select" value="2차 추천" class="btn_1"
			onclick="test_checkbox();"
			style="margin-left: 650px; margin-top: 70px;">
		</form>
	</section>
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
						<script>
							document.write(new Date().getFullYear());
						</script>
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

	<script src="//code.jquery.com/jquery-1.12.4.min.js"></script>

	<script>
		$(document).ready(function() {
			var jbOffset = $('.jbMenu').offset();
			$(window).scroll(function() {
				if ($(document).scrollTop() > jbOffset.top) {
					$('.jbMenu').addClass('jbFixed');
				} else {
					$('.jbMenu').removeClass('jbFixed');
				}
			});
		});
	</script>

	<script>
		var ratings = $(".rating").serialize();
		
		console.log($('#ratingInput'));
		
		$('#ratingInput').on('click', function() {
			$.ajax({
				url : "secondRecommendation",
				type : "POST",
				data : ratings,
				success : function(result) {
					console.log("평점 보내기 완료! 상세 추천을 시작합니다.")
					$(".rating").text(result);
				},
				error : function() {
					alert("에러 발생")
				}
			});
		})
	</script>
</body>

</html>

