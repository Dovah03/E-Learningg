<%@page import="org.emsi.pfa.model.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<% String Path = request.getContextPath(); %>
<% UserBean ProfileUser = (UserBean)session.getAttribute("user"); %>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Profile -Teacher DashBoard</title>

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
          <p class="centered"><a href="<%=Path%>/Dashboard/Profile2.jsp"><img src="<%=ProfileUser.getUrlPhoto() %>" class="img-circle" width="80"></a></p>
          <h5 class="centered"><%=ProfileUser.getFullName()%></h5>
          <li class="mt">
            <a href="<%=Path%>/Dashboard/TeacherView.jsp">
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
              <li><a href="<%=Path%>/Dashboard/TeacherView.jsp">Acceuil</a></li>
              <li><a href="<%=Path%>/LogoutServlet" onclick="return confirm('Etes-vous sûr de vouloir vous déconnecter?')">Changer de Compte</a></li>
              <li class="active"><a href="<%=Path%>/Dashboard/Profile.jsp">Consulter Profile</a></li>
            </ul>
          </li>
             <li class="sub-menu">
            <a href="javascript:;">
              <i class="fa fa-comments-o"></i>
              <span>Chat Room</span>
              </a>
            <ul class="sub">
              <li><a href="<%=Path%>/Dashboard/lobby.jsp">Lobby</a></li>
              <li><a href="chat_room.jsp"> Chat Room</a></li>
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
        <div class="row mt">
          <div class="col-lg-12">
            <div class="row content-panel">
              <div class="col-md-4 profile-text mt mb centered">
                <div class="right-divider hidden-sm hidden-xs">
                  <h4>1922</h4>
                  <h6>Cours</h6>
                  <h4>290</h4>
                  <h6>Classes</h6>
                  <h4> 13,980</h4>
                  <h6>Cours terminés</h6>
                </div>
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 profile-text">
                <h3><%=ProfileUser.getFullName() %></h3>
                <h6>Main <%=ProfileUser.getRole() %></h6>
                <p><%=ProfileUser.getDescription() %></p>
                <br>
              <!--  <p><button class="btn btn-theme"><i class="fa fa-envelope"></i> Send Message</button></p>  --> 
              </div>
              <!-- /col-md-4 -->
              <div class="col-md-4 centered">
                <div class="profile-pic">
                  <p><img src="<%=ProfileUser.getUrlPhoto() %>" class="img-circle"></p>
                <!--   <p>
                    <button class="btn btn-theme"><i class="fa fa-check"></i> Follow</button>
                    <button class="btn btn-theme02">Add</button>
                  </p> -->
                </div>
              </div>
              <!-- /col-md-4 -->
            </div>
            <!-- /row -->
          </div>
          <!-- /col-lg-12 -->
          <div class="col-lg-12 mt">
            <div class="row content-panel">
              <div class="panel-heading">
                <ul class="nav nav-tabs nav-justified">
                  <li class="active">
                    <a data-toggle="tab" href="#overview">Aperçu</a>
                  </li>
                  <li>
                    <a data-toggle="tab" href="#contact" class="contact-map">Contact</a>
                  </li>
                  <li>
                    <a data-toggle="tab" href="#edit">Editer Profile</a>
                  </li>
                </ul>
              </div>
              <!-- /panel-heading -->
              <div class="panel-body">
                <div class="tab-content">
                  <div id="overview" class="tab-pane active">
                    <div class="row">
                      <div class="col-md-6">
                        <textarea rows="3" class="form-control" placeholder="Whats on your mind?"></textarea>
                        <div class="grey-style">
                          <div class="pull-left">
                            <button class="btn btn-sm btn-theme"><i class="fa fa-camera"></i></button>
                            <button class="btn btn-sm btn-theme"><i class="fa fa-map-marker"></i></button>
                          </div>
                          <div class="pull-right">
                            <button class="btn btn-sm btn-theme03">POST</button>
                          </div>
                        </div>
                        <div class="detailed mt">
                          <h4>Recent Activity</h4>
                          <div class="recent-activity">
                            <div class="activity-icon bg-theme"><i class="fa fa-check"></i></div>
                            <div class="activity-panel">
                              <h5>1 HOUR AGO</h5>
                              <p>Purchased: Dashio Admin Panel & Front-end theme.</p>
                            </div>
                            <div class="activity-icon bg-theme02"><i class="fa fa-trophy"></i></div>
                            <div class="activity-panel">
                              <h5>5 HOURS AGO</h5>
                              <p>Task Completed. Resolved issue with Disk Space.</p>
                            </div>
                            <div class="activity-icon bg-theme04"><i class="fa fa-rocket"></i></div>
                            <div class="activity-panel">
                              <h5>3 DAYS AGO</h5>
                              <p>Launched a new product: Flat Pack Heritage.</p>
                            </div>
                          </div>
                          <!-- /recent-activity -->
                        </div>
                        <!-- /detailed -->
                      </div>
                      <!-- /col-md-6 -->
                      <div class="col-md-6 detailed">
                        <h4>User Stats</h4>
                        <div class="row centered mt mb">
                          <div class="col-sm-4">
                            <h1><i class="fa fa-money"></i></h1>
                            <h3>$22,980</h3>
                            <h6>LIFETIME EARNINGS</h6>
                          </div>
                          <div class="col-sm-4">
                            <h1><i class="fa fa-trophy"></i></h1>
                            <h3>37</h3>
                            <h6>COMPLETED TASKS</h6>
                          </div>
                          <div class="col-sm-4">
                            <h1><i class="fa fa-shopping-cart"></i></h1>
                            <h3>1980</h3>
                            <h6>ITEMS SOLD</h6>
                          </div>
                        </div>
                        <!-- /row -->
                        <h4>My Friends</h4>
                        <div class="row centered mb">
                          <ul class="my-friends">
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-01.jpg"></div>
                            </li>
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-02.jpg"></div>
                            </li>
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-03.jpg"></div>
                            </li>
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-04.jpg"></div>
                            </li>
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-05.jpg"></div>
                            </li>
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-06.jpg"></div>
                            </li>
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-07.jpg"></div>
                            </li>
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-08.jpg"></div>
                            </li>
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-09.jpg"></div>
                            </li>
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-10.jpg"></div>
                            </li>
                            <li>
                              <div class="friends-pic"><img class="img-circle" width="35" height="35" src="img/friends/fr-11.jpg"></div>
                            </li>
                          </ul>
                          <div class="row mt">
                            <div class="col-md-4 col-md-offset-4">
                              <h6><a href="#">VIEW ALL</a></h6>
                            </div>
                          </div>
                        </div>
                        <!-- /row -->
                        <h4>Pending Tasks</h4>
                        <div class="row centered">
                          <div class="col-md-8 col-md-offset-2">
                            <h5>Dashboard Update (40%)</h5>
                            <div class="progress">
                              <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                <span class="sr-only">40% Complete (success)</span>
                              </div>
                            </div>
                            <h5>Unanswered Messages (80%)</h5>
                            <div class="progress">
                              <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                <span class="sr-only">80% Complete (success)</span>
                              </div>
                            </div>
                            <h5>Product Review (60%)</h5>
                            <div class="progress">
                              <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                <span class="sr-only">60% Complete (success)</span>
                              </div>
                            </div>
                            <h5>Friend Requests (90%)</h5>
                            <div class="progress">
                              <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                <span class="sr-only">90% Complete (success)</span>
                              </div>
                            </div>
                          </div>
                          <!-- /col-md-8 -->
                        </div>
                        <!-- /row -->
                      </div>
                      <!-- /col-md-6 -->
                    </div>
                    <!-- /OVERVIEW -->
                  </div>
                  <!-- /tab-pane -->
                  <div id="contact" class="tab-pane">
                    <div class="row">
                      <div class="col-md-6">
                        <div id="map"></div>
                      </div>
                      <!-- /col-md-6 -->
                      <div class="col-md-6 detailed">
                        <h4>Location</h4>
                        <div class="col-md-8 col-md-offset-2 mt">
                          <p>
                            Postal Address<br/> PO BOX 12988, Sutter Ave<br/> Brownsville, New York.
                          </p>
                          <br>
                          <p>
                            Headquarters<br/> 844 Sutter Ave,<br/> 9003, New York.
                          </p>
                        </div>
                        <h4>Contacts</h4>
                        <div class="col-md-8 col-md-offset-2 mt">
                          <p>
                            Phone: +33 4898-4303<br/> Cell: 48 4389-4393<br/>
                          </p>
                          <br>
                          <p>
                            Email: hello@dashiotheme.com<br/> Skype: UseDashio<br/> Website: http://Alvarez.is
                          </p>
                        </div>
                      </div>
                      <!-- /col-md-6 -->
                    </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
                  <div id="edit" class="tab-pane">
                    <div class="row">
                      <div class="col-lg-8 col-lg-offset-2 detailed">
                        <h4 class="mb">Information Personnelle</h4>
                        <form role="form" class="form-horizontal" action="<%=request.getContextPath()%>/ProfileServlet" method="post">
                          <div class="form-group">
                            <label class="col-lg-2 control-label"> Changer de Photo</label>
                            <div class="col-lg-6">
                              <input type="file" id="exampleInputFile" name="UrlPhoto" class="file-pos">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Etablissement</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="<%=ProfileUser.getEtablissement() %> " id="c-name" name="Etablissement" class="form-control">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Pseudo</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="<%=ProfileUser.getPseudo() %>" id="lives-in" name="Pseudo" class="form-control">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Nom et Prénom</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="<%=ProfileUser.getFullName() %>" id="country" name="FullName" class="form-control">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Description</label>
                            <div class="col-lg-10">
                              <textarea rows="10" cols="30" placeholder="<%=ProfileUser.getDescription() %>" class="form-control" id="" name="Description"></textarea>
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button class="btn btn-theme" type="submit">Modifier</button>
                            </div>
                          </div>
                        </form>
                      </div>
                      <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">Contact Information</h4>
                        <form role="form" class="form-horizontal" action="<%=request.getContextPath()%>/ProfileServlet2" method="post">
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Addresse</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="<%=ProfileUser.getAddress() %> " id="addr1" name="address" class="form-control">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Téléphone</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="<%=ProfileUser.getTel() %>" id="phone" name="phone" class="form-control">
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-lg-2 control-label">Email</label>
                            <div class="col-lg-6">
                              <input type="text" placeholder="<%=ProfileUser.getEmail() %> " id="email" name="Email" class="form-control">
                            </div>
                          </div>
                          <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                              <button class="btn btn-theme" type="submit">Modifier</button>
                            </div>
                          </div>
                        </form>
                      </div>
                      <!-- /col-lg-8 -->
                    </div>
                    <!-- /row -->
                  </div>
                  <!-- /tab-pane -->
                </div>
                <!-- /tab-content -->
              </div>
              <!-- /panel-body -->
            </div>
            <!-- /col-lg-12 -->
          </div>
          <!-- /row -->
        </div>
        <!-- /container -->
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
          Created by <strong>Mehdi&Khalil</strong> with  <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="profile.html#" class="go-top">
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
  <!-- MAP SCRIPT - ALL CONFIGURATION IS PLACED HERE - VIEW OUR DOCUMENTATION FOR FURTHER INFORMATION -->
  <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key="></script>
  <script>
    $('.contact-map').click(function() {

      //google map in tab click initialize
      function initialize() {
        var myLatlng = new google.maps.LatLng(40.6700, -73.9400);
        var mapOptions = {
          zoom: 11,
          scrollwheel: false,
          center: myLatlng,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(document.getElementById('map'), mapOptions);
        var marker = new google.maps.Marker({
          position: myLatlng,
          map: map,
          title: 'Dashio Admin Theme!'
        });
      }
      google.maps.event.addDomListener(window, 'click', initialize);
    });
  </script>
</body>

</html>
