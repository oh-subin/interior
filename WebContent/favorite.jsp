<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.DAO.homekitDAO"%>
<%@ page import="com.DTO.homekitDTO"%>
<!-- 백엔드 여러분!!! 체크박스 누르면 선택이 되도록 구현해주세요 -->

<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>방구석 인테리어-취향선택</title>
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
								<a href="login.jsp" style="color:rgba(75, 75, 75, 0.89); font-size: 14px;">로그인</a>
		                        <a href="register.jsp" style="margin-left: 15px; color:rgba(75, 75, 75, 0.89); font-size: 14px;">회원가입</a>
							<%}else{ %>
							<div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle btn_1 d-none d-lg-block"
									id="navbarDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"><%=email %></a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="update.jsp">정보수정</a> <a
										class="dropdown-item" href="LogoutService">로그아웃</a> <a
										class="dropdown-item" href="delete.jsp">회원탈퇴</a>
								</div>
							</div>
							<a href="basket.jsp" class="btn_1 d-none d-lg-block"
								style="margin-left: 5px;">장바구니</a>
							<%} %>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- 수정: 상위메뉴 이름 지정 end -->
	<!-- Header part end-->


	<!-- 선호도 조사 페이지 begin -->

	<!-- 선호도 조사 페이지 end -->


	<!-- breadcrumb start-->
	<!-- 수정: 사이트 소개 begin -->
	<section class="breadcrumb breadcrumb_bg" style="height: 324px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
							<h2 style="padding-bottom: 10px; font-size: 50px;">인테리어 테마
								선호도</h2>
							<p style="padding-bottom: 100px;">선호하는 인테리어 테마를 2개만 골라주세요.</p>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- breadcrumb start-->
	<br>
	<br>
	<br>
	<br>
	<br>
	<!--::industries start::-->
	<section class="hotel_list section_padding">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-xl-6">
					<div class="section_tittle text-center">
						<!-- prograss bar begin -->
						 <div style="width: 600px;height: 70px;">
						 	<div style="width: 600px;height: 20px;margin-top: 90px;">
								<b class="prograss_text">추천 진행도 <b style="padding-left: 440px;">50%</b></b>
							</div>
						    <div class="progress" style="width: 600px;height: 20px;margin-left: 0px;margin-top: 20px;">
						  		<div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						 </div>
						 <!-- prograss bar end -->
						<h2>인테리어 테마</h2>
						<p>이미지를 클릭하시면 이미지를 확대해서 볼 수 있습니다.</p>
					</div>
				</div>
			</div>
			<div class="section-top-border" style="padding-top: 0px;">
				<div class="row gallery-item">
		<!-- 반복문이 시작되는 부분 -->
					<%
	               homekitDAO dao = new homekitDAO();
				   ArrayList<homekitDTO> homekitList = dao.showHomeKit();
               		
				   for (int i=0; i < homekitList.size(); i++) { %>
					<div class="col-md-4">
						<a href="<%=homekitList.get(i).getKit_img() %>" class="img-pop-up">
							<div class="single-gallery-image"
								style="background: url('<%=homekitList.get(i).getKit_img() %>'); background-size: contain; background-repeat: no-repeat;"></div>
						</a>
						<div style="padding-top: 20px;">
							<span><strong style="font-size: 20px;"><%=homekitList.get(i).getKit_name() %></strong></span>
							<div class="switch-wrap d-flex justify-content-between">
								<p>0<%=i+1 %>. <%=homekitList.get(i).getKit_style() %></p>
								<p>선택하기 →</p>
								<div class="primary-checkbox">
									<input type="checkbox" id="default-checkbox"> <label
										for="default-checkbox"></label>
								</div>
							</div>
						</div>
					</div>
					<% }
               
               %>
		<!-- 반복문이 끝나는 부분 -->
					<div class="col-md-4">
						<a href="img/homepage/310.jpg" class="img-pop-up">
							<div class="single-gallery-image"
								style="background: url(img/homepage/310.jpg); background-size: contain; background-repeat: no-repeat;""></div>
						</a>
						<div style="padding-top: 20px;">
							<span><strong style="font-size: 20px;">집에서도 휴양지에 온 것처럼ㅣ라탄&빈티지 무드</strong></span>
							<div class="switch-wrap d-flex justify-content-between">
								<p>01. 빈티지&레트로</p>
								<p>선택하기 →</p>
								<div class="primary-checkbox">
									<input type="checkbox" id="default-checkbox"> <label
										for="default-checkbox"></label>
								</div>
							</div>
						</div>
					</div>
					<!-- 반복문이 시작되는 부분 -->
				
				
				</div>
			</div>
		</div>
		<a href="about.jsp" class="btn_1"
			style="margin-left: 650px; margin-top: 70px;">선택완료</a>
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
                             <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
     Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
     <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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