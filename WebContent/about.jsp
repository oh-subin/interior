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
                                            <a class="nav-link" href="professional_mode.jsp">��õ</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Used_Homekit_Sale.jsp">�߰�ŰƮ �Ǹ�</a>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" id="navbarDropdown"
                                                role="button" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                Ŀ�´�Ƽ
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="SNS.jsp">SNS</a>
                                                <a class="dropdown-item" href="#">ü���� ŰƮ</a>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="products.jsp">���θ�</a>
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
									<%if(email.equals("admin@admin")){ //�����ڰ� �α����ϸ� %>
										<a class="dropdown-item" href="product_registration.jsp">��ǰ���</a>
										<a class="dropdown-item" href="LogoutService">�α׾ƿ�</a> 
									<%}else{ %>
										<a class="dropdown-item" href="update.jsp">��������</a> 
										<a class="dropdown-item" href="LogoutService">�α׾ƿ�</a> 
										<a class="dropdown-item" href="delete.jsp">ȸ��Ż��</a>
									<%} %>
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
                        
<br><br>
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
                        <p>�ڷγ�19, ��ȸ�� �Ÿ��α� �������� ���� �ӹ��� �ð��� �����ϴ� �ô�, ���׸����� ������ ���� �� �����ϰ� �ֽ��ϴ�.</p>
                        <p>������ ���õ� ����� ���׸��� �÷������� ��ٱ��Ͽ� ���Ǹ� �����̳���? ���׸��� ��ǰ�� �̻۵� ���� ���׸�� �ϴ� �� ��������?</p>
                        <p>�׷� ����� ���� �غ��߽��ϴ�. �츮 ����Ʈ���� �����ϴ� ȨŰƮ�� ����� ���� ���� ������ �ٸ纸����. ���ú��� ��ŵ� ���׸��� �������� �� �� �ֽ��ϴ�!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about us css end-->

	<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv3sS4he7onv0omSZNBR26vDxthKU5oj9Xzw&usqp=CAU"
	style="margin-top: 400px;margin-left: 700px;">

    <!--top place start-->
    <div><h1 style="margin-top: 40px;margin-left: 740px;">�޴� ����</h1></div>
    <section class="event_part section_padding" style="margin-top: 50px;height: 570px;padding-top: 10px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="event_slider owl-carousel" style="margin-top: 110px;">
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="col-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h2>��õ</h2>
                                        <h5>��õ�޴� ����</h5>
                                        <p><strong>1. �±� �����ϱ�:</strong> ���׸�� �ʿ��� ������ �±׷� �Է��մϴ�.<br></p>
                                        <p><strong>2. ���� ����ϱ�:</strong> ���׸��� ��Ÿ���� ���� ��ȣ�ϴ� ���׸��� ������ ������ ����մϴ�</p>
                                        <a href="professional_mode.jsp" class="btn_1">��õ������ �̵��ϱ�</a> 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="ol-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h2>�߰�ŰƮ �Ǹ�</h2>
                                        <p>���ο� ȨŰƮ�� ���׸�� �ٲٰ� ���� ����ڸ� ���� �������Դϴ�. ������� �ʴ� ȨŰƮ�� ���Ȱ� ���ο� ȨŰƮ�� ������ �� �ֽ��ϴ�.
                                        	<br>�����ڴ� ȨŰƮ�� ���� ���ݿ� ������ �� �־� ���׸��� ����� �δ��� ����帳�ϴ�.</p>
                                        <!-- "javascript:void(0)" : Ŭ�� �� �ǰ�  -> ������ �̵��� �� ���� ������ -->
                                        <a href="Used_Homekit_Sale.jsp" class="btn_1">�߰�ŰƮ �Ǹ��Ϸ� �̵��ϱ�</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single_event_slider">
                            <div class="row justify-content-end">
                                <div class="ol-lg-6 col-md-6">
                                    <div class="event_slider_content">
                                        <h2>���θ�</h2>
                                        <p>�پ��� ȨŰƮ�� �ѹ��� ������ �� �ִ� ȨŰƮ ���θ��Դϴ�. 
                                        <br>���� ��ǰ�� ���غ��� ���ϴ� ȨŰƮ�� ��󺸼���!</p>
                                        <a href="products.jsp" class="btn_1">���θ� �����Ϸ� �̵��ϱ�</a>
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
                         <div class="copyright_part_text text-center" style="margin-top: 0px;">
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
