<%-- 
    Document   : header.jsp
    Created on : Feb 29, 2016, 3:10:24 PM
    Author     : cathlene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>


 <header>
        <nav>
           <ul class="nav nav-pills">
               <li role="presentation"><a href="<c:url value="/index.htm"/>">Home</a></li>
  <li role="presentation"><a href="<c:url value="/movie.htm"/>">Movies</a></li>
  <li role="presentation"><a href="<c:url value="/actor.htm"/>">Actors</a></li>
  <li role="presentation"><a href="<c:url value="/contact.htm"/>">Contact</a></li>
</ul>
        </nav>
    </header>
