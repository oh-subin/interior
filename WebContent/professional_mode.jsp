<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.DAO.homekitDAO"%>
<%@ page import="com.DTO.homekitDTO"%>
<!doctype html>
<html lang="en">

<head>
        <!-- Required meta tags -->
        <meta charset="EUC-KR">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
   
   <!-- 스크롤 메뉴바 begin -->
   <script src="//code.jquery.com/jquery-1.12.4.min.js"></script>
    <script>
      $( document ).ready( function() {
        var jbOffset = $( '.jbMenu' ).offset();
        $( window ).scroll( function() {
          if ( $( document ).scrollTop() > jbOffset.top ) {
            $( '.jbMenu' ).addClass( 'jbFixed' );
          }
          else {
            $( '.jbMenu' ).removeClass( 'jbFixed' );
          }
        });
      } );
    </script>
    
    <div class="jbMenu" style="height: 180px;">
      <p>
        <div style="width: 600px;margin-left: 400px;height: 20px;">
 			<div style="width: 600px;height: 20px;margin-top: 110px;">
			<b class="prograss_text">추천 진행도 <b style="padding-left: 440px;">0%</b></b>
			</div>
    		<div class="progress" style="width: 600px;height: 20px;margin-left: 0px;margin-top: 20px;">
  				<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
			</div>
 		</div>
      </p>
    </div>
    
   <!-- 스크롤 메뉴바 end -->
   
  <!-- prograss bar 100% begin -->
 <!-- <div style="width: 600px;margin-left: 400px;height: 70px;">
 	<div style="width: 600px;height: 20px;margin-top: 90px;">
		<b class="prograss_text">추천 진행도 <b style="padding-left: 440px;">100%</b></b>
	</div>
    <div class="progress" style="width: 600px;height: 20px;margin-left: 0px;margin-top: 20px;">
  		<div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
	</div>
 </div> -->
 <!-- prograss bar end  -->
     
     <!-- 태그추천부분 begin -->
 <!-- booking part start-->
 <section class="booking_part" style="margin-top: 100px;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="booking_menu">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <div>
	  					<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
                        <li class="nav-item">
                        
                        <a class="nav-link active" id="hotel-tab" data-toggle="tab" href="#hotel" role="tab" aria-controls="hotel" aria-selected="true">인테리어 추천을 위해 아래의 태그를 선택해주세요.</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="booking_content">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="hotel" role="tabpanel" aria-labelledby="hotel-tab" style="margin-bottom:500px;">
                            <div class="booking_form">
                                <form action="#">
                                    <div class="form-row">
                                        <div class="form_colum">
                                            <select class="nc_select">
                                                <option selected>인테리어 스타일 </option>
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
                                                <option selected>배경 색상 </option>
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
                                        <div class="form_colum">
                                            <select class="nc_select">
                                                <option selected>소품 색상 </option>
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
                                        <div class="form_colum">
                                           <select class="nc_select">
                                            <option selected>재료 </option>
                                            <option value="1">가죽</option>
                                            <option value="2">나무</option>
                                            <option value="3">유리</option>
                                            <option value="4">직물</option>
                                            <option value="5">타일</option>
                                            <option value="6">벽돌</option>
                                            <option value="7">철</option>
                                            <option value="8">천역목</option>
                                            <option value="9">플라스틱</option>
                                            <option value="10">스테인레스</option>
                                            <option value="11">다양하고 새로움</option>
                                           </select>
                                        </div>
                                        <div class="form_colum">
                                            <select class="nc_select">
                                                <option selected>형태 </option>
                                                <option value="1">면</option>
                                                <option value="2">단순</option>
                                                <option value="3">깔끔</option>
                                                <option value="4">직선</option>
                                                <option value="5">편안함</option>
                                                <option value="6">소재강조</option>
                                                <option value="7">자연스러움</option>
                                                <option value="8">유기적라인</option>
                                                <option value="9">화려하고 장식적인 형태</option>
                                                <option value="10">동양의 미가 강조된 스타일</option>
                                                
                                            </select>
                                        </div>
                                        <div class="form_colum">
                                            <select class="nc_select">
                                                <option selected>질감 </option>
                                                <option value="1">거침</option>
                                                <option value="2">단단</option>
                                                <option value="3">매끈</option>
                                                <option value="4">무광</option>
                                                <option value="5">묵직함</option>
                                                <option value="6">투박함</option>
                                                <option value="7">다양함</option>
                                                <option value="8">천연소재</option>
                                                <option value="9">반질반질</option>
                                                <option value="10">반들반들</option>
                                                <option value="11">자연소재</option>
                                                <option value="12">부드러움</option>
                                            </select>
                                        </div>
                                        <div class="form_btn">
                                           <a href="result.jsp" class="btn_1" style="margin-top: 50px;margin-left: 430px;">추천 시작</a>
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

 <br><br><br><br><br>
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
					 
	 <section class="best_services section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>인테리어 평점</h2>
                        <p>선호하는 순서대로 평점을 매겨주세요</p><hr>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/27.jpg" alt=""></a>
                        
                        <p>미니멀&심플</p><br>
                        
                       
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/28.jpg" alt=""></a>
                       
                        <p>프렌츠&프로방스</p><br>
                        
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/30.jpg" alt=""></a>
                        
                        <p>빈티지&레트로</p><br>
                        
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/27.jpg" alt=""></a>
                      
                        <p>미니멀&심플</p><br>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::industries end::-->
					<!-- 반복문이 시작되는 부분 -->
				
				
				</div>
			</div>
		</div>
		<a href="result.jsp" class="btn_1"
			style="margin-left: 650px; margin-top: 70px;">선택완료</a>
	</section>
	<!--::industries end::-->

	<br>
	<br>
	<br>
	<br>
	<br>

	<!-- footer part start-->
	<footer class="footer-area" style="padding-top: 0px;">
		<div class="container" style="padding-bottom: 0px;">
			<div class="row justify-content-between" style="padding-top: 80px;">
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
								<input class="form-control" name="EMAIL"
									placeholder="Your Email Address"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Your Email Address '" required=""
									type="email">
								<button class="click-btn btn btn-default text-uppercase">
									<i class="far fa-paper-plane"></i>
								</button>
								<div style="position: absolute; left: -5000px;">
									<input name="b_36c4fd991d266f23781ded980_aefe40901a"
										tabindex="-1" value="" type="text">
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
						<p>광주광역시 남구 송암로60 광주CGI센터 2층 062-655-3509</p>
						<span>admin@admin.com</span>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-lg-12">
					<div class="copyright_part_text text-center"
						style="padding-top: 0px; padding-bottom: 0px; margin-top: 50px;">
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