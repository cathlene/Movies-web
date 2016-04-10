<%-- 
    Document   : actorForm.jsp
    Created on : Mar 15, 2016, 11:58:38 AM
    Author     : cathlene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp">
        
<jsp:param name="title" value="actorEditForm" />

</jsp:include>

    <body>
        <jsp:include page="header.jsp"/>

        <main>
                    <h2><spring:message code="lbl.actorEditForm" text="New actor" /></h2>

        
        <form:form class="form-horizontal" id="movieEditForm" role="form" method="POST"  modelAttribute="actor" action="/movie-springMVC/actor/update.htm" >
            
      <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.firstname" text="First name" />:</label>
    <div class="col-sm-10">
        <form:input path="Voornaam" type="text" class="form-control" id="voornaam" name="Voornaam" value="${actor.voornaam}" />
                    <form:errors path="Voornaam"/>

    </div>
  </div>
    
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.name" text="Name" />:</label>
    <div class="col-sm-10">
        <form:input  path="Naam" type="text" class="form-control" id="naam" name="Naam" value="${actor.naam}"/>
                    <form:errors path="Naam"/>

    </div>
  </div>
                  
    
      <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><spring:message code="lbl.age" text="Age" />:</label>
    <div class="col-sm-10">
      <form:input path="Leeftijd" type="text" class="form-control" id="age"  name="Leeftijd" value="${actor.leeftijd}"  placeholder="Leeftijd"/>
                    <form:errors path="Leeftijd"/>

    </div>
  </div>
     <div class="form-group">
    <div class="col-sm-10">
        <form:input  path="Id" type="hidden" class="form-control" id="Id" name="Id" value="${actor.id}" placeholder="Id" />
                    <form:errors path="Id"/>

    </div>
  </div>
      
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" id="submit" class="btn btn-default" value="edit"/>
    </div>
  </div>
</form:form>
    </main>
        <jsp:include page="footer.jsp"/>
    </body>
</html>