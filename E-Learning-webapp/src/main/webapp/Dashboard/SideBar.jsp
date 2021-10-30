<%@page import="org.emsi.pfa.model.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<% String AbPath = request.getContextPath(); %>
        <% UserBean currentUser = (UserBean)session.getAttribute("user");%>
    
  <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><a href="<%=AbPath%>/Dashboard/Profile.jsp"><img src="<%=currentUser.getUrlPhoto() %>" class="img-circle" width="80"></a></p>
          <h5 class="centered"><%=currentUser.getFullName()%></h5>
          <li class="mt">
            <a href="<%=AbPath%>/Dashboard/AdminView.jsp">
              <i class="fa fa-dashboard"></i>
              <span>Dashboard</span>
              </a>
          </li>
        
          <li class="sub-menu">
            <a class="active" href="javascript:;">
              <i class="fa fa-book"></i>
              <span>Compte</span>
              </a>
            <ul class="sub">
              <li class="active"><a href="<%=AbPath%>/Dashboard/AdminView.jsp">Acceuil</a></li>
              <li><a href="<%=AbPath%>/LogoutServlet">Changer de Compte</a></li>
              <li><a href="<%=AbPath%>/Dashboard/Profile.jsp">Consulter Profile</a></li>
            </ul>
          </li>

         
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->