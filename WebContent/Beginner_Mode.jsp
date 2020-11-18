<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">

 <head>
        <!-- Required meta tags -->
        <meta charset="EUC-KR">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>�汸�� ���׸���-�ʺ�����õ</title>
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
    							<!-- ����: �����޴� �̸� ���� begin -->
                                <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                    id="navbarSupportedContent">
                                    <ul class="navbar-nav">
                                    	<li class="nav-item">
                                            <a class="nav-link" href="about.jsp">�Ұ�</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="professional_mode.jsp">������ ��õ</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Beginner_Mode.jsp">�ʺ��� ��õ</a>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" id="navbarDropdown"
                                                role="button" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                Ŀ�´�Ƽ
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="Used_Homekit_Sale.jsp">�߰�ŰƮ �Ǹ�</a>
                                                <a class="dropdown-item" href="SNS.jsp">ŰƮ ����</a>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="QA.jsp">Q&A</a>
                                        </li>
                                    </ul>
                                </div>
                                <%if(email == null){ %>
	                                <a href="login.jsp" style="color:rgba(75, 75, 75, 0.89); font-size: 14px;">�α���</a>
	                                <a href="register.jsp" style="margin-left: 15px; color:rgba(75, 75, 75, 0.89); font-size: 14px;">ȸ������</a>
                                <%}else{ %>
	                                <div class="nav-item dropdown">
								<a class="nav-link dropdown-toggle"
									id="navbarDropdown" role="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"><%=email %></a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="update.jsp">��������</a> <a
										class="dropdown-item" href="LogoutService">�α׾ƿ�</a> <a
										class="dropdown-item" href="delete.jsp">ȸ��Ż��</a>
								</div>
							</div>
							<a href="basket.jsp" 
								style="margin-left: 5px; color:rgba(75, 75, 75, 0.89); font-size: 14px;">��ٱ���</a>
							<%} %>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
<!-- ����: �����޴� �̸� ���� end -->
<!-- Header part end-->

    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg" style="height: 324px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>Beginner Mode</h2>
                            <p style="padding-bottom: 80px;">���׸�� ó���� ����� ���� ��õ ����Դϴ�.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
    <br><br><br><br><br>
    <!-- about us css start-->
    <section class="hotel_list section_padding single_page_hotel_list">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>���׸��� �׸� �����ϱ�</h2>
                        <p>��ȣ�ϴ� ���׸��� �׸��� �������ּ���.<br><br> ����� ���׸��� ������ �ľ��� ȨŰƮ�� ��õ�ص帳�ϴ�.</p><hr>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/homepage/24.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/homepage/25.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single_ihotel_list">
                        <img src="img/homepage/26.jpg" alt="">
                    </div>
                </div>
            </div>
        </div><br><br><br>
      
        <div class="game_btn" style="margin-left: 620px;">
            <a href="worldcup.html" class="genric-btn info circle" style="width: 161.99074000000002px;height: 51.99074px;padding-top: 6px;">��õ ����</a><br>
        </div>
    </section>
    <!-- about us css end-->
<br><br><br><br><br><br><br><br>
    <!--::industries start::-->
    <section class="best_services section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>������ �׸�</h2>
                        <p>��ȣ�ϴ� �׸��� ����� �׸� ������</p><hr>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/27.jpg" alt=""></a>
                        <h3>������ ������ �ٸ���� �ӹ��� ���� ������ ��� ��</h3>
                        <p>�̴ϸ�&����</p><br>
                        <span>ȨŰƮ ���� = 5����</span><br><hr>
                        <a href="#" class="genric-btn info circle">>�����̰���</a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/28.jpg" alt=""></a>
                        <h3>ȣ�ڸ���Ʈ ǳ���� ������ �ٹ� �帲�Ͽ콺</h3>
                        <p>������&���ι潺</p><br>
                        <span>ȨŰƮ ���� = 5����</span><br><hr>
                        <a href="#" class="genric-btn info circle">�����̰���</a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/30.jpg" alt=""></a>
                        <h3>�۾��� ���� ��, ����� �� �׸��� 11�� �츮 ��</h3>
                        <p>��Ƽ��&��Ʈ��</p><br>
                        <span>ȨŰƮ ���� = 5����</span><br><hr>
                        <a href="#" class="genric-btn info circle">�����̰���</a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/27.jpg" alt=""></a>
                        <h3>������ ������ �ٸ���� �ӹ��� ���� ������ ��� ��</h3>
                        <p>�̴ϸ�&����</p><br>
                        <span>ȨŰƮ ���� = 5����</span><br><hr>
                        <a href="#" class="genric-btn info circle">�����̰���</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::industries end::-->
    <br><br><br><br><br>
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