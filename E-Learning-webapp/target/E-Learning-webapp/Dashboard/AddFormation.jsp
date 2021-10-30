<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="org.emsi.pfa.model.UserBean"%>

	<% String Path = request.getContextPath(); %>
 <% UserBean currentUser = (UserBean)session.getAttribute("user"); 
        	System.out.println(currentUser.getFullName());%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Admin - Ajouter une formation</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="<%=Path%>/Dashboard/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="<%=Path%>/Dashboard/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="<%=Path%>/Dashboard/css/style.css" rel="stylesheet">
  <link href="<%=Path%>/Dashboard/css/style-responsive.css" rel="stylesheet">
  
    <link rel="stylesheet" type="text/css" href="<%=Path%>/lib/bootstrap-datepicker/css/datepicker.css" />
  

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
  
</head>

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    
    
    
		<%@ include file="Header.jsp" %>
		
		
		
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="<%=Path%>/Dashboard/Profile.jsp"><img src="<%=currentUser.getUrlPhoto() %>" class="img-circle" width="80"></a></p>
          <h5 class="centered"><%=currentUser.getFullName() %></h5>
          <li class="mt">
            <a href="<%=Path%>/Dashboard/AdminView.jsp">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
        
          <li class="sub-menu">
            <a href="<%=Path%>javascript:;">
              <i class="fa fa-book"></i>
              <span>Compte</span>
              </a>
            <ul class="sub">
              <li><a href="<%=Path%>/Dashboard/AdminView.jsp">Acceuil</a></li>
              <li><a href="<%=Path%>/LogoutServlet" onclick="return confirm('Etes-vous sûr de vouloir vous déconnecter?')">Changer de Compte</a></li>
              <li><a href="<%=Path%>/Dashboard/Profile.jsp">Consulter Profile</a></li>
            </ul>
            <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>Gestion de Comptes</span>
              </a>
            <ul class="sub">
              <li><a href="<%=Path%>/Dashboard/AdminTables.jsp">Gerer les Utilisateurs</a></li>
              <li class="active"><a href="<%=Path%>/Dashboard/FormationTables.jsp">Gerer les Formations</a></li>
			</ul>
          </li>

        </ul> 
        <!-- sidebar menu end-->
      </div>
    </aside>
    
       
    
    <!--sidebar end-->
  
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Formulaire de Validation de la formation</h3>
        
          <!-- /col-lg-12 -->
        <!-- /row -->
        <!-- FORM VALIDATION -->
        <div class="row mt">
          <div class="col-lg-12">
            <h4><i class="fa fa-angle-right"></i>  Veuillez saisir les informations de la formation</h4>
            <div class="form-panel">
              <div class=" form">
                <form class="cmxform form-horizontal style-form" id="commentForm" onsubmit="alert('Formation créer avec succés')" method="post" action="<%=request.getContextPath()%>/FormationServlet">
                  <div class="form-group ">
                    <label for="cname" class="control-label col-lg-2">Titre de la Formation</label>
                    <div class="col-lg-10">
                      <input class=" form-control" id="cname" name="nameFormation" pattern=".{3,}" required title="3 characters minimum" type="text" required />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="cemail" class="control-label col-lg-2">Nom du Formateur</label>
                    <div class="col-lg-10">
                      <input class="form-control " id="cemail" type="text" name="nameProf" required />
                    </div>
                  </div>
                  <div class="form-group ">
                    <label for="curl" class="control-label col-lg-2">Niveau</label>
                    <div class="col-lg-10">
                      <input class="form-control " id="curl" type="text" name="niveau" />
                    </div>
                  </div>
                  <div class="form-group">
                  <label class="control-label col-lg-2">date de creation</label>
                  <div class="col-md-3 col-xs-11">
                    <input class="form-control form-control-inline input-medium default-date-picker" size="16" type="date" value="" name="date" placeholder="mm/jj/aaaa" required />
                  </div>
                </div>
                  <div class="form-group ">
                    <label for="ccomment" class="control-label col-lg-2">Description</label>
                    <div class="col-lg-10">
                      <textarea class="form-control" id="ccomment" name="comment" ></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                      <button class="btn btn-theme" type="submit">Save</button>
                      <a class="btn btn-theme04" type="button" href="<%=Path%>/Dashboard/FormationTables.jsp">Cancel</a>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        
              </div>
            <!-- /form-panel -->
          <!-- /col-lg-12 -->
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="form_validation.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="<%=Path%>/Dashboard/lib/jquery/jquery.min.js"></script>
  <script src="<%=Path%>/Dashboard/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="<%=Path%>/Dashboard/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="<%=Path%>/Dashboard/lib/jquery.scrollTo.min.js"></script>
  <script src="<%=Path%>/Dashboard/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="<%=Path%>/Dashboard/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script src="<%=Path%>/Dashboard/lib/form-validation-script.js"></script>

<!--script for this page-->
  <script src="<%=Path%>/Dashboard/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="<%=Path%>/Dashboard/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="<%=Path%>/Dashboard/lib/bootstrap-daterangepicker/date.js"></script>


</body>

</html>
