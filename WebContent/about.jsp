<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">

<head>
        <!-- Required meta tags -->
        <meta charset="EUC-KR">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>�汸�� ���׸���-�Ұ�</title>
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
                                            <a class="nav-link" href="contact.jsp">Q&A</a>
                                        </li>
                                    </ul>
                                </div>
                                <%if(email == null){ %>
	                                <a href="login.jsp" style="color:rgba(75, 75, 75, 0.89); font-size: 14px;">�α���</a>
	                                <a href="register.jsp" style="margin-left: 15px; color:rgba(75, 75, 75, 0.89); font-size: 14px;">ȸ������</a>
                                <%}else{ %>
	                                <div class="nav-item dropdown">
	                                    <a class="nav-link dropdown-toggle btn_1 d-none d-lg-block" id="navbarDropdown"  role="button" 
	                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><%=email %></a>
	                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	                                          <a class="dropdown-item" href="update.jsp">��������</a>
		                                      <a class="dropdown-item" href="LogoutService">�α׾ƿ�</a>
		                                      <a class="dropdown-item" href="delete.jsp">ȸ��Ż��</a>
	                                        </div>
	                                </div>
	                                <a href="basket.jsp" class="btn_1 d-none d-lg-block" style="margin-left: 5px;">��ٱ���</a>
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
    <!-- ����: ����Ʈ �Ұ� begin -->
    <section class="breadcrumb breadcrumb_bg" style="height: 324px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>Homekit Process Presentation</h2>
                            <p style="padding-bottom: 80px;">ȨŰƮ ��õ �� ���Ű����� �Ұ��ص帳�ϴ�.</p>
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
                        <h5>ȨŰƮ��?</h5>
                        <h2>���� ���׸�� ������ϴ� ����� ���� ŰƮ</h2>
                        <p>�ڷγ� �ô뿡�� ���� �ӹ��� �ð��� �����ϴ� �ô� �߼��� ���� ���׸����� ������ ���� �� �����ϴ� �߼��Դϴ�.</p>
                        <p>������ ���õ� ����� ���׸��� �÷������� ��ٱ��Ͽ� ���Ǹ� �����̳���? ���׸��� ��ǰ�� �̻۵� ���� ���׸�� ���� ��ǰ ������ ��������?</p>
                        <p>�׷� ����� ���� �غ��߽��ϴ�. �츮 ����Ʈ���� �����ϴ� ȨŰƮ �Ѱ��� ����� ���� ���� ������ �ٸ纸����! ���ú��� ��ŵ� ���׸��� �������� �� �� �ֽ��ϴ�!</p>
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
                                        <h5>ȨŰƮ ��õ�޴� ����</h5>
                                        <h2>1. ��õ �ܰ� �����ϱ�</h2>
                                        <p><strong>1-1. �ʺ��� ��õ:</strong> ���׸�� ó���� ����� ���� ��õ��� <br>
                                            <strong>�����:</strong> ���õǴ� �׸� �߿� ������ ��� ���� �����Ͽ� ����� ���׸��� ������ �ľ��� �� ��õ�ص帳�ϴ�.
                                        </p><br>
                                        <p><strong>1-2. ������ ��õ:</strong> ���׸�� �ͼ��� ����� ���� ��õ��� <br>
                                            <strong>�����:</strong> ���׸��� ���� �±׸� ������ �� ��õ�ޱ� ��ư�� ������ ����� ���׸��� ���⿡ �´� ȨŰƮ�� ��õ�ص帳�ϴ�.
                                        </p>
    
                                        <a href="Beginner_Mode.jsp" class="btn_1">�ʺ��� ���� �̵�</a>
                                        <a href="professional_mode.jsp" class="btn_1">������ ���� �̵�</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="ol-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h5>ȨŰƮ ��õ�޴� ����</h5>
                                        <h2>2. ��õ �׸� �����ϱ�</h2>
                                        <p>�� ��õ ��带 �����ߴٸ� ��õ ����� ���� ȨŰƮ�� ��õ��������. ��õ���� ȨŰƮ�� ������ ���� ������ ��� ���� �������ּ���!
                                        </p>
                                        <!-- "javascript:void(0)" : Ŭ�� �� �ǰ�  -> ������ �̵��� �� ���� ������ -->
                                        <a href="javascript:void(0)" class="btn_1">��õ ����� �̵�</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="ol-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h5>ȨŰƮ ��õ�޴� ����</h5>
                                        <h2>3. ȨŰƮ �����ϱ�</h2>
                                        <p>������ ��� ȨŰƮ�� �����ϼ̳���? �׷��� ���� ȨŰƮ�� �����ϼ���!<br> ���� ���߿� ȨŰƮ�� ������ �ȵ�� ��ǰ�� �����Ű���? �׷� �߰�/������ ���Ͽ� ��ǰ�� �����Ӱ� �����ϼ���! ����� ������ ȨŰƮ�� �����غ�����!
                                        </p>
                                        <div class="rating">
                                        </div>
                                        <a href="javascript:void(0)" class="btn_1">ȨŰƮ �����ϱ�</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ����: ����Ʈ �Ұ� end -->
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
