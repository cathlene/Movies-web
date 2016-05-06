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

        <jsp:param name="title" value="actorForm" />

    </jsp:include>

    <body>
        <jsp:include page="header.jsp"/>

        <main>
            <h2><spring:message code="lbl.actorForm" text="New actor" /></h2>


            <form:form class="form-horizontal" id="movieForm" role="form" method="POST"  modelAttribute="actor" action="/movie-springMVC/actor.htm" >

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.firstname" text="First name" />:</label>
                    <div class="col-sm-10">
                        <form:input path="voornaam" type="text" class="form-control" id="voornaam"/>
                        <form:errors path="voornaam"/>

                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.name" text="Name" />:</label>
                    <div class="col-sm-10">
                        <form:input  path="naam" type="text" class="form-control" id="naam"/>
                        <form:errors path="naam"/>

                    </div>
                </div>


                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label"><spring:message code="lbl.age" text="Age" />:</label>
                    <div class="col-sm-10">
                        <form:input path="leeftijd" type="text" class="form-control" id="age"  placeholder="Leeftijd"/>
                        <form:errors path="leeftijd"/>

                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-10">
                        <form:input  path="id" type="hidden" class="form-control" id="Id" placeholder="Id" />

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="submit" id="submit" class="btn btn-default" value="Add"/>
                    </div>
                </div>
            </form:form>
        </main>
        <jsp:include page="footer.jsp"/>
    </body>
</html>