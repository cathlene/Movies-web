

<%-- 
    Document   : movieFrom.jsp
    Created on : Mar 5, 2016, 2:52:28 PM
    Author     : cathlene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp"/>

    <body>
        <jsp:include page="header.jsp"/>
        <main>
        <h1>New Movie</h1>
        <form class="form-horizontal" id="movieForm" role="form" method="POST" action="<c:url value="/movie.htm"/>" >
            
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Title</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="title" name="title" value="${movie.title}" placeholder="Title">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Duration</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="duur"  name="duur" value="${movie.duur}"  placeholder="Duration">
    </div>
  </div>
    
      <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Principal actor</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id=hoofdrolSpeler  name="hoofdrolSpeler" value="${movie.hoofdrolSpeler}"  placeholder="Principal actor">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-default" value="Add"/>
    </div>
  </div>
</form>
    </main>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
