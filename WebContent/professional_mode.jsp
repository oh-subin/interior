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
	                                <a href="login.jsp" class="btn_1 d-none d-lg-block" >�α���</a>
	                                <a href="register.jsp" class="btn_1 d-none d-lg-block" style="margin-left: 5px;">ȸ������</a>
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
   
   <!-- ��ũ�� �޴��� begin -->
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
			<b class="prograss_text">��õ ���൵ <b style="padding-left: 440px;">0%</b></b>
			</div>
    		<div class="progress" style="width: 600px;height: 20px;margin-left: 0px;margin-top: 20px;">
  				<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
			</div>
 		</div>
      </p>
    </div>
    
   <!-- ��ũ�� �޴��� end -->
   
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
     
     <!-- �±���õ�κ� begin -->
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
                                        <div class="form_colum">
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
                                        <div class="form_colum">
                                           <select class="nc_select">
                                            <option selected>��� </option>
                                            <option value="1">����</option>
                                            <option value="2">����</option>
                                            <option value="3">����</option>
                                            <option value="4">����</option>
                                            <option value="5">Ÿ��</option>
                                            <option value="6">����</option>
                                            <option value="7">ö</option>
                                            <option value="8">õ����</option>
                                            <option value="9">�ö�ƽ</option>
                                            <option value="10">�����η���</option>
                                            <option value="11">�پ��ϰ� ���ο�</option>
                                           </select>
                                        </div>
                                        <div class="form_colum">
                                            <select class="nc_select">
                                                <option selected>���� </option>
                                                <option value="1">��</option>
                                                <option value="2">�ܼ�</option>
                                                <option value="3">���</option>
                                                <option value="4">����</option>
                                                <option value="5">�����</option>
                                                <option value="6">���簭��</option>
                                                <option value="7">�ڿ�������</option>
                                                <option value="8">����������</option>
                                                <option value="9">ȭ���ϰ� ������� ����</option>
                                                <option value="10">������ �̰� ������ ��Ÿ��</option>
                                                
                                            </select>
                                        </div>
                                        <div class="form_colum">
                                            <select class="nc_select">
                                                <option selected>���� </option>
                                                <option value="1">��ħ</option>
                                                <option value="2">�ܴ�</option>
                                                <option value="3">�Ų�</option>
                                                <option value="4">����</option>
                                                <option value="5">������</option>
                                                <option value="6">������</option>
                                                <option value="7">�پ���</option>
                                                <option value="8">õ������</option>
                                                <option value="9">��������</option>
                                                <option value="10">�ݵ�ݵ�</option>
                                                <option value="11">�ڿ�����</option>
                                                <option value="12">�ε巯��</option>
                                            </select>
                                        </div>
                                        <div class="form_btn">
                                           <a href="result.jsp" class="btn_1" style="margin-top: 50px;margin-left: 430px;">��õ ����</a>
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
		<!-- �ݺ����� ���۵Ǵ� �κ� -->
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
								<p>�����ϱ� ��</p>
								<div class="primary-checkbox">
									<input type="checkbox" id="default-checkbox"> <label
										for="default-checkbox"></label>
								</div>
							</div>
						</div>
					</div>
					<% }
               
               %>
		<!-- �ݺ����� ������ �κ� -->
					 
	 <section class="best_services section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                        <h2>���׸��� ����</h2>
                        <p>��ȣ�ϴ� ������� ������ �Ű��ּ���</p><hr>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/27.jpg" alt=""></a>
                        
                        <p>�̴ϸ�&����</p><br>
                        
                       
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/28.jpg" alt=""></a>
                       
                        <p>������&���ι潺</p><br>
                        
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/30.jpg" alt=""></a>
                        
                        <p>��Ƽ��&��Ʈ��</p><br>
                        
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single_ihotel_list">
                        <a href="#" ><img src="img/homepage/27.jpg" alt=""></a>
                      
                        <p>�̴ϸ�&����</p><br>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--::industries end::-->
					<!-- �ݺ����� ���۵Ǵ� �κ� -->
				
				
				</div>
			</div>
		</div>
		<a href="result.jsp" class="btn_1"
			style="margin-left: 650px; margin-top: 70px;">���ÿϷ�</a>
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
						<h4>(��)�汸�� ���׸�� ���� �����</h4>
						<ul>
							<li><a href="#">������, ����</a></li>
							<li><a href="#">������, ����</a></li>
							<li><a href="#">���ֿ�, ����</a></li>
							<li><a href="#">���Ͽ�, ����</a></li>
							<li><a href="#">�����, ����</a></li>
							<li><a href="#">������, ����</a></li>
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
						<p>�ñ��� ���� �̸��Ϸ� ���ǹٶ��ϴ�.</p>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="single-footer-widget footer_icon">
						<h4>Contact Us</h4>
						<p>���ֱ����� ���� �۾Ϸ�60 ����CGI���� 2�� 062-655-3509</p>
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