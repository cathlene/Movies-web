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
               <li role="presentation"><a href="<c:url value="/index.htm"/>"><spring:message code="lbl.home" text="Home" /></a></li>
  <li role="presentation"><a href="<c:url value="/movie.htm"/>"><spring:message code="lbl.movies" text="Movies" /></a></li>
  <li role="presentation"><a href="<c:url value="/actor.htm"/>"><spring:message code="lbl.actors" text="Actors" /></a></li>
  <li role="presentation"><a href="<c:url value="/contact.htm"/>"><spring:message code="lbl.contact" text="Contact" /></a></li>
</ul>
        </nav>
    </header>
