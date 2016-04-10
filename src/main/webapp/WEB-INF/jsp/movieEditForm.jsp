<%-- 
    Document   : actorForm.jsp
    Created on : Mar 15, 2016, 11:58:38 AM
    Author     : cathlene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
   <jsp:include page="head.jsp">
        
<jsp:param name="title" value="movieEditForm" />

</jsp:include>

    <body>
        <jsp:include page="header.jsp"/>
        <main>
       <h2><spring:message code="lbl.actorEditForm" text="Edit actor" /></h2>

        <form:form class="form-horizontal" commandName="movie" id="movieForm" modelAttribute="movieBuilder" role="form" method="POST" action="/movie-springMVC/movie/update.htm" >
    <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.title" text="Title" />:</label>
    <div class="col-sm-10">
     <form:input path="title" type="text" class="form-control" id="title" name="title" value="${movieBuilder.title}" />
                    <form:errors path="title"/>
    </div>
  </div>
    
     <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.duration" text="Duration" />:</label>
    <div class="col-sm-10">
     <form:input path="duur" type="text" class="form-control" id="duur" name="duur" value="${movieBuilder.duur}" />
                    <form:errors path="duur"/>
    </div>
  </div>
    
 
  
      <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><spring:message code="lbl.hoofdrolspelerVoornaam" text="Principal Actor" />:</label>
    <div class="col-sm-10">
    <form:input path="actorVoornaam" type="text" class="form-control" id="actorVoornaam" name="actorVoornaam" value="${movieBuilder.actorVoornaam}" />
                    <form:errors path="actorVoornaam"/> 
    </div>
  </div>
    
     <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><spring:message code="lbl.hoofdrolspelerAchternaam" text="Principal Actor" />:</label>
    <div class="col-sm-10">
    <form:input path="actorAchternaam" type="text" class="form-control" id="actorAchternaam" name="actorAchternaam" value="${movieBuilder.actorAchternaam}" />
                    <form:errors path="actorAchternaam"/>
    </div>
  </div>
    
     <div class="form-group">
    <div class="col-sm-10">
    <form:input path="id" type="hidden" class="form-control" id="id" name="id" value="${movieBuilder.id}"  />
                    <form:errors path="id"/>
    </div>
  </div>
  
     <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-default" value="Edit"/> 
    </div>
  </div>
 
</form:form>
    </main>
        <jsp:include page="footer.jsp"/>
    </body>
</html>