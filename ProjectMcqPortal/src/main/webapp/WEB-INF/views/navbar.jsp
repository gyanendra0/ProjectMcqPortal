<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="project.mcq.portal.entities.Admin"  %>
 <nav class="navbar">
        <div class="logo">
            <img src="<c:url value = "/resources/images/home/quiz_icon.png"/> ">
            Quiz<span>Vault</span>
        </div>
        <% Admin admin = (Admin) session.getAttribute("admin");%>
        <ul class="nav-links" id="navLinks">
            <li><a href="#steps">Services</a></li>
            <li><a href="#about">About Us</a></li>
            <%
            if(admin == null)
            {
            %>
            <li><a href="login">User Login</a></li>
            <li><a href="admin">Admin Login</a></li>
            <%
            }
            if(admin != null)
            {
            %>
            <li class="dropdown">
                <a href="javascript:void(0);" class="dropbtn"><%= admin.getUsername() %></a>
                <div class="dropdown-content " style="color:black;">
                    <a href="<%= request.getContextPath() %>/admin_dashboard">View Dashboard</a>
                    <a href="<%= request.getContextPath() %>/logout">Logout</a>
                </div>
            </li>
            <%} %>
        </ul>
        <div class="burger" onclick="toggleMenu();">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
        </div>
    </nav>
    