<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <!doctype html>
    <html lang="en">
    
        <head>
        <!-- Required meta tags -->
        <meta charset="EUC-KR">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>방구석 인테리어-주문완료</title>
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
                            <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                                <a class="navbar-brand" href="main.jsp"> <img src="img/homepage/Logo3.JPG" alt="logo" style="width: 205px;"> </a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
    							<!-- 수정: 상위메뉴 이름 지정 begin -->
                                <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                    id="navbarSupportedContent">
                                    <ul class="navbar-nav">
                                    	<li class="nav-item">
                                            <a class="nav-link" href="about.jsp">소개</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="professional_mode.jsp">전문가 추천</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Beginner_Mode.jsp">초보자 추천</a>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" id="navbarDropdown"
                                                role="button" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                커뮤니티
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="Used_Homekit_Sale.jsp">중고키트 판매</a>
                                                <a class="dropdown-item" href="SNS.jsp">키트 조합</a>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="QA.jsp">Q&A</a>
                                        </li>
                                    </ul>
                                </div>
                                <%if(email == null){ %>
	                                <a href="login.jsp" class="btn_1 d-none d-lg-block" >로그인</a>
	                                <a href="register.jsp" class="btn_1 d-none d-lg-block" style="margin-left: 5px;">회원가입</a>
                                <%}else{ %>
	                                <div class="nav-item dropdown">
	                                    <a class="nav-link dropdown-toggle btn_1 d-none d-lg-block" id="navbarDropdown"  role="button" 
	                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><%=email %></a>
	                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	                                          <a class="dropdown-item" href="update.jsp">정보수정</a>
		                                      <a class="dropdown-item" href="LogoutService">로그아웃</a>
		                                      <a class="dropdown-item" href="delete.jsp">회원탈퇴</a>
	                                        </div>
	                                </div>
	                                <a href="basket.jsp" class="btn_1 d-none d-lg-block" style="margin-left: 5px;">장바구니</a>
                                <%} %>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
 <!-- 수정: 상위메뉴 이름 지정 end -->
 <!-- Header part end-->
    
        <!-- 수정: 전문가 추천모드에서 이동할 추천결과 페이지 begin -->
        <!-- breadcrumb start-->
        <section class="breadcrumb breadcrumb_bg" style="height: 600px;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb_iner">
                            <div class="breadcrumb_iner_item text-center">
                                <h2 style="padding-bottom: 30px; padding-top:120px;" >"Order Completed"</h2>
                                <p style="padding-bottom: 30px;">고객님, 주문이 완료되었습니다. <br><br> 저희 상품을 구매해주셔서 감사합니다.</p>
                                <p>주문하신 상품의 배송은 15일 이내 완료됩니다. <br><br> 상세 배송정보는 배송조회 페이지에서 확인이 가능합니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- breadcrumb start-->
<br><br>
    <!-- footer part start-->
    <footer class="footer-area">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-sm-6 col-md-5">
                    <div class="single-footer-widget">
                        <h4>(주)방구석 인테리어를 만든 사람들</h4>
                        <ul>
                            <li><a href="#">오수빈, 팀장</a></li>
                            <li><a href="#">임지혜, 팀원</a></li>
                            <li><a href="#">이주영, 팀원</a></li>
                            <li><a href="#">박하영, 팀원</a></li>
                            <li><a href="#">김소희, 팀원</a></li>
                            <li><a href="#">강지아, 팀원</a></li>
                        </ul>
    
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="single-footer-widget">
                        <h4>Send us Email</h4>
                        <div class="form-wrap" id="mc_embed_signup">
                            <form target="_blank"
                                action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                method="get" class="form-inline">
                                <input class="form-control" name="EMAIL" placeholder="Your Email Address"
                                    onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
                                    required="" type="email">
                                <button class="click-btn btn btn-default text-uppercase"> <i class="far fa-paper-plane"></i>
                                </button>
                                <div style="position: absolute; left: -5000px;">
                                    <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
                                        type="text">
                                </div>
    
                                <div class="info"></div>
                            </form>
                        </div>
                        <p>궁금한 점은 이메일로 문의바랍니다.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="single-footer-widget footer_icon">
                        <h4>Contact Us</h4>
                        <p>광주광역시 남구 송암로60 광주CGI센터 2층 
                           062-655-3509
                        </p>
                        <span>admin@admin.com</span>
                        <div class="social-icons">
                            <a href="#"><i class="ti-facebook"></i></a>
                            <a href="#"><i class="ti-twitter-alt"></i></a>
                            <a href="#"><i class="ti-pinterest"></i></a>
                            <a href="#"><i class="ti-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="copyright_part_text text-center">
                        <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="ti-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
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