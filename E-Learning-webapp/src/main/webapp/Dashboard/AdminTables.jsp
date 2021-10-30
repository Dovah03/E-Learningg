<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@page import="org.emsi.pfa.model.UserBean"%>
<%@page import="org.emsi.pfa.dao.DBConnection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<% String Path = request.getContextPath();%>
<% UserBean ProfileUser = (UserBean)session.getAttribute("user"); %>


<%
String color=null;
String s=null;
Connection con = null;
Statement st = null;
ResultSet rs = null;
try
{
	 con = DBConnection.createConnection();
 st=con.createStatement();
 rs=st.executeQuery("select * from users;");
 %>


<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>DashBoard - Admin Gestion Utilisateurs</title>

  <!-- Favicons -->
  <link href="<%=Path%>/Dashboard/img/favicon.png" rel="icon">
  <link href="<%=Path%>/Dashboard/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="<%=Path%>/Dashboard/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="<%=Path%>/Dashboard/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href="<%=Path%>/Dashboard/lib/advanced-datatable/css/demo_page.css" rel="stylesheet" />
  <link href="<%=Path%>/Dashboard/lib/advanced-datatable/css/demo_table.css" rel="stylesheet" />
  <link rel="stylesheet" href="<%=Path%>/Dashboard/lib/advanced-datatable/css/DT_bootstrap.css" />
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
          <p class="centered"><a href="<%=Path%>/Dashboard/Profile.jsp"><img src="<%=ProfileUser.getUrlPhoto()%>" class="img-circle" width="80"></a></p>
          <h5 class="centered"><%=ProfileUser.getFullName()%></h5>
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
              <li class="active"><a href="<%=Path%>/Dashboard/Profile.jsp">Consulter Profile</a></li>
            </ul>
          </li>
         <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-cogs"></i>
              <span>Gestion de Comptes</span>
              </a>
            <ul class="sub">
              <li class="active"><a href="AdminTables.jsp">Gerer les Utilisateurs</a></li>
              <li><a href="FormationTables.jsp">Gerer les Formations</a></li>
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
        <h3><i class="fa fa-angle-right"></i> Table Utilisateurs</h3>
        <div class="row mb">
          <!-- page start-->
          <div class="content-panel">
            <div class="adv-table">
              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                <thead>
                  <tr>
                    <th>Nom et Prenom</th>
                    <th>Role</th>
                    <th class="hidden-phone">Pseudo</th>
                    <th class="hidden-phone">Etablissement</th>
                    <th class="hidden-phone">Formation</th>
                    <th class="hidden-phone">ID</th>
                  </tr>
                </thead>
                <tbody>
                <%while(rs.next()){
                	
                	if(rs.getString("roles").equalsIgnoreCase(("Admin")))color="X";
                	else if (rs.getString("roles").equalsIgnoreCase("Etudiant"))color="C";
                	else if (rs.getString("roles").equalsIgnoreCase("Enseignant"))color="A";
                	else color="U";
                	if (rs.getString("etablissement").equalsIgnoreCase("NULL"))
                	s="-";
                	else s=rs.getString("etablissement");
                	%>
                  <tr class="grade<%=color%>">
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("roles")%></td>
                    <td class="hidden-phone"><%=rs.getString("pseudo")%></td>
                    <td class="center hidden-phone"><%=s %></td>
                    <td class="center hidden-phone">-</td>
                    <td class="center hidden-phone"><%=rs.getInt("id_util")%></td>
                  </tr>
                  <%}} 
              catch(Exception e)
              {
                  e.printStackTrace();
                  }
				
						
              
   %>
                </tbody>
              </table>
              
            </div>
          </div>
          <!-- page end-->
        </div>
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
        <a href="advanced_table.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="<%=Path%>/Dashboard/lib/jquery/jquery.min.js"></script>
  <script type="text/javascript" language="javascript" src="<%=Path%>/Dashboard/lib/advanced-datatable/js/jquery.js"></script>
  <script src="<%=Path%>/Dashboard/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="<%=Path%>/Dashboard/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="<%=Path%>/Dashboard/lib/jquery.scrollTo.min.js"></script>
  <script src="<%=Path%>/Dashboard/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script type="text/javascript" language="javascript" src="<%=Path%>/Dashboard/lib/advanced-datatable/js/jquery.dataTables.js"></script>
  <script type="text/javascript" src="<%=Path%>/Dashboard/lib/advanced-datatable/js/DT_bootstrap.js"></script>
  <!--common script for all pages-->
  <script src="<%=Path%>/Dashboard/lib/common-scripts.js"></script>
  <!--script for this page-->
  <script type="text/javascript">
    /* Formating function for row details */
    function fnFormatDetails(oTable, nTr) {
      
      var aData = oTable.fnGetData(nTr);
      var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
      sOut += '<tr><td><a type="button" href="<%=Path%>/Dashboard/ChangeRole.jsp?id='+aData[6]+'" class="btn btn-theme">Modifier</a></td><td>Nom et Etablissement:</td><td>' + aData[1] + ' ' + aData[4] + '</td></tr>';
      sOut += '<tr><td><a type="button" class="btn btn-theme04">Supprimer</a></td><td>Role:</td><td>' + aData[2] + '</td></tr>';
      sOut += '</table>';

      return sOut;
    }

    $(document).ready(function() {
      /*
       * Insert a 'details' column to the table
       */
      var nCloneTh = document.createElement('th');
      var nCloneTd = document.createElement('td');
      nCloneTd.innerHTML = '<img src="<%=Path%>/Dashboard/lib/advanced-datatable/images/details_open.png">';
      nCloneTd.className = "center";

      $('#hidden-table-info thead tr').each(function() {
        this.insertBefore(nCloneTh, this.childNodes[0]);
      });

      $('#hidden-table-info tbody tr').each(function() {
        this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
      });

      /*
       * Initialse DataTables, with no sorting on the 'details' column
       */
      var oTable = $('#hidden-table-info').dataTable({
        "aoColumnDefs": [{
          "bSortable": false,
          "aTargets": [0]
        }],
        "aaSorting": [
          [1, 'asc']
        ]
      });

      /* Add event listener for opening and closing details
       * Note that the indicator for showing which row is open is not controlled by DataTables,
       * rather it is done here
       */
      $('#hidden-table-info tbody td img').live('click', function() {
        var nTr = $(this).parents('tr')[0];
        if (oTable.fnIsOpen(nTr)) {
          /* This row is already open - close it */
          this.src = "<%=Path%>/Dashboard/lib/advanced-datatable/images/details_open.png";
          oTable.fnClose(nTr);
        } else {
          /* Open this row */
          this.src = "<%=Path%>/Dashboard/lib/advanced-datatable/images/details_close.png";
          oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
        }
      });
    });
  </script>
</body>

</html>
