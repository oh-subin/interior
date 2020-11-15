<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">

<head>
        <!-- Required meta tags -->
        <meta charset="EUC-KR">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>�汸�� ���׸���-����������</title>
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
                                <a class="navbar-brand" href="main.jsp"> <img src="img/homepage/logo.JPG" alt="logo" style="width: 205px;"> </a>
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
 
     <!-- ����: ������ ��õ ��� ������ begin -->
     <!-- banner part start-->
     <section class="breadcrumb breadcrumb_bg" style="height: 324px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb_iner">
                        <div class="breadcrumb_iner_item text-center">
                             <h2>professional mode</h2>
                             <p style="padding-bottom: 80px;">���׸�� �ͼ��� ����� ���� ��õ ����Դϴ�.</p>
                             
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </section>
     <!-- banner part start-->
     <br><br><br><br><br>
     <!-- �±���õ�κ� begin -->
 <!-- booking part start-->
 <section class="booking_part">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="booking_menu">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                        <a class="nav-link active" id="hotel-tab" data-toggle="tab" href="#hotel" role="tab" aria-controls="hotel" aria-selected="true">���׸��� ��õ�� ���� �Ʒ��� �±׸� �������ּ���.</a>
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
                                                <option selected>���׸��� ��Ÿ�� </option>
                                                <option value="1">���</option>
                                                <option value="2">���߷�</option>
                                                <option value="3">������</option>
                                                <option value="4">��Ƽ��&��Ʈ��</option>
                                                <option value="5">����ũ&�ͽ���ġ</option>
                                                <option value="6">Ŭ����&��ƽ</option>
                                                <option value="7">���ι潺&�θ�ƽ</option>
                                            </select>
                                         </div>
                                         <div class="form_colum">
                                            <select class="nc_select">
                                                <option selected>��� ���� </option>
                                                <option value="1">���</option>
                                                <option value="2">����</option>
                                                <option value="3">ȸ��</option>
                                                <option value="4">������</option>
                                                <option value="5">��ä��</option>
                                                <option value="6">�����÷�</option>
                                                <option value="7">���ٷ���</option>
                                                <option value="8">��ο��</option>
                                                <option value="9">�ڿ��ǻ�</option>
                                                <option value="10">�����ѻ�</option>
                                                <option value="11">����</option>
                                                <option value="12">������</option>
                                                <option value="13">ũ����</option>
                                                <option value="14">�Ľ���</option>
                                                <option value="15">������</option>
                                            </select>
                                        </div>
                                        <div class="form_colum" style="margin-right:290px">
                                            <select class="nc_select">
                                                <option selected>��ǰ ���� </option>
                                                <option value="1">���</option>
                                                <option value="2">����</option>
                                                <option value="3">ȸ��</option>
                                                <option value="4">������</option>
                                                <option value="5">��ä��</option>
                                                <option value="6">�����÷�</option>
                                                <option value="7">���ٷ���</option>
                                                <option value="8">��ο��</option>
                                                <option value="9">�ڿ��ǻ�</option>
                                                <option value="10">�����ѻ�</option>
                                                <option value="11">����</option>
                                                <option value="12">������</option>
                                                <option value="13">ũ����</option>
                                                <option value="14">�Ľ���</option>
                                                <option value="15">������</option>
                                            </select>
                                        </div>
                                        <div class="form_btn">
                                           <a href="result.jsp" class="btn_1">��õ ����</a>
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
<!-- �±���õ�κ� end -->

 <br><br><br><br><br>
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
                        <a href="#" class="genric-btn info circle">ȨŰƮ �����ϱ�</a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/28.jpg" alt=""></a>
                        <h3>ȣ�ڸ���Ʈ ǳ���� ������ �ٹ� �帲�Ͽ콺</h3>
                        <p>������&���ι潺</p><br>
                        <span>ȨŰƮ ���� = 5����</span><br><hr>
                        <a href="#" class="genric-btn info circle">ȨŰƮ �����ϱ�</a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/30.jpg" alt=""></a>
                        <h3>�۾��� ���� ��, ����� �� �׸��� 11�� �츮 ��</h3>
                        <p>��Ƽ��&��Ʈ��</p><br>
                        <span>ȨŰƮ ���� = 5����</span><br><hr>
                        <a href="#" class="genric-btn info circle">ȨŰƮ �����ϱ�</a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/27.jpg" alt=""></a>
                        <h3>������ ������ �ٸ���� �ӹ��� ���� ������ ��� ��</h3>
                        <p>�̴ϸ�&����</p><br>
                        <span>ȨŰƮ ���� = 5����</span><br><hr>
                        <a href="#" class="genric-btn info circle">ȨŰƮ �����ϱ�</a>
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