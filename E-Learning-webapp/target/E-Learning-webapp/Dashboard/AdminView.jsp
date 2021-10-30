<%@page import="org.emsi.pfa.model.UserBean"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <title>Admin - DashBoard</title>

  <!-- Favicons -->
  <link href="<%=Path%>/Dashboard/img/favicon.png" rel="icon">
  <link href="<%=Path%>/Dashboard/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="<%=Path%>/Dashboard/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="<%=Path%>/Dashboard/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="<%=Path%>/Dashboard/css/style.css" rel="stylesheet">
  <link href="<%=Path%>/Dashboard/css/style-responsive.css" rel="stylesheet">

  
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
            <a class="active" href="<%=Path%>javascript:;">
              <i class="fa fa-book"></i>
              <span>Compte</span>
              </a>
            <ul class="sub">
              <li class="active"><a href="<%=Path%>/Dashboard/AdminView.jsp">Acceuil</a></li>
              <li><a href="<%=Path%>/LogoutServlet" onclick="return confirm('Etes-vous sûr de vouloir vous déconnecter?')">Changer de Compte</a></li>
              <li><a href="<%=Path%>/Dashboard/Profile.jsp">Consulter Profile</a></li>
            </ul>
            <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>Gestion de Comptes</span>
              </a>
            <ul class="sub">
              <li><a href="<%=Path%>/Dashboard/AdminTables.jsp">Gerer les Utilisateurs</a></li>
              <li><a href="<%=Path%>/Dashboard/FormationTables.jsp">Gerer les Formations</a></li>
              
              
			</ul>
          </li>

         
        <!-- sidebar menu end-->
      </div>
    </aside>
    
    
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper site-min-height">
        <h3><i class="fa fa-angle-right"></i> Page Vide</h3>
        <div class="row mt">
          <div class="col-lg-12">
            <p>Le contenu de la page sera ici.</p>
          </div>
        </div>
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
         <p>
            ${application.name} - version ${project.version}
            &copy; <a href="${organization.url}">${organization.name}</a>
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created by <strong>Mehdi&Khalid</strong> with  <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="blank.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="<%=Path%>/Dashboard/lib/jquery/jquery.min.js"></script>
  <script src="<%=Path%>/Dashboard/lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="<%=Path%>/Dashboard/lib/jquery-ui-1.9.2.custom.min.js"></script>
  <script src="<%=Path%>/Dashboard/lib/jquery.ui.touch-punch.min.js"></script>
  <script class="include" type="text/javascript" src="<%=Path%>/Dashboard/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="<%=Path%>/Dashboard/lib/jquery.scrollTo.min.js"></script>
  <script src="<%=Path%>/Dashboard/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="<%=Path%>/Dashboard/lib/common-scripts.js"></script>
  <!--script for this page-->
  
</body>

</html>
