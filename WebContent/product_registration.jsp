<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
    <html lang="en">
    
        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <title>�汸�� ���׸���-��ǰ���</title>
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
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        </head>
        <body style="height: 1300px;">
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
           
    
            <!-- Sidebar -->
            <div class="w3-sidebar w3-light-grey w3-bar-block"style="width: 250px;">
                <h3 class="w3-bar-item">��ǰ����</h3>
                <a href="#" class="w3-bar-item w3-button">��ǰ�з����� ��</a>
                <a href="#" class="w3-bar-item w3-button">��ǰ�ɼǰ��� ��</a>
                <!-- �޴��� ���� -->
                <script>
                    function slide(Id, interval, to)
                    {
                        var obj = document.getElementById(Id);
                        var H, step = 5;
                    
                        if (obj == null) return;
                        if (to == undefined) { // user clicking
                            if (obj._slideStart == true) return;
                            if (obj._expand == true) {
                                to = 0;
                                obj.style.overflow = "hidden";
                            } else {
                                slide.addId(Id);
                                for(var i=0; i < slide.objects.length; i++) {
                                    if (slide.objects[i].id != Id && slide.objects[i]._expand == true) {
                                        slide(slide.objects[i].id);
                                    }
                                }
                    
                                obj.style.height = "";
                                obj.style.overflow = "";
                                obj.style.display = "block";
                                to = obj.offsetHeight;
                                obj.style.overflow = "hidden";
                                obj.style.height = "1px";
                            }
                            obj._slideStart = true;
                        }
                       
                        step            = ((to > 0) ? 1:-1) * step;
                        interval        = ((interval==undefined)?1:interval);
                        obj.style.height = (H=((H=(isNaN(H=parseInt(obj.style.height))?0:H))+step<0)?0:H+step)+"px";
                       
                        if (H <= 0) {
                            obj.style.display = "none";
                            obj.style.overflow = "hidden";
                            obj._expand = false;
                            obj._slideStart = false;
                        } else if (to > 0 && H >= to) {
                            obj.style.display = "block";
                            obj.style.overflow = "visible";
                            obj.style.height = H + "px";
                            obj._expand = true;
                            obj._slideStart = false;
                        } else {
                            setTimeout("slide('"+Id+"' , "+interval+", "+to+");", interval);
                        }
                    }
                    slide.objects = new Array();
                    slide.addId = function(Id)
                    {
                        for (var i=0; i < slide.objects.length; i++) {
                            if (slide.objects[i].id == Id) return true;
                        }
                        slide.objects[slide.objects.length] = document.getElementById(Id);
                    }
                    </script>
                    <style>
                    BODY { font-size:13pt; }
                    .menu {
                        background-color:#f1f1f1;
                        padding:3px 1px 1px 5px;
                    
                        width:150px;
                    }
                    .submenu {
                        width:150px;
                        padding-left:10px;
                        display:none;
                    }
                    </style>
                    <div class="menu" onClick="slide('sub1');" style="padding-left: 15px;">��ǰ��� ��</div>
                    <div id="sub1" class="submenu">
                        <a href="simple_registration.jsp">���� ���</a>
                        <div>��ǰ ���</div>
                        <div>��Ʈ��ǰ ���</div>
                        <div>���� ���</div>
                    </div>
                <!-- �޴��� ���� -->
                <a href="#" class="w3-bar-item w3-button">��ǰ���� ��</a>
                <a href="#" class="w3-bar-item w3-button">��ǰǥ�ð��� ��</a>
                <a href="#" class="w3-bar-item w3-button">�Ǹźз����� ��</a>
                <a href="#" class="w3-bar-item w3-button">������ ��</a>
                <a href="#" class="w3-bar-item w3-button" style="margin-bottom:30px;">��ȹ�� ���� ��</a>
                <b style="margin-top:30px; margin-left: 18px; ">�޴��� �˻�</b> 
                <input type="text" placeholder="�޴����� �˻��ϼ���." style="margin-top:10px; margin-left: 16px; width:220px;">
                <b style="margin-top:30px; margin-left: 18px;">���ã�� �޴� </b><button style="margin-top:30px;">����</button>
            </div>
            <!-- Sidebar -->
    
    
            <br>
            <p style="text-align: right; margin-right:150px;">Ȩ > ��ǰ���� > ��ǰ��� > ���ܵ��</p>
            <h2 style="margin-left: 350px;">���ܵ��</h2><hr>
            <p style="margin-left: 350px;">���θ��� ��ǰ�� �����ϴµ� �ʿ��� �⺻������ �Է��մϴ�.</p>
            <p style="margin-left: 350px;">���� ��ǰ���� ������ �ʿ��Ͻø�, ��ǰ������� �̵��ϼ���.</p>
            <button onclick="registration()" style="margin-left:1300px; margin-bottom: 10px;">��ǰ ����ϱ�</button>
            <script>
            function registration() {
            	alert("��ǰ ����� �Ϸ�Ǿ����ϴ�.");
            }
            </script>
            
            <!-- ��ǰ��� �޴� ���̺� -->
            <table border="2px" style="margin-left: 350px; float:left;">
                <tr>
                    <th width="300" style="text-align: center;">��ǰ��</th>
                    <th width="800" height="70">
                        <input type="text" placeholder="����) ȨŰƮ��" style="margin-left:10px;">
                    </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">�ǸŰ�</th>
                    <th width="800" height="50" ><input type="text" style="margin-left:10px;">��</th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">��ǰ�ɼǼ���</th>
                    <th width="800" height="70" > 
                       <input type="radio" name="chk_info" value="�ɼǻ��" style="margin-left:10px;">�ɼǻ��
                       <input type="radio" name="chk_info" value="�ɼǹ̻��">�ɼǹ̻��
                       <p style="margin-left:10px; margin-top:10px;">��ǰ�ɼ��̶�, ��ǰ�� ����, ������ �� ���ð��� ���մϴ�.</p>
                </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">��ǰ�̹������</th>
                    <th width="800" height="300">
                        <img src="https://e7.pngegg.com/pngimages/982/97/png-clipart-computer-icons-camera-iphone-graphy-camera-photography-camera-icon.png" alt="" style="height: 200px;width: 200px; margin-left:10px;">
                        <button style="margin-left:10px; margin-bottom: 30px; margin-top:30px;">���� ���</button><br>
                    </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">��ǰ��༳��</th>
                    <th width="800" height="150">
                        <input type="text" style="margin-left:10px; width: 600px;">
                        <p style="margin-left:10px; margin-top:30px;">����ϴ� ��ǰ�� ���� ������ ª�� ����Ͽ� ����մϴ�.</p>
                    </th>
                </tr>
                <tr>
                    <th width="300" style="text-align: center;">��ǰ�󼼼���</th>
                    <th width="800" height="150">
                        <input type="text" style="height: 300px; width: 600px; margin-left:10px; " 
                        placeholder="��ǰ�� ���� ���� ������ �����ּ���.">
                    </th>
                </tr>
            </table>

           <!-- footer part start-->
        <footer class="footer-area" style="margin-top:1000px;"> 
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