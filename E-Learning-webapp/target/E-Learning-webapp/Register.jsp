<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Register V18</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" name="form" onsubmit="alert('Compte créer avec succés, veuillez vous connectez')" action="<%=request.getContextPath()%>/RegisterServlet" method="post"> 
					<span class="login100-form-title p-b-43">
						S'Enregistrer
					</span>
					
				<div class="wrap-input100 validate-input">	
					<div class="controls col-md-8">
                                <label class="radio-inline"><input  type="radio" checked="checked" name="select" id="id_select_1" value="Etudiant"  style="margin-bottom: 1px"> Etudiant(e)</label>
                                <br>
                                <label class="radio-inline"> <input type="radio" name="select" id="id_select_3" value="Enseignant"  style="margin-bottom: 1px"> Enseignant(e) </label>
                    </div>
                </div>
					
						
					<div class="wrap-input100 validate-input" data-validate = "Un Username est requis">
						<input class="input100" type="text" name="username">
						<span class="focus-input100"></span>
						<span class="label-input100">Username</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate = "Un email valide est requis: ex@abc.xyz">
						<input class="input100" type="email" name="email">
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate="Un Mot de Passe est requis">
						<input class="input100" type="password" name="password" pattern=".{8,}" title="mot de passe faible : 8 characteres minimum">
						 <span class="focus-input100" style="color:red"></span>
						<span class="label-input100">Password</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate="Confirmer le Mot de Passe">
						<input class="input100" type="password" name="re:password">
						 <span class="focus-input100" style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>
						<span class="label-input100">Confirmer Password</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Le Nom est requis">
						<input class="input100" type="text" name="name">
						<span class="focus-input100"></span>
						<span class="label-input100">Nom</span>
					</div>
					
					<div class="wrap-input100">
						<input class="input100" type="text" name="pseudo">
						<span class="focus-input100"></span>
						<span class="label-input100">Pseudo</span>
					</div>
					

					
					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div>
							<a href="Login.jsp" class="txt1">
								j'ai déja un compte	
							</a>
						</div>
					</div>
					
			

					<div class="container-login100-form-btn">
				
						<input class="login100-form-btn" type="submit" value="S'enregistrer"></input>
					</div>
					
					<div class="text-center p-t-46 p-b-20">
						<span class="txt2">
							ou s'Enregistrer via
						</span>
					</div>

					<div class="login100-form-social flex-c-m">
						<a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
							<i class="fa fa-facebook-f" aria-hidden="true"></i>
						</a>

						<a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</a>
					</div>
				</form>

				<div class="login100-more" style="background-image: url('images/elearning-fr8dt8.jpg');">
				</div>
			</div>
		</div>
	</div>
	
	

	
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>