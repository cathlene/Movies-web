<%-- 
    Document   : movies
    Created on : Feb 29, 2016, 3:16:04 PM
    Author     : cathlene
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
    <jsp:include page="head.jsp">

        <jsp:param name="title" value="movies" />

    </jsp:include>
    <body>
        <jsp:include page="header.jsp"/>
        <main><table class="table">
                <tr>
                    <th><spring:message code="lbl.title" text="Title" /></th>
                    <th><spring:message code="lbl.durationMin" text="Duration (minutes)" /></th>
                    <th><spring:message code="lbl.hoofdrolspeler" text="Principal actor" /></th>
                </tr>
                <c:forEach var="movie" items="${movies}">
                    <tr>

                        <td>${movie.title}</a></td>
                        <td>${movie.duur}</td>
                        <td>${movie.hoofdrolSpeler.fullName} </td>
                        <td><a href="<c:url value="movie/${movie.id}/${movie.hoofdrolSpeler.voornaam}/${movie.hoofdrolSpeler.naam}.htm"/>"> <spring:message code="lbl.edit" text="Edit" /></a> </td>
                        <td><a href="<c:url value="movie/delete/${movie.id}.htm" />"><spring:message code="lbl.delete" text="Delete" /></a></td>
                    </tr>
                </c:forEach>
                <caption><spring:message code="lbl.movies" text="Movies Actors in System" /></caption>

            </table>
            <form method="GET" action="<c:url value="/movie/new.htm"/>">
                <input  class="btn btn-primary btn-md" type="submit" value="new"/> 
            </form>
            <form  modelAttribute="duur" method="GET" action="<c:url value="/movie/duration.htm"/>">

                <div id="duur" class="form-group">
                    <caption>Zoek nu films met bepaalde duur:</caption>
                    <legend></legend>
                    <label for="inputEmail3" class="col-sm-2 control-label"><spring:message code="lbl.duration" text="Duur" /></label>

                    <div class="col-sm-10">

                        <input  type="text" class="form-control" id="Duur" name="Duur" />

                        <input  class="btn btn-primary btn-md" type="submit" value="Toon films "/> 
                        </form>
                    </div>

                </div>



        </main>
        <jsp:include page="footer.jsp"/>

    </body>
</html>
