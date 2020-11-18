<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="EUC-KR">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

 <title>�汸�� ���׸��� - ȸ����������</title>
    <link rel="icon" href="img/favicon.png">

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  
  

</head>

<body class="bg-gradient-primary">
	<%
		String email = (String)session.getAttribute("email");	
	%>

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-2">ȸ����������</h1>
                    <p class="mb-4"><%=email %><br>������ ������ �Է��ϼ���.</p>
                  </div>
                  <form class="user" action="UpdateService" method="post">
                    <div class="form-group">
                      <input type="text" name="name" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Name">
                    </div>
                    <div class="form-group">
                      <input type="text" name="address" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Address">
                    </div>
                    <div class="form-group">
                      <input type="password" name="pw" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <input type="text" name ="tel" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Tel">
                    </div>
                    <input type="submit" value="����" class="btn btn-primary btn-user btn-block" style="background-color: rgb(199, 199, 199); border-color: rgb(199, 199, 199)">
                    
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="register.jsp">ȸ������</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="login.jsp">�̹� ������ �ֽ��ϴ�. �α���</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="main.jsp">���� �������� ���ư���</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
