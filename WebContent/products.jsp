<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta charset="EUC-KR">
	<title>�汸�� ���׸���-ȨŰƮ ��ü ��ǰ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Martine</title>
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
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap" rel="stylesheet">
    <!-- rating js�ڵ� Add icon library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

	<!-- banner part start-->
	<section class="breadcrumb breadcrumb_bg" style="height: 324px; background-color:#fdefed49;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumb_iner">
						<div class="breadcrumb_iner_item text-center">
                             <h2 style="font-family:'S-CoreDream-2ExtraLight'; color:rgb(168, 167, 167); margin-bottom: 100px">Homekit Products</h2>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
     <!-- banner part end-->
     
 <!-- ��ǰ ���� ������ begin -->
    <!--::industries start::-->
    <section class="hotel_list section_padding">
        <div class="container">
            <hr><p style="color:#6c757d; font-size:25px; font-family:'S-CoreDream-2ExtraLight'">BEST OFFER</p><hr>          
               <div class="row gallery-item">
               
               <!-- ȨŰƮ �������� �ݺ��� ��� 12�� -->
                   <div class="col-md-4">
                          <a href="kit-detail.jsp">
                          <div class="single-gallery-image" style="background: url(img/homepage/310.jpg); background-size: contain; background-repeat: no-repeat;"></div></a>
                          <div style="padding-top: 20px;"><span style="font-size:20px;">�������� �޾����� �� ��ó���Ӷ�ź&��Ƽ���� �Ƹ��ٿ� ����</span>
                            <div>
                                <p>��Ƽ��&��Ʈ��</p>
                                <p>[48H POP UP][12%����][~11/19����]</p><br>
                                <p>200,000<del style="padding-right: 20px;padding-left: 10px;">180,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
							</div>
                           </div>
                       </div> 
                   <div class="col-md-4">
                       <a href="img/homepage/318.jpg" class="img-pop-up" href="kit-detail.jsp">
                           <div class="single-gallery-image" style="background: url(img/homepage/318.jpg);"></div></a>
                           <div style="padding-top: 20px;"><span><strong style="font-size:20px;">���� Ȩ����Ŀ�� �ƴ��ϰ� ������ �����</strong></span>
                            <div>
                                <p>���߷�</p>
                                <p>[48H POP UP][12%����][~11/19����]</p><br>
                                <p>200,000<del style="padding-right: 20px;padding-left: 10px;">180,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
							</div>
                           </div>
                   </div>
                   <div class="col-md-4">
                       <a href="img/homepage/514.jpg" class="img-pop-up" href="kit-detail.jsp">
                           <div class="single-gallery-image" style="background: url(img/homepage/514.jpg);"></div></a>
                           <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">������ ���� ������ ��췯�� �ڸ��� ���� ���ǽ���</strong></span>
                            <div>
                                <p>���</p>
                                <p>[48H POP UP][12%����][~11/19����]</p><br>
                                <p>200,000<del style="padding-right: 20px;padding-left: 10px;">180,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
						   </div>
                           </div>
                   </div>
                   <div class="col-md-4">
                    <a href="img/homepage/119.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/1016.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">���� �� ��� �츮���� ����Ʈ, ���� ����ư ��ȥ��</strong></span>
                            <div>
                             <p>�̴ϸ�&����</p>
                             <p>[48H POP UP][12%����][~11/19����]</p><br>
                             <p>133,500<del style="padding-right: 20px;padding-left: 10px;">178,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star"></span>
                             <span class="fa fa-star"></span>
                        </div>
                        </div>
                </div>
                   <div class="col-md-4">
                    <a href="img/homepage/119.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/1016.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">���� �� ��� �츮���� ����Ʈ, ���� ����ư ��ȥ��</strong></span>
                            <div>
                             <p>�̴ϸ�&����</p>
                             <p>[48H POP UP][12%����][~11/19����]</p><br>
                             <p>133,500<del style="padding-right: 20px;padding-left: 10px;">178,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star"></span>
                             <span class="fa fa-star"></span>
                        </div>
                        </div>
                </div>
                   <div class="col-md-4">
                       <a href="img/homepage/787.jpg" class="img-pop-up" href="kit-detail.jsp">
                           <div class="single-gallery-image" style="background: url(img/homepage/787.jpg);"></div></a>
                           <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">������ �޻��� ����� ������ ī�� ���� ��</strong></span>
                            <div>
								<p>Ŭ����&��ƽ</p>
                                <p>[48H POP UP][12%����][~11/19����]</p><br>
                                <p>200,000<del style="padding-right: 20px;padding-left: 10px;">180,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
						   </div>
                           </div>
                   </div>
                   <div class="col-md-4">
                       <a href="img/homepage/1016.jpg" class="img-pop-up" href="kit-detail.jsp">
                           <div class="single-gallery-image" style="background: url(img/homepage/1016.jpg);"></div></a>
                           <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">���� �� ��� �츮���� ����Ʈ, ���� ����ư ��ȥ��</strong></span>
                            <div>
                                <p>����ũ&�ͽ���ġ</p>
                                <p>[48H POP UP][12%����][~11/19����]</p><br>
                                <p>200,000<del style="padding-right: 20px;padding-left: 10px;">180,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
						   </div>
                           </div>
                   </div>
                   <div class="col-md-4">
                    <a href="img/homepage/119.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/1016.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">���� �� ��� �츮���� ����Ʈ, ���� ����ư ��ȥ��</strong></span>
                            <div>
                             <p>�̴ϸ�&����</p>
                             <p>[48H POP UP][12%����][~11/19����]</p><br>
                             <p>133,500<del style="padding-right: 20px;padding-left: 10px;">178,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star"></span>
                             <span class="fa fa-star"></span>
                        </div>
                        </div>
                </div>
                <div class="col-md-4">
                    <a href="img/homepage/119.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/1016.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">���� �� ��� �츮���� ����Ʈ, ���� ����ư ��ȥ��</strong></span>
                            <div>
                             <p>�̴ϸ�&����</p>
                             <p>[48H POP UP][12%����][~11/19����]</p><br>
                             <p>133,500<del style="padding-right: 20px;padding-left: 10px;">178,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star"></span>
                             <span class="fa fa-star"></span>
                        </div>
                        </div>
                </div>
                <div class="col-md-4">
                    <a href="img/homepage/119.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/1016.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">���� �� ��� �츮���� ����Ʈ, ���� ����ư ��ȥ��</strong></span>
                            <div>
                             <p>�̴ϸ�&����</p>
                             <p>[48H POP UP][12%����][~11/19����]</p><br>
                             <p>133,500<del style="padding-right: 20px;padding-left: 10px;">178,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star"></span>
                             <span class="fa fa-star"></span>
                        </div>
                        </div>
                </div>
                <div class="col-md-4">
                    <a href="img/homepage/119.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/1016.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">���� �� ��� �츮���� ����Ʈ, ���� ����ư ��ȥ��</strong></span>
                            <div>
                             <p>�̴ϸ�&����</p>
                             <p>[48H POP UP][12%����][~11/19����]</p><br>
                             <p>133,500<del style="padding-right: 20px;padding-left: 10px;">178,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star"></span>
                             <span class="fa fa-star"></span>
                        </div>
                        </div>
                </div>
                <div class="col-md-4">
                    <a href="img/homepage/119.jpg" class="img-pop-up" href="kit-detail.jsp">
                        <div class="single-gallery-image" style="background: url(img/homepage/1016.jpg);"></div></a>
                        <div style="padding-top: 20px;"><span ><strong style="font-size:20px;">���� �� ��� �츮���� ����Ʈ, ���� ����ư ��ȥ��</strong></span>
                            <div>
                             <p>�̴ϸ�&����</p>
                             <p>[48H POP UP][12%����][~11/19����]</p><br>
                             <p>133,500<del style="padding-right: 20px;padding-left: 10px;">178,000</del><b style="color:coral; text-align: right; font-size:30px;">12%</b></p>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star checked"></span>
                             <span class="fa fa-star"></span>
                             <span class="fa fa-star"></span>
                        </div>
                        </div>
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
                         <div class="copyright_part_text text-center" style="background-color:#fdefed49;">
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