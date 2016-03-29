<%-- 
    Document   : actorForm.jsp
    Created on : Mar 15, 2016, 11:58:38 AM
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
        <form class="form-horizontal" commandName="actor" id="movieForm" modelAttribute="actor" role="form" method="POST" action="<c:url value="/actor/update.htm"/>" >
            
  
  
         <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Voornaam</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="Naam" name="Voornaam" value="${actor.voornaam}" placeholder="Voornaam">
    </div>
  </div>
    
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Naam</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="Naam" name="Naam" value="${actor.naam}" placeholder="Naam">
    </div>
  </div>
  
  
    
      <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Leeftijd</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="Leeftijd"  name="Leeftijd" value="${actor.leeftijd}"  placeholder="Leeftijd">
    </div>
  </div>
    
      <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Id</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="Id" name="Id" value="${actor.id}" placeholder="Id" readonly/>

    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-default" value="Edit"/>
    </div>
  </div>
</form>
    </main>
        <jsp:include page="footer.jsp"/>
    </body>
</html>