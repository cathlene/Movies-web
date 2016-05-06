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

            <form:form class="form-horizontal" commandName="movie" id="movieForm" modelAttribute="movie" role="form" method="POST" action="/movie-spring/movie/update.htm" >
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.title" text="Title" />:</label>
                    <div class="col-sm-10">
                        <form:input path="title" type="text" class="form-control" id="title" name="title" value="${movie.title}" />
                        <form:errors path="title"/>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.duration" text="Duration" />:</label>
                    <div class="col-sm-10">
                        <form:input path="duur" type="text" class="form-control" id="duur" name="duur" value="${movie.duur}" />
                        <form:errors path="duur"/>
                    </div>
                </div>



                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.hoofdrolspeler" text="HoofdrolSpeler" />:</label>
                    <div>
                        <form:select id="slcRole" path="hoofdrolSpeler"> 
                            <form:options items="${actorList}" itemLabel="fullName" itemValue="id" id="selections"/>
                        </form:select>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-10">
                        <form:input path="id" type="hidden" class="form-control" id="id" name="id" value="${movie.id}"  />
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