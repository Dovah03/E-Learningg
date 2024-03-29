<%@page import="org.emsi.pfa.model.UserBean"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<% String Path = request.getContextPath(); %>
 <% UserBean currentUser = (UserBean)session.getAttribute("user");
 	String number = null;
 	String role = null;
	if(currentUser.getRole().equalsIgnoreCase("Etudiant")) {number = "3";role = "Student";}
	else {number = "2";role = "Teacher";}
        	System.out.println(currentUser.getFullName());%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Dashio - Bootstrap Admin Template</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>
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
            <a href="<%=Path%>/Dashboard/<%=role%>View.jsp">
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
              <li><a href="<%=Path%>/Dashboard/<%=role%>View.jsp">Acceuil</a></li>
              <li><a href="<%=Path%>/LogoutServlet">Changer de Compte</a></li>
              <li><a href="<%=Path%>/Dashboard/Profile<%=number%>.jsp">Consulter Profile</a></li>
            </ul>
             <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-comments-o"></i>
              <span>Chat Room</span>
              </a>
            <ul class="sub">
              <li class="active"><a href="<%=Path%>/Dashboard/lobby.jsp">Lobby</a></li>
              <li><a href="<%=Path%>/Dashboard/chat_room.jsp"> Chat Room</a></li>
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
        <!-- page start-->
        <div class="chat-room mt">
          <aside class="mid-side">
            <div class="chat-room-head">
              <h3>LOBBY</h3>
              <form action="#" class="pull-right position">
                <input type="text" placeholder="Search" class="form-control search-btn ">
              </form>
            </div>
            <div class="room-desk">
              <h4 class="pull-left">Salle Ouvert</h4>
              <a href="#" class="pull-right btn btn-theme02">+ Creer une Salle</a>
              <div class="room-box">
                <h5 class="text-primary"><a href="chat_room.html">Dashboard</a></h5>
                <p>We talk here about our dashboard. No support given.</p>
                <p><span class="text-muted">Admin :</span> Sam Soffes | <span class="text-muted">Members :</span> 98 | <span class="text-muted">Last Activity :</span> 2 min ago</p>
              </div>
              <div class="room-box">
                <h5 class="text-primary"><a href="chat_room.html">Support</a></h5>
                <p>Support chat for Dashio. Purchase ticket needed.</p>
                <p><span class="text-muted">Admin :</span> Sam Soffes | <span class="text-muted">Member :</span> 44 | <span class="text-muted">Last Activity :</span> 15 min ago</p>
              </div>
              <div class="room-box">
                <h5 class="text-primary"><a href="chat_room.html">MaxFront</a></h5>
                <p>Technical support for our front-end. No customization.</p>
                <p><span class="text-muted">Admin :</span> Sam Soffes | <span class="text-muted">Member :</span> 22 | <span class="text-muted">Last Activity :</span> 15 min ago</p>
              </div>
            </div>
            <div class="room-desk">
              <h4 class="pull-left">Salle Privé</h4>
              <div class="room-box">
                <h5 class="text-primary"><a href="chat_room.html">Dash Stats</a></h5>
                <p>Private chat regarding our site statics.</p>
                <p><span class="text-muted">Admin :</span> Sam Soffes | <span class="text-muted">Member :</span> 13 | <span class="text-muted">Last Activity :</span> 15 min ago</p>
              </div>
              <div class="room-box">
                <h5 class="text-primary"><a href="chat_room.html">Gold Clients</a></h5>
                <p>Exclusive support for our Gold Members. Membership $98/year</p>
                <p><span class="text-muted">Admin :</span> Sam Soffes | <span class="text-muted">Member :</span> 13 | <span class="text-muted">Last Activity :</span> 15 min ago</p>
              </div>
            </div>
          </aside>
          <aside class="right-side">
            <div class="user-head">
              <a href="#" class="chat-tools btn-theme"><i class="fa fa-cog"></i> </a>
              <a href="#" class="chat-tools btn-theme03"><i class="fa fa-key"></i> </a>
            </div>
            <div class="invite-row">
              <h4 class="pull-left">Membres</h4>
              <a href="#" class="btn btn-theme04 pull-right">+ Inviter</a>
            </div>
            <ul class="chat-available-user">
              <li>
                <a href="chat_room.html">
                  <img class="img-circle" src="img/friends/fr-02.jpg" width="32">
                  Paul Brown
                  <span class="text-muted">1h:02m</span>
                  </a>
              </li>
              <li>
                <a href="chat_room.html">
                  <img class="img-circle" src="img/friends/fr-05.jpg" width="32">
                  David Duncan
                  <span class="text-muted">1h:08m</span>
                  </a>
              </li>
              <li>
                <a href="chat_room.html">
                  <img class="img-circle" src="img/friends/fr-07.jpg" width="32">
                  Laura Smith
                  <span class="text-muted">1h:10m</span>
                  </a>
              </li>
              <li>
                <a href="chat_room.html">
                  <img class="img-circle" src="img/friends/fr-08.jpg" width="32">
                  Julia Schultz
                  <span class="text-muted">3h:00m</span>
                  </a>
              </li>
              <li>
                <a href="chat_room.html">
                  <img class="img-circle" src="img/friends/fr-01.jpg" width="32">
                  Frank Arias
                  <span class="text-muted">4h:22m</span>
                  </a>
              </li>
            </ul>
          </aside>
        </div>
        <!-- page end-->
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
          Created by Mehdi&Khalid template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="lobby.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->

</body>

</html>
    