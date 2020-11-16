<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">

<head>
        <!-- Required meta tags -->
        <meta charset="EUC-KR">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>방구석 인테리어-소개</title>
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
                                            <a class="nav-link" href="contact.jsp">Q&A</a>
                                        </li>
                                    </ul>
                                </div>
                                <%if(email == null){ %>
	                                <a href="login.jsp" style="color:rgba(75, 75, 75, 0.89); font-size: 14px;">로그인</a>
	                                <a href="register.jsp" style="margin-left: 15px; color:rgba(75, 75, 75, 0.89); font-size: 14px;">회원가입</a>
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
    <!-- breadcrumb start-->
    <!-- 수정: 사이트 소개 begin -->
    <section class="breadcrumb breadcrumb_bg" style="height: 324px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>Homekit Process Presentation</h2>
                            <p style="padding-bottom: 80px;">홈키트 추천 및 구매과정을 소개해드립니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
<br><br><br><br><br>
    <!-- about us css start-->
    <section class="about_us section_padding">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="about_img">
                        <img src="img/homepage/31.jpg" alt="#" style="height:400px; width:550px;">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="about_text">
                        <h5>홈키트란?</h5>
                        <h2>셀프 인테리어를 어려워하는 당신을 위한 키트</h2>
                        <p>코로나 시대에서 집에 머무는 시간이 증가하는 시대 추세에 맞춰 인테리어의 관심은 점점 더 증가하는 추세입니다.</p>
                        <p>하지만 오늘도 당신은 인테리어 플랫폼에서 장바구니에 물건만 담으셨나요? 인테리어 소품은 이쁜데 막상 인테리어를 위한 소품 조합은 어려우셨죠?</p>
                        <p>그런 당신을 위해 준비했습니다. 우리 사이트에서 제공하는 홈키트 한개로 당신의 방을 쉽고 빠르게 꾸며보세요! 오늘부터 당신도 인테리어 전문가가 될 수 있습니다!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about us css end-->

    <!--top place start-->
    <section class="event_part section_padding" style="margin-top: 500px;height: 570px;padding-top: 10px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="event_slider owl-carousel" >
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="col-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h5>홈키트 추천받는 과정</h5>
                                        <h2>1. 추천 단계 선택하기</h2>
                                        <p><strong>1-1. 초보자 추천:</strong> 인테리어가 처음인 사람을 위한 추천모드 <br>
                                            <strong>사용방법:</strong> 제시되는 테마 중에 마음에 드는 것을 선택하여 당신의 인테리어 취향을 파악한 후 추천해드립니다.
                                        </p><br>
                                        <p><strong>1-2. 전문가 추천:</strong> 인테리어에 익숙한 사람을 위한 추천모드 <br>
                                            <strong>사용방법:</strong> 인테리어 관련 태그를 선택한 후 추천받기 버튼을 누르면 당신의 인테리어 취향에 맞는 홈키트를 추천해드립니다.
                                        </p>
    
                                        <a href="Beginner_Mode.jsp" class="btn_1">초보자 모드로 이동</a>
                                        <a href="professional_mode.jsp" class="btn_1">전문가 모드로 이동</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="ol-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h5>홈키트 추천받는 과정</h5>
                                        <h2>2. 추천 테마 선택하기</h2>
                                        <p>각 추천 모드를 선택했다면 추천 방법에 따라 홈키트를 추천받으세요. 추천받은 홈키트를 유심히 보고 마음에 드는 것을 선택해주세요!
                                        </p>
                                        <!-- "javascript:void(0)" : 클릭 안 되게  -> 페이지 이동할 게 없기 때문에 -->
                                        <a href="javascript:void(0)" class="btn_1">추천 결과로 이동</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="ol-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h5>홈키트 추천받는 과정</h5>
                                        <h2>3. 홈키트 선택하기</h2>
                                        <p>마음에 드는 홈키트를 선택하셨나요? 그러면 이제 홈키트를 구매하세요!<br> 구매 도중에 홈키트에 마음에 안드는 소품이 있으신가요? 그럼 추가/삭제를 통하여 소품을 자유롭게 선택하세요! 당신의 취향대로 홈키트를 구성해보세요!
                                        </p>
                                        <div class="rating">
                                        </div>
                                        <a href="javascript:void(0)" class="btn_1">홈키트 구매하기</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 수정: 사이트 소개 end -->
    <!--top place end-->

    <br><br><br><br><br><br><br><br><br>
    
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
