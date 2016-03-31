<%-- 
    Document   : actorForm.jsp
    Created on : Mar 15, 2016, 11:58:38 AM
    Author     : cathlene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp"/>

    <body>
        <jsp:include page="header.jsp"/>
        <main>
       <h2><spring:message code="lbl.actorEditForm" text="Edit actor" /></h2>

        <form class="form-horizontal" commandName="actor" id="movieForm" modelAttribute="actor" role="form" method="POST" action="<c:url value="/actor/update.htm"/>" >
            
  
  
         <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.firstname" text="Firstname" />:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="Naam" name="Voornaam" value="${actor.voornaam}" placeholder="<spring:message code="lbl.firstname" text="Firstname" />">
    </div>
  </div>
    
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.name" text="Name" />:</label>
    <div class="col-sm-10">
        <input type="text" class="form-control" id="Naam" name="Naam" value="${actor.naam}" placeholder="<spring:message code="lbl.firstname" text="Firstname" />">
    </div>
  </div>
  
  
    
      <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><spring:message code="lbl.age" text="Age" />:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="Leeftijd"  name="Leeftijd" value="${actor.leeftijd}"  placeholder="Leeftijd">
    </div>
  </div>
    
      <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.id" text="Id" />:</label>
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