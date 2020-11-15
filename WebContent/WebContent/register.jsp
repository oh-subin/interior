<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="EUC-KR">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>�汸�� ���׸��� - ȸ������</title>
    <link rel="icon" href="img/favicon.png">

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
          <div class="col-lg-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-900 mb-4">ȸ������</h1>
              </div>
              <form class="user" action="JoinService" method="post" accept-charset="EUC-KR">
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" name= "name" class="form-control form-control-user" id="exampleFirstName" placeholder="Name">
                  </div>
                  <div class="col-sm-6">
                    <input type="text" name= "address" class="form-control form-control-user" id="exampleLastName" placeholder="Address">
                  </div>
                </div>
                <div class="form-group">
                	<input type="email" id="txt1" onblur="ajaxCall()" name= "email" class="form-control form-control-user" id="exampleInputEmail" placeholder="Email">
                	<p id="p1"></p>
                </div>
                
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
				<script type="text/javascript">
				   function ajaxCall() {
					  var txt1 = document.getElementById("txt1");
					  
				      $.ajax({
				         type :"get" ,
				         url : "AjaxCall",
				         data : {"email": txt1.value},
				         dataType : "text",
				         success : function(data) {
				        	 
				        	var p1 = document.getElementById("p1");
				        	
				        	if(data == "true"){
				        		p1.style.cssText ="color : red;"
				        		p1.innerHTML ="����� �� ���� ���̵��Դϴ�."
				        	}else{
				        		p1.style.cssText ="color : blue;"
				        		p1.innerHTML ="����� �� �ִ� ���̵��Դϴ�."
				        	}
				        	 
				         },
				         error : function() {
				
				         }
				      });
				      
				   }
				
				</script>
                
                <div class="form-group row">
                  <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="password" name= "pw" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password">
                  </div>
                  <div class="col-sm-6">
                    <input type=text" name= "tel" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="Tel">
                  </div>
                </div>
                <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck" required>
                        <label class="custom-control-label" for="customCheck">�̿����� �����մϴ�.</label>
                      </div>
                </div>
                <input type="submit" value ="����"  class="btn btn-primary btn-user btn-block">
              </form>
              <hr>
              <div class="text-center">
                <a class="small" href="javascript:void(0)">��й�ȣ�� �����̳���?</a>
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

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>