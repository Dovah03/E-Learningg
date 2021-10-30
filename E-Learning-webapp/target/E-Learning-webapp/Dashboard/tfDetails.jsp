<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="org.emsi.pfa.model.UserBean"%>
<%@page import="org.emsi.pfa.dao.DBConnection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<% String Path = request.getContextPath(); %>
 <% UserBean currentUser = (UserBean)session.getAttribute("user"); 
        	System.out.println(currentUser.getFullName());%>
        	
  <%
String id = request.getParameter("id");
  System.out.print("id=" + id);
  int ID = Integer.parseInt(id);
Connection con = null;
Statement st = null;
ResultSet rs = null;
try
{
	 con = DBConnection.createConnection();
 st=con.createStatement();
 rs=st.executeQuery("select * from formation;");
 %>      	
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Etudiant - DashBoard</title>

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
          <p class="centered"><a href="<%=Path%>/Dashboard/Profile2.jsp"><img src="<%=currentUser.getUrlPhoto() %>" class="img-circle" width="80"></a></p>
          <h5 class="centered"><%=currentUser.getFullName() %></h5>
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
              <li class="active"><a href="<%=Path%>/Dashboard/TeacherView.jsp">Acceuil</a></li>
              <li><a href="<%=Path%>/LogoutServlet" onclick="return confirm('Etes-vous sûr de vouloir vous déconnecter?')">Changer de Compte</a></li>
              <li><a href="<%=Path%>/Dashboard/Profile2.jsp">Consulter Profile</a></li>
            </ul>
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
    
          <%while(rs.next()){
        	  if (ID==rs.getInt("id_formation") ){
                	%>
                	
                	<section id="main-content">
      <section class="wrapper">
        <div class="col-lg-12 mt">
          <div class="row content-panel">
            <div class="col-lg-10 col-lg-offset-1">
              <div class="invoice-body">
                <div class="pull-left">
                  <h1><%=rs.getString("titre_formation")%></h1>
                  <address>
                <strong>Niveau d'étude :</strong><br>
                <%=rs.getString("niveau")%><br>
              </address>
                </div>
                <!-- /pull-left -->
                <div class="pull-right">
                  <h2><a type="button" href="/E-Learning-webapp/index.html" class="btn btn-primary btn-lg" onclick="return confirm('Etes-vous sûr de vouloir créer une nouvelle session ?')">Commencer une scéance</a></h2>
                </div>
                <!-- /pull-right -->
                <div class="clearfix"></div>
                <br>
                <br>
                <br>
                <div class="row">
                  <div class="col-md-9">
                    <h4>Enseigné(e) Par :</h4>
                    <address>
                  <h4><strong><%=rs.getString("nom_formateur")%></strong></h4><br>
                <br>
                </address>
                  </div>
                 
                <table class="table">
                  <thead>
                    <tr>
                      <td colspan="2" rowspan="4">
                        <h4>Descriptions</h4>
                        <p><%=rs.getString("description") %></p>
                    </tr>
                    <tr>
                      <td class="text-right no-border"><strong>date de creation</strong></td>
                      <td class="text-right"><%=rs.getString("date_creation") %></td>
                    </tr>
                    <tr>
                      <td class="text-right no-border"><strong>Heure de formation</strong></td>
                      <td class="text-right"><%=rs.getString("heure_formation") %></td>
                    </tr>
                  </tbody>
                </table>
                <br>
                <br>
              </div>
              <!--/col-lg-12 mt -->
      </section>
      <!-- /wrapper -->
    </section>
                	
      
              <%}} }
              catch(Exception e)
              {
                  e.printStackTrace();
                  }
				finally {
				rs.close();
                st.close();
                con.close();
                }
						
              
   %>
              
                            
              </div>
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
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
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
